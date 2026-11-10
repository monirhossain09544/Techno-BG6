// SPDX-License-Identifier: GPL-2.0
/*
 * TECNO-BG6 Ring-0 CFI-Safe FFI Bridge + V4L2 Loopback (/dev/video50) +
 * Ring-0 IIO SensorHub Injector (iio:device0 / sprd-sensor) (v8.7)
 *
 * Subsystems:
 *   1. #[no_std] Rust TinyML + XNU-VM Governor FFI Bridge (/proc/bg6_rust_engine)
 *   2. Ring-0 V4L2 Virtual Camera Loopback (/dev/video50 - "BG6-V4L2-Loopback")
 *   3. Ring-0 IIO SensorHub 50Hz Injector (/proc/bg6_v4l2_iio -> iio_push_to_buffers)
 */

#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/uaccess.h>
#include <linux/input.h>
#include <linux/slab.h>
#include <linux/string.h>
#include <linux/ktime.h>
#include <linux/timekeeping.h>
#include <linux/timer.h>
#include <linux/jiffies.h>
#include <linux/sched/stat.h>
#include <linux/sched/loadavg.h>
#include <linux/uidgid.h>
#include <linux/mm.h>
#include <linux/vmstat.h>
#include <linux/swap.h>
#include <linux/kobject.h>
#include <linux/sysfs.h>
#include <linux/vmalloc.h>
#include <linux/mutex.h>
#include <linux/wait.h>
#include <linux/poll.h>
#include <linux/device.h>
#include <linux/videodev2.h>
#include <media/v4l2-dev.h>
#include <media/v4l2-device.h>
#include <media/v4l2-ioctl.h>
#include <linux/iio/iio.h>
#include <linux/iio/buffer.h>

/* Direct FFI entrypoints implemented in #[no_std] Rust (libbg6_kernel_ring0) */
extern void   bg6_rust_init(u64 now_ns);
extern void   bg6_rust_on_input_event(u16 ev_type, u16 ev_code, s32 ev_val, u64 now_ns);
extern u32    bg6_rust_on_sched_tick(u32 nr_running_cnt, u32 load_av1, u64 now_ns);
extern size_t bg6_rust_proc_render(u8 *buf_ptr, size_t buf_cap, u64 now_ns);
extern s32    bg6_rust_proc_command(const u8 *cmd_ptr, size_t cmd_len);

static struct timer_list bg6_rust_timer;
static struct kobject *bg6_lru_gen_kobj;
static u32 bg6_lru_gen_enabled_val = 7;
static u32 bg6_lru_gen_min_ttl_val = 1000;

/* ============================================================================
 * PART 1: Ring-0 IIO SensorHub Injector (sprd-sensor / iio:device0)
 * Exact 40-byte packet layout matching drivers/iio/sprd_hub_new/shub_core.h:
 *   u8  cmd = 129 (HAL_SEN_DATA)
 *   u16 sensor_handle (1=Accel, 2=Mag, 3=Orient, 4=Gyro, 11=RotVec, 18=StepDet, 19=StepCnt)
 *   u32 fdata_bits[6] (IEEE-754 float32 bit patterns - zero kernel FP regs!)
 *   u64 timestamp_ns  (ktime_get_boottime_ns())
 *   u8  pad[5]        (pads to MAX_CM4_MSG_SIZE = 40 bytes)
 * ============================================================================
 */
#define BG6_HAL_SEN_DATA          129
#define BG6_SHUB_MSG_SIZE         40
#define BG6_HANDLE_ACCEL          1
#define BG6_HANDLE_MAG            2
#define BG6_HANDLE_ORIENT         3
#define BG6_HANDLE_GYRO           4
#define BG6_HANDLE_GRAVITY        9
#define BG6_HANDLE_LIN_ACCEL      10
#define BG6_HANDLE_ROT_VEC        11
#define BG6_HANDLE_STEP_DET       18
#define BG6_HANDLE_STEP_CNT       19

struct __packed bg6_shub_event_pkt {
	u8  cmd;
	u16 sensor_handle;
	u32 fdata_bits[6];
	u64 timestamp_ns;
	u8  pad[5];
};

static struct iio_dev *bg6_cached_indio_dev;
static struct timer_list bg6_iio_sim_timer;
static u32 bg6_iio_sim_mode;          /* 0=OFF, 1=WALK, 2=RUN, 3=DRIVE, 4=GIMBAL, 5=GNSS_SYNC */
static u64 bg6_iio_events_injected;
static u64 bg6_iio_last_inject_ns;
/* Stored IEEE-754 float32 bit patterns updated from userspace Rust engine */
static u32 bg6_accel_bits[3]  = { 0x00000000, 0x00000000, 0x411cf5c3 }; /* 0.0, 0.0, 9.81 */
static u32 bg6_gyro_bits[3]   = { 0x00000000, 0x00000000, 0x00000000 }; /* 0.0, 0.0, 0.0 */
static u32 bg6_mag_bits[3]    = { 0x00000000, 0x42280000, 0xc1900000 }; /* 0.0, 42.0, -18.0 */
static u32 bg6_orient_bits[3] = { 0x00000000, 0x00000000, 0x00000000 }; /* azim, pitch, roll */
static u32 bg6_rotvec_bits[4] = { 0x00000000, 0x00000000, 0x00000000, 0x3f800000 };
static u32 bg6_step_cnt_bits  = 0x00000000;
static u32 bg6_step_count_int;
static u32 bg6_gnss_speed_cms;
static u32 bg6_gnss_bearing_deg;

static struct iio_dev *bg6_resolve_iio_dev(void)
{
	struct device *dev;

	if (bg6_cached_indio_dev)
		return bg6_cached_indio_dev;

	dev = bus_find_device_by_name(&iio_bus_type, NULL, "iio:device0");
	if (!dev)
		return NULL;

	bg6_cached_indio_dev = dev_to_iio_dev(dev);
	return bg6_cached_indio_dev;
}

static int bg6_iio_push_sensor_pkt(u16 handle, const u32 bits[6])
{
	struct iio_dev *indio;
	struct bg6_shub_event_pkt pkt;
	int i;

	indio = bg6_resolve_iio_dev();
	if (!indio || !indio->active_scan_mask)
		return -ENODEV;

	memset(&pkt, 0, sizeof(pkt));
	pkt.cmd = BG6_HAL_SEN_DATA;
	pkt.sensor_handle = handle;
	for (i = 0; i < 6; i++)
		pkt.fdata_bits[i] = bits[i];
	pkt.timestamp_ns = ktime_get_boottime_ns();

	iio_push_to_buffers(indio, (u8 *)&pkt);
	bg6_iio_events_injected++;
	bg6_iio_last_inject_ns = pkt.timestamp_ns;
	return 0;
}

static void bg6_iio_sim_timer_cb(struct timer_list *t)
{
	u32 fbits[6];

	if (bg6_iio_sim_mode != 0) {
		memset(fbits, 0, sizeof(fbits));
		fbits[0] = bg6_accel_bits[0];
		fbits[1] = bg6_accel_bits[1];
		fbits[2] = bg6_accel_bits[2];
		bg6_iio_push_sensor_pkt(BG6_HANDLE_ACCEL, fbits);

		fbits[0] = bg6_gyro_bits[0];
		fbits[1] = bg6_gyro_bits[1];
		fbits[2] = bg6_gyro_bits[2];
		bg6_iio_push_sensor_pkt(BG6_HANDLE_GYRO, fbits);

		fbits[0] = bg6_mag_bits[0];
		fbits[1] = bg6_mag_bits[1];
		fbits[2] = bg6_mag_bits[2];
		bg6_iio_push_sensor_pkt(BG6_HANDLE_MAG, fbits);

		fbits[0] = bg6_orient_bits[0];
		fbits[1] = bg6_orient_bits[1];
		fbits[2] = bg6_orient_bits[2];
		bg6_iio_push_sensor_pkt(BG6_HANDLE_ORIENT, fbits);

		fbits[0] = bg6_rotvec_bits[0];
		fbits[1] = bg6_rotvec_bits[1];
		fbits[2] = bg6_rotvec_bits[2];
		fbits[3] = bg6_rotvec_bits[3];
		bg6_iio_push_sensor_pkt(BG6_HANDLE_ROT_VEC, fbits);
	}

	mod_timer(&bg6_iio_sim_timer, jiffies + msecs_to_jiffies(20));
}

/* ============================================================================
 * PART 2: Ring-0 V4L2 Virtual Camera Driver (/dev/video50 - "BG6-V4L2-Loopback")
 * Supports 640x480 YUYV / RGB24 / NV21 frames, read(), write(), mmap(), and
 * full V4L2 capture/output ioctls + Ring-0 Procedural HUD Frame Generator.
 * ============================================================================
 */
#define BG6_V4L2_WIDTH            640
#define BG6_V4L2_HEIGHT           480
#define BG6_V4L2_BPP              2
#define BG6_V4L2_FRAME_SIZE       (BG6_V4L2_WIDTH * BG6_V4L2_HEIGHT * BG6_V4L2_BPP)
#define BG6_V4L2_NUM_BUFS         2
#define BG6_V4L2_TOTAL_MEM        (BG6_V4L2_FRAME_SIZE * BG6_V4L2_NUM_BUFS)

static struct v4l2_device bg6_v4l2_dev;
static struct video_device *bg6_vdev;
static u8 *bg6_v4l2_mem;
static DEFINE_MUTEX(bg6_v4l2_lock);
static DECLARE_WAIT_QUEUE_HEAD(bg6_v4l2_wq);

static u32 bg6_v4l2_width   = BG6_V4L2_WIDTH;
static u32 bg6_v4l2_height  = BG6_V4L2_HEIGHT;
static u32 bg6_v4l2_pixfmt  = V4L2_PIX_FMT_YUYV;
static u32 bg6_v4l2_fps     = 30;
static u32 bg6_v4l2_pattern; /* 0=CYBER_HUD, 1=SMPTE_BARS, 2=RADAR_GRID, 3=EXT_FEED */
static u64 bg6_v4l2_frames_tx;
static u64 bg6_v4l2_bytes_tx;
static u64 bg6_v4l2_last_write_ns;
static u32 bg6_v4l2_streaming;

/* Render a fast procedural YUYV frame in Ring-0 when pattern != 3 */
static void bg6_v4l2_render_procedural_frame(u8 *dst, u32 seq)
{
	u32 x, y;
	u32 stride = BG6_V4L2_WIDTH * 2;
	u32 cx = BG6_V4L2_WIDTH / 2;
	u32 cy = BG6_V4L2_HEIGHT / 2;
	s32 off_x = (s32)((bg6_gyro_bits[1] >> 20) & 0x3f) - 32;
	s32 off_y = (s32)((bg6_gyro_bits[0] >> 20) & 0x3f) - 32;
	u32 hx = (u32)clamp_t(s32, (s32)cx + off_x, 40, BG6_V4L2_WIDTH - 40);
	u32 hy = (u32)clamp_t(s32, (s32)cy + off_y, 40, BG6_V4L2_HEIGHT - 40);

	if (!dst)
		return;

	for (y = 0; y < BG6_V4L2_HEIGHT; y++) {
		u8 *row = dst + y * stride;

		for (x = 0; x < BG6_V4L2_WIDTH; x += 2) {
			u8 y0 = 24, u0 = 128, y1 = 24, v0 = 128;

			if (bg6_v4l2_pattern == 1) {
				/* SMPTE Color Bars */
				u32 bar = (x * 8) / BG6_V4L2_WIDTH;
				static const u8 bar_yuv[8][3] = {
					{235, 128, 128}, {210, 16, 146},
					{170, 166, 16},  {145, 54, 34},
					{106, 202, 222}, {81, 90, 240},
					{41, 240, 110},  {16, 128, 128}
				};
				y0 = bar_yuv[bar & 7][0];
				y1 = y0;
				u0 = bar_yuv[bar & 7][1];
				v0 = bar_yuv[bar & 7][2];
			} else {
				/* Cyber HUD Horizon + Moving Scanline + Gimbal Crosshair */
				u32 scan_y = (seq * 4) % BG6_V4L2_HEIGHT;

				if (y == hy || x == hx || x + 1 == hx) {
					y0 = 210; y1 = 210; u0 = 90; v0 = 60;
				} else if (y >= scan_y && y < scan_y + 4) {
					y0 = 180; y1 = 180; u0 = 170; v0 = 80;
				} else if ((x % 64 == 0) || (y % 64 == 0)) {
					y0 = 56; y1 = 56; u0 = 140; v0 = 118;
				} else {
					y0 = (u8)(20 + ((y * 32) / BG6_V4L2_HEIGHT));
					y1 = y0;
					u0 = 134;
					v0 = 122;
				}
			}
			row[x * 2 + 0] = y0;
			row[x * 2 + 1] = u0;
			row[x * 2 + 2] = y1;
			row[x * 2 + 3] = v0;
		}
	}
}

static int bg6_v4l2_open(struct file *file)
{
	return 0;
}

static int bg6_v4l2_release(struct file *file)
{
	return 0;
}

static ssize_t bg6_v4l2_read(struct file *file, char __user *ubuf,
			     size_t count, loff_t *ppos)
{
	size_t avail;
	u64 now_ns = ktime_get_mono_fast_ns();

	if (!bg6_v4l2_mem)
		return -ENOMEM;

	mutex_lock(&bg6_v4l2_lock);
	if (bg6_v4l2_pattern != 3 || (now_ns - bg6_v4l2_last_write_ns) > 500000000ULL) {
		bg6_v4l2_render_procedural_frame(bg6_v4l2_mem, (u32)bg6_v4l2_frames_tx);
		bg6_v4l2_frames_tx++;
	}

	avail = min_t(size_t, count, BG6_V4L2_FRAME_SIZE);
	if (copy_to_user(ubuf, bg6_v4l2_mem, avail)) {
		mutex_unlock(&bg6_v4l2_lock);
		return -EFAULT;
	}
	mutex_unlock(&bg6_v4l2_lock);
	return avail;
}

static ssize_t bg6_v4l2_write(struct file *file, const char __user *ubuf,
			      size_t count, loff_t *ppos)
{
	size_t n;

	if (!bg6_v4l2_mem)
		return -ENOMEM;

	n = min_t(size_t, count, BG6_V4L2_FRAME_SIZE);
	mutex_lock(&bg6_v4l2_lock);
	if (copy_from_user(bg6_v4l2_mem, ubuf, n)) {
		mutex_unlock(&bg6_v4l2_lock);
		return -EFAULT;
	}
	if (BG6_V4L2_NUM_BUFS > 1)
		memcpy(bg6_v4l2_mem + BG6_V4L2_FRAME_SIZE, bg6_v4l2_mem, n);
	bg6_v4l2_frames_tx++;
	bg6_v4l2_bytes_tx += n;
	bg6_v4l2_last_write_ns = ktime_get_mono_fast_ns();
	mutex_unlock(&bg6_v4l2_lock);

	wake_up_interruptible(&bg6_v4l2_wq);
	return count;
}

static __poll_t bg6_v4l2_poll(struct file *file, struct poll_table_struct *pts)
{
	poll_wait(file, &bg6_v4l2_wq, pts);
	return EPOLLIN | EPOLLRDNORM | EPOLLOUT | EPOLLWRNORM;
}

static int bg6_v4l2_mmap(struct file *file, struct vm_area_struct *vma)
{
	if (!bg6_v4l2_mem)
		return -ENOMEM;
	return remap_vmalloc_range(vma, bg6_v4l2_mem, 0);
}

static void bg6_fill_pix_format(struct v4l2_pix_format *pix)
{
	pix->width        = bg6_v4l2_width;
	pix->height       = bg6_v4l2_height;
	pix->pixelformat  = bg6_v4l2_pixfmt;
	pix->field        = V4L2_FIELD_NONE;
	pix->bytesperline = bg6_v4l2_width * BG6_V4L2_BPP;
	pix->sizeimage    = BG6_V4L2_FRAME_SIZE;
	pix->colorspace   = V4L2_COLORSPACE_SRGB;
}

static long bg6_v4l2_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	void __user *argp = (void __user *)arg;

	switch (cmd) {
	case VIDIOC_QUERYCAP: {
		struct v4l2_capability cap;

		memset(&cap, 0, sizeof(cap));
		strscpy(cap.driver, "v4l2loopback", sizeof(cap.driver));
		strscpy(cap.card, "BG6-V4L2-Loopback", sizeof(cap.card));
		strscpy(cap.bus_info, "platform:bg6_v4l2_loopback", sizeof(cap.bus_info));
		cap.version = LINUX_VERSION_CODE;
		cap.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OUTPUT |
				  V4L2_CAP_VIDEO_M2M | V4L2_CAP_STREAMING | V4L2_CAP_READWRITE;
		cap.capabilities = cap.device_caps | V4L2_CAP_DEVICE_CAPS;
		if (copy_to_user(argp, &cap, sizeof(cap)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_ENUM_FMT: {
		struct v4l2_fmtdesc f;

		if (copy_from_user(&f, argp, sizeof(f)))
			return -EFAULT;
		if (f.index > 2)
			return -EINVAL;
		f.flags = 0;
		if (f.index == 0) {
			strscpy(f.description, "YUYV 4:2:2", sizeof(f.description));
			f.pixelformat = V4L2_PIX_FMT_YUYV;
		} else if (f.index == 1) {
			strscpy(f.description, "NV21 4:2:0", sizeof(f.description));
			f.pixelformat = V4L2_PIX_FMT_NV21;
		} else {
			strscpy(f.description, "RGB24", sizeof(f.description));
			f.pixelformat = V4L2_PIX_FMT_RGB24;
		}
		if (copy_to_user(argp, &f, sizeof(f)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_G_FMT:
	case VIDIOC_TRY_FMT: {
		struct v4l2_format fmt;

		if (copy_from_user(&fmt, argp, sizeof(fmt)))
			return -EFAULT;
		bg6_fill_pix_format(&fmt.fmt.pix);
		if (copy_to_user(argp, &fmt, sizeof(fmt)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_S_FMT: {
		struct v4l2_format fmt;

		if (copy_from_user(&fmt, argp, sizeof(fmt)))
			return -EFAULT;
		if (fmt.fmt.pix.pixelformat != 0)
			bg6_v4l2_pixfmt = fmt.fmt.pix.pixelformat;
		bg6_fill_pix_format(&fmt.fmt.pix);
		if (copy_to_user(argp, &fmt, sizeof(fmt)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_G_PARM:
	case VIDIOC_S_PARM: {
		struct v4l2_streamparm parm;

		if (copy_from_user(&parm, argp, sizeof(parm)))
			return -EFAULT;
		parm.parm.capture.capability = V4L2_CAP_TIMEPERFRAME;
		parm.parm.capture.timeperframe.numerator = 1;
		parm.parm.capture.timeperframe.denominator = bg6_v4l2_fps ? bg6_v4l2_fps : 30;
		parm.parm.capture.readbuffers = BG6_V4L2_NUM_BUFS;
		if (copy_to_user(argp, &parm, sizeof(parm)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_REQBUFS: {
		struct v4l2_requestbuffers req;

		if (copy_from_user(&req, argp, sizeof(req)))
			return -EFAULT;
		req.count = BG6_V4L2_NUM_BUFS;
		if (copy_to_user(argp, &req, sizeof(req)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_QUERYBUF:
	case VIDIOC_QBUF:
	case VIDIOC_DQBUF: {
		struct v4l2_buffer b;
		u32 idx;

		if (copy_from_user(&b, argp, sizeof(b)))
			return -EFAULT;
		idx = b.index % BG6_V4L2_NUM_BUFS;
		b.index = idx;
		b.bytesused = BG6_V4L2_FRAME_SIZE;
		b.length = BG6_V4L2_FRAME_SIZE;
		b.field = V4L2_FIELD_NONE;
		b.sequence = (u32)bg6_v4l2_frames_tx;
		b.m.offset = idx * BG6_V4L2_FRAME_SIZE;
		b.flags = V4L2_BUF_FLAG_MAPPED | V4L2_BUF_FLAG_DONE;
		if (cmd == VIDIOC_DQBUF && bg6_v4l2_mem) {
			u64 now_ns = ktime_get_mono_fast_ns();

			mutex_lock(&bg6_v4l2_lock);
			if (bg6_v4l2_pattern != 3 || (now_ns - bg6_v4l2_last_write_ns) > 500000000ULL) {
				bg6_v4l2_render_procedural_frame(
					bg6_v4l2_mem + idx * BG6_V4L2_FRAME_SIZE,
					(u32)bg6_v4l2_frames_tx);
				bg6_v4l2_frames_tx++;
			}
			mutex_unlock(&bg6_v4l2_lock);
		} else if (cmd == VIDIOC_QBUF) {
			bg6_v4l2_frames_tx++;
			bg6_v4l2_bytes_tx += BG6_V4L2_FRAME_SIZE;
		}
		if (copy_to_user(argp, &b, sizeof(b)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_STREAMON:
		bg6_v4l2_streaming = 1;
		return 0;
	case VIDIOC_STREAMOFF:
		bg6_v4l2_streaming = 0;
		return 0;
	case VIDIOC_ENUMINPUT: {
		struct v4l2_input inp;

		if (copy_from_user(&inp, argp, sizeof(inp)))
			return -EFAULT;
		if (inp.index != 0)
			return -EINVAL;
		memset(&inp, 0, sizeof(inp));
		strscpy(inp.name, "BG6 Virtual Camera Input", sizeof(inp.name));
		inp.type = V4L2_INPUT_TYPE_CAMERA;
		if (copy_to_user(argp, &inp, sizeof(inp)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_G_INPUT:
	case VIDIOC_G_OUTPUT: {
		int idx = 0;

		if (copy_to_user(argp, &idx, sizeof(idx)))
			return -EFAULT;
		return 0;
	}
	case VIDIOC_S_INPUT:
	case VIDIOC_S_OUTPUT:
		return 0;
	default:
		return -ENOTTY;
	}
}

static const struct v4l2_file_operations bg6_v4l2_fops = {
	.owner          = THIS_MODULE,
	.open           = bg6_v4l2_open,
	.release        = bg6_v4l2_release,
	.read           = bg6_v4l2_read,
	.write          = bg6_v4l2_write,
	.poll           = bg6_v4l2_poll,
	.mmap           = bg6_v4l2_mmap,
	.unlocked_ioctl = bg6_v4l2_ioctl,
#ifdef CONFIG_COMPAT
	.compat_ioctl32 = bg6_v4l2_ioctl,
#endif
};

/* ============================================================================
 * PART 3: /proc/bg6_v4l2_iio Control & Telemetry Interface (0666)
 * ============================================================================
 */
static int bg6_v4l2_iio_proc_show(struct seq_file *m, void *v)
{
	struct iio_dev *indio = bg6_resolve_iio_dev();

	seq_printf(m, "v4l2_device: /dev/video%d\n", bg6_vdev ? bg6_vdev->num : 50);
	seq_printf(m, "v4l2_card: BG6-V4L2-Loopback\n");
	seq_printf(m, "v4l2_resolution: %ux%u\n", bg6_v4l2_width, bg6_v4l2_height);
	seq_printf(m, "v4l2_fps: %u\n", bg6_v4l2_fps);
	seq_printf(m, "v4l2_pattern: %u\n", bg6_v4l2_pattern);
	seq_printf(m, "v4l2_streaming: %u\n", bg6_v4l2_streaming);
	seq_printf(m, "v4l2_frames_tx: %llu\n", bg6_v4l2_frames_tx);
	seq_printf(m, "v4l2_bytes_tx: %llu\n", bg6_v4l2_bytes_tx);
	seq_printf(m, "iio_bound: %d\n", indio ? 1 : 0);
	seq_printf(m, "iio_name: %s\n", (indio && indio->name) ? indio->name : "sprd-sensor");
	seq_printf(m, "iio_sim_mode: %u\n", bg6_iio_sim_mode);
	seq_printf(m, "iio_events_injected: %llu\n", bg6_iio_events_injected);
	seq_printf(m, "accel_bits: 0x%08x 0x%08x 0x%08x\n",
		   bg6_accel_bits[0], bg6_accel_bits[1], bg6_accel_bits[2]);
	seq_printf(m, "gyro_bits: 0x%08x 0x%08x 0x%08x\n",
		   bg6_gyro_bits[0], bg6_gyro_bits[1], bg6_gyro_bits[2]);
	seq_printf(m, "mag_bits: 0x%08x 0x%08x 0x%08x\n",
		   bg6_mag_bits[0], bg6_mag_bits[1], bg6_mag_bits[2]);
	seq_printf(m, "orient_bits: 0x%08x 0x%08x 0x%08x\n",
		   bg6_orient_bits[0], bg6_orient_bits[1], bg6_orient_bits[2]);
	seq_printf(m, "step_count: %u\n", bg6_step_count_int);
	seq_printf(m, "gnss_speed_cms: %u\n", bg6_gnss_speed_cms);
	seq_printf(m, "gnss_bearing_deg: %u\n", bg6_gnss_bearing_deg);
	return 0;
}

static int bg6_v4l2_iio_proc_open(struct inode *inode, struct file *file)
{
	return single_open(file, bg6_v4l2_iio_proc_show, NULL);
}

static ssize_t bg6_v4l2_iio_proc_write(struct file *file, const char __user *ubuf,
				       size_t count, loff_t *ppos)
{
	char kbuf[256];
	size_t len;
	u32 h, f0, f1, f2, f3, f4, f5;

	if (count == 0)
		return 0;
	len = min_t(size_t, count, sizeof(kbuf) - 1);
	if (copy_from_user(kbuf, ubuf, len))
		return -EFAULT;
	kbuf[len] = '\0';

	if (sscanf(kbuf, "IIO %u %x %x %x %x %x %x", &h, &f0, &f1, &f2, &f3, &f4, &f5) == 7) {
		u32 bits[6] = { f0, f1, f2, f3, f4, f5 };

		if (h == BG6_HANDLE_ACCEL) {
			bg6_accel_bits[0] = f0; bg6_accel_bits[1] = f1; bg6_accel_bits[2] = f2;
		} else if (h == BG6_HANDLE_GYRO) {
			bg6_gyro_bits[0] = f0; bg6_gyro_bits[1] = f1; bg6_gyro_bits[2] = f2;
		} else if (h == BG6_HANDLE_MAG) {
			bg6_mag_bits[0] = f0; bg6_mag_bits[1] = f1; bg6_mag_bits[2] = f2;
		} else if (h == BG6_HANDLE_ORIENT) {
			bg6_orient_bits[0] = f0; bg6_orient_bits[1] = f1; bg6_orient_bits[2] = f2;
		} else if (h == BG6_HANDLE_ROT_VEC) {
			bg6_rotvec_bits[0] = f0; bg6_rotvec_bits[1] = f1;
			bg6_rotvec_bits[2] = f2; bg6_rotvec_bits[3] = f3;
		} else if (h == BG6_HANDLE_STEP_CNT) {
			bg6_step_cnt_bits = f0;
			bg6_step_count_int = f1;
		}
		bg6_iio_push_sensor_pkt((u16)h, bits);
	} else if (sscanf(kbuf, "MODE %u %u %u", &h, &f0, &f1) >= 1) {
		bg6_iio_sim_mode = h;
		if (sscanf(kbuf, "MODE %u %u %u", &h, &f0, &f1) == 3) {
			bg6_gnss_speed_cms = f0;
			bg6_gnss_bearing_deg = f1;
		}
	} else if (sscanf(kbuf, "V4L2 %u %u", &h, &f0) >= 1) {
		bg6_v4l2_pattern = h;
		if (f0 >= 5 && f0 <= 120)
			bg6_v4l2_fps = f0;
	}
	return count;
}

static const struct file_operations bg6_v4l2_iio_proc_fops = {
	.owner   = THIS_MODULE,
	.open    = bg6_v4l2_iio_proc_open,
	.read    = seq_read,
	.write   = bg6_v4l2_iio_proc_write,
	.llseek  = seq_lseek,
	.release = single_release,
};

/* ============================================================================
 * PART 4: Existing Ring-0 Rust TinyML + XNU-VM Governor FFI Bridge
 * ============================================================================
 */
static void bg6_sample_vm_telemetry(void)
{
}

static void bg6_rust_timer_cb(struct timer_list *t)
{
	u64 now_ns = ktime_get_mono_fast_ns();
	u32 nr_run = nr_running();
	u32 av1 = (u32)((avenrun[0] * 100UL) >> FSHIFT);

	bg6_rust_on_sched_tick(nr_run, av1, now_ns);
	mod_timer(&bg6_rust_timer, jiffies + msecs_to_jiffies(100));
}

static void bg6_rust_ih_event(struct input_handle *handle,
			      unsigned int type, unsigned int code, int value)
{
	bg6_rust_on_input_event((u16)type, (u16)code, (s32)value,
				ktime_get_mono_fast_ns());
}

static int bg6_rust_ih_connect(struct input_handler *handler,
			       struct input_dev *dev,
			       const struct input_device_id *id)
{
	struct input_handle *handle;
	int err;

	if (!dev || !dev->name)
		return -ENODEV;

	/* Only observe physical touch panel & hardware keys; never open sensors */
	if (!strstr(dev->name, "chipone-tddi") &&
	    !strstr(dev->name, "adaptive_ts") &&
	    !strstr(dev->name, "gpio-keys"))
		return -ENODEV;

	handle = kzalloc(sizeof(*handle), GFP_KERNEL);
	if (!handle)
		return -ENOMEM;

	handle->dev = dev;
	handle->handler = handler;
	handle->name = "bg6_rust_ring0_ih";

	err = input_register_handle(handle);
	if (err) {
		kfree(handle);
		return err;
	}

	err = input_open_device(handle);
	if (err) {
		input_unregister_handle(handle);
		kfree(handle);
		return err;
	}

	pr_info("bg6_rust_ring0: bound Ring-0 Rust observer to input '%s'\n",
		dev->name);
	return 0;
}

static void bg6_rust_ih_disconnect(struct input_handle *handle)
{
	input_close_device(handle);
	input_unregister_handle(handle);
	kfree(handle);
}

static const struct input_device_id bg6_rust_ih_ids[] = {
	{ .driver_info = 1 },
	{ },
};

static struct input_handler bg6_rust_input_handler = {
	.event		= bg6_rust_ih_event,
	.connect	= bg6_rust_ih_connect,
	.disconnect	= bg6_rust_ih_disconnect,
	.name		= "bg6_rust_ring0",
	.id_table	= bg6_rust_ih_ids,
};

static ssize_t enabled_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
{
	return scnprintf(buf, PAGE_SIZE, "0x%04x\n", bg6_lru_gen_enabled_val);
}

static ssize_t enabled_store(struct kobject *kobj, struct kobj_attribute *attr,
			     const char *buf, size_t count)
{
	u32 val;

	if (kstrtou32(buf, 0, &val) < 0)
		return -EINVAL;
	bg6_lru_gen_enabled_val = val;
	return count;
}

static ssize_t min_ttl_ms_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
{
	return scnprintf(buf, PAGE_SIZE, "%u\n", bg6_lru_gen_min_ttl_val);
}

static ssize_t min_ttl_ms_store(struct kobject *kobj, struct kobj_attribute *attr,
				const char *buf, size_t count)
{
	u32 val;

	if (kstrtou32(buf, 0, &val) < 0)
		return -EINVAL;
	bg6_lru_gen_min_ttl_val = val;
	return count;
}

static struct kobj_attribute lru_gen_enabled_attr = __ATTR_RW(enabled);
static struct kobj_attribute lru_gen_min_ttl_attr = __ATTR_RW(min_ttl_ms);

static struct attribute *bg6_lru_gen_attrs[] = {
	&lru_gen_enabled_attr.attr,
	&lru_gen_min_ttl_attr.attr,
	NULL,
};

static const struct attribute_group bg6_lru_gen_attr_group = {
	.attrs = bg6_lru_gen_attrs,
};

static int bg6_rust_proc_show(struct seq_file *m, void *v)
{
	char *kbuf;
	size_t n;

	kbuf = kzalloc(3072, GFP_KERNEL);
	if (!kbuf)
		return -ENOMEM;

	bg6_sample_vm_telemetry();
	n = bg6_rust_proc_render((u8 *)kbuf, 3072, ktime_get_mono_fast_ns());
	if (n > 0)
		seq_write(m, kbuf, n);

	kfree(kbuf);
	return 0;
}

static int bg6_rust_proc_open(struct inode *inode, struct file *file)
{
	return single_open(file, bg6_rust_proc_show, NULL);
}

static ssize_t bg6_rust_proc_write(struct file *file, const char __user *ubuf,
				   size_t count, loff_t *ppos)
{
	char kbuf[256];
	size_t len;
	s32 rc;

	if (count == 0)
		return 0;
	len = min_t(size_t, count, sizeof(kbuf) - 1);
	if (copy_from_user(kbuf, ubuf, len))
		return -EFAULT;
	kbuf[len] = '\0';

	rc = bg6_rust_proc_command((const u8 *)kbuf, len);
	if (rc < 0)
		return rc;
	return count;
}

static const struct file_operations bg6_rust_proc_fops = {
	.owner		= THIS_MODULE,
	.open		= bg6_rust_proc_open,
	.read		= seq_read,
	.write		= bg6_rust_proc_write,
	.llseek		= seq_lseek,
	.release	= single_release,
};

static int __init bg6_rust_driver_init(void)
{
	struct proc_dir_entry *ent;
	struct proc_dir_entry *v4l2_ent;
	int rc;

	bg6_rust_init(ktime_get_mono_fast_ns());
	bg6_sample_vm_telemetry();

	ent = proc_create("bg6_rust_engine", 0640, NULL, &bg6_rust_proc_fops);
	if (ent)
		proc_set_user(ent, KUIDT_INIT(0), KGIDT_INIT(2000));

	v4l2_ent = proc_create("bg6_v4l2_iio", 0666, NULL, &bg6_v4l2_iio_proc_fops);
	if (v4l2_ent)
		proc_set_user(v4l2_ent, KUIDT_INIT(0), KGIDT_INIT(2000));

	/* Register Ring-0 V4L2 Loopback Virtual Camera (/dev/video50) */
	bg6_v4l2_mem = vmalloc_user(BG6_V4L2_TOTAL_MEM);
	if (bg6_v4l2_mem) {
		bg6_v4l2_render_procedural_frame(bg6_v4l2_mem, 0);
		strscpy(bg6_v4l2_dev.name, "bg6_v4l2_loopback", sizeof(bg6_v4l2_dev.name));
		if (v4l2_device_register(NULL, &bg6_v4l2_dev) == 0) {
			bg6_vdev = video_device_alloc();
			if (bg6_vdev) {
				strscpy(bg6_vdev->name, "BG6-V4L2-Loopback", sizeof(bg6_vdev->name));
				bg6_vdev->v4l2_dev = &bg6_v4l2_dev;
				bg6_vdev->fops = &bg6_v4l2_fops;
				bg6_vdev->release = video_device_release;
				bg6_vdev->vfl_dir = VFL_DIR_M2M;
				bg6_vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE |
							V4L2_CAP_VIDEO_OUTPUT |
							V4L2_CAP_VIDEO_M2M |
							V4L2_CAP_STREAMING |
							V4L2_CAP_READWRITE;
				if (video_register_device(bg6_vdev, VFL_TYPE_GRABBER, 50) < 0) {
					video_device_release(bg6_vdev);
					bg6_vdev = NULL;
				} else {
					pr_info("bg6_rust_ring0: V4L2 Loopback registered at /dev/video%d\n",
						bg6_vdev->num);
				}
			}
		}
	}

	if (mm_kobj) {
		bg6_lru_gen_kobj = kobject_create_and_add("lru_gen", mm_kobj);
		if (bg6_lru_gen_kobj) {
			rc = sysfs_create_group(bg6_lru_gen_kobj, &bg6_lru_gen_attr_group);
			if (rc)
				pr_warn("bg6_rust_ring0: lru_gen sysfs group rc=%d\n", rc);
		}
	}

	rc = input_register_handler(&bg6_rust_input_handler);
	if (rc)
		pr_warn("bg6_rust_ring0: input_register_handler rc=%d\n", rc);

	timer_setup(&bg6_rust_timer, bg6_rust_timer_cb, TIMER_DEFERRABLE);
	mod_timer(&bg6_rust_timer, jiffies + msecs_to_jiffies(100));

	timer_setup(&bg6_iio_sim_timer, bg6_iio_sim_timer_cb, 0);
	mod_timer(&bg6_iio_sim_timer, jiffies + msecs_to_jiffies(20));

	pr_info("bg6_rust_ring0: Ring-0 Rust + V4L2 Loopback + IIO SensorHub Engine v8.7 online\n");
	return 0;
}
late_initcall(bg6_rust_driver_init);
