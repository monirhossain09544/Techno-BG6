.class public Landroid/os/Process;
.super Ljava/lang/Object;
.source "Process.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Process$ProcessStartResult;
    }
.end annotation


# static fields
.field public static final greylist-max-o AUDIOSERVER_UID:I = 0x411

.field public static final whitelist BLUETOOTH_UID:I = 0x3ea

.field public static final greylist-max-o CAMERASERVER_UID:I = 0x417

.field public static final blacklist CLAT_UID:I = 0x405

.field public static final blacklist CREDSTORE_UID:I = 0x434

.field public static final blacklist DNS_TETHER_UID:I = 0x41c

.field public static final greylist-max-r DRM_UID:I = 0x3fb

.field public static final blacklist EXTERNAL_STORAGE_GID:I = 0x435

.field public static final blacklist EXT_DATA_RW_GID:I = 0x436

.field public static final blacklist EXT_OBB_RW_GID:I = 0x437

.field public static final greylist-max-o FIRST_APPLICATION_CACHE_GID:I = 0x4e20

.field public static final whitelist FIRST_APPLICATION_UID:I = 0x2710

.field public static final blacklist FIRST_APP_ZYGOTE_ISOLATED_UID:I = 0x15f90

.field public static final greylist-max-r FIRST_ISOLATED_UID:I = 0x182b8

.field public static final blacklist FIRST_SDK_SANDBOX_UID:I = 0x4e20

.field public static final greylist-max-o FIRST_SHARED_APPLICATION_GID:I = 0xc350

.field public static final blacklist FSVERITY_CERT_UID:I = 0x433

.field public static final greylist-max-o INCIDENTD_UID:I = 0x42b

.field public static final blacklist INET_GID:I = 0xbbb

.field public static final whitelist INVALID_PID:I = -0x1

.field public static final whitelist INVALID_UID:I = -0x1

.field public static final greylist-max-o KEYSTORE_UID:I = 0x3f9

.field public static final greylist-max-o LAST_APPLICATION_CACHE_GID:I = 0x752f

.field public static final whitelist LAST_APPLICATION_UID:I = 0x4e1f

.field public static final blacklist LAST_APP_ZYGOTE_ISOLATED_UID:I = 0x182b7

.field public static final greylist-max-r LAST_ISOLATED_UID:I = 0x1869f

.field public static final blacklist LAST_SDK_SANDBOX_UID:I = 0x752f

.field public static final greylist-max-o LAST_SHARED_APPLICATION_GID:I = 0xea5f

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "Process"

.field public static final greylist-max-r LOG_UID:I = 0x3ef

.field public static final greylist-max-o MEDIA_RW_GID:I = 0x3ff

.field public static final greylist-max-r MEDIA_UID:I = 0x3f5

.field public static final blacklist NETWORK_STACK_UID:I = 0x431

.field public static final greylist-max-r NFC_UID:I = 0x403
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o NOBODY_UID:I = 0x270f

.field public static final blacklist NUM_UIDS_PER_APP_ZYGOTE:I = 0x64

.field public static final greylist-max-o OTA_UPDATE_UID:I = 0x425

.field public static final greylist-max-o PACKAGE_INFO_GID:I = 0x408

.field public static final whitelist PHONE_UID:I = 0x3e9

.field private static final blacklist PIDFD_SUPPORTED:I = 0x1

.field private static final blacklist PIDFD_UNKNOWN:I = 0x0

.field private static final blacklist PIDFD_UNSUPPORTED:I = 0x2

.field public static final greylist-max-o PROC_CHAR:I = 0x800

.field public static final greylist-max-r PROC_COMBINE:I = 0x100

.field public static final blacklist PROC_NEWLINE_TERM:I = 0xa

.field public static final greylist-max-r PROC_OUT_FLOAT:I = 0x4000

.field public static final greylist-max-r PROC_OUT_LONG:I = 0x2000

.field public static final greylist-max-r PROC_OUT_STRING:I = 0x1000

.field public static final greylist-max-r PROC_PARENS:I = 0x200

.field public static final greylist-max-r PROC_QUOTES:I = 0x400

.field public static final greylist-max-r PROC_SPACE_TERM:I = 0x20

.field public static final greylist-max-r PROC_TAB_TERM:I = 0x9

.field public static final greylist-max-r PROC_TERM_MASK:I = 0xff

.field public static final greylist-max-r PROC_ZERO_TERM:I = 0x0

.field public static final whitelist ROOT_UID:I = 0x0

.field public static final greylist-max-o SCHED_BATCH:I = 0x3

.field public static final greylist-max-o SCHED_FIFO:I = 0x1

.field public static final greylist-max-o SCHED_IDLE:I = 0x5

.field public static final greylist-max-o SCHED_OTHER:I = 0x0

.field public static final greylist-max-o SCHED_RESET_ON_FORK:I = 0x40000000

.field public static final greylist-max-o SCHED_RR:I = 0x2

.field public static final blacklist SDCARD_RW_GID:I = 0x3f7

.field public static final blacklist SDK_SANDBOX_VIRTUAL_UID:I = 0x442

.field public static final greylist-max-o SE_UID:I = 0x42c

.field public static final greylist-max-o SHARED_RELRO_UID:I = 0x40d

.field public static final greylist-max-o SHARED_USER_GID:I = 0x270d

.field public static final whitelist SHELL_UID:I = 0x7d0

.field public static final blacklist SIGNAL_DEFAULT:I = 0x0

.field public static final whitelist SIGNAL_KILL:I = 0x9

.field public static final whitelist SIGNAL_QUIT:I = 0x3

.field public static final whitelist SIGNAL_USR1:I = 0xa

.field public static final blacklist STATSD_UID:I = 0x42a

.field public static final whitelist SYSTEM_UID:I = 0x3e8

.field public static final greylist-max-o THREAD_GROUP_AUDIO_APP:I = 0x3

.field public static final greylist-max-o THREAD_GROUP_AUDIO_SYS:I = 0x4

.field public static final blacklist THREAD_GROUP_BACKGROUND:I = 0x0

.field public static final greylist-max-o THREAD_GROUP_DEFAULT:I = -0x1

.field public static final greylist-max-o THREAD_GROUP_FOREGROUND:I = 0x1

.field public static final blacklist THREAD_GROUP_FOREGROUND_WINDOW:I = 0x8

.field public static final greylist-max-o THREAD_GROUP_RESTRICTED:I = 0x7

.field public static final greylist-max-o THREAD_GROUP_RT_APP:I = 0x6

.field public static final greylist-max-o THREAD_GROUP_SYSTEM:I = 0x2

.field public static final greylist-max-o THREAD_GROUP_TOP_APP:I = 0x5

.field public static final whitelist THREAD_PRIORITY_AUDIO:I = -0x10

.field public static final whitelist THREAD_PRIORITY_BACKGROUND:I = 0xa

.field public static final whitelist THREAD_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist THREAD_PRIORITY_DISPLAY:I = -0x4

.field public static final whitelist THREAD_PRIORITY_FOREGROUND:I = -0x2

.field public static final whitelist THREAD_PRIORITY_LESS_FAVORABLE:I = 0x1

.field public static final whitelist THREAD_PRIORITY_LOWEST:I = 0x13

.field public static final whitelist THREAD_PRIORITY_MORE_FAVORABLE:I = -0x1

.field public static final blacklist THREAD_PRIORITY_TOP_APP_BOOST:I = -0xa

.field public static final whitelist THREAD_PRIORITY_URGENT_AUDIO:I = -0x13

.field public static final whitelist THREAD_PRIORITY_URGENT_DISPLAY:I = -0x8

.field public static final whitelist THREAD_PRIORITY_VIDEO:I = -0xa

.field public static final blacklist UWB_UID:I = 0x43b

.field public static final greylist-max-r VPN_UID:I = 0x3f8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o WEBVIEW_ZYGOTE_UID:I = 0x41d

.field public static final whitelist WIFI_UID:I = 0x3f2

.field public static final blacklist ZYGOTE_POLICY_FLAG_BATCH_LAUNCH:I = 0x2

.field public static final blacklist ZYGOTE_POLICY_FLAG_EMPTY:I = 0x0

.field public static final blacklist ZYGOTE_POLICY_FLAG_LATENCY_SENSITIVE:I = 0x1

.field public static final blacklist ZYGOTE_POLICY_FLAG_NATIVE_PROCESS:I = 0x8

.field public static final blacklist ZYGOTE_POLICY_FLAG_SYSTEM_PROCESS:I = 0x4

.field public static final blacklist ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

.field private static blacklist sArgV0:Ljava/lang/String;

.field private static blacklist sPidFdSupported:I

.field private static greylist-max-o sStartElapsedRealtime:J

.field private static blacklist sStartRequestedElapsedRealtime:J

.field private static blacklist sStartRequestedUptimeMillis:J

.field private static greylist-max-o sStartUptimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 638
    const/4 v0, 0x0

    sput v0, Landroid/os/Process;->sPidFdSupported:I

    .line 685
    new-instance v0, Landroid/os/ZygoteProcess;

    invoke-direct {v0}, Landroid/os/ZygoteProcess;-><init>()V

    sput-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist checkPid(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1489
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalThrows(II)V

    .line 1490
    return-void
.end method

.method public static final blacklist checkTid(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1468
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Process;->sendTgSignalThrows(III)V

    .line 1469
    return-void
.end method

.method public static final native blacklist createProcessGroup(II)I
.end method

.method public static final native blacklist freezeCgroupUid(IZ)V
.end method

.method public static final blacklist getAdvertisedMem()J
    .registers 4

    .line 1564
    invoke-static {}, Landroid/sysprop/MemoryProperties;->memory_ddr_size()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "0KB"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1565
    invoke-static {v0}, Landroid/os/FileUtils;->parseSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 1567
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1f

    .line 1568
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0

    .line 1571
    :cond_1f
    return-wide v0
.end method

.method public static final whitelist getAppUidForSdkSandboxUid(I)I
    .registers 2

    .line 991
    invoke-static {p0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 994
    add-int/lit16 p0, p0, -0x2710

    return p0

    .line 992
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input UID is not an SDK sandbox UID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final native whitelist getElapsedCpuTime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static final native whitelist getExclusiveCores()[I
.end method

.method public static final native greylist getFreeMemory()J
.end method

.method public static final native whitelist getGidForName(Ljava/lang/String;)I
.end method

.method public static final native blacklist getMemAvailable()J
.end method

.method public static final native blacklist getMemFree()J
.end method

.method public static final greylist getParentPid(I)I
    .registers 6

    .line 1074
    const-string v0, "PPid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1075
    nop

    .line 1076
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "/status"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1078
    aget-wide v0, v1, v2

    long-to-int p0, v0

    return p0
.end method

.method public static final native greylist getPids(Ljava/lang/String;[I)[I
.end method

.method public static final native greylist getPidsForCommands([Ljava/lang/String;)[I
.end method

.method public static final native greylist-max-o getProcessGroup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native greylist getPss(I)J
.end method

.method public static final native blacklist getRss(I)[J
.end method

.method public static final native blacklist getSchedAffinity(I)[J
.end method

.method public static final whitelist getSdkSandboxUidForAppUid(I)I
    .registers 2

    .line 1023
    invoke-static {p0}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1026
    add-int/lit16 p0, p0, 0x2710

    return p0

    .line 1024
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input UID is not an app UID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist getStartElapsedRealtime()J
    .registers 2

    .line 814
    sget-wide v0, Landroid/os/Process;->sStartElapsedRealtime:J

    return-wide v0
.end method

.method public static whitelist getStartRequestedElapsedRealtime()J
    .registers 2

    .line 836
    sget-wide v0, Landroid/os/Process;->sStartRequestedElapsedRealtime:J

    return-wide v0
.end method

.method public static whitelist getStartRequestedUptimeMillis()J
    .registers 2

    .line 849
    sget-wide v0, Landroid/os/Process;->sStartRequestedUptimeMillis:J

    return-wide v0
.end method

.method public static whitelist getStartUptimeMillis()J
    .registers 2

    .line 823
    sget-wide v0, Landroid/os/Process;->sStartUptimeMillis:J

    return-wide v0
.end method

.method public static final greylist-max-o getThreadGroupLeader(I)I
    .registers 6

    .line 1089
    const-string v0, "Tgid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1090
    nop

    .line 1091
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    .line 1092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "/status"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1093
    aget-wide v0, v1, v2

    long-to-int p0, v0

    return p0
.end method

.method public static final native whitelist getThreadPriority(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static final native blacklist getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native greylist getTotalMemory()J
.end method

.method public static final native whitelist getUidForName(Ljava/lang/String;)I
.end method

.method public static final greylist getUidForPid(I)I
    .registers 6

    .line 1059
    const-string v0, "Uid:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1060
    nop

    .line 1061
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    .line 1062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "/status"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1063
    aget-wide v0, v1, v2

    long-to-int p0, v0

    return p0
.end method

.method public static final whitelist is64Bit()Z
    .registers 1

    .line 866
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    return v0
.end method

.method public static whitelist isApplicationUid(I)Z
    .registers 1

    .line 935
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o isCoreUid(I)Z
    .registers 1

    .line 924
    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    return p0
.end method

.method public static final whitelist isIsolated()Z
    .registers 1

    .line 943
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    return v0
.end method

.method public static final greylist isIsolated(I)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 955
    invoke-static {p0}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result p0

    return p0
.end method

.method public static final whitelist isIsolatedUid(I)Z
    .registers 2

    .line 963
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 964
    const v0, 0x182b8

    if-lt p0, v0, :cond_e

    const v0, 0x1869f

    if-le p0, v0, :cond_18

    :cond_e
    const v0, 0x15f90

    if-lt p0, v0, :cond_1a

    const v0, 0x182b7

    if-gt p0, v0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static final native blacklist isProcessFrozen(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final whitelist isSdkSandbox()Z
    .registers 1

    .line 1034
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    return v0
.end method

.method public static final whitelist isSdkSandboxUid(I)Z
    .registers 2

    .line 975
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 976
    const/16 v0, 0x4e20

    if-lt p0, v0, :cond_e

    const/16 v0, 0x752f

    if-gt p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static final greylist-max-o isThreadInProcess(II)Z
    .registers 6

    .line 1758
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1760
    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/task/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget p1, Landroid/system/OsConstants;->F_OK:I

    invoke-static {p0, p1}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_3a
    .catchall {:try_start_5 .. :try_end_28} :catchall_35

    if-eqz p0, :cond_30

    .line 1761
    nop

    .line 1768
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1761
    const/4 p0, 0x1

    return p0

    .line 1763
    :cond_30
    nop

    .line 1768
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1763
    return v1

    .line 1768
    :catchall_35
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1769
    throw p0

    .line 1765
    :catch_3a
    move-exception p0

    .line 1766
    nop

    .line 1768
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1766
    return v1
.end method

.method public static final whitelist killProcess(I)V
    .registers 2

    .line 1446
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 1447
    return-void
.end method

.method public static final blacklist killProcessByPidfdQuiet(II)V
    .registers 4

    .line 1529
    if-gtz p0, :cond_3

    .line 1530
    return-void

    .line 1532
    :cond_3
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_12

    .line 1533
    invoke-static {p0, v1, p1}, Landroid/os/Process;->nativeKillProcessByPidfdQuiet(III)I

    move-result v0

    .line 1534
    if-ltz v0, :cond_12

    .line 1535
    return-void

    .line 1539
    :cond_12
    if-ltz p1, :cond_1b

    invoke-static {p0}, Landroid/os/Process;->getUidForPid(I)I

    move-result v0

    if-eq v0, p1, :cond_1b

    .line 1540
    return-void

    .line 1542
    :cond_1b
    invoke-static {p0, v1}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1543
    return-void
.end method

.method public static final native greylist-max-o killProcessGroup(II)I
.end method

.method public static final greylist-max-o killProcessQuiet(I)V
    .registers 2

    .line 1519
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignalQuiet(II)V

    .line 1520
    return-void
.end method

.method public static final whitelist myPid()I
    .registers 1

    .line 875
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v0

    return v0
.end method

.method public static final greylist myPpid()I
    .registers 1

    .line 884
    invoke-static {}, Landroid/system/Os;->getppid()I

    move-result v0

    return v0
.end method

.method public static whitelist myProcessName()Ljava/lang/String;
    .registers 1

    .line 1425
    sget-object v0, Landroid/os/Process;->sArgV0:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist myProcessName$ravenwood()Ljava/lang/String;
    .registers 1

    .line 1431
    const-string/jumbo v0, "ravenwood"

    return-object v0
.end method

.method public static final whitelist myTid()I
    .registers 1

    .line 893
    invoke-static {}, Landroid/system/Os;->gettid()I

    move-result v0

    return v0
.end method

.method public static final whitelist myUid()I
    .registers 1

    .line 904
    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v0

    return v0
.end method

.method public static whitelist myUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 915
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist nativeKillProcessByPidfdQuiet(III)I
.end method

.method private static native blacklist nativePidFdOpen(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public static blacklist openPidFd(II)Ljava/io/FileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1877
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1878
    const/4 p0, 0x0

    return-object p0

    .line 1880
    :cond_8
    if-nez p1, :cond_21

    .line 1884
    :try_start_a
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 1885
    invoke-static {p0, p1}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_16} :catch_17

    .line 1886
    return-object v0

    .line 1887
    :catch_17
    move-exception p0

    .line 1888
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 1889
    invoke-virtual {p1, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1890
    throw p1

    .line 1881
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final native greylist parseProcLine([BII[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native greylist readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z
.end method

.method public static final native greylist readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V
.end method

.method public static final native greylist-max-o removeAllProcessGroups()V
.end method

.method public static final native whitelist sendSignal(II)V
.end method

.method public static final native greylist-max-p sendSignalQuiet(II)V
.end method

.method private static native blacklist sendSignalThrows(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static final native blacklist sendSignalToProcessGroup(III)Z
.end method

.method private static native blacklist sendTgSignalThrows(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public static setArgV0(Ljava/lang/String;)V
    .registers 1

    .line 1408
    sput-object p0, Landroid/os/Process;->sArgV0:Ljava/lang/String;

    .line 1409
    invoke-static {p0}, Landroid/os/Process;->setArgV0Native(Ljava/lang/String;)V

    .line 1410
    invoke-static {p0}, Ldalvik/system/VMDebug;->setCurrentProcessName(Ljava/lang/String;)V

    .line 1411
    return-void
.end method

.method private static native blacklist setArgV0Native(Ljava/lang/String;)V
.end method

.method public static final greylist-max-o setCanSelfBackground(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1151
    return-void
.end method

.method public static final native greylist-max-o setGid(I)I
.end method

.method public static final native blacklist setProcessFrozen(IIZ)V
.end method

.method public static final native greylist setProcessGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final blacklist setStartTimes(JJJJ)V
    .registers 8

    .line 855
    sput-wide p0, Landroid/os/Process;->sStartElapsedRealtime:J

    .line 856
    sput-wide p2, Landroid/os/Process;->sStartUptimeMillis:J

    .line 857
    sput-wide p4, Landroid/os/Process;->sStartRequestedElapsedRealtime:J

    .line 858
    sput-wide p6, Landroid/os/Process;->sStartRequestedUptimeMillis:J

    .line 859
    return-void
.end method

.method public static final native greylist-max-o setThreadGroup(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final native greylist-max-o setThreadGroupAndCpuset(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public static final whitelist setThreadPriority(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1310
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->nicenessApis()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1312
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0, p0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1313
    return-void

    .line 1315
    :cond_e
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ldalvik/system/VMRuntime;->setThreadNiceness(Ljava/lang/Thread;I)Z

    move-result v0

    .line 1317
    if-nez v0, :cond_5d

    .line 1318
    const/16 v0, -0x14

    if-lt p0, v0, :cond_3e

    const/16 v0, 0x13

    if-le p0, v0, :cond_25

    goto :goto_3e

    .line 1321
    :cond_25
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set priority to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_3e
    :goto_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority/niceness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is invalid"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_5d
    return-void
.end method

.method public static final whitelist setThreadPriority(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1120
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->nicenessApis()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    if-ne v0, p0, :cond_10

    .line 1122
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_1b

    .line 1124
    :cond_10
    const/16 v0, -0x14

    if-lt p1, v0, :cond_1c

    const/16 v0, 0x13

    if-gt p1, v0, :cond_1c

    .line 1127
    invoke-static {p0, p1}, Landroid/os/Process;->setThreadPriorityNative(II)V

    .line 1129
    :goto_1b
    return-void

    .line 1125
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Priority/niceness "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is invalid"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native blacklist setThreadPriorityNative(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static final native greylist-max-o setThreadScheduler(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static final native greylist-max-o setUid(I)I
.end method

.method public static blacklist start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZJ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 52
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZZJ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .line 765
    sget-object v1, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-wide/from16 v24, p22

    move-object/from16 v26, p24

    invoke-virtual/range {v1 .. v26}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZJ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JJ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .registers 45

    .line 791
    invoke-static {}, Landroid/webkit/WebViewZygote;->getProcess()Landroid/os/ZygoteProcess;

    move-result-object v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v18, p14

    move-wide/from16 v24, p15

    move-object/from16 v26, p17

    invoke-virtual/range {v1 .. v26}, Landroid/os/ZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZZJ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist supportsPidFd()Z
    .registers 5

    .line 1847
    sget v0, Landroid/os/Process;->sPidFdSupported:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_44

    .line 1848
    nop

    .line 1850
    const/4 v0, -0x1

    :try_start_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3, v1}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v0

    .line 1851
    sput v2, Landroid/os/Process;->sPidFdSupported:I
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_12} :catch_22
    .catchall {:try_start_8 .. :try_end_12} :catchall_20

    .line 1856
    if-ltz v0, :cond_44

    .line 1857
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    .line 1858
    :goto_19
    invoke-virtual {v3, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1859
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1860
    goto :goto_44

    .line 1856
    :catchall_20
    move-exception v1

    goto :goto_36

    .line 1852
    :catch_22
    move-exception v3

    .line 1853
    :try_start_23
    iget v3, v3, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v3, v4, :cond_2b

    .line 1854
    move v3, v2

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x2

    :goto_2c
    sput v3, Landroid/os/Process;->sPidFdSupported:I
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_20

    .line 1856
    if-ltz v0, :cond_44

    .line 1857
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_19

    .line 1856
    :goto_36
    if-ltz v0, :cond_43

    .line 1857
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 1858
    invoke-virtual {v2, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1859
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1861
    :cond_43
    throw v1

    .line 1863
    :cond_44
    :goto_44
    sget v0, Landroid/os/Process;->sPidFdSupported:I

    if-ne v0, v2, :cond_49

    move v1, v2

    :cond_49
    return v1
.end method

.method public static final whitelist supportsProcesses()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1393
    const/4 v0, 0x1

    return v0
.end method

.method public static final blacklist toSdkSandboxUid(I)I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1008
    add-int/lit16 p0, p0, 0x2710

    return p0
.end method

.method public static blacklist waitForProcessDeath(II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1782
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v0

    .line 1783
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_77

    .line 1784
    nop

    .line 1786
    const/4 v3, 0x0

    :try_start_a
    invoke-static {p0, v2}, Landroid/os/Process;->nativePidFdOpen(II)I

    move-result v4

    .line 1787
    if-ltz v4, :cond_19

    .line 1788
    new-instance v5, Ljava/io/FileDescriptor;

    invoke-direct {v5}, Ljava/io/FileDescriptor;-><init>()V
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_15} :catch_5c
    .catchall {:try_start_a .. :try_end_15} :catchall_5a

    .line 1789
    :try_start_15
    invoke-virtual {v5, v4}, Ljava/io/FileDescriptor;->setInt$(I)V

    goto :goto_1b

    .line 1791
    :cond_19
    move v0, v1

    move-object v5, v3

    .line 1793
    :goto_1b
    if-eqz v5, :cond_54

    .line 1794
    new-array v4, v1, [Landroid/system/StructPollfd;

    new-instance v6, Landroid/system/StructPollfd;

    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    aput-object v6, v4, v2

    .line 1797
    aget-object v6, v4, v2

    iput-object v5, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 1798
    aget-object v6, v4, v2

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    .line 1799
    aget-object v6, v4, v2

    iput-short v2, v6, Landroid/system/StructPollfd;->revents:S

    .line 1800
    aget-object v6, v4, v2

    iput-object v3, v6, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 1801
    invoke-static {v4, p1}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v3
    :try_end_3d
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_3d} :catch_51
    .catchall {:try_start_15 .. :try_end_3d} :catchall_4e

    .line 1802
    if-lez v3, :cond_45

    .line 1816
    if-eqz v5, :cond_44

    .line 1817
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1803
    :cond_44
    return-void

    .line 1804
    :cond_45
    if-eqz v3, :cond_48

    goto :goto_54

    .line 1805
    :cond_48
    :try_start_48
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
    :try_end_4e
    .catch Landroid/system/ErrnoException; {:try_start_48 .. :try_end_4e} :catch_51
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4e

    .line 1816
    :catchall_4e
    move-exception p0

    move-object v3, v5

    goto :goto_71

    .line 1810
    :catch_51
    move-exception v0

    move-object v3, v5

    goto :goto_5d

    .line 1816
    :cond_54
    :goto_54
    if-eqz v5, :cond_77

    .line 1817
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_77

    .line 1816
    :catchall_5a
    move-exception p0

    goto :goto_71

    .line 1810
    :catch_5c
    move-exception v0

    .line 1811
    :goto_5d
    :try_start_5d
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EINTR:I
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_5a

    if-eq v0, v4, :cond_6b

    .line 1814
    nop

    .line 1816
    if-eqz v3, :cond_69

    .line 1817
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1821
    :cond_69
    move v0, v1

    goto :goto_77

    .line 1812
    :cond_6b
    :try_start_6b
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_5a

    .line 1816
    :goto_71
    if-eqz v3, :cond_76

    .line 1817
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1819
    :cond_76
    throw p0

    .line 1821
    :cond_77
    :goto_77
    if-eqz v0, :cond_9f

    .line 1822
    if-gez p1, :cond_7c

    goto :goto_7d

    :cond_7c
    move v1, v2

    .line 1823
    :goto_7d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1824
    int-to-long v5, p1

    add-long/2addr v5, v3

    .line 1825
    :goto_83
    if-nez v1, :cond_89

    cmp-long p1, v3, v5

    if-gez p1, :cond_9f

    .line 1827
    :cond_89
    :try_start_89
    invoke-static {p0, v2}, Landroid/system/Os;->kill(II)V
    :try_end_8c
    .catch Landroid/system/ErrnoException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 1832
    goto :goto_95

    .line 1828
    :catch_8d
    move-exception p1

    .line 1829
    iget p1, p1, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->ESRCH:I

    if-ne p1, v0, :cond_95

    .line 1830
    return-void

    .line 1833
    :cond_95
    :goto_95
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_83

    .line 1837
    :cond_9f
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0
.end method
