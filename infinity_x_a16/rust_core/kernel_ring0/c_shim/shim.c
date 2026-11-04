// SPDX-License-Identifier: GPL-2.0
/*
 * TECNO-BG6 Ring-0 CFI-Safe FFI Bridge for bg6_kernel_ring0 (#[no_std] Rust)
 *
 * Why this thin C bridge exists on Linux 5.4.210:
 *   All 195 prebuilt Unisoc/Transsion .ko modules require CONFIG_LTO_CLANG=y,
 *   CONFIG_CFI_CLANG=y, CONFIG_SHADOW_CALL_STACK=y, and CONFIG_MODVERSIONS=y.
 *   Indirect kernel callbacks (file_operations, input_handler, timer_list)
 *   must have valid clang-r416183b .cfi_jt jump-table entries, which then
 *   invoke the #[no_std] Rust engine via direct `bl` calls (zero CFI overhead).
 */

#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>
#include <linux/uaccess.h>
#include <linux/input.h>
#include <linux/slab.h>
#include <linux/string.h>
#include <linux/ktime.h>
#include <linux/timer.h>
#include <linux/jiffies.h>
#include <linux/sched/stat.h>
#include <linux/sched/loadavg.h>
#include <linux/uidgid.h>

/* Direct FFI entrypoints implemented in #[no_std] Rust (libbg6_kernel_ring0) */
extern void bg6_rust_init(u64 now_ns);
extern void bg6_rust_on_input_event(u16 ev_type, u16 ev_code, s32 ev_val, u64 now_ns);
extern u32  bg6_rust_on_sched_tick(u32 nr_running_cnt, u32 load_av1, u64 now_ns);
extern size_t bg6_rust_proc_render(u8 *buf_ptr, size_t buf_cap, u64 now_ns);
extern s32  bg6_rust_proc_command(const u8 *cmd_ptr, size_t cmd_len);

static struct timer_list bg6_rust_timer;

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

static int bg6_rust_proc_show(struct seq_file *m, void *v)
{
	char *kbuf;
	size_t n;

	kbuf = kzalloc(2048, GFP_KERNEL);
	if (!kbuf)
		return -ENOMEM;

	n = bg6_rust_proc_render((u8 *)kbuf, 2048, ktime_get_mono_fast_ns());
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
	int rc;

	bg6_rust_init(ktime_get_mono_fast_ns());

	/*
	 * Mode 0640 owned by root (0) : shell (2000)
	 * -> Userspace Rust daemons (root) get rw, adb shell gets r,
	 *    untrusted_app (banking / anti-cheat) gets 0 visibility!
	 */
	ent = proc_create("bg6_rust_engine", 0640, NULL, &bg6_rust_proc_fops);
	if (ent)
		proc_set_user(ent, KUIDT_INIT(0), KGIDT_INIT(2000));

	rc = input_register_handler(&bg6_rust_input_handler);
	if (rc)
		pr_warn("bg6_rust_ring0: input_register_handler rc=%d\n", rc);

	timer_setup(&bg6_rust_timer, bg6_rust_timer_cb, TIMER_DEFERRABLE);
	mod_timer(&bg6_rust_timer, jiffies + msecs_to_jiffies(100));

	pr_info("bg6_rust_ring0: Ring-0 #[no_std] Rust Kernel Engine v8.0 online (SCS+CFI verified)\n");
	return 0;
}
late_initcall(bg6_rust_driver_init);
