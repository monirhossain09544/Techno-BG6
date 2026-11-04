
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <dirent.h>

static void write_node(const char* path, const char* val) {
    int fd = open(path, O_WRONLY | O_CLOEXEC);
    if (fd >= 0) {
        write(fd, val, strlen(val));
        close(fd);
    }
}

static void apply_silicon_tuning() {
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
    write_node("/proc/sys/unisched/group_ctl/top-app/boost", "25");
    write_node("/proc/sys/unisched/group_ctl/foreground/boost", "10");
    write_node("/proc/sys/unisched/group_ctl/system/boost", "5");
    write_node("/proc/sys/unisched/group_ctl/background/boost", "-10");

    // 4. UClamp & CPU Shares (matched to ums9230 power_resource_file_info.xml)
    write_node("/dev/cpuctl/top-app/cpu.shares", "5120");
    write_node("/dev/cpuctl/top-app/cpu.uclamp.min", "25");
    write_node("/dev/cpuctl/top-app/cpu.uclamp.latency_sensitive", "1");
    write_node("/dev/cpuctl/foreground/cpu.shares", "4196");
    write_node("/dev/cpuctl/foreground/cpu.uclamp.min", "5");
    write_node("/dev/cpuctl/background/cpu.shares", "512");
    write_node("/dev/cpuctl/background/cpu.uclamp.max", "40");
    write_node("/dev/cpuctl/background/cpu.uclamp.latency_sensitive", "0");
    write_node("/dev/cpuctl/system-background/cpu.uclamp.max", "50");

    // 5. Asymmetric Cpuset Pinning (keep background off Cortex-A75 cpu6-7)
    write_node("/dev/cpuset/top-app/cpus", "0-7");
    write_node("/dev/cpuset/foreground/cpus", "0-7");
    write_node("/dev/cpuset/background/cpus", "0-3");
    write_node("/dev/cpuset/system-background/cpus", "0-5");
    write_node("/dev/cpuset/restricted/cpus", "0-3");

    // 6. ARM Mali-G57 MP1 (23100000.gpu) 60Hz Frame-Aligned Polling
    write_node("/sys/class/devfreq/23100000.gpu/polling_interval", "16");

    // 7. Kernel 5.15.149 MGLRU (Multi-Gen LRU) & ZRAM LZ4 VM Tuning
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

    // 8. Block I/O Queue Tuning for eMMC/UFS & DM Partitions
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

static void enforce_lte_and_display_guard() {
    // Disable broken IPv6 Router Advertisements on Unisoc seth_lte0..3 interfaces
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
    write_node("/proc/sys/net/ipv4/tcp_fastopen", "3");
    write_node("/proc/sys/net/ipv4/tcp_ecn", "0");
}

int main(int argc, char** argv) {
    // Always enforce 60Hz modeid=0 and silicon tuning immediately
    system("/system/bin/setprop persist.vendor.hwc.display.modeid 0");
    system("/system/bin/setprop keystore.module_hash.sent true");
    apply_silicon_tuning();
    enforce_lte_and_display_guard();

    if (argc > 1 && strcmp(argv[1], "--boot") == 0) {
        return 0;
    }

    // Daemon mode: re-verify silicon tuning and LTE/display guards every 15 seconds
    int tick = 0;
    while (1) {
        sleep(15);
        enforce_lte_and_display_guard();
        if (++tick >= 4) {
            // Re-assert silicon scheduler & cpuset tuning every 60 seconds in case vendor power HAL resets them
            apply_silicon_tuning();
            tick = 0;
        }
    }
    return 0;
}
