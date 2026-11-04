#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/system_properties.h>
#include <unistd.h>

static void write_node(const char* path, const char* val) {
    int fd = open(path, O_WRONLY | O_CLOEXEC);
    if (fd >= 0) {
        (void)write(fd, val, strlen(val));
        close(fd);
    }
}

static void setup_4gb_zram(void) {
    // Check if zram0 disksize is less than 4GB (4294967296); if uninitialized (0), set 4GB LZ4
    int fd = open("/sys/block/zram0/disksize", O_RDONLY | O_CLOEXEC);
    if (fd >= 0) {
        char buf[64] = {0};
        ssize_t n = read(fd, buf, sizeof(buf) - 1);
        close(fd);
        if (n > 0 && atoll(buf) == 0) {
            write_node("/sys/block/zram0/comp_algorithm", "lz4");
            write_node("/sys/block/zram0/disksize", "4294967296");
        }
    }
}

static void apply_silicon_tuning(void) {
    setup_4gb_zram();

    // 1. Unisoc T606 (ums9230 / qogirl6) CPU Cluster 0 (6x Cortex-A55 @ 614MHz - 1.82GHz)
    write_node("/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq", "614400");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq", "1820000");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/up_rate_limit_us", "500");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/down_rate_limit_us", "10000");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/uscfreq/freq_margin", "15");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/schedutil/up_rate_limit_us", "500");
    write_node("/sys/devices/system/cpu/cpufreq/policy0/schedutil/down_rate_limit_us", "10000");

    // 2. Unisoc T606 (ums9230 / qogirl6) CPU Cluster 1 (2x Cortex-A75 @ 614MHz - 2.028GHz)
    write_node("/sys/devices/system/cpu/cpufreq/policy6/scaling_min_freq", "614400");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/scaling_max_freq", "2028000");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/up_rate_limit_us", "500");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/down_rate_limit_us", "15000");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/uscfreq/freq_margin", "20");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/schedutil/up_rate_limit_us", "500");
    write_node("/sys/devices/system/cpu/cpufreq/policy6/schedutil/down_rate_limit_us", "15000");

    // 3. Unisoc Energy-Aware Scheduler (unisched) & WALT I/O Busy
    write_node("/proc/sys/unisched/sched_walt_io_is_busy", "1");
    write_node("/proc/sys/unisched/group_ctl/root/boost", "0");
    write_node("/proc/sys/unisched/group_ctl/top-app/boost", "25");
    write_node("/proc/sys/unisched/group_ctl/foreground/boost", "10");
    write_node("/proc/sys/unisched/group_ctl/system/boost", "5");
    write_node("/proc/sys/unisched/group_ctl/background/boost", "-10");
    write_node("/proc/sys/unisched/group_ctl/camera-daemon/boost", "15");

    // 4. UClamp & CPU Shares
    write_node("/dev/cpuctl/top-app/cpu.shares", "5120");
    write_node("/dev/cpuctl/top-app/cpu.uclamp.min", "25");
    write_node("/dev/cpuctl/top-app/cpu.uclamp.max", "100");
    write_node("/dev/cpuctl/top-app/cpu.uclamp.latency_sensitive", "1");

    write_node("/dev/cpuctl/foreground/cpu.shares", "4196");
    write_node("/dev/cpuctl/foreground/cpu.uclamp.min", "10");
    write_node("/dev/cpuctl/foreground/cpu.uclamp.max", "100");
    write_node("/dev/cpuctl/foreground/cpu.uclamp.latency_sensitive", "1");

    write_node("/dev/cpuctl/system/cpu.uclamp.min", "10");
    write_node("/dev/cpuctl/system/cpu.uclamp.max", "100");
    write_node("/dev/cpuctl/system/cpu.uclamp.latency_sensitive", "1");

    write_node("/dev/cpuctl/background/cpu.shares", "512");
    write_node("/dev/cpuctl/background/cpu.uclamp.min", "0");
    write_node("/dev/cpuctl/background/cpu.uclamp.max", "40");
    write_node("/dev/cpuctl/background/cpu.uclamp.latency_sensitive", "0");

    write_node("/dev/cpuctl/system-background/cpu.uclamp.min", "0");
    write_node("/dev/cpuctl/system-background/cpu.uclamp.max", "50");
    write_node("/dev/cpuctl/system-background/cpu.uclamp.latency_sensitive", "0");

    // 5. Asymmetric Cpuset Pinning (keep background off Cortex-A75 cpu6-7)
    write_node("/dev/cpuset/top-app/cpus", "0-7");
    write_node("/dev/cpuset/foreground/cpus", "0-7");
    write_node("/dev/cpuset/background/cpus", "0-3");
    write_node("/dev/cpuset/system-background/cpus", "0-5");
    write_node("/dev/cpuset/restricted/cpus", "0-3");

    // 6. ARM Mali-G57 MP1 (23100000.gpu) 60Hz Frame-Aligned Polling
    write_node("/sys/class/devfreq/23100000.gpu/polling_interval", "16");

    // 7. Kernel 5.15.149 MGLRU & ZRAM LZ4 VM Tuning
    write_node("/sys/kernel/mm/lru_gen/enabled", "7");
    write_node("/sys/kernel/mm/lru_gen/min_ttl_ms", "1000");
    write_node("/proc/sys/vm/page-cluster", "0");
    write_node("/proc/sys/vm/swappiness", "100");
    write_node("/proc/sys/vm/vfs_cache_pressure", "80");
    write_node("/proc/sys/vm/watermark_scale_factor", "30");
    write_node("/proc/sys/vm/dirty_ratio", "15");
    write_node("/proc/sys/vm/dirty_background_ratio", "5");
    write_node("/proc/sys/vm/compaction_proactiveness", "0");
    write_node("/proc/sys/kernel/sched_migration_cost_ns", "500000");

    // 8. Block I/O Queue Tuning
    const char* devs[] = {"mmcblk0", "sda", "sdb", "sdc", "dm-0", "dm-1", "dm-2", "dm-3", "dm-4", "dm-5"};
    char path[128];
    for (size_t i = 0; i < sizeof(devs)/sizeof(devs[0]); ++i) {
        snprintf(path, sizeof(path), "/sys/block/%s/queue/read_ahead_kb", devs[i]);
        write_node(path, "128");
        snprintf(path, sizeof(path), "/sys/block/%s/queue/nr_requests", devs[i]);
        write_node(path, "64");
        snprintf(path, sizeof(path), "/sys/block/%s/queue/iostats", devs[i]);
        write_node(path, "0");
        snprintf(path, sizeof(path), "/sys/block/%s/queue/add_random", devs[i]);
        write_node(path, "0");
    }
}

static void enforce_lte_and_display_guard(void) {
    __system_property_set("persist.vendor.hwc.display.modeid", "0");
    __system_property_set("persist.sys.phh.unisoc_color_transform_workaround", "1");
    __system_property_set("keystore.module_hash.sent", "true");

    write_node("/proc/sys/net/ipv6/conf/all/accept_ra", "0");
    write_node("/proc/sys/net/ipv6/conf/default/accept_ra", "0");
    const char* lte_ifaces[] = {"seth_lte0", "seth_lte1", "seth_lte2", "seth_lte3"};
    char path[128];
    for (int i = 0; i < 4; ++i) {
        snprintf(path, sizeof(path), "/proc/sys/net/ipv6/conf/%s/accept_ra", lte_ifaces[i]);
        write_node(path, "0");
        snprintf(path, sizeof(path), "/sys/class/net/%s/tx_queue_len", lte_ifaces[i]);
        write_node(path, "1000");
    }
    write_node("/sys/class/net/wlan0/tx_queue_len", "1000");
    write_node("/proc/sys/net/ipv4/tcp_fastopen", "3");
    write_node("/proc/sys/net/ipv4/tcp_ecn", "0");
    write_node("/proc/sys/net/core/netdev_max_backlog", "5000");
    write_node("/proc/sys/net/core/rmem_max", "8388608");
    write_node("/proc/sys/net/core/wmem_max", "8388608");
}

int main(int argc, char** argv) {
    enforce_lte_and_display_guard();
    apply_silicon_tuning();

    if (argc > 1 && strcmp(argv[1], "--boot") == 0) {
        return 0;
    }

    int tick = 0;
    while (1) {
        sleep(15);
        enforce_lte_and_display_guard();
        if (++tick >= 4) {
            apply_silicon_tuning();
            tick = 0;
        }
    }
    return 0;
}
