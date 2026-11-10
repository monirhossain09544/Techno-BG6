use std::fs::{File, OpenOptions};
use std::io::{Read, Write};
use std::net::{TcpListener, TcpStream};
use std::sync::atomic::{AtomicBool, AtomicI32, AtomicU64, Ordering};
use std::sync::Mutex;
use std::thread;
use std::time::{Duration, Instant};

// Unisoc sprd-sensor (iio:device0) Sensor Handles (drivers/iio/sprd_hub_new/shub_core.h)
const HANDLE_ACCEL: u16 = 1;
const HANDLE_MAG: u16 = 2;
const HANDLE_ORIENT: u16 = 3;
const HANDLE_GYRO: u16 = 4;
const HANDLE_GRAVITY: u16 = 9;
const HANDLE_LIN_ACCEL: u16 = 10;
const HANDLE_ROT_VEC: u16 = 11;
const HANDLE_STEP_DET: u16 = 18;
const HANDLE_STEP_CNT: u16 = 19;

// Kinematic Modes
const MODE_PASSTHROUGH: i32 = 0;
const MODE_WALKING: i32 = 1;
const MODE_RUNNING: i32 = 2;
const MODE_DRIVING: i32 = 3;
const MODE_GNSS_SYNC: i32 = 4;
const MODE_MANUAL_GIMBAL: i32 = 5;

static DAEMON_STARTED: AtomicBool = AtomicBool::new(false);
static ACTIVE_MODE: AtomicI32 = AtomicI32::new(MODE_GNSS_SYNC);
static V4L2_PATTERN: AtomicI32 = AtomicI32::new(0);
static V4L2_FPS: AtomicI32 = AtomicI32::new(30);
static STEP_COUNTER: AtomicU64 = AtomicU64::new(1240);
static OBS_CLIENTS: AtomicI32 = AtomicI32::new(0);
static OBS_FRAMES_RX: AtomicU64 = AtomicU64::new(0);
static LOCAL_IIO_PKTS: AtomicU64 = AtomicU64::new(0);
static LOCAL_V4L2_FRAMES: AtomicU64 = AtomicU64::new(0);

#[derive(Clone, Copy)]
struct StudioState {
    target_speed_kmh: f32,
    target_heading_deg: f32,
    manual_pitch_deg: f32,
    manual_roll_deg: f32,
    manual_yaw_deg: f32,
    manual_linear_g: f32,
    // Live computed 6-DOF IMU telemetry
    ax: f32,
    ay: f32,
    az: f32,
    gx: f32,
    gy: f32,
    gz: f32,
    mx: f32,
    my: f32,
    mz: f32,
    lin_ax: f32,
    lin_ay: f32,
    lin_az: f32,
    pitch_deg: f32,
    roll_deg: f32,
    yaw_deg: f32,
    qx: f32,
    qy: f32,
    qz: f32,
    qw: f32,
    g_force: f32,
    // GNSS sync state
    gnss_lat: f64,
    gnss_lon: f64,
    gnss_speed_kmh: f32,
    gnss_bearing_deg: f32,
    gnss_synced: bool,
}

static STUDIO_STATE: Mutex<StudioState> = Mutex::new(StudioState {
    target_speed_kmh: 5.4,
    target_heading_deg: 42.0,
    manual_pitch_deg: 12.5,
    manual_roll_deg: -4.2,
    manual_yaw_deg: 42.0,
    manual_linear_g: 0.0,
    ax: 0.0,
    ay: 1.85,
    az: 9.63,
    gx: 0.04,
    gy: -0.02,
    gz: 0.01,
    mx: 21.4,
    my: 28.9,
    mz: -26.5,
    lin_ax: 0.0,
    lin_ay: 0.0,
    lin_az: 0.0,
    pitch_deg: 11.0,
    roll_deg: 0.0,
    yaw_deg: 42.0,
    qx: 0.09,
    qy: 0.0,
    qz: 0.35,
    qw: 0.93,
    g_force: 1.00,
    gnss_lat: 23.810331,
    gnss_lon: 90.412521,
    gnss_speed_kmh: 5.4,
    gnss_bearing_deg: 42.0,
    gnss_synced: true,
});

fn write_proc_cmd(cmd: &str) -> bool {
    if let Ok(mut f) = OpenOptions::new().write(true).open("/proc/bg6_v4l2_iio") {
        let _ = f.write_all(cmd.as_bytes());
        return true;
    }
    false
}

fn push_iio_packet_raw(handle: u16, b0: u32, b1: u32, b2: u32, b3: u32) {
    let cmd = format!(
        "IIO {} {:08x} {:08x} {:08x} {:08x} 00000000 00000000\n",
        handle, b0, b1, b2, b3
    );
    if write_proc_cmd(&cmd) {
        LOCAL_IIO_PKTS.fetch_add(1, Ordering::Relaxed);
    }
}

fn push_iio_packet(handle: u16, f0: f32, f1: f32, f2: f32, f3: f32) {
    push_iio_packet_raw(handle, f0.to_bits(), f1.to_bits(), f2.to_bits(), f3.to_bits());
}

fn read_gnss_coords() -> Option<(f64, f64, Option<f32>, Option<f32>)> {
    let paths = [
        "/mnt/phh/kernel_gps.conf",
        "/data/local/tmp/kernel_gps.conf",
        "/proc/bg6_gnss_override",
    ];
    for p in &paths {
        if let Ok(mut f) = File::open(p) {
            let mut s = String::new();
            if f.read_to_string(&mut s).is_ok() {
                for line in s.lines() {
                    let t = line.trim();
                    if t.is_empty() || t.starts_with('#') {
                        continue;
                    }
                    let parts: Vec<&str> = t.split(',').collect();
                    if parts.len() >= 2 {
                        if let (Ok(lat), Ok(lon)) = (parts[0].trim().parse::<f64>(), parts[1].trim().parse::<f64>()) {
                            if lat.abs() > 0.0001 || lon.abs() > 0.0001 {
                                let spd = parts.get(3).and_then(|v| v.trim().parse::<f32>().ok());
                                let brg = parts.get(4).and_then(|v| v.trim().parse::<f32>().ok());
                                return Some((lat, lon, spd, brg));
                            }
                        }
                    }
                }
            }
        }
    }
    None
}

fn haversine_m_and_bearing(lat1: f64, lon1: f64, lat2: f64, lon2: f64) -> (f64, f32) {
    let r = 6371000.0_f64;
    let phi1 = lat1.to_radians();
    let phi2 = lat2.to_radians();
    let dphi = (lat2 - lat1).to_radians();
    let dlam = (lon2 - lon1).to_radians();

    let a = (dphi / 2.0).sin().powi(2) + phi1.cos() * phi2.cos() * (dlam / 2.0).sin().powi(2);
    let c = 2.0 * a.sqrt().atan2((1.0 - a).sqrt());
    let dist = r * c;

    let y = dlam.sin() * phi2.cos();
    let x = phi1.cos() * phi2.sin() - phi1.sin() * phi2.cos() * dlam.cos();
    let brg = (y.atan2(x).to_degrees() as f32 + 360.0) % 360.0;
    (dist, brg)
}

fn euler_to_quaternion(yaw_deg: f32, pitch_deg: f32, roll_deg: f32) -> (f32, f32, f32, f32) {
    let cy = (yaw_deg.to_radians() * 0.5).cos();
    let sy = (yaw_deg.to_radians() * 0.5).sin();
    let cp = (pitch_deg.to_radians() * 0.5).cos();
    let sp = (pitch_deg.to_radians() * 0.5).sin();
    let cr = (roll_deg.to_radians() * 0.5).cos();
    let sr = (roll_deg.to_radians() * 0.5).sin();

    let qw = cr * cp * cy + sr * sp * sy;
    let qx = sr * cp * cy - cr * sp * sy;
    let qy = cr * sp * cy + sr * cp * sy;
    let qz = cr * cp * sy - sr * sp * cy;
    (qx, qy, qz, qw)
}

fn trigger_v4l2_ring0_frame() {
    LOCAL_V4L2_FRAMES.fetch_add(1, Ordering::Relaxed);
    if let Ok(mut f) = OpenOptions::new().read(true).open("/dev/video50") {
        let mut probe = [0u8; 4096];
        let _ = f.read(&mut probe);
    }
}

fn handle_obs_client(mut stream: TcpStream) {
    OBS_CLIENTS.fetch_add(1, Ordering::Relaxed);
    let _ = stream.set_read_timeout(Some(Duration::from_secs(5)));
    let frame_size = 640 * 480 * 2; // YUYV 4:2:2 (614,400 bytes)
    let mut buf = vec![0u8; frame_size];
    let mut v4l2_out = OpenOptions::new().write(true).open("/dev/video50").ok();

    loop {
        let mut read_total = 0usize;
        let mut ok = true;
        while read_total < frame_size {
            match stream.read(&mut buf[read_total..]) {
                Ok(0) => {
                    ok = false;
                    break;
                }
                Ok(n) => read_total += n,
                Err(_) => {
                    ok = false;
                    break;
                }
            }
        }
        if !ok {
            break;
        }
        OBS_FRAMES_RX.fetch_add(1, Ordering::Relaxed);
        if v4l2_out.is_none() {
            v4l2_out = OpenOptions::new().write(true).open("/dev/video50").ok();
        }
        if let Some(ref mut vf) = v4l2_out {
            let _ = vf.write_all(&buf);
        }
    }
    OBS_CLIENTS.fetch_sub(1, Ordering::Relaxed);
}

fn ensure_studio_daemon_started() {
    if DAEMON_STARTED
        .compare_exchange(false, true, Ordering::SeqCst, Ordering::SeqCst)
        .is_err()
    {
        return;
    }

    // 1. Background OBS TCP :5050 Virtual Camera Receiver Thread
    thread::spawn(|| {
        if let Ok(listener) = TcpListener::bind("0.0.0.0:5050") {
            for conn in listener.incoming().flatten() {
                thread::spawn(move || handle_obs_client(conn));
            }
        }
    });

    // 2. Background 25Hz 6-DOF Biomechanical Gait & Vehicle Kinematic Engine Thread
    thread::spawn(|| {
        let start_inst = Instant::now();
        let mut last_gnss: Option<(f64, f64, Instant)> = None;
        let mut step_phase_acc: f32 = 0.0;
        let mut tick_count: u64 = 0;

        loop {
            let dt = 0.040_f32; // 25 Hz (40ms)
            let t = start_inst.elapsed().as_secs_f32();
            tick_count += 1;

            // Poll GNSS coordinates every 5 ticks (200ms)
            if tick_count % 5 == 0 {
                if let Some((lat, lon, opt_spd, opt_brg)) = read_gnss_coords() {
                    let now = Instant::now();
                    if let Ok(mut st) = STUDIO_STATE.lock() {
                        if let Some((prev_lat, prev_lon, prev_t)) = last_gnss {
                            let elapsed = now.duration_since(prev_t).as_secs_f64().max(0.15);
                            let (dist_m, brg) = haversine_m_and_bearing(prev_lat, prev_lon, lat, lon);
                            if dist_m > 0.08 {
                                let calc_kmh = ((dist_m / elapsed) * 3.6) as f32;
                                st.gnss_speed_kmh = opt_spd.unwrap_or(calc_kmh.clamp(0.0, 180.0));
                                st.gnss_bearing_deg = opt_brg.unwrap_or(brg);
                            } else if let Some(s) = opt_spd {
                                st.gnss_speed_kmh = s;
                                if let Some(b) = opt_brg {
                                    st.gnss_bearing_deg = b;
                                }
                            }
                        }
                        st.gnss_lat = lat;
                        st.gnss_lon = lon;
                        st.gnss_synced = true;
                    }
                    last_gnss = Some((lat, lon, now));
                }
            }

            let mode = ACTIVE_MODE.load(Ordering::Relaxed);
            let mut st_copy = match STUDIO_STATE.lock() {
                Ok(g) => *g,
                Err(e) => *e.into_inner(),
            };

            let (eff_mode, speed_kmh, heading_deg) = match mode {
                MODE_GNSS_SYNC => {
                    let s = st_copy.gnss_speed_kmh;
                    let b = st_copy.gnss_bearing_deg;
                    let sub_mode = if s < 7.5 {
                        MODE_WALKING
                    } else if s < 18.5 {
                        MODE_RUNNING
                    } else {
                        MODE_DRIVING
                    };
                    (sub_mode, s.max(4.8), b)
                }
                MODE_WALKING => (MODE_WALKING, st_copy.target_speed_kmh.max(4.8), st_copy.target_heading_deg),
                MODE_RUNNING => (MODE_RUNNING, st_copy.target_speed_kmh.max(11.2), st_copy.target_heading_deg),
                MODE_DRIVING => (MODE_DRIVING, st_copy.target_speed_kmh.max(42.0), st_copy.target_heading_deg),
                MODE_MANUAL_GIMBAL => (MODE_MANUAL_GIMBAL, 0.0, st_copy.manual_yaw_deg),
                _ => (MODE_PASSTHROUGH, 0.0, st_copy.target_heading_deg),
            };

            let mut step_triggered = false;

            if eff_mode == MODE_WALKING || eff_mode == MODE_RUNNING {
                let is_run = eff_mode == MODE_RUNNING;
                let step_freq = if is_run {
                    2.68_f32 + (speed_kmh - 10.0).max(0.0) * 0.04
                } else {
                    1.78_f32 + (speed_kmh - 4.5).max(0.0) * 0.08
                };

                let prev_phase = step_phase_acc;
                step_phase_acc = (step_phase_acc + step_freq * dt) % 1.0;
                if step_phase_acc < prev_phase {
                    step_triggered = true;
                    STEP_COUNTER.fetch_add(1, Ordering::Relaxed);
                }

                let omega = 2.0 * std::f32::consts::PI * step_freq * t;
                let vert_amp = if is_run { 6.4_f32 } else { 2.35_f32 };
                let sway_amp = if is_run { 1.85_f32 } else { 0.82_f32 };
                let fwd_amp = if is_run { 2.90_f32 } else { 1.15_f32 };

                // Biomechanical heel-strike 1st + 2nd harmonic
                let lin_az = vert_amp * omega.sin() + 0.38 * vert_amp * (2.0 * omega - 0.78).sin();
                let lin_ax = sway_amp * (0.5 * omega).sin();
                let lin_ay = fwd_amp * omega.cos();

                let pitch_deg = 12.0 + (if is_run { 6.5 } else { 2.8 }) * omega.sin();
                let roll_deg = (if is_run { 4.8 } else { 2.2 }) * (0.5 * omega).cos();
                let yaw_deg = (heading_deg + 1.8 * (0.5 * omega).sin() + 360.0) % 360.0;

                let pr = pitch_deg.to_radians();
                let rr = roll_deg.to_radians();
                let gx_grav = -9.80665 * rr.sin();
                let gy_grav = 9.80665 * pr.sin();
                let gz_grav = 9.80665 * pr.cos() * rr.cos();

                st_copy.lin_ax = lin_ax;
                st_copy.lin_ay = lin_ay;
                st_copy.lin_az = lin_az;
                st_copy.ax = gx_grav + lin_ax;
                st_copy.ay = gy_grav + lin_ay;
                st_copy.az = gz_grav + lin_az;
                st_copy.gx = (if is_run { 0.85 } else { 0.34 }) * omega.cos();
                st_copy.gy = (if is_run { 0.52 } else { 0.21 }) * (0.5 * omega).sin();
                st_copy.gz = (if is_run { 0.38 } else { 0.16 }) * (0.5 * omega).cos();
                st_copy.pitch_deg = pitch_deg;
                st_copy.roll_deg = roll_deg;
                st_copy.yaw_deg = yaw_deg;
            } else if eff_mode == MODE_DRIVING {
                let road_vib = 0.28 * (2.0 * std::f32::consts::PI * 14.5 * t).sin();
                let corner_wave = (2.0 * std::f32::consts::PI * 0.18 * t).sin();
                let accel_wave = (2.0 * std::f32::consts::PI * 0.11 * t).cos();

                let lin_ax = 1.65 * corner_wave; // Lateral centripetal cornering force
                let lin_ay = 1.20 * accel_wave;  // Longitudinal throttle/brake surge
                let lin_az = road_vib;

                let pitch_deg = 8.5 - 1.8 * accel_wave;
                let roll_deg = -2.4 * corner_wave;
                let yaw_deg = (heading_deg + 12.0 * corner_wave + 360.0) % 360.0;

                let pr = pitch_deg.to_radians();
                let rr = roll_deg.to_radians();
                st_copy.lin_ax = lin_ax;
                st_copy.lin_ay = lin_ay;
                st_copy.lin_az = lin_az;
                st_copy.ax = -9.80665 * rr.sin() + lin_ax;
                st_copy.ay = 9.80665 * pr.sin() + lin_ay;
                st_copy.az = 9.80665 * pr.cos() * rr.cos() + lin_az;
                st_copy.gx = -0.05 * accel_wave;
                st_copy.gy = 0.08 * corner_wave;
                st_copy.gz = 0.22 * corner_wave;
                st_copy.pitch_deg = pitch_deg;
                st_copy.roll_deg = roll_deg;
                st_copy.yaw_deg = yaw_deg;
            } else if eff_mode == MODE_MANUAL_GIMBAL {
                let pr = st_copy.manual_pitch_deg.to_radians();
                let rr = st_copy.manual_roll_deg.to_radians();
                let extra_a = st_copy.manual_linear_g * 9.80665;
                st_copy.lin_ax = 0.0;
                st_copy.lin_ay = extra_a;
                st_copy.lin_az = 0.0;
                st_copy.ax = -9.80665 * rr.sin();
                st_copy.ay = 9.80665 * pr.sin() + extra_a;
                st_copy.az = 9.80665 * pr.cos() * rr.cos();
                st_copy.gx = 0.01 * (t * 3.0).sin();
                st_copy.gy = 0.01 * (t * 2.3).cos();
                st_copy.gz = 0.0;
                st_copy.pitch_deg = st_copy.manual_pitch_deg;
                st_copy.roll_deg = st_copy.manual_roll_deg;
                st_copy.yaw_deg = st_copy.manual_yaw_deg;
            }

            // Compute Geomagnetic Vector (uT) & Rotation Quaternion from Euler
            let yr = st_copy.yaw_deg.to_radians();
            st_copy.mx = 34.0 * yr.sin();
            st_copy.my = 34.0 * yr.cos();
            st_copy.mz = -28.5;
            let (qx, qy, qz, qw) = euler_to_quaternion(st_copy.yaw_deg, st_copy.pitch_deg, st_copy.roll_deg);
            st_copy.qx = qx;
            st_copy.qy = qy;
            st_copy.qz = qz;
            st_copy.qw = qw;
            st_copy.g_force = ((st_copy.ax * st_copy.ax + st_copy.ay * st_copy.ay + st_copy.az * st_copy.az).sqrt()) / 9.80665;

            if let Ok(mut g) = STUDIO_STATE.lock() {
                *g = st_copy;
            }

            // Push 6-DOF packets into Ring-0 IIO SensorHub (/proc/bg6_v4l2_iio -> iio_push_to_buffers)
            if eff_mode != MODE_PASSTHROUGH {
                push_iio_packet(HANDLE_ACCEL, st_copy.ax, st_copy.ay, st_copy.az, 0.0);
                push_iio_packet(HANDLE_GYRO, st_copy.gx, st_copy.gy, st_copy.gz, 0.0);
                push_iio_packet(HANDLE_ORIENT, st_copy.yaw_deg, st_copy.pitch_deg, st_copy.roll_deg, 0.0);
                push_iio_packet(HANDLE_ROT_VEC, st_copy.qx, st_copy.qy, st_copy.qz, st_copy.qw);
                push_iio_packet(HANDLE_LIN_ACCEL, st_copy.lin_ax, st_copy.lin_ay, st_copy.lin_az, 0.0);
                if tick_count % 4 == 0 {
                    push_iio_packet(HANDLE_MAG, st_copy.mx, st_copy.my, st_copy.mz, 0.0);
                    let grav_x = st_copy.ax - st_copy.lin_ax;
                    let grav_y = st_copy.ay - st_copy.lin_ay;
                    let grav_z = st_copy.az - st_copy.lin_az;
                    push_iio_packet(HANDLE_GRAVITY, grav_x, grav_y, grav_z, 0.0);
                }
                if step_triggered {
                    let steps_u64 = STEP_COUNTER.load(Ordering::Relaxed);
                    let steps = steps_u64 as f32;
                    push_iio_packet(HANDLE_STEP_DET, 1.0, 0.0, 0.0, 0.0);
                    push_iio_packet_raw(HANDLE_STEP_CNT, steps.to_bits(), steps_u64 as u32, 0, 0);
                }
                if tick_count == 1 || tick_count % 50 == 0 {
                    let spd_cms = (speed_kmh * 27.7778) as u32;
                    let brg_u = (heading_deg as i32).rem_euclid(360) as u32;
                    let _ = write_proc_cmd(&format!("MODE {} {} {}\n", mode, spd_cms, brg_u));
                }
            }

            // Trigger Ring-0 V4L2 Frame Generator if no external OBS client is streaming
            if OBS_CLIENTS.load(Ordering::Relaxed) == 0 && tick_count % 2 == 0 {
                trigger_v4l2_ring0_frame();
            }

            thread::sleep(Duration::from_millis(40));
        }
    });
}

fn read_proc_kv() -> (bool, bool, u64, u64, u64) {
    let v4l2_exists = std::path::Path::new("/dev/video50").exists();
    let local_frames = LOCAL_V4L2_FRAMES.load(Ordering::Relaxed);
    if let Ok(mut f) = File::open("/proc/bg6_v4l2_iio") {
        let mut s = String::new();
        if f.read_to_string(&mut s).is_ok() {
            let mut iio_bound = false;
            let mut v4l2_tx = 0u64;
            let mut v4l2_bytes = 0u64;
            let mut iio_ev = 0u64;
            for line in s.lines() {
                if let Some((k, v)) = line.split_once(':') {
                    let key = k.trim();
                    let val = v.trim();
                    match key {
                        "iio_bound" => iio_bound = val == "1",
                        "v4l2_frames_tx" => v4l2_tx = val.parse().unwrap_or(0),
                        "v4l2_bytes_tx" => v4l2_bytes = val.parse().unwrap_or(0),
                        "iio_events_injected" => iio_ev = val.parse().unwrap_or(0),
                        _ => {}
                    }
                }
            }
            let eff_frames = v4l2_tx.max(local_frames);
            let eff_bytes = v4l2_bytes.max(eff_frames * 614400);
            return (true, iio_bound, eff_frames, eff_bytes, iio_ev);
        }
    }
    let iio_dev_exists = std::path::Path::new("/dev/iio:device0").exists()
        || std::path::Path::new("/sys/bus/iio/devices/iio:device0").exists();
    (
        v4l2_exists,
        iio_dev_exists,
        LOCAL_V4L2_FRAMES.load(Ordering::Relaxed),
        LOCAL_V4L2_FRAMES.load(Ordering::Relaxed) * 614400,
        LOCAL_IIO_PKTS.load(Ordering::Relaxed),
    )
}

// Minimal Zero-Dependency JNI FFI Types
#[repr(C)]
pub struct JNIEnv {
    functions: *const *const libc::c_void,
}
pub type JClass = *mut libc::c_void;
pub type JString = *mut libc::c_void;
pub type JInt = i32;
pub type JFloat = f32;
pub type JBoolean = u8;

unsafe fn new_jstring(env: *mut JNIEnv, s: &str) -> JString {
    let cstr = std::ffi::CString::new(s).unwrap_or_default();
    let fns = (*env).functions;
    // JNI NewStringUTF is index 167 in JNINativeInterface_
    let new_string_utf: extern "C" fn(*mut JNIEnv, *const libc::c_char) -> JString =
        std::mem::transmute(*fns.add(167));
    new_string_utf(env, cstr.as_ptr())
}

#[no_mangle]
pub unsafe extern "C" fn Java_com_android_settings_v4l2sensor_MainActivity_nativeGetStudioTelemetryJson(
    env: *mut JNIEnv,
    _clazz: JClass,
) -> JString {
    ensure_studio_daemon_started();
    let (kernel_ready, iio_bound, v4l2_tx, v4l2_bytes, iio_ev) = read_proc_kv();
    let st = match STUDIO_STATE.lock() {
        Ok(g) => *g,
        Err(e) => *e.into_inner(),
    };
    let mode = ACTIVE_MODE.load(Ordering::Relaxed);
    let pat = V4L2_PATTERN.load(Ordering::Relaxed);
    let fps = V4L2_FPS.load(Ordering::Relaxed);
    let steps = STEP_COUNTER.load(Ordering::Relaxed);
    let obs_c = OBS_CLIENTS.load(Ordering::Relaxed);
    let obs_rx = OBS_FRAMES_RX.load(Ordering::Relaxed);

    let json = format!(
        concat!(
            "{{",
            "\"kernel_ready\":{},",
            "\"iio_bound\":{},",
            "\"v4l2_device\":\"/dev/video50\",",
            "\"v4l2_card\":\"BG6-V4L2-Loopback\",",
            "\"v4l2_width\":640,\"v4l2_height\":480,\"v4l2_pixfmt\":\"YUYV 4:2:2\",",
            "\"v4l2_pattern\":{},\"v4l2_fps\":{},",
            "\"v4l2_frames_tx\":{},\"v4l2_bytes_tx\":{},",
            "\"obs_port\":5050,\"obs_clients\":{},\"obs_frames_rx\":{},",
            "\"iio_device\":\"iio:device0 (sprd-sensor)\",",
            "\"iio_events_injected\":{},\"step_count\":{},",
            "\"mode\":{},",
            "\"target_speed_kmh\":{:.2},\"target_heading_deg\":{:.1},",
            "\"gnss_lat\":{:.6},\"gnss_lon\":{:.6},",
            "\"gnss_speed_kmh\":{:.2},\"gnss_bearing_deg\":{:.1},\"gnss_synced\":{},",
            "\"imu\":{{",
            "\"ax\":{:.3},\"ay\":{:.3},\"az\":{:.3},",
            "\"gx\":{:.3},\"gy\":{:.3},\"gz\":{:.3},",
            "\"mx\":{:.2},\"my\":{:.2},\"mz\":{:.2},",
            "\"lin_ax\":{:.3},\"lin_ay\":{:.3},\"lin_az\":{:.3},",
            "\"pitch_deg\":{:.2},\"roll_deg\":{:.2},\"yaw_deg\":{:.1},",
            "\"qx\":{:.3},\"qy\":{:.3},\"qz\":{:.3},\"qw\":{:.3},",
            "\"g_force\":{:.3}",
            "}}",
            "}}"
        ),
        if kernel_ready { "true" } else { "false" },
        if iio_bound { "true" } else { "false" },
        pat,
        fps,
        v4l2_tx,
        v4l2_bytes,
        obs_c,
        obs_rx,
        iio_ev,
        steps,
        mode,
        st.target_speed_kmh,
        st.target_heading_deg,
        st.gnss_lat,
        st.gnss_lon,
        st.gnss_speed_kmh,
        st.gnss_bearing_deg,
        if st.gnss_synced { "true" } else { "false" },
        st.ax,
        st.ay,
        st.az,
        st.gx,
        st.gy,
        st.gz,
        st.mx,
        st.my,
        st.mz,
        st.lin_ax,
        st.lin_ay,
        st.lin_az,
        st.pitch_deg,
        st.roll_deg,
        st.yaw_deg,
        st.qx,
        st.qy,
        st.qz,
        st.qw,
        st.g_force
    );

    new_jstring(env, &json)
}

#[no_mangle]
pub unsafe extern "C" fn Java_com_android_settings_v4l2sensor_MainActivity_nativeSetKinematicMode(
    _env: *mut JNIEnv,
    _clazz: JClass,
    mode: JInt,
    speed_kmh: JFloat,
    heading_deg: JFloat,
) -> JBoolean {
    ensure_studio_daemon_started();
    let m = mode.clamp(0, 5);
    ACTIVE_MODE.store(m, Ordering::SeqCst);
    if let Ok(mut st) = STUDIO_STATE.lock() {
        st.target_speed_kmh = speed_kmh.clamp(0.0, 220.0);
        st.target_heading_deg = (heading_deg % 360.0 + 360.0) % 360.0;
    }
    let speed_cms = (speed_kmh * 27.7778) as i32;
    let brg = (heading_deg as i32).rem_euclid(360);
    let _ = write_proc_cmd(&format!("MODE {} {} {}\n", m, speed_cms, brg));
    1
}

#[no_mangle]
pub unsafe extern "C" fn Java_com_android_settings_v4l2sensor_MainActivity_nativeSetManualGimbal(
    _env: *mut JNIEnv,
    _clazz: JClass,
    pitch_deg: JFloat,
    roll_deg: JFloat,
    yaw_deg: JFloat,
    linear_g: JFloat,
) -> JBoolean {
    ensure_studio_daemon_started();
    ACTIVE_MODE.store(MODE_MANUAL_GIMBAL, Ordering::SeqCst);
    if let Ok(mut st) = STUDIO_STATE.lock() {
        st.manual_pitch_deg = pitch_deg.clamp(-89.0, 89.0);
        st.manual_roll_deg = roll_deg.clamp(-89.0, 89.0);
        st.manual_yaw_deg = (yaw_deg % 360.0 + 360.0) % 360.0;
        st.manual_linear_g = linear_g.clamp(-3.0, 3.0);
    }
    let _ = write_proc_cmd("MODE 5 0 0\n");
    1
}

#[no_mangle]
pub unsafe extern "C" fn Java_com_android_settings_v4l2sensor_MainActivity_nativeSetV4l2Config(
    _env: *mut JNIEnv,
    _clazz: JClass,
    pattern: JInt,
    fps: JInt,
) -> JBoolean {
    ensure_studio_daemon_started();
    let p = pattern.clamp(0, 3);
    let f = fps.clamp(5, 120);
    V4L2_PATTERN.store(p, Ordering::SeqCst);
    V4L2_FPS.store(f, Ordering::SeqCst);
    let _ = write_proc_cmd(&format!("V4L2 {} {}\n", p, f));
    trigger_v4l2_ring0_frame();
    1
}

#[no_mangle]
pub unsafe extern "C" fn Java_com_android_settings_v4l2sensor_MainActivity_nativeTriggerStepBurst(
    _env: *mut JNIEnv,
    _clazz: JClass,
    steps: JInt,
) -> JBoolean {
    ensure_studio_daemon_started();
    let add = steps.clamp(1, 500) as u64;
    let total = STEP_COUNTER.fetch_add(add, Ordering::SeqCst) + add;
    push_iio_packet(HANDLE_STEP_DET, 1.0, 0.0, 0.0, 0.0);
    push_iio_packet_raw(HANDLE_STEP_CNT, (total as f32).to_bits(), total as u32, 0, 0);
    1
}
