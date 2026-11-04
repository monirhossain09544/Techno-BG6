.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$BatteryStatsDumpHelper;,
        Landroid/os/BatteryStats$ProportionalAttributionCalculator;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$UidMobileRadioStats;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$RadioAccessTechnology;,
        Landroid/os/BatteryStats$ProcessStateChange;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$StatName;
    }
.end annotation


# static fields
.field private static final greylist-max-o AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final greylist-max-o AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final greylist-max-o APK_DATA:Ljava/lang/String; = "apk"

.field private static final greylist-max-o AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final greylist-max-o AUDIO_TURNED_ON:I = 0xf

.field private static final greylist-max-o BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final greylist-max-o BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final greylist-max-o BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final greylist-max-o BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final greylist-max-o BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final greylist-max-o BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final greylist-max-o BLUETOOTH_SCAN_ON:I = 0x13

.field public static final greylist-max-o BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final greylist-max-o BYTES_PER_GB:J = 0x40000000L

.field private static final greylist-max-o BYTES_PER_KB:J = 0x400L

.field private static final greylist-max-o BYTES_PER_MB:J = 0x100000L

.field private static final greylist-max-o CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final greylist-max-o CAMERA_TURNED_ON:I = 0x11

.field private static final greylist-max-o CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final greylist-max-o CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final greylist-max-o CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field private static final blacklist CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

.field static final greylist-max-o CHECKIN_VERSION:I = 0x24

.field private static final greylist-max-o CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final greylist-max-o CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final greylist-max-o DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final blacklist DATA_CONNECTION_EMERGENCY_SERVICE:I

.field static final greylist-max-o DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o DATA_CONNECTION_OTHER:I

.field public static final blacklist DATA_CONNECTION_OUT_OF_SERVICE:I = 0x0

.field private static final greylist-max-o DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final greylist-max-o DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final greylist-max-o DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final greylist-max-o DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final greylist-max-o DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final greylist-max-o DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field private static final blacklist DISPLAY_TRANSPORT_PRIORITIES:[I

.field public static final greylist-max-o DUMP_CHARGED_ONLY:I = 0x2

.field public static final greylist-max-o DUMP_DAILY_ONLY:I = 0x4

.field public static final blacklist DUMP_DEBUG_PERF_BASELINE:I = 0x80

.field public static final greylist-max-o DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final greylist-max-o DUMP_HISTORY_ONLY:I = 0x8

.field public static final greylist-max-o DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final greylist-max-o DUMP_VERBOSE:I = 0x20

.field public static final blacklist DURATION_UNAVAILABLE:J = -0x1L

.field private static final greylist-max-o FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final greylist-max-o FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final greylist-max-o FOREGROUND_ACTIVITY:I = 0xa

.field private static final greylist-max-o FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final greylist-max-o FOREGROUND_SERVICE:I = 0x16

.field private static final greylist-max-o FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final greylist-max-o FULL_WIFI_LOCK:I = 0x5

.field private static final greylist-max-o GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final greylist-max-o GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final greylist-max-o GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final greylist-max-o GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final greylist-max-o GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final greylist-max-o GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final greylist-max-o HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final greylist-max-o HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final greylist-max-o HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final greylist-max-o HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final greylist-max-o HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final greylist-max-o JOB:I = 0xe

.field private static final greylist-max-o JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final greylist-max-o JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final greylist-max-o JOB_DATA:Ljava/lang/String; = "jb"

.field public static final greylist-max-o JOB_FRESHNESS_BUCKETS:[J

.field private static final greylist-max-o KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final greylist-max-o LOCAL_LOGV:Z = false

.field public static final greylist-max-o MAX_TRACKED_SCREEN_STATE:I = 0x4

.field public static final blacklist MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final greylist-max-o MISC_DATA:Ljava/lang/String; = "m"

.field private static final greylist-max-o MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final greylist-max-o NETWORK_BT_RX_DATA:I = 0x4

.field public static final greylist-max-o NETWORK_BT_TX_DATA:I = 0x5

.field private static final greylist-max-o NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final greylist-max-o NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final greylist-max-o NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final greylist-max-o NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final greylist-max-o NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final greylist-max-o NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final greylist-max-o NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final greylist-max-o NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final greylist-max-o NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final blacklist NUM_ALL_NETWORK_TYPES:I

.field public static final greylist NUM_DATA_CONNECTION_TYPES:I

.field public static final greylist-max-o NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final greylist NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final greylist-max-o NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final greylist-max-o POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final greylist-max-o POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final greylist-max-o PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final greylist-max-o PROCESS_STATE:I = 0xc

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_COUNT:I = 0x3

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_LTE:I = 0x1

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_NR:I = 0x2

.field public static final blacklist RADIO_ACCESS_TECHNOLOGY_OTHER:I = 0x0

.field private static final greylist-max-o RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final greylist-max-o RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final greylist-max-o SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final greylist-max-o SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final greylist-max-o SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final greylist-max-o SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field public static final greylist-max-o SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final greylist-max-o SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final greylist-max-o SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final greylist-max-o SENSOR:I = 0x3

.field private static final greylist-max-o SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final greylist-max-o SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final greylist-max-o SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final greylist-max-o SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final greylist-max-o SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final greylist-max-o STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final greylist STATS_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o STATS_SINCE_CHARGED:I = 0x0

.field public static final greylist-max-o STATS_SINCE_UNPLUGGED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o STAT_NAMES:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final greylist-max-o STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final greylist-max-o STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final greylist-max-o STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final greylist-max-o STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final greylist-max-o STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final greylist-max-o STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final greylist-max-o STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final greylist-max-o STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final greylist-max-o STEP_LEVEL_MODE_VALUES:[I

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final greylist-max-o STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final greylist-max-o STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final greylist-max-o SYNC:I = 0xd

.field private static final greylist-max-o SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BatteryStats"

.field private static final greylist-max-o UID_DATA:Ljava/lang/String; = "uid"

.field public static final greylist-max-o UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"

.field private static final greylist-max-o USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final greylist-max-o VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final greylist-max-o VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final greylist-max-o VIBRATOR_ON:I = 0x9

.field private static final greylist-max-o VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final greylist-max-o VIDEO_TURNED_ON:I = 0x8

.field private static final greylist-max-o WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final greylist-max-o WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final greylist-max-o WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final greylist-max-o WAKE_TYPE_DRAW:I = 0x12

.field public static final greylist-max-o WAKE_TYPE_FULL:I = 0x1

.field public static final greylist-max-r WAKE_TYPE_PARTIAL:I = 0x0

.field public static final greylist-max-o WAKE_TYPE_WINDOW:I = 0x2

.field public static final greylist-max-o WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final greylist-max-o WIFI_BATCHED_SCAN:I = 0xb

.field private static final greylist-max-o WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final greylist-max-o WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final greylist-max-o WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final greylist-max-o WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final greylist-max-o WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final greylist-max-o WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final greylist-max-o WIFI_RUNNING:I = 0x4

.field public static final greylist-max-o WIFI_SCAN:I = 0x6

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final greylist-max-o WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final greylist-max-o WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final greylist-max-o WIFI_STATE_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field private static final greylist-max-o WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field static final greylist-max-o WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field static final greylist-max-o WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final greylist-max-o WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field private static final greylist-max-o sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final greylist-max-o sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final greylist-max-o mFormatBuilder:Ljava/lang/StringBuilder;

.field private final greylist-max-o mFormatter:Ljava/util/Formatter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsUidToString()Landroid/os/BatteryStats$IntToString;
    .registers 1

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 56

    .line 264
    const-string v0, "c"

    const-string/jumbo v1, "u"

    const-string v2, "l"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 439
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_53a

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    .line 2384
    const-string v1, "light"

    const-string v2, "bright"

    const-string v3, "dark"

    const-string v4, "dim"

    const-string v5, "medium"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 2388
    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 2633
    const-string v28, "emngcy"

    const-string/jumbo v29, "other"

    const-string/jumbo v7, "oos"

    const-string v8, "gprs"

    const-string v9, "edge"

    const-string/jumbo v10, "umts"

    const-string v11, "cdma"

    const-string v12, "evdo_0"

    const-string v13, "evdo_A"

    const-string v14, "1xrtt"

    const-string v15, "hsdpa"

    const-string v16, "hsupa"

    const-string v17, "hspa"

    const-string v18, "iden"

    const-string v19, "evdo_b"

    const-string v20, "lte"

    const-string v21, "ehrpd"

    const-string v22, "hspap"

    const-string v23, "gsm"

    const-string/jumbo v24, "td_scdma"

    const-string v25, "iwlan"

    const-string v26, "lte_ca"

    const-string/jumbo v27, "nr"

    filled-new-array/range {v7 .. v29}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 2640
    invoke-static {}, Landroid/os/BatteryStats;->getAllNetworkTypesCount()I

    move-result v6

    sput v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    .line 2642
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    sput v6, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    .line 2643
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v8, 0x2

    add-int/2addr v6, v8

    sput v6, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    .line 2646
    sget v6, Landroid/os/BatteryStats;->NUM_ALL_NETWORK_TYPES:I

    const/4 v9, 0x3

    add-int/2addr v6, v9

    sput v6, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    .line 2712
    const-string v6, "LTE"

    const-string v10, "NR"

    const-string v11, "Other"

    filled-new-array {v11, v6, v10}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    .line 2774
    const-string v21, "dormant"

    const-string/jumbo v22, "uninit"

    const-string v10, "invalid"

    const-string v11, "disconn"

    const-string v12, "disabled"

    const-string v13, "inactive"

    const-string/jumbo v14, "scanning"

    const-string v15, "authenticating"

    const-string v16, "associating"

    const-string v17, "associated"

    const-string v18, "4-way-handshake"

    const-string v19, "group-handshake"

    const-string v20, "completed"

    filled-new-array/range {v10 .. v22}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    .line 2780
    const-string v21, "dorm"

    const-string/jumbo v22, "uninit"

    const-string v10, "inv"

    const-string v11, "dsc"

    const-string v12, "dis"

    const-string v13, "inact"

    const-string/jumbo v14, "scan"

    const-string v15, "auth"

    const-string v16, "ascing"

    const-string v17, "asced"

    const-string v18, "4-way"

    const-string v19, "group"

    const-string v20, "compl"

    filled-new-array/range {v10 .. v22}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 2809
    const/16 v6, 0x12

    new-array v6, v6, [Landroid/os/BatteryStats$BitDescription;

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "running"

    const-string/jumbo v12, "r"

    const/high16 v13, -0x80000000

    invoke-direct {v10, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    aput-object v10, v6, v11

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "wake_lock"

    const-string/jumbo v13, "w"

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "sensor"

    const-string/jumbo v13, "s"

    const/high16 v14, 0x800000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v8

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v12, "gps"

    const-string v13, "g"

    const/high16 v14, 0x20000000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v9

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v12, "wifi_full_lock"

    const-string v13, "Wl"

    const/high16 v14, 0x10000000

    invoke-direct {v10, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x4

    aput-object v10, v6, v12

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wifi_scan"

    const-string v14, "Ws"

    const/high16 v15, 0x8000000

    invoke-direct {v10, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v0

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "wifi_multicast"

    const-string v14, "Wm"

    const/high16 v15, 0x10000

    invoke-direct {v10, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x6

    aput-object v10, v6, v13

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "wifi_radio"

    const-string v15, "Wr"

    move/from16 v16, v0

    const/high16 v0, 0x4000000

    invoke-direct {v10, v0, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    aput-object v10, v6, v0

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "mobile_radio"

    const-string v15, "Pr"

    move/from16 v17, v7

    const/high16 v7, 0x2000000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x8

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "phone_scanning"

    const-string v15, "Psc"

    move/from16 v18, v7

    const/high16 v7, 0x200000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x9

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "audio"

    const-string v15, "a"

    move/from16 v19, v7

    const/high16 v7, 0x400000

    invoke-direct {v10, v7, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xa

    aput-object v10, v6, v7

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "screen"

    const-string v15, "S"

    move/from16 v20, v8

    const/high16 v8, 0x100000

    invoke-direct {v10, v8, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xb

    aput-object v10, v6, v8

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "plugged"

    const-string v15, "BP"

    move/from16 v21, v8

    const/high16 v8, 0x80000

    invoke-direct {v10, v8, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0xc

    aput-object v10, v6, v8

    new-instance v8, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "screen_doze"

    const-string v14, "Sd"

    const/high16 v15, 0x40000

    invoke-direct {v8, v15, v10, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xd

    aput-object v8, v6, v10

    new-instance v22, Landroid/os/BatteryStats$BitDescription;

    sget-object v27, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v28, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v23, 0x3e00

    const/16 v24, 0x9

    const-string v25, "data_conn"

    const-string v26, "Pcn"

    invoke-direct/range {v22 .. v28}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0xe

    aput-object v22, v6, v8

    new-instance v23, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "in"

    const-string/jumbo v15, "out"

    move/from16 v22, v8

    const-string v8, "emergency"

    move/from16 v30, v9

    const-string/jumbo v9, "off"

    filled-new-array {v14, v15, v8, v9}, [Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v8, "out"

    const-string v14, "em"

    const-string v15, "in"

    filled-new-array {v15, v8, v14, v9}, [Ljava/lang/String;

    move-result-object v29

    const/16 v24, 0x1c0

    const/16 v25, 0x6

    const-string/jumbo v26, "phone_state"

    const-string v27, "Pst"

    invoke-direct/range {v23 .. v29}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0xf

    aput-object v23, v6, v8

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "good"

    const-string v15, "great"

    move/from16 v23, v8

    const-string/jumbo v8, "none"

    move/from16 v24, v10

    const-string/jumbo v10, "poor"

    move/from16 v25, v11

    const-string v11, "moderate"

    filled-new-array {v8, v10, v11, v14, v15}, [Ljava/lang/String;

    move-result-object v36

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x38

    const/16 v33, 0x3

    const-string/jumbo v34, "phone_signal_strength"

    const-string v35, "Pss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v8, 0x10

    aput-object v31, v6, v8

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    sget-object v37, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v38, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/16 v33, 0x7

    const/16 v34, 0x0

    const-string v35, "brightness"

    const-string v36, "Sb"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0x11

    aput-object v32, v6, v10

    sput-object v6, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 2840
    const/16 v6, 0x11

    new-array v6, v6, [Landroid/os/BatteryStats$BitDescription;

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "power_save"

    const-string/jumbo v14, "ps"

    const/high16 v15, -0x80000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v25

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "video"

    const-string/jumbo v14, "v"

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v17

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi_running"

    const-string v14, "Ww"

    const/high16 v15, 0x20000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v20

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi"

    const-string v14, "W"

    const/high16 v15, 0x10000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v30

    new-instance v10, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "flashlight"

    const-string v14, "fl"

    const/high16 v15, 0x8000000

    invoke-direct {v10, v15, v11, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v10, v6, v12

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "full"

    const-string v11, "???"

    const-string v14, "light"

    filled-new-array {v9, v14, v10, v11}, [Ljava/lang/String;

    move-result-object v36

    const-string v10, "full"

    const-string v11, "???"

    const-string v14, "light"

    filled-new-array {v9, v14, v10, v11}, [Ljava/lang/String;

    move-result-object v37

    const/high16 v32, 0x6000000

    const/16 v33, 0x19

    const-string v34, "device_idle"

    const-string v35, "di"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v16

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "charging"

    const-string v11, "ch"

    const/high16 v14, 0x1000000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v13

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "usb_data"

    const-string v11, "Ud"

    const/high16 v14, 0x40000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v0

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v10, "phone_in_call"

    const-string v11, "Pcl"

    const/high16 v14, 0x800000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v18

    new-instance v9, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "bluetooth"

    const-string v11, "b"

    const/high16 v14, 0x400000

    invoke-direct {v9, v14, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v9, v6, v19

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v36

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x70

    const/16 v33, 0x4

    const-string/jumbo v34, "wifi_signal_strength"

    const-string v35, "Wss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v7

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    sget-object v37, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v38, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v33, 0xf

    const/16 v34, 0x0

    const-string/jumbo v35, "wifi_suppl"

    const-string v36, "Wsp"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v32, v6, v21

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "camera"

    const-string v10, "ca"

    const/high16 v11, 0x200000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xc

    aput-object v5, v6, v9

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "ble_scan"

    const-string v10, "bles"

    const/high16 v11, 0x100000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v6, v24

    new-instance v5, Landroid/os/BatteryStats$BitDescription;

    const-string v9, "cellular_high_tx_power"

    const-string v10, "Chtp"

    const/high16 v11, 0x80000

    invoke-direct {v5, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v5, v6, v22

    new-instance v31, Landroid/os/BatteryStats$BitDescription;

    const-string v5, "good"

    const-string/jumbo v9, "none"

    const-string/jumbo v10, "poor"

    filled-new-array {v10, v5, v9}, [Ljava/lang/String;

    move-result-object v36

    const-string v5, "good"

    const-string/jumbo v9, "none"

    const-string/jumbo v10, "poor"

    filled-new-array {v10, v5, v9}, [Ljava/lang/String;

    move-result-object v37

    const/16 v32, 0x180

    const/16 v33, 0x7

    const-string v34, "gps_signal_quality"

    const-string v35, "Gss"

    invoke-direct/range {v31 .. v37}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v31, v6, v23

    new-instance v32, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v5, "not_restricted"

    const-string v9, "connected"

    const-string/jumbo v10, "none"

    const-string/jumbo v11, "restricted"

    filled-new-array {v10, v11, v5, v9}, [Ljava/lang/String;

    move-result-object v37

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v38

    const/16 v33, 0x600

    const/16 v34, 0x9

    const-string/jumbo v35, "nr_state"

    const-string/jumbo v36, "nrs"

    invoke-direct/range {v32 .. v38}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v32, v6, v8

    sput-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 2874
    const-string/jumbo v54, "state"

    const-string v55, "display_state_changed"

    const-string/jumbo v33, "null"

    const-string/jumbo v34, "proc"

    const-string v35, "fg"

    const-string/jumbo v36, "top"

    const-string/jumbo v37, "sync"

    const-string/jumbo v38, "wake_lock_in"

    const-string v39, "job"

    const-string/jumbo v40, "user"

    const-string/jumbo v41, "userfg"

    const-string v42, "conn"

    const-string v43, "active"

    const-string/jumbo v44, "pkginst"

    const-string/jumbo v45, "pkgunin"

    const-string v46, "alarm"

    const-string/jumbo v47, "stats"

    const-string/jumbo v48, "pkginactive"

    const-string/jumbo v49, "pkgactive"

    const-string/jumbo v50, "tmpwhitelist"

    const-string/jumbo v51, "screenwake"

    const-string/jumbo v52, "wakeupap"

    const-string v53, "longwake"

    filled-new-array/range {v33 .. v55}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 2881
    const-string v52, "Esc"

    const-string v53, "Eds"

    const-string v31, "Enl"

    const-string v32, "Epr"

    const-string v33, "Efg"

    const-string v34, "Etp"

    const-string v35, "Esy"

    const-string v36, "Ewl"

    const-string v37, "Ejb"

    const-string v38, "Eur"

    const-string v39, "Euf"

    const-string v40, "Ecn"

    const-string v41, "Eac"

    const-string v42, "Epi"

    const-string v43, "Epu"

    const-string v44, "Eal"

    const-string v45, "Est"

    const-string v46, "Eai"

    const-string v47, "Eaa"

    const-string v48, "Etw"

    const-string v49, "Esw"

    const-string v50, "Ewa"

    const-string v51, "Elw"

    filled-new-array/range {v31 .. v53}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 2893
    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    .line 2894
    new-instance v1, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    .line 2896
    const/16 v1, 0x17

    new-array v1, v1, [Landroid/os/BatteryStats$IntToString;

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v25

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v17

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v20

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v30

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v12

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v16

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v13

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v0

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v18

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v19

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v7

    sget-object v2, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v21

    const/16 v2, 0xc

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v24

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v22

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v23

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v8

    const/16 v2, 0x11

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v3, v1, v2

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    .line 2945
    const-string/jumbo v37, "sta_p2p"

    const-string/jumbo v38, "soft_ap"

    const-string/jumbo v31, "off"

    const-string/jumbo v32, "scanning"

    const-string/jumbo v33, "no_net"

    const-string v34, "disconn"

    const-string/jumbo v35, "sta"

    const-string/jumbo v36, "p2p"

    filled-new-array/range {v31 .. v38}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    .line 3316
    new-array v1, v7, [I

    fill-array-data v1, :array_552

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 3328
    new-array v1, v7, [I

    fill-array-data v1, :array_56a

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 3340
    const-string/jumbo v39, "screen doze-suspend power save"

    const-string/jumbo v40, "screen doze-suspend device idle"

    const-string/jumbo v31, "screen off"

    const-string/jumbo v32, "screen off power save"

    const-string/jumbo v33, "screen off device idle"

    const-string/jumbo v34, "screen on"

    const-string/jumbo v35, "screen on power save"

    const-string/jumbo v36, "screen doze"

    const-string/jumbo v37, "screen doze power save"

    const-string/jumbo v38, "screen doze-suspend"

    filled-new-array/range {v31 .. v40}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    .line 4213
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    .line 4217
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "scrn"

    aput-object v2, v1, v25

    .line 4218
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "cpu"

    aput-object v2, v1, v17

    .line 4219
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "blue"

    aput-object v2, v1, v20

    .line 4220
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "camera"

    aput-object v2, v1, v30

    .line 4221
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "audio"

    aput-object v2, v1, v12

    .line 4222
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "video"

    aput-object v2, v1, v16

    .line 4223
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "flashlight"

    aput-object v2, v1, v13

    .line 4224
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "cell"

    aput-object v2, v1, v18

    .line 4225
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "sensors"

    aput-object v2, v1, v19

    .line 4226
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "gnss"

    aput-object v2, v1, v7

    .line 4227
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "wifi"

    aput-object v2, v1, v21

    .line 4228
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "memory"

    aput-object v2, v1, v24

    .line 4229
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "phone"

    aput-object v2, v1, v22

    .line 4230
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "ambi"

    aput-object v2, v1, v23

    .line 4231
    sget-object v1, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string v2, "idle"

    aput-object v2, v1, v8

    .line 9038
    new-array v0, v0, [I

    fill-array-data v0, :array_582

    sput-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    return-void

    nop

    :array_53a
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_552
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_56a
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data

    :array_582
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
    .end array-data
.end method

.method public constructor greylist-max-p <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 420
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 96
    return-void
.end method

.method public static blacklist checkWifiOnly(Landroid/content/Context;)Z
    .registers 2

    .line 8841
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 8842
    if-nez p0, :cond_c

    .line 8843
    const/4 p0, 0x0

    return p0

    .line 8845
    :cond_c
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static greylist-max-o computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .registers 4

    .line 3593
    if-eqz p0, :cond_d

    .line 3595
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    .line 3596
    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    .line 3597
    return-wide p0

    .line 3599
    :cond_d
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static greylist-max-o controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .registers 10

    .line 3848
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3849
    return v0

    .line 3852
    :cond_4
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4f

    .line 3853
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    .line 3854
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    .line 3855
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_38

    goto :goto_4f

    .line 3859
    :cond_38
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    array-length v1, p0

    move v5, v0

    :goto_3e
    if-ge v5, v1, :cond_4e

    aget-object v6, p0, v5

    .line 3860
    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-eqz v6, :cond_4b

    .line 3861
    return v2

    .line 3859
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 3864
    :cond_4e
    return v0

    .line 3856
    :cond_4f
    :goto_4f
    return v2
.end method

.method private blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    .line 7825
    move-object/from16 v0, p3

    const-string v1, "i"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_a1

    .line 7826
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 7827
    move v6, v4

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4c

    .line 7828
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 7829
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7830
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 7829
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 7831
    if-nez v8, :cond_40

    .line 7832
    new-instance v8, Landroid/util/Pair;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Landroid/util/MutableBoolean;

    invoke-direct {v10, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7833
    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-virtual {v5, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7835
    :cond_40
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7827
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 7837
    :cond_4c
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 7838
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 7839
    nop

    .line 7840
    move v7, v4

    :goto_56
    if-ge v7, v6, :cond_a1

    .line 7841
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 7842
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 7843
    if-eqz v9, :cond_9e

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/util/MutableBoolean;

    iget-boolean v10, v10, Landroid/util/MutableBoolean;->value:Z

    if-nez v10, :cond_9e

    .line 7844
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/util/MutableBoolean;

    iput-boolean v3, v10, Landroid/util/MutableBoolean;->value:Z

    .line 7845
    move v10, v4

    :goto_77
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_9e

    .line 7846
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 7847
    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    .line 7848
    const-string/jumbo v12, "uid"

    check-cast v11, [Ljava/lang/Object;

    invoke-static {p2, v4, v1, v12, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7845
    add-int/lit8 v10, v10, 0x1

    goto :goto_77

    .line 7840
    :cond_9e
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 7854
    :cond_a1
    and-int/lit8 v0, p4, 0x4

    if-nez v0, :cond_105

    .line 7855
    const-string v0, "dsd"

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v5

    const-string v6, ""

    invoke-static {p2, v6, v0, v5, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 7856
    new-array v0, v3, [Ljava/lang/String;

    .line 7857
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v7

    .line 7858
    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    if-ltz v5, :cond_d1

    .line 7859
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 7860
    const-string v5, "dtr"

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    invoke-static {p2, v4, v1, v5, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7863
    :cond_d1
    const-string v5, "csd"

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v7

    invoke-static {p2, v6, v5, v7, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 7864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-long/2addr v5, v9

    invoke-virtual {p0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v5

    .line 7865
    cmp-long v7, v5, v11

    if-ltz v7, :cond_f4

    .line 7866
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 7867
    const-string v5, "ctr"

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p2, v4, v1, v5, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7870
    :cond_f4
    and-int/lit8 v0, p4, 0x40

    if-eqz v0, :cond_fa

    move v5, v3

    goto :goto_fb

    :cond_fa
    move v5, v4

    :goto_fb
    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 7873
    :cond_105
    return-void
.end method

.method private static final greylist-max-o dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 8

    .line 3890
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3891
    return-void

    .line 3894
    :cond_7
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 3895
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3896
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 3897
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3898
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 3899
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3900
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p2

    long-to-double p2, p2

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(D)V

    .line 3901
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3902
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p2

    long-to-double p2, p2

    div-double/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(D)V

    .line 3904
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_53
    if-ge p4, p3, :cond_64

    aget-object v0, p2, p4

    .line 3905
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3906
    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 3904
    add-int/lit8 p4, p4, 0x1

    goto :goto_53

    .line 3908
    :cond_64
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3909
    return-void
.end method

.method private static greylist-max-o dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 13

    .line 3917
    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3918
    return-void

    .line 3921
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    .line 3923
    nop

    .line 3924
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 3923
    const-wide v2, 0x10300000001L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3925
    nop

    .line 3926
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 3925
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3927
    nop

    .line 3928
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v4

    .line 3927
    const-wide v6, 0x10300000003L

    invoke-virtual {p0, v6, v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 3929
    nop

    .line 3930
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    .line 3929
    const-wide v4, 0x10100000005L

    invoke-virtual {p0, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 3934
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p3

    .line 3935
    const/4 v0, 0x0

    :goto_5d
    array-length v1, p3

    if-ge v0, v1, :cond_80

    .line 3936
    aget-object v1, p3, v0

    .line 3937
    const-wide v4, 0x20b00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 3938
    const-wide v6, 0x10500000001L

    invoke-virtual {p0, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3939
    invoke-virtual {v1, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3940
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3935
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 3943
    :cond_80
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3944
    return-void
.end method

.method private greylist-max-o dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .registers 23

    .line 7583
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_9

    .line 7584
    return-void

    .line 7586
    :cond_9
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v4

    .line 7587
    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    const-string v14, " steps)"

    const-string v15, " (from "

    const/4 v6, 0x0

    if-ltz v3, :cond_3f

    .line 7588
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7589
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7590
    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7591
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7592
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v6

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 7593
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7595
    :cond_3f
    move v3, v6

    :goto_40
    sget-object v4, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v4, v4

    if-ge v3, v4, :cond_8b

    .line 7596
    sget-object v4, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v4, v4, v3

    int-to-long v7, v4

    sget-object v4, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v4, v4, v3

    int-to-long v9, v4

    move-object/from16 v11, p6

    move v4, v6

    move-object/from16 v6, p4

    invoke-virtual/range {v6 .. v11}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v7

    .line 7598
    cmp-long v5, v7, v12

    if-lez v5, :cond_87

    .line 7599
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7600
    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7601
    const-string v5, " time: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7602
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7603
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7604
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7605
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v5, p6, v4

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 7606
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7595
    :cond_87
    add-int/lit8 v3, v3, 0x1

    move v6, v4

    goto :goto_40

    .line 7609
    :cond_8b
    return-void
.end method

.method private greylist-max-o dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    .line 7613
    if-nez p3, :cond_3

    .line 7614
    return-void

    .line 7616
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7617
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 7618
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    .line 7619
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_34

    .line 7620
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7621
    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_41

    .line 7623
    :cond_34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7617
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 7626
    :cond_44
    return-void
.end method

.method private static greylist-max-o dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .registers 25

    .line 7379
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    .line 7380
    return-void

    .line 7382
    :cond_7
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7383
    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_a1

    .line 7384
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 7385
    const-wide v7, 0x10300000001L

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7386
    const-wide v7, 0x10500000002L

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7388
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v7

    int-to-long v7, v7

    .line 7389
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v9

    int-to-long v9, v9

    .line 7391
    nop

    .line 7392
    const-wide/16 v11, 0x3

    and-long v13, v9, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    if-nez v13, :cond_5a

    .line 7393
    and-long/2addr v11, v7

    long-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_a2

    .line 7407
    const/4 v11, 0x5

    goto :goto_5b

    .line 7404
    :pswitch_4c
    nop

    .line 7405
    const/4 v11, 0x4

    goto :goto_5b

    .line 7401
    :pswitch_4f
    nop

    .line 7402
    move v11, v14

    goto :goto_5b

    .line 7398
    :pswitch_52
    nop

    .line 7399
    move/from16 v11, v18

    goto :goto_5b

    .line 7395
    :pswitch_56
    nop

    .line 7396
    move/from16 v11, v17

    goto :goto_5b

    .line 7392
    :cond_5a
    move v11, v3

    .line 7411
    :goto_5b
    const-wide v12, 0x10e00000003L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7413
    nop

    .line 7414
    const-wide/16 v11, 0x4

    and-long v19, v9, v11

    cmp-long v13, v19, v15

    if-nez v13, :cond_77

    .line 7415
    and-long/2addr v11, v7

    cmp-long v11, v11, v15

    if-eqz v11, :cond_72

    .line 7416
    goto :goto_74

    :cond_72
    move/from16 v18, v17

    :goto_74
    move/from16 v11, v18

    goto :goto_78

    .line 7414
    :cond_77
    move v11, v3

    .line 7418
    :goto_78
    const-wide v12, 0x10e00000004L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7420
    nop

    .line 7421
    const-wide/16 v11, 0x8

    and-long/2addr v9, v11

    cmp-long v9, v9, v15

    if-nez v9, :cond_91

    .line 7422
    and-long/2addr v7, v11

    cmp-long v7, v7, v15

    if-eqz v7, :cond_90

    .line 7423
    move/from16 v14, v17

    goto :goto_92

    :cond_90
    goto :goto_92

    .line 7421
    :cond_91
    move v14, v3

    .line 7425
    :goto_92
    const-wide v7, 0x10e00000005L

    invoke-virtual {v0, v7, v8, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7427
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7383
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 7429
    :cond_a1
    return-void

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
    .end packed-switch
.end method

.method private static greylist-max-o dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .registers 29

    .line 7298
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 7299
    return v3

    .line 7301
    :cond_a
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 7302
    if-gtz v4, :cond_f

    .line 7303
    return v3

    .line 7305
    :cond_f
    if-nez p4, :cond_14

    .line 7306
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7308
    :cond_14
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    .line 7309
    move v6, v3

    :goto_18
    const/4 v7, 0x1

    if-ge v6, v4, :cond_151

    .line 7310
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    .line 7311
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    .line 7312
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    .line 7313
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    .line 7314
    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x3

    const-wide/16 v21, 0x0

    if-eqz p4, :cond_af

    .line 7315
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    .line 7316
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 7317
    and-long v8, v13, v19

    cmp-long v8, v8, v21

    const-string v9, ""

    const/4 v10, 0x2

    if-nez v8, :cond_73

    .line 7318
    move/from16 v23, v7

    and-long v7, v11, v19

    long-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_154

    .line 7323
    const-string v7, "?"

    aput-object v7, v5, v10

    goto :goto_75

    .line 7322
    :pswitch_5b
    const-string/jumbo v7, "sds"

    aput-object v7, v5, v10

    goto :goto_75

    .line 7321
    :pswitch_61
    const-string/jumbo v7, "sd"

    aput-object v7, v5, v10

    goto :goto_75

    .line 7320
    :pswitch_67
    const-string/jumbo v7, "s+"

    aput-object v7, v5, v10

    goto :goto_75

    .line 7319
    :pswitch_6d
    const-string/jumbo v7, "s-"

    aput-object v7, v5, v10

    goto :goto_75

    .line 7326
    :cond_73
    aput-object v9, v5, v10

    .line 7328
    :goto_75
    and-long v7, v13, v17

    cmp-long v7, v7, v21

    const/4 v8, 0x3

    if-nez v7, :cond_8c

    .line 7329
    and-long v17, v11, v17

    cmp-long v7, v17, v21

    if-eqz v7, :cond_86

    const-string/jumbo v7, "p+"

    goto :goto_89

    :cond_86
    const-string/jumbo v7, "p-"

    :goto_89
    aput-object v7, v5, v8

    goto :goto_8e

    .line 7331
    :cond_8c
    aput-object v9, v5, v8

    .line 7333
    :goto_8e
    and-long v7, v13, v15

    cmp-long v7, v7, v21

    const/4 v8, 0x4

    if-nez v7, :cond_a3

    .line 7334
    and-long v9, v11, v15

    cmp-long v7, v9, v21

    if-eqz v7, :cond_9e

    const-string v7, "i+"

    goto :goto_a0

    :cond_9e
    const-string v7, "i-"

    :goto_a0
    aput-object v7, v5, v8

    goto :goto_a5

    .line 7336
    :cond_a3
    aput-object v9, v5, v8

    .line 7338
    :goto_a5
    const-string v7, "i"

    move-object v8, v5

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v7, v1, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14d

    .line 7340
    :cond_af
    move/from16 v23, v7

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7341
    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7342
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7343
    const-string v7, " to "

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 7344
    nop

    .line 7345
    and-long v7, v13, v19

    cmp-long v7, v7, v21

    const-string v8, " ("

    if-nez v7, :cond_105

    .line 7346
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7347
    and-long v9, v11, v19

    long-to-int v7, v9

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_160

    .line 7352
    const-string/jumbo v7, "screen-?"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_102

    .line 7351
    :pswitch_e7
    const-string/jumbo v7, "screen-doze-suspend"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_102

    .line 7350
    :pswitch_ee
    const-string/jumbo v7, "screen-doze"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_102

    .line 7349
    :pswitch_f5
    const-string/jumbo v7, "screen-on"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_102

    .line 7348
    :pswitch_fc
    const-string/jumbo v7, "screen-off"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7354
    :goto_102
    move/from16 v7, v23

    goto :goto_106

    .line 7345
    :cond_105
    move v7, v3

    .line 7356
    :goto_106
    and-long v9, v13, v17

    cmp-long v9, v9, v21

    const-string v10, ", "

    if-nez v9, :cond_128

    .line 7357
    if-eqz v7, :cond_112

    move-object v7, v10

    goto :goto_113

    :cond_112
    move-object v7, v8

    :goto_113
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7358
    and-long v17, v11, v17

    cmp-long v7, v17, v21

    if-eqz v7, :cond_120

    .line 7359
    const-string/jumbo v7, "power-save-on"

    goto :goto_123

    :cond_120
    const-string/jumbo v7, "power-save-off"

    .line 7358
    :goto_123
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7360
    move/from16 v7, v23

    .line 7362
    :cond_128
    and-long/2addr v13, v15

    cmp-long v9, v13, v21

    if-nez v9, :cond_143

    .line 7363
    if-eqz v7, :cond_130

    move-object v8, v10

    :cond_130
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7364
    and-long v7, v11, v15

    cmp-long v7, v7, v21

    if-eqz v7, :cond_13c

    .line 7365
    const-string v7, "device-idle-on"

    goto :goto_13e

    :cond_13c
    const-string v7, "device-idle-off"

    .line 7364
    :goto_13e
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7366
    move/from16 v7, v23

    .line 7368
    :cond_143
    if-eqz v7, :cond_14a

    .line 7369
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7371
    :cond_14a
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 7309
    :goto_14d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_18

    .line 7374
    :cond_151
    move/from16 v23, v7

    return v23

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
    .end packed-switch

    :pswitch_data_160
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_f5
        :pswitch_ee
        :pswitch_e7
    .end packed-switch
.end method

.method private blacklist dumpHistory(Ljava/io/PrintWriter;IJZJ)V
    .registers 32

    .line 7441
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v0, p2

    move/from16 v7, p5

    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2, v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(I)V

    .line 7442
    monitor-enter p0

    .line 7443
    const/4 v9, 0x1

    if-nez v7, :cond_81

    .line 7444
    :try_start_11
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v4

    int-to-long v4, v4

    .line 7445
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v6

    int-to-long v10, v6

    .line 7446
    const-string v6, "Battery History"

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7447
    invoke-static {v2}, Landroid/os/BatteryStats$HistoryPrinter;->-$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I

    move-result v6

    if-eq v6, v9, :cond_46

    .line 7448
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [Format: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/os/BatteryStats$HistoryPrinter;->-$$Nest$fgetmFormatVersion(Landroid/os/BatteryStats$HistoryPrinter;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7450
    :cond_46
    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7451
    const-wide/16 v12, 0x64

    mul-long/2addr v12, v10

    div-long/2addr v12, v4

    invoke-virtual {v3, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 7452
    const-string v6, "% used, "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7453
    invoke-direct {v1, v3, v10, v11}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7454
    const-string v6, " used of "

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7455
    invoke-direct {v1, v3, v4, v5}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7456
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7457
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 7458
    const-string v4, " strings using "

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7459
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v1, v3, v4, v5}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 7460
    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7461
    goto :goto_84

    .line 7462
    :cond_81
    invoke-direct {v1, v3, v7}, Landroid/os/BatteryStats;->dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V

    .line 7464
    :goto_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_11 .. :try_end_85} :catchall_22c

    .line 7466
    nop

    .line 7467
    nop

    .line 7468
    nop

    .line 7469
    nop

    .line 7470
    nop

    .line 7471
    const-wide/16 v4, -0x1

    move-wide/from16 v10, p6

    invoke-virtual {v1, v10, v11, v4, v5}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v10

    const/4 v12, 0x0

    move-wide v13, v4

    move v6, v12

    const/4 v15, 0x0

    .line 7474
    :goto_96
    move-wide/from16 v16, v4

    :try_start_98
    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v4
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_21d

    const-wide/16 v18, 0x0

    if-eqz v4, :cond_1fe

    .line 7476
    :try_start_a0
    iget-wide v13, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_1ee

    .line 7477
    cmp-long v5, v16, v18

    if-gez v5, :cond_a8

    .line 7478
    move-wide/from16 v16, v13

    .line 7480
    :cond_a8
    move-object/from16 p6, v10

    :try_start_aa
    iget-wide v9, v4, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_ac
    .catchall {:try_start_aa .. :try_end_ac} :catchall_1ec

    cmp-long v5, v9, p3

    if-ltz v5, :cond_1de

    .line 7481
    cmp-long v5, p3, v18

    if-ltz v5, :cond_1c4

    if-nez v6, :cond_1c4

    .line 7482
    :try_start_b6
    iget-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x5

    if-eq v5, v8, :cond_ed

    iget-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x7

    if-eq v5, v9, :cond_ed

    iget-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x4

    if-eq v5, v9, :cond_ed

    iget-byte v5, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v9, 0x8

    if-ne v5, v9, :cond_cc

    goto :goto_ed

    .line 7490
    :cond_cc
    iget-wide v9, v4, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v5, v9, v18

    if-eqz v5, :cond_e9

    .line 7491
    nop

    .line 7492
    iget-byte v9, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7493
    iput-byte v8, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7494
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_dd

    const/4 v8, 0x1

    goto :goto_de

    :cond_dd
    move v8, v12

    :goto_de
    move-wide/from16 v5, v16

    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7496
    iput-byte v9, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move-wide/from16 v5, v16

    const/4 v9, 0x1

    goto :goto_101

    .line 7490
    :cond_e9
    move v9, v6

    move-wide/from16 v5, v16

    goto :goto_101

    .line 7486
    :cond_ed
    :goto_ed
    nop

    .line 7487
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_f4

    const/4 v8, 0x1

    goto :goto_f5

    :cond_f4
    move v8, v12

    :goto_f5
    move-object/from16 v3, p1

    move/from16 v7, p5

    move-wide/from16 v5, v16

    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7489
    iput-byte v12, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x1

    .line 7498
    :goto_101
    if-eqz v15, :cond_1bd

    .line 7499
    iget-byte v3, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v3, :cond_117

    .line 7500
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_10d

    const/4 v8, 0x1

    goto :goto_10e

    :cond_10d
    move v8, v12

    :goto_10e
    move-object/from16 v3, p1

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 7502
    iput-byte v12, v4, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7504
    :cond_117
    iget v10, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7505
    iget-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7506
    new-instance v7, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v7, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7507
    move v7, v12

    :goto_123
    const/16 v8, 0x17

    if-ge v7, v8, :cond_1b4

    .line 7508
    nop

    .line 7509
    invoke-virtual {v15, v7}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v8

    .line 7510
    if-nez v8, :cond_134

    .line 7511
    move-object v0, v3

    move v11, v7

    const/4 v3, 0x0

    move-wide v7, v5

    goto/16 :goto_1a7

    .line 7514
    :cond_134
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_13c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Ljava/util/Map$Entry;

    .line 7515
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseIntArray;

    .line 7516
    nop

    :goto_151
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v12, v11, :cond_199

    .line 7517
    iput v7, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7518
    iget-object v11, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/String;

    iput-object v0, v11, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 7519
    iget-object v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v8, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    iput v11, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 7520
    iget-object v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v8, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    iput v11, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 7521
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_17c

    move-object v0, v8

    const/4 v8, 0x1

    goto :goto_17e

    :cond_17c
    move-object v0, v8

    const/4 v8, 0x0

    :goto_17e
    move-object/from16 v21, v0

    move-object v0, v3

    move v11, v7

    move-object/from16 v3, p1

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move-wide v7, v5

    .line 7523
    const/4 v3, 0x0

    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7524
    iput-object v3, v4, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 7516
    add-int/lit8 v12, v12, 0x1

    move-object v3, v0

    move-wide v5, v7

    move v7, v11

    move-object/from16 v8, v21

    move/from16 v0, p2

    goto :goto_151

    .line 7526
    :cond_199
    move-object v0, v3

    move v11, v7

    const/4 v3, 0x0

    move-wide v7, v5

    move-object v3, v0

    move v7, v11

    const/4 v12, 0x0

    move/from16 v0, p2

    goto :goto_13c

    .line 7514
    :cond_1a3
    move-object v0, v3

    move v11, v7

    const/4 v3, 0x0

    move-wide v7, v5

    .line 7507
    :goto_1a7
    add-int/lit8 v5, v11, 0x1

    move-wide/from16 v22, v7

    move v7, v5

    move-wide/from16 v5, v22

    move-object v3, v0

    const/4 v12, 0x0

    move/from16 v0, p2

    goto/16 :goto_123

    .line 7528
    :cond_1b4
    move-object v0, v3

    move-wide v7, v5

    const/4 v3, 0x0

    iput v10, v4, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 7529
    iput-object v0, v4, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;
    :try_end_1bb
    .catchall {:try_start_b6 .. :try_end_1bb} :catchall_1c0

    .line 7530
    move-object v15, v3

    goto :goto_1c8

    .line 7498
    :cond_1bd
    move-wide v7, v5

    const/4 v3, 0x0

    goto :goto_1c8

    .line 7545
    :catchall_1c0
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_1f1

    .line 7481
    :cond_1c4
    move-wide/from16 v7, v16

    const/4 v3, 0x0

    .line 7533
    move v9, v6

    :goto_1c8
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_1cf

    move-wide v5, v7

    const/4 v8, 0x1

    goto :goto_1d1

    :cond_1cf
    move-wide v5, v7

    const/4 v8, 0x0

    :goto_1d1
    move/from16 v7, p5

    move-object/from16 v20, v3

    move-object/from16 v3, p1

    :try_start_1d7
    invoke-virtual/range {v2 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1da
    .catchall {:try_start_1d7 .. :try_end_1da} :catchall_1ec

    move-wide/from16 v16, v5

    move v6, v9

    goto :goto_1e0

    .line 7480
    :cond_1de
    const/16 v20, 0x0

    .line 7549
    :goto_1e0
    move/from16 v0, p2

    move/from16 v7, p5

    move-object/from16 v10, p6

    move-wide/from16 v4, v16

    const/4 v9, 0x1

    const/4 v12, 0x0

    goto/16 :goto_96

    .line 7545
    :catchall_1ec
    move-exception v0

    goto :goto_1f1

    :catchall_1ee
    move-exception v0

    move-object/from16 p6, v10

    .line 7546
    :goto_1f1
    :try_start_1f1
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 7547
    const-string v2, "BatteryStats"

    const-string v4, "Corrupted battery history"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1fb
    .catchall {:try_start_1f1 .. :try_end_1fb} :catchall_1fc

    .line 7548
    goto :goto_200

    .line 7470
    :catchall_1fc
    move-exception v0

    goto :goto_220

    .line 7474
    :cond_1fe
    move-object/from16 p6, v10

    .line 7551
    :goto_200
    if-eqz p6, :cond_205

    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 7552
    :cond_205
    cmp-long v0, p3, v18

    if-ltz v0, :cond_21c

    .line 7553
    invoke-virtual {v1}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 7554
    if-eqz p5, :cond_211

    const-string v0, "NEXT: "

    goto :goto_213

    :cond_211
    const-string v0, "  NEXT: "

    :goto_213
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    add-long/2addr v13, v0

    invoke-virtual {v3, v13, v14}, Ljava/io/PrintWriter;->println(J)V

    .line 7556
    :cond_21c
    return-void

    .line 7470
    :catchall_21d
    move-exception v0

    move-object/from16 p6, v10

    :goto_220
    move-object v1, v0

    if-eqz p6, :cond_22b

    :try_start_223
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_226
    .catchall {:try_start_223 .. :try_end_226} :catchall_227

    goto :goto_22b

    :catchall_227
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22b
    :goto_22b
    throw v1

    .line 7464
    :catchall_22c
    move-exception v0

    :try_start_22d
    monitor-exit p0
    :try_end_22e
    .catchall {:try_start_22d .. :try_end_22e} :catchall_22c

    throw v0
.end method

.method private blacklist dumpHistoryTagPoolLocked(Ljava/io/PrintWriter;Z)V
    .registers 7

    .line 7559
    if-eqz p2, :cond_51

    .line 7560
    const/4 p2, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v0

    if-ge p2, v0, :cond_51

    .line 7561
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7562
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 7563
    const-string v1, "hsp"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7564
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 7565
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 7566
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7567
    invoke-virtual {p0, p2}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7568
    const-string v0, ",\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7569
    invoke-virtual {p0, p2}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v0

    .line 7570
    const-string v1, "\""

    if-eqz v0, :cond_48

    .line 7571
    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 7572
    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 7573
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7575
    :cond_48
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7576
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7560
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 7579
    :cond_51
    return-void
.end method

.method private static final varargs greylist dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 3774
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 3775
    array-length p1, p4

    const/4 p2, 0x0

    :goto_5
    if-ge p2, p1, :cond_14

    aget-object p3, p4, p2

    .line 3776
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3777
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3775
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 3779
    :cond_14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3780
    return-void
.end method

.method private static final greylist-max-o dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3754
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3755
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3756
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 3757
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3758
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3759
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3760
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3761
    return-void
.end method

.method private blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 32

    .line 7659
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez p5, :cond_78

    .line 7660
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 7661
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 7662
    nop

    .line 7663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 7664
    move v6, v10

    move v11, v6

    :goto_17
    if-ge v6, v3, :cond_70

    .line 7665
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid;

    .line 7666
    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v12

    .line 7667
    if-eqz v12, :cond_6b

    .line 7668
    move v13, v10

    :goto_26
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_68

    .line 7669
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    .line 7670
    if-nez v11, :cond_3a

    .line 7671
    const-string v11, "Per-PID Stats:"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7672
    move v11, v9

    .line 7674
    :cond_3a
    const-wide/16 v15, 0x0

    iget-wide v7, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    move-wide/from16 v17, v15

    iget v15, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v15, :cond_49

    .line 7675
    iget-wide v14, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v14, v4, v14

    goto :goto_4b

    :cond_49
    move-wide/from16 v14, v17

    :goto_4b
    add-long/2addr v7, v14

    .line 7676
    const-string v14, "  PID "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 7677
    const-string v14, " wake time: "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7678
    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7679
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7668
    add-int/lit8 v13, v13, 0x1

    goto :goto_26

    :cond_68
    const-wide/16 v17, 0x0

    goto :goto_6d

    .line 7667
    :cond_6b
    const-wide/16 v17, 0x0

    .line 7664
    :goto_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 7683
    :cond_70
    const-wide/16 v17, 0x0

    if-eqz v11, :cond_7a

    .line 7684
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_7a

    .line 7659
    :cond_78
    const-wide/16 v17, 0x0

    .line 7688
    :cond_7a
    :goto_7a
    if-eqz p5, :cond_80

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_104

    .line 7689
    :cond_80
    nop

    .line 7690
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    .line 7689
    const-string v7, "  "

    const-string v3, "Discharge step durations:"

    invoke-static {v1, v7, v3, v2, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v2

    const-wide/16 v11, 0x3e8

    if-eqz v2, :cond_da

    .line 7691
    nop

    .line 7692
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v11

    .line 7691
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    .line 7693
    cmp-long v4, v2, v17

    if-ltz v4, :cond_ab

    .line 7694
    const-string v4, "  Estimated discharge time remaining: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7695
    div-long/2addr v2, v11

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7696
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7698
    :cond_ab
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v19

    .line 7699
    move v8, v10

    :goto_b0
    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v2, v2

    if-ge v8, v2, :cond_d7

    .line 7700
    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v2, v8

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v2, v2, v8

    int-to-long v4, v2

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v2, v2, v8

    int-to-long v13, v2

    .line 7701
    const/16 v24, 0x0

    move-wide/from16 v20, v4

    move-wide/from16 v22, v13

    invoke-virtual/range {v19 .. v24}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    .line 7700
    const-string v2, "  Estimated "

    const-string v4, " time: "

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 7699
    add-int/lit8 v8, v8, 0x1

    goto :goto_b0

    .line 7704
    :cond_d7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7706
    :cond_da
    nop

    .line 7707
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v2

    .line 7706
    const-string v3, "Charge step durations:"

    invoke-static {v1, v7, v3, v2, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 7708
    nop

    .line 7709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v11

    .line 7708
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    .line 7710
    cmp-long v4, v2, v17

    if-ltz v4, :cond_101

    .line 7711
    const-string v4, "  Estimated charge time remaining: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7712
    div-long/2addr v2, v11

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 7713
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7715
    :cond_101
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7718
    :cond_104
    const/16 v7, 0x40

    if-eqz p5, :cond_10c

    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_24a

    .line 7719
    :cond_10c
    const-string v2, "Daily stats:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7720
    const-string v2, "  Current start time: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7721
    nop

    .line 7722
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v2

    .line 7721
    const-string/jumbo v8, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v8, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7722
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7721
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7723
    const-string v2, "  Next min deadline: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7724
    nop

    .line 7725
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v2

    .line 7724
    invoke-static {v8, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7725
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7724
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7726
    const-string v2, "  Next max deadline: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7727
    nop

    .line 7728
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v2

    .line 7727
    invoke-static {v8, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 7728
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7727
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7729
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7730
    new-array v6, v9, [I

    .line 7731
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    .line 7732
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    .line 7733
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v12

    .line 7734
    iget v2, v4, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v13, "    "

    if-gtz v2, :cond_172

    iget v2, v11, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v2, :cond_172

    if-eqz v12, :cond_1bb

    .line 7735
    :cond_172
    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_192

    if-nez p5, :cond_179

    goto :goto_192

    .line 7748
    :cond_179
    const-string v2, "  Current daily steps:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7749
    const-string v2, "    "

    const-string v3, "Discharge"

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7751
    const-string v2, "    "

    const-string v3, "Charge"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v11

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_1bb

    .line 7736
    :cond_192
    :goto_192
    const-string v0, "  Current daily discharge step durations:"

    invoke-static {v1, v13, v0, v4, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 7738
    const-string v2, "      "

    const-string v3, "Discharge"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7741
    :cond_1a3
    const-string v0, "  Current daily charge step durations:"

    invoke-static {v1, v13, v0, v11, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 7743
    const-string v2, "      "

    const-string v3, "Charge"

    move-object/from16 v0, p0

    move-object v4, v11

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_1b8

    .line 7741
    :cond_1b6
    move-object/from16 v0, p0

    .line 7746
    :goto_1b8
    invoke-direct {v0, v1, v13, v12}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7756
    :cond_1bb
    :goto_1bb
    move v2, v10

    .line 7757
    :goto_1bc
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v11

    if-eqz v11, :cond_247

    .line 7758
    add-int/lit8 v12, v2, 0x1

    .line 7759
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_1cb

    .line 7760
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7762
    :cond_1cb
    const-string v3, "  Daily from "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7763
    iget-wide v3, v11, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v8, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7764
    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7765
    iget-wide v3, v11, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v8, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7766
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7767
    if-nez v2, :cond_210

    if-nez p5, :cond_1f9

    goto :goto_210

    .line 7780
    :cond_1f9
    const-string v3, "Discharge"

    iget-object v4, v11, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "    "

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7782
    const-string v3, "Charge"

    iget-object v4, v11, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_244

    .line 7768
    :cond_210
    :goto_210
    const-string v0, "    Discharge step durations:"

    iget-object v2, v11, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v14, "      "

    invoke-static {v1, v14, v0, v2, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_227

    .line 7770
    const-string v3, "Discharge"

    iget-object v4, v11, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "        "

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 7773
    :cond_227
    const-string v0, "    Charge step durations:"

    iget-object v2, v11, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-static {v1, v14, v0, v2, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_23d

    .line 7775
    const-string v3, "Charge"

    iget-object v4, v11, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v2, "        "

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_23f

    .line 7773
    :cond_23d
    move-object/from16 v0, p0

    .line 7778
    :goto_23f
    iget-object v2, v11, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v13, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7757
    :goto_244
    move v2, v12

    goto/16 :goto_1bc

    .line 7786
    :cond_247
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 7788
    :cond_24a
    if-eqz p5, :cond_250

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_294

    .line 7789
    :cond_250
    const-string v2, "Statistics since last charge:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  System starts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currently on battery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7791
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7790
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7792
    and-int/lit8 v2, p3, 0x40

    if-eqz v2, :cond_283

    move v6, v9

    goto :goto_284

    :cond_283
    move v6, v10

    :goto_284
    const-string v3, ""

    const/4 v4, 0x0

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v2, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 7794
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7796
    :cond_294
    return-void
.end method

.method private blacklist dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V
    .registers 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/os/BatteryStats$ProportionalAttributionCalculator;",
            ")V"
        }
    .end annotation

    .line 7915
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 7916
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 7917
    mul-long/2addr v4, v8

    .line 7918
    move-object/from16 v10, p0

    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v11

    .line 7920
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 7921
    if-eqz v1, :cond_48

    .line 7922
    const/4 v2, 0x0

    :goto_1e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 7923
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 7924
    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 7925
    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 7926
    if-nez v15, :cond_40

    .line 7927
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 7928
    invoke-virtual {v13, v6, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7930
    :cond_40
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7922
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 7934
    :cond_48
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 7935
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    .line 7936
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_57
    if-ltz v2, :cond_6d

    .line 7937
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer;

    .line 7938
    move/from16 p2, v3

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v3

    invoke-virtual {v15, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7936
    add-int/lit8 v2, v2, -0x1

    move/from16 v3, p2

    goto :goto_57

    .line 7941
    :cond_6d
    move/from16 p2, v3

    invoke-virtual {v10}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    .line 7942
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 7943
    const/4 v3, 0x0

    :goto_78
    if-ge v3, v2, :cond_98c

    .line 7944
    move-object/from16 p3, v15

    const-wide v14, 0x20b00000005L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 7945
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    .line 7947
    move/from16 v17, v2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 7948
    move-object/from16 v18, v6

    const-wide v6, 0x10500000001L

    invoke-virtual {v0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7951
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v13, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 7952
    if-nez v6, :cond_ac

    .line 7953
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7955
    :cond_ac
    nop

    .line 7956
    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 7957
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v22, v1

    move/from16 v1, v21

    :goto_bb
    move/from16 v23, v2

    move/from16 v21, v3

    const-wide/16 v24, 0x0

    if-ltz v1, :cond_19b

    .line 7958
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v2, v30

    check-cast v2, Ljava/lang/String;

    .line 7959
    nop

    .line 7960
    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 7961
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v30

    if-nez v30, :cond_eb

    .line 7966
    move-wide/from16 v33, v4

    move-wide/from16 v39, v8

    move-wide/from16 v37, v11

    move-object/from16 v30, v13

    move-wide/from16 v35, v14

    move-object v15, v6

    move-object v9, v7

    move v6, v1

    goto/16 :goto_185

    .line 7969
    :cond_eb
    move-wide/from16 v33, v4

    move-object/from16 v30, v13

    move-wide/from16 v35, v14

    const-wide v4, 0x20b00000002L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 7970
    const-wide v4, 0x10900000001L

    invoke-virtual {v0, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7972
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7974
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10b
    if-ltz v2, :cond_17b

    .line 7975
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 7977
    const/4 v5, 0x0

    invoke-virtual {v4, v11, v12, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v15

    move-wide/from16 v37, v11

    invoke-static/range {v15 .. v16}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v10

    .line 7978
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v12

    .line 7979
    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v4

    .line 7980
    cmp-long v5, v10, v24

    if-nez v5, :cond_136

    if-nez v12, :cond_136

    if-nez v4, :cond_136

    .line 7981
    move/from16 v41, v2

    move-object v15, v6

    move-wide/from16 v39, v8

    move v6, v1

    move-object v9, v7

    goto :goto_16f

    .line 7984
    :cond_136
    move-object v15, v6

    move-wide/from16 v39, v8

    const-wide v5, 0x20b00000002L

    move-object v9, v7

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 7986
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v6, v1

    move/from16 v41, v2

    const-wide v1, 0x10900000001L

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7987
    const-wide v1, 0x10300000002L

    invoke-virtual {v0, v1, v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7988
    const-wide v1, 0x10500000003L

    invoke-virtual {v0, v1, v2, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7989
    const-wide v1, 0x10500000004L

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7991
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7974
    :goto_16f
    add-int/lit8 v2, v41, -0x1

    move-object/from16 v10, p0

    move v1, v6

    move-object v7, v9

    move-object v6, v15

    move-wide/from16 v11, v37

    move-wide/from16 v8, v39

    goto :goto_10b

    .line 7993
    :cond_17b
    move-object v15, v6

    move-wide/from16 v39, v8

    move-wide/from16 v37, v11

    move v6, v1

    move-object v9, v7

    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7957
    :goto_185
    add-int/lit8 v1, v6, -0x1

    move-object/from16 v10, p0

    move-object v7, v9

    move-object v6, v15

    move/from16 v3, v21

    move/from16 v2, v23

    move-object/from16 v13, v30

    move-wide/from16 v4, v33

    move-wide/from16 v14, v35

    move-wide/from16 v11, v37

    move-wide/from16 v8, v39

    goto/16 :goto_bb

    .line 7998
    :cond_19b
    move-wide/from16 v33, v4

    move-wide/from16 v39, v8

    move-wide/from16 v37, v11

    move-object/from16 v30, v13

    move-wide/from16 v35, v14

    move-object v15, v6

    move-object v9, v7

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ab
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7999
    const-wide v4, 0x20b00000002L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 8000
    const-wide v10, 0x10900000001L

    invoke-virtual {v0, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8001
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8002
    goto :goto_1ab

    .line 8005
    :cond_1cc
    const-wide v4, 0x20b00000002L

    const-wide v10, 0x10900000001L

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-wide v7, 0x10300000001L

    if-eqz v1, :cond_210

    .line 8006
    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 8008
    move-wide/from16 v12, v39

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    .line 8009
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 8010
    if-eqz v1, :cond_1f6

    .line 8011
    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v14

    goto :goto_1f8

    :cond_1f6
    move-wide/from16 v14, v24

    .line 8012
    :goto_1f8
    const-wide v4, 0x10b00000018L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8013
    invoke-virtual {v0, v7, v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8014
    const-wide v1, 0x10300000002L

    invoke-virtual {v0, v1, v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8015
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_217

    .line 8005
    :cond_210
    move-wide/from16 v12, v39

    const-wide v1, 0x10300000002L

    .line 8019
    :goto_217
    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-wide/from16 v28, v1

    const-wide v1, 0x10b00000008L

    move-object/from16 v10, v18

    move/from16 v11, v23

    move-wide/from16 v14, v28

    move-wide/from16 v4, v33

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8022
    nop

    .line 8023
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8022
    const-wide v2, 0x10b00000003L

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v1, v6}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8026
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8027
    const-wide v14, 0x10500000005L

    if-eqz v3, :cond_2b9

    .line 8028
    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8030
    move-wide/from16 v31, v1

    const-wide v1, 0x10b00000001L

    const/4 v6, 0x0

    move-wide/from16 v7, v31

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8032
    nop

    .line 8033
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8032
    const-wide v1, 0x10b00000002L

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8035
    nop

    .line 8036
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8035
    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8038
    nop

    .line 8039
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8038
    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8041
    nop

    .line 8042
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_297

    .line 8043
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_298

    :cond_297
    const/4 v1, 0x0

    .line 8041
    :goto_298
    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8044
    nop

    .line 8045
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    if-eqz v1, :cond_2ac

    .line 8046
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_2ad

    :cond_2ac
    const/4 v1, 0x0

    .line 8044
    :goto_2ad
    const-wide v2, 0x10500000006L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8048
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2be

    .line 8027
    :cond_2b9
    const-wide v2, 0x10500000006L

    .line 8052
    :goto_2be
    move-wide/from16 v47, v2

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000009L

    move-wide/from16 v7, v47

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8055
    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8056
    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v7

    const-wide v14, 0x10300000001L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8057
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v7

    const-wide v14, 0x10300000002L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8059
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v3

    .line 8060
    if-eqz v3, :cond_358

    .line 8061
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v14

    .line 8064
    if-eqz v14, :cond_355

    array-length v15, v14

    .line 8065
    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v3

    if-ne v15, v3, :cond_352

    .line 8066
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v3

    .line 8067
    if-nez v3, :cond_315

    .line 8068
    array-length v3, v14

    new-array v3, v3, [J

    .line 8070
    :cond_315
    const/4 v6, 0x0

    :goto_316
    array-length v15, v14

    if-ge v6, v15, :cond_34f

    .line 8071
    const-wide v7, 0x20b00000003L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 8072
    add-int/lit8 v15, v6, 0x1

    move-object/from16 p2, v3

    move-wide/from16 v39, v4

    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8073
    aget-wide v3, v14, v6

    move/from16 v18, v6

    const-wide v5, 0x10300000002L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8075
    aget-wide v3, p2, v18

    const-wide v5, 0x10300000003L

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8077
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8070
    move-object/from16 v3, p2

    move v6, v15

    move-wide/from16 v4, v39

    goto :goto_316

    :cond_34f
    move-wide/from16 v39, v4

    goto :goto_35a

    .line 8065
    :cond_352
    move-wide/from16 v39, v4

    goto :goto_35a

    .line 8064
    :cond_355
    move-wide/from16 v39, v4

    goto :goto_35a

    .line 8060
    :cond_358
    move-wide/from16 v39, v4

    .line 8082
    :goto_35a
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v3

    .line 8083
    new-array v4, v3, [J

    .line 8084
    new-array v5, v3, [J

    .line 8085
    const/4 v6, 0x0

    :goto_367
    const-wide v7, 0x10e00000001L

    const/4 v14, 0x7

    if-ge v6, v14, :cond_3ef

    .line 8086
    invoke-virtual {v10, v4, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v14

    if-eqz v14, :cond_3dd

    .line 8087
    invoke-virtual {v10, v5, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v14

    if-nez v14, :cond_380

    .line 8088
    const-wide/16 v14, 0x0

    invoke-static {v5, v14, v15}, Ljava/util/Arrays;->fill([JJ)V

    .line 8090
    :cond_380
    const-wide v14, 0x20b00000004L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8091
    invoke-virtual {v0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8092
    const/4 v7, 0x0

    :goto_38d
    if-ge v7, v3, :cond_3d1

    .line 8093
    move/from16 p2, v3

    move-object/from16 v23, v4

    move/from16 v18, v7

    const-wide v7, 0x20b00000002L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 8094
    add-int/lit8 v7, v18, 0x1

    move-object v8, v5

    move/from16 v41, v6

    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8095
    aget-wide v5, v23, v18

    move/from16 v49, v7

    move-object/from16 v50, v8

    const-wide v7, 0x10300000002L

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8097
    aget-wide v5, v50, v18

    const-wide v7, 0x10300000003L

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8099
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8092
    move/from16 v3, p2

    move-object/from16 v4, v23

    move/from16 v6, v41

    move/from16 v7, v49

    move-object/from16 v5, v50

    goto :goto_38d

    .line 8101
    :cond_3d1
    move/from16 p2, v3

    move-object/from16 v23, v4

    move-object/from16 v50, v5

    move/from16 v41, v6

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_3e5

    .line 8086
    :cond_3dd
    move/from16 p2, v3

    move-object/from16 v23, v4

    move-object/from16 v50, v5

    move/from16 v41, v6

    .line 8085
    :goto_3e5
    add-int/lit8 v6, v41, 0x1

    move/from16 v3, p2

    move-object/from16 v4, v23

    move-object/from16 v5, v50

    goto/16 :goto_367

    .line 8104
    :cond_3ef
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8107
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000000aL

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8111
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000bL

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8115
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8119
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 8120
    const/4 v2, 0x0

    :goto_420
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a2

    .line 8121
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 8122
    if-eqz v3, :cond_48e

    .line 8123
    const-wide v14, 0x20b00000010L

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 8125
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v18, v1

    move/from16 v23, v2

    const-wide v1, 0x10900000001L

    invoke-virtual {v0, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8127
    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v6

    array-length v1, v6

    const/4 v2, 0x0

    :goto_44f
    if-ge v2, v1, :cond_488

    aget v7, v6, v2

    .line 8128
    move v8, v1

    move/from16 v41, v2

    move-wide/from16 v42, v4

    const-wide v1, 0x20b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8129
    const-wide v1, 0x10e00000001L

    invoke-virtual {v0, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8130
    const/4 v1, 0x0

    invoke-virtual {v3, v7, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    move-object/from16 v51, v6

    const-wide v6, 0x10500000002L

    invoke-virtual {v0, v6, v7, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8131
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8127
    add-int/lit8 v2, v41, 0x1

    move v1, v8

    move-wide/from16 v4, v42

    move-object/from16 v6, v51

    const-wide v7, 0x10e00000001L

    goto :goto_44f

    .line 8134
    :cond_488
    move-wide/from16 v42, v4

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_494

    .line 8122
    :cond_48e
    move-object/from16 v18, v1

    move/from16 v23, v2

    move-wide/from16 v42, v4

    .line 8120
    :goto_494
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v1, v18

    move-wide/from16 v4, v42

    const-wide v7, 0x10e00000001L

    const/4 v14, 0x7

    goto/16 :goto_420

    .line 8139
    :cond_4a2
    move-wide/from16 v42, v4

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8140
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    move v14, v1

    :goto_4af
    if-ltz v14, :cond_502

    .line 8141
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 8142
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 8143
    const-wide v1, 0x20b0000000fL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8145
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide v5, 0x10900000001L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8147
    move-wide/from16 v44, v1

    const-wide v1, 0x10b00000002L

    move-wide v4, v5

    const/4 v6, 0x0

    move-wide/from16 v52, v12

    move-wide v12, v4

    move-wide/from16 v4, v42

    move-wide/from16 v41, v52

    move-object/from16 v18, v9

    move-wide/from16 v8, v44

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8148
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object v3, v15

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8150
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8140
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v9, v18

    move-wide/from16 v12, v41

    const/4 v8, 0x1

    move-wide/from16 v42, v4

    goto :goto_4af

    .line 8154
    :cond_502
    move-object/from16 v18, v9

    move-wide/from16 v4, v42

    move-wide/from16 v41, v12

    const-wide v12, 0x10900000001L

    .line 8155
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8154
    const-wide v2, 0x10b00000004L

    const/4 v6, 0x0

    invoke-static {v0, v2, v3, v1, v6}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8158
    const-wide v1, 0x10b00000011L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 8159
    nop

    .line 8160
    invoke-virtual {v10, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 8159
    const-wide v14, 0x10300000001L

    invoke-virtual {v0, v14, v15, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8161
    nop

    .line 8162
    const/4 v8, 0x1

    invoke-virtual {v10, v8, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    .line 8161
    const-wide v7, 0x10300000002L

    invoke-virtual {v0, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8163
    nop

    .line 8164
    const/4 v7, 0x2

    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    .line 8163
    const-wide v14, 0x10300000003L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8165
    nop

    .line 8166
    const/4 v3, 0x3

    invoke-virtual {v10, v3, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    .line 8165
    const-wide v14, 0x10300000004L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8167
    nop

    .line 8168
    const/4 v8, 0x4

    invoke-virtual {v10, v8, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    .line 8167
    const-wide v14, 0x10300000005L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8169
    nop

    .line 8170
    const/4 v8, 0x5

    invoke-virtual {v10, v8, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    .line 8169
    const-wide v14, 0x10300000006L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8171
    nop

    .line 8172
    invoke-virtual {v10, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    .line 8171
    const-wide v14, 0x10300000007L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8173
    nop

    .line 8174
    const/4 v8, 0x1

    invoke-virtual {v10, v8, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 8173
    const-wide v8, 0x10300000008L

    invoke-virtual {v0, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8175
    nop

    .line 8176
    invoke-virtual {v10, v7, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    .line 8175
    const-wide v14, 0x10300000009L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8177
    nop

    .line 8178
    invoke-virtual {v10, v3, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    .line 8177
    const-wide v14, 0x1030000000aL

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8179
    nop

    .line 8180
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v8

    .line 8179
    const-wide v14, 0x1030000000bL

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8181
    nop

    .line 8182
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v3

    .line 8181
    const-wide v8, 0x1050000000cL

    invoke-virtual {v0, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8183
    nop

    .line 8184
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v8

    .line 8183
    const-wide v14, 0x1050000000dL

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8185
    nop

    .line 8186
    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v8

    .line 8185
    const-wide v14, 0x1050000000eL

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8187
    nop

    .line 8188
    const/4 v3, 0x6

    invoke-virtual {v10, v3, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    .line 8187
    const-wide v14, 0x1030000000fL

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8189
    nop

    .line 8190
    const/4 v8, 0x7

    invoke-virtual {v10, v8, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    .line 8189
    const-wide v8, 0x10300000010L

    invoke-virtual {v0, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8191
    nop

    .line 8192
    const/16 v8, 0x8

    invoke-virtual {v10, v8, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v14

    .line 8191
    const-wide v12, 0x10300000011L

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8193
    nop

    .line 8194
    const/16 v9, 0x9

    invoke-virtual {v10, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 8193
    const-wide v14, 0x10300000012L

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8195
    nop

    .line 8196
    invoke-virtual {v10, v3, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 8195
    const-wide v14, 0x10300000013L

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8197
    nop

    .line 8198
    const/4 v3, 0x7

    invoke-virtual {v10, v3, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 8197
    const-wide v14, 0x10300000014L

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8199
    nop

    .line 8200
    invoke-virtual {v10, v8, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 8199
    const-wide v14, 0x10300000015L

    invoke-virtual {v0, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8201
    nop

    .line 8202
    invoke-virtual {v10, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    .line 8201
    const-wide v12, 0x10300000016L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8203
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8206
    move-object/from16 v8, p3

    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer;

    .line 8207
    if-eqz v1, :cond_6a2

    .line 8208
    const-wide v2, 0x10b00000012L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8209
    const-wide v11, 0x10100000001L

    invoke-virtual {v1}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v13

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8210
    nop

    .line 8211
    move-object/from16 v9, p4

    invoke-virtual {v9, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v6

    .line 8210
    const-wide v11, 0x10800000002L

    invoke-virtual {v0, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8212
    nop

    .line 8213
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v11

    .line 8212
    const-wide v13, 0x10100000003L

    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8214
    nop

    .line 8215
    invoke-virtual {v9, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v11

    .line 8214
    const-wide v13, 0x10100000004L

    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8216
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_6a4

    .line 8207
    :cond_6a2
    move-object/from16 v9, p4

    .line 8220
    :goto_6a4
    nop

    .line 8221
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 8222
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v46, 0x1

    add-int/lit8 v2, v2, -0x1

    :goto_6b1
    if-ltz v2, :cond_722

    .line 8223
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    .line 8224
    const-wide v11, 0x20b00000013L

    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 8226
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v13, 0x10900000001L

    invoke-virtual {v0, v13, v14, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8227
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v13

    move-object v15, v8

    const-wide v7, 0x10300000002L

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8228
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v7

    const-wide v13, 0x10300000003L

    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8229
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v7

    const-wide v13, 0x10300000004L

    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8230
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v7

    const-wide v13, 0x10500000005L

    invoke-virtual {v0, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8231
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v7

    const-wide v13, 0x10500000006L

    invoke-virtual {v0, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8232
    const-wide v7, 0x10500000007L

    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v3

    invoke-virtual {v0, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8234
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8222
    add-int/lit8 v2, v2, -0x1

    move-object v8, v15

    const/4 v7, 0x2

    goto :goto_6b1

    .line 8238
    :cond_722
    move-object v15, v8

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 8239
    const/4 v8, 0x0

    :goto_728
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_777

    .line 8240
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Sensor;

    .line 8241
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8242
    if-nez v3, :cond_740

    .line 8243
    const-wide v19, 0x10500000001L

    goto :goto_774

    .line 8245
    :cond_740
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 8246
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 8247
    const-wide v12, 0x20b00000015L

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8249
    move-object v6, v3

    const-wide v2, 0x10500000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8251
    move-wide/from16 v19, v2

    const-wide v1, 0x10b00000002L

    move-object v3, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8252
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object v3, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8254
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8239
    :goto_774
    add-int/lit8 v8, v8, 0x1

    goto :goto_728

    .line 8258
    :cond_777
    const/4 v1, 0x0

    :goto_778
    const/4 v3, 0x7

    if-ge v1, v3, :cond_7aa

    .line 8259
    const/4 v6, 0x0

    invoke-virtual {v10, v1, v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v6

    .line 8260
    const-wide/16 v24, 0x0

    cmp-long v2, v6, v24

    if-nez v2, :cond_78b

    .line 8261
    goto :goto_7a7

    .line 8263
    :cond_78b
    const-wide v11, 0x20b00000014L

    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 8264
    const-wide v13, 0x10e00000001L

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8265
    const-wide v13, 0x10300000002L

    invoke-virtual {v0, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8266
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8258
    :goto_7a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_778

    .line 8270
    :cond_7aa
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8271
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v46, 0x1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_7b7
    if-ltz v8, :cond_7f9

    .line 8272
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 8273
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 8274
    const-wide v1, 0x20b00000016L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8276
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 p2, v3

    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8278
    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8279
    const-wide v1, 0x10b00000003L

    move-object/from16 v0, p1

    move-object v3, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8281
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8271
    add-int/lit8 v8, v8, -0x1

    goto :goto_7b7

    .line 8285
    :cond_7f9
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_830

    .line 8286
    const/4 v1, 0x0

    :goto_800
    sget v2, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v1, v2, :cond_830

    .line 8287
    const/4 v6, 0x0

    invoke-virtual {v10, v1, v6}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    .line 8288
    if-eqz v2, :cond_828

    .line 8289
    const-wide v6, 0x20b00000017L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 8290
    const-wide v13, 0x10e00000001L

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8291
    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8292
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_82d

    .line 8288
    :cond_828
    const-wide v13, 0x10e00000001L

    .line 8286
    :goto_82d
    add-int/lit8 v1, v1, 0x1

    goto :goto_800

    .line 8298
    :cond_830
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000000dL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8301
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b0000000eL

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8304
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8305
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v46, 0x1

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    :goto_858
    if-ltz v8, :cond_8ba

    .line 8306
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 8307
    const-wide v1, 0x20b00000019L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8308
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8309
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000002L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8311
    const/4 v6, 0x0

    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 8312
    if-eqz v3, :cond_8a4

    .line 8313
    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8314
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8317
    :cond_8a4
    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000005L

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8319
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8305
    add-int/lit8 v8, v8, -0x1

    goto :goto_858

    .line 8323
    :cond_8ba
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b0000001cL

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8327
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v46, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_8cf
    if-ltz v1, :cond_920

    .line 8328
    move-object/from16 v2, v18

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 8329
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 8330
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_8e3
    if-ltz v6, :cond_916

    .line 8331
    const-wide v7, 0x20b0000001aL

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 8332
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-wide v12, 0x10900000001L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8333
    nop

    .line 8334
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Counter;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v11

    .line 8333
    const-wide v12, 0x10500000002L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8335
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8330
    add-int/lit8 v6, v6, -0x1

    goto :goto_8e3

    .line 8327
    :cond_916
    const-wide v12, 0x10500000002L

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v18, v2

    goto :goto_8cf

    .line 8340
    :cond_920
    nop

    .line 8341
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v1

    .line 8340
    const-wide v2, 0x10b00000005L

    const/4 v14, 0x0

    invoke-static {v0, v2, v3, v1, v14}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8344
    const-wide v1, 0x10b0000001bL

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 8345
    nop

    .line 8346
    invoke-virtual {v10, v4, v5, v14}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8345
    const-wide v11, 0x10300000001L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8347
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    const-wide v1, 0x10b00000003L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8349
    nop

    .line 8350
    invoke-virtual {v10, v4, v5, v14}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 8349
    const-wide v11, 0x10300000002L

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8351
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const-wide v1, 0x10b00000004L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8353
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8355
    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7943
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v10, p0

    move/from16 v2, v17

    move-object/from16 v1, v22

    move-object/from16 v13, v30

    move-wide/from16 v11, v37

    move-wide/from16 v8, v41

    move/from16 p2, v46

    goto/16 :goto_78

    .line 8357
    :cond_98c
    return-void
.end method

.method private greylist-max-o dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .registers 30

    .line 8360
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v7, p2

    const/16 v1, 0x24

    const-wide v3, 0x10500000001L

    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8361
    const-wide v5, 0x10300000002L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v1

    invoke-virtual {v2, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8362
    nop

    .line 8363
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v1

    .line 8362
    const-wide v5, 0x10900000003L

    invoke-virtual {v2, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8364
    nop

    .line 8365
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v1

    .line 8364
    const-wide v8, 0x10900000004L

    invoke-virtual {v2, v8, v9, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8368
    const/4 v8, 0x0

    move v1, v8

    :goto_38
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v9

    if-ge v1, v9, :cond_64

    .line 8369
    const-wide v9, 0x20b00000005L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8370
    invoke-virtual {v2, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8371
    const-wide v11, 0x10500000002L

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v13

    invoke-virtual {v2, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8372
    nop

    .line 8373
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v11

    .line 8372
    invoke-virtual {v2, v5, v6, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8374
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8368
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 8378
    :cond_64
    new-instance v1, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v1, v7}, Landroid/os/BatteryStats$HistoryPrinter;-><init>(I)V

    .line 8379
    nop

    .line 8380
    nop

    .line 8381
    nop

    .line 8382
    nop

    .line 8383
    nop

    .line 8384
    const-wide/16 v9, 0x0

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/os/BatteryStats;->iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v11

    move-wide v5, v3

    move v13, v8

    const/4 v14, 0x0

    .line 8386
    :goto_79
    move-wide v15, v3

    :try_start_7a
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v3

    if-eqz v3, :cond_1c5

    .line 8387
    iget-wide v4, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 8388
    cmp-long v6, v15, v9

    if-gez v6, :cond_87

    .line 8389
    move-wide v15, v4

    .line 8391
    :cond_87
    move-wide/from16 v17, v9

    iget-wide v9, v3, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v6, v9, p3

    if-ltz v6, :cond_1b3

    .line 8392
    cmp-long v6, p3, v17

    if-ltz v6, :cond_192

    if-nez v13, :cond_192

    .line 8393
    iget-byte v6, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x5

    if-eq v6, v10, :cond_d8

    iget-byte v6, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x7

    if-eq v6, v9, :cond_d8

    iget-byte v6, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v9, 0x4

    if-eq v6, v9, :cond_d8

    iget-byte v6, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v9, 0x8

    if-ne v6, v9, :cond_b0

    move-wide/from16 v23, v15

    move-wide v15, v4

    move-wide/from16 v4, v23

    goto :goto_dd

    .line 8401
    :cond_b0
    move/from16 v19, v13

    iget-wide v12, v3, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v6, v12, v17

    if-eqz v6, :cond_d0

    .line 8402
    nop

    .line 8403
    iget-byte v12, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8404
    iput-byte v10, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8405
    and-int/lit8 v6, v7, 0x20

    if-eqz v6, :cond_c3

    const/4 v6, 0x1

    goto :goto_c4

    :cond_c3
    move v6, v8

    :goto_c4
    move-wide/from16 v23, v15

    move-wide v15, v4

    move-wide/from16 v4, v23

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8407
    iput-byte v12, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v13, 0x1

    goto :goto_ed

    .line 8401
    :cond_d0
    move-wide/from16 v23, v15

    move-wide v15, v4

    move-wide/from16 v4, v23

    move/from16 v13, v19

    goto :goto_ed

    .line 8393
    :cond_d8
    move-wide/from16 v23, v15

    move-wide v15, v4

    move-wide/from16 v4, v23

    .line 8397
    :goto_dd
    nop

    .line 8398
    and-int/lit8 v2, v7, 0x20

    if-eqz v2, :cond_e4

    const/4 v6, 0x1

    goto :goto_e5

    :cond_e4
    move v6, v8

    :goto_e5
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8400
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v13, 0x1

    .line 8409
    :goto_ed
    if-eqz v14, :cond_190

    .line 8410
    iget-byte v2, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v2, :cond_101

    .line 8411
    and-int/lit8 v2, v7, 0x20

    if-eqz v2, :cond_f9

    const/4 v6, 0x1

    goto :goto_fa

    :cond_f9
    move v6, v8

    :goto_fa
    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8413
    iput-byte v8, v3, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 8415
    :cond_101
    iget v10, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8416
    iget-object v12, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8417
    new-instance v2, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v2, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8418
    move v2, v8

    :goto_10d
    const/16 v6, 0x17

    if-ge v2, v6, :cond_189

    .line 8419
    nop

    .line 8420
    invoke-virtual {v14, v2}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v6

    .line 8421
    if-nez v6, :cond_11c

    .line 8422
    move v0, v2

    const/4 v2, 0x0

    goto/16 :goto_182

    .line 8425
    :cond_11c
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_124
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_180

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Ljava/util/Map$Entry;

    .line 8426
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseIntArray;

    .line 8427
    nop

    :goto_139
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_179

    .line 8428
    iput v2, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8429
    iget-object v9, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Ljava/lang/String;

    iput-object v0, v9, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 8430
    iget-object v0, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    iput v9, v0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 8431
    iget-object v0, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    iput v9, v0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 8432
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_164

    move-object v0, v6

    const/4 v6, 0x1

    goto :goto_166

    :cond_164
    move-object v0, v6

    const/4 v6, 0x0

    :goto_166
    move-object v9, v0

    move v0, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 8434
    const/4 v2, 0x0

    iput-object v2, v3, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8435
    iput-object v2, v3, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8427
    add-int/lit8 v8, v8, 0x1

    move v2, v0

    move-object v6, v9

    move-object/from16 v0, p0

    goto :goto_139

    .line 8437
    :cond_179
    move v0, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    move v2, v0

    move-object/from16 v0, p0

    goto :goto_124

    .line 8425
    :cond_180
    move v0, v2

    const/4 v2, 0x0

    .line 8418
    :goto_182
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x0

    move v2, v0

    move-object/from16 v0, p0

    goto :goto_10d

    .line 8439
    :cond_189
    const/4 v2, 0x0

    iput v10, v3, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 8440
    iput-object v12, v3, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 8441
    move-object v14, v2

    goto :goto_19c

    .line 8409
    :cond_190
    const/4 v2, 0x0

    goto :goto_19c

    .line 8392
    :cond_192
    move-wide/from16 v23, v15

    move-wide v15, v4

    move-wide/from16 v4, v23

    move/from16 v19, v13

    const/4 v2, 0x0

    .line 8444
    move/from16 v13, v19

    :goto_19c
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_1a2

    const/4 v6, 0x1

    goto :goto_1a3

    :cond_1a2
    const/4 v6, 0x0

    :goto_1a3
    move-object/from16 v21, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide v3, v4

    move-wide v5, v15

    move-wide/from16 v9, v17

    goto/16 :goto_79

    .line 8391
    :cond_1b3
    move-wide/from16 v23, v15

    move-wide v15, v4

    move-wide/from16 v4, v23

    move/from16 v19, v13

    const/16 v21, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide v3, v4

    move-wide v5, v15

    move-wide/from16 v9, v17

    goto/16 :goto_79

    .line 8448
    :cond_1c5
    move-wide/from16 v17, v9

    cmp-long v0, p3, v17

    if-ltz v0, :cond_1ec

    .line 8449
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 8450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NEXT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v3, 0x1

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v3, 0x20900000006L

    invoke-virtual {v2, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1ec
    .catchall {:try_start_7a .. :try_end_1ec} :catchall_1f2

    .line 8453
    :cond_1ec
    if-eqz v11, :cond_1f1

    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 8454
    :cond_1f1
    return-void

    .line 8383
    :catchall_1f2
    move-exception v0

    move-object v1, v0

    if-eqz v11, :cond_1fe

    :try_start_1f6
    invoke-virtual {v11}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_1f9
    .catchall {:try_start_1f6 .. :try_end_1f9} :catchall_1fa

    goto :goto_1fe

    :catchall_1fa
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1fe
    :goto_1fe
    throw v1
.end method

.method private blacklist dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V
    .registers 33

    .line 8457
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v2, v10

    .line 8459
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 8460
    mul-long v5, v4, v10

    .line 8464
    const-wide v12, 0x10b00000001L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 8465
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v14

    move-wide/from16 v16, v10

    const-wide v10, 0x10300000001L

    invoke-virtual {v1, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8466
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    const-wide v14, 0x10300000002L

    invoke-virtual {v1, v14, v15, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8467
    nop

    .line 8468
    const/4 v4, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v18

    div-long v14, v18, v16

    .line 8467
    const-wide v10, 0x10300000003L

    invoke-virtual {v1, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8469
    nop

    .line 8470
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    .line 8469
    move-wide/from16 v20, v8

    const-wide v7, 0x10300000004L

    invoke-virtual {v1, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8471
    nop

    .line 8472
    invoke-virtual {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    .line 8471
    const-wide v7, 0x10300000005L

    invoke-virtual {v1, v7, v8, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8473
    nop

    .line 8474
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    .line 8473
    const-wide v8, 0x10300000006L

    invoke-virtual {v1, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8475
    nop

    .line 8476
    invoke-virtual {v0, v5, v6, v4}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v14

    div-long v14, v14, v16

    .line 8475
    const-wide v10, 0x10300000007L

    invoke-virtual {v1, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8477
    nop

    .line 8478
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v2

    div-long v2, v2, v16

    .line 8477
    const-wide v14, 0x10300000008L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8479
    nop

    .line 8480
    invoke-virtual {v0, v5, v6, v4}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v2

    div-long v2, v2, v16

    .line 8479
    const-wide v14, 0x10300000009L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8481
    nop

    .line 8482
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v2

    .line 8481
    const-wide v14, 0x1030000000aL

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8483
    nop

    .line 8484
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v2

    .line 8483
    const-wide v14, 0x1030000000bL

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8485
    nop

    .line 8486
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v2

    .line 8485
    const-wide v14, 0x1030000000cL

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8487
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8490
    const-wide v2, 0x10b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8491
    nop

    .line 8492
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v7

    .line 8491
    const-wide v12, 0x10500000001L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8493
    nop

    .line 8494
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v7

    .line 8493
    const-wide v12, 0x10500000002L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8495
    nop

    .line 8496
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v7

    .line 8495
    const-wide v12, 0x10500000003L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8497
    nop

    .line 8498
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v7

    .line 8497
    const-wide v12, 0x10500000004L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8499
    nop

    .line 8500
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v7

    .line 8499
    const-wide v12, 0x10500000005L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8501
    nop

    .line 8502
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v12

    div-long v12, v12, v16

    .line 8501
    invoke-virtual {v1, v8, v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8503
    nop

    .line 8504
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v12

    div-long v12, v12, v16

    .line 8503
    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8505
    nop

    .line 8506
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v12

    div-long v12, v12, v16

    .line 8505
    const-wide v14, 0x10300000008L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8507
    nop

    .line 8508
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v12

    div-long v12, v12, v16

    .line 8507
    const-wide v14, 0x10300000009L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8509
    nop

    .line 8510
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v12

    div-long v12, v12, v16

    .line 8509
    const-wide v14, 0x1030000000aL

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8511
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8514
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    .line 8516
    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-ltz v7, :cond_17b

    .line 8518
    div-long v2, v2, v16

    const-wide v14, 0x10300000003L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v14, 0x10300000004L

    goto :goto_197

    .line 8520
    :cond_17b
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    .line 8522
    cmp-long v7, v2, v12

    if-ltz v7, :cond_18e

    .line 8523
    div-long v2, v2, v16

    const-wide v14, 0x10300000004L

    invoke-virtual {v1, v14, v15, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_197

    .line 8525
    :cond_18e
    const-wide v14, 0x10300000004L

    const/4 v2, -0x1

    invoke-virtual {v1, v14, v15, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8530
    :goto_197
    const-wide v2, 0x20b00000005L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v7

    invoke-static {v1, v2, v3, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 8533
    move v2, v4

    :goto_1a4
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const-wide v12, 0x10e00000001L

    const/4 v7, 0x1

    if-ge v2, v3, :cond_204

    .line 8535
    if-nez v2, :cond_1b1

    goto :goto_1b2

    :cond_1b1
    move v7, v4

    .line 8536
    :goto_1b2
    nop

    .line 8537
    sget v3, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    if-eq v2, v3, :cond_1be

    sget v3, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    if-ne v2, v3, :cond_1bc

    goto :goto_1be

    :cond_1bc
    move v3, v2

    goto :goto_1bf

    .line 8538
    :cond_1be
    :goto_1be
    move v3, v4

    .line 8540
    :goto_1bf
    move-wide/from16 v26, v5

    const-wide v4, 0x20b00000008L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 8541
    if-eqz v7, :cond_1d5

    .line 8542
    const-wide v12, 0x10800000002L

    invoke-virtual {v1, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_1d8

    .line 8544
    :cond_1d5
    invoke-virtual {v1, v12, v13, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8546
    :goto_1d8
    move-wide v12, v4

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move v5, v2

    const-wide v2, 0x10b00000003L

    move v15, v5

    move-wide v10, v12

    move-wide/from16 v5, v26

    const-wide v12, 0x10300000005L

    const/4 v14, 0x0

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8548
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8533
    add-int/lit8 v2, v15, 0x1

    move v4, v14

    const-wide v10, 0x10300000007L

    const-wide/16 v12, 0x0

    const-wide v14, 0x10300000004L

    goto :goto_1a4

    .line 8552
    :cond_204
    move v14, v4

    move-wide v10, v12

    const-wide v12, 0x10300000005L

    const-wide v2, 0x20b00000006L

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 8555
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v2

    .line 8556
    if-eqz v2, :cond_253

    .line 8557
    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v3

    array-length v4, v3

    move v15, v14

    :goto_223
    if-ge v15, v4, :cond_253

    aget v10, v3, v15

    .line 8558
    invoke-virtual {v2, v10}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v10

    array-length v11, v10

    move v8, v14

    :goto_22d
    if-ge v8, v11, :cond_241

    aget v9, v10, v8

    .line 8559
    const-wide v12, 0x20300000007L

    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8558
    add-int/lit8 v8, v8, 0x1

    const-wide v12, 0x10300000005L

    goto :goto_22d

    .line 8557
    :cond_241
    add-int/lit8 v15, v15, 0x1

    const-wide v8, 0x10300000006L

    const-wide v10, 0x10e00000001L

    const-wide v12, 0x10300000005L

    goto :goto_223

    .line 8565
    :cond_253
    nop

    .line 8566
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8565
    const-wide v3, 0x10b00000009L

    invoke-static {v1, v3, v4, v2, v14}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8569
    nop

    .line 8570
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8569
    const-wide v3, 0x10b0000000aL

    invoke-static {v1, v3, v4, v2, v14}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8573
    const-wide v2, 0x10b0000000cL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8574
    nop

    .line 8575
    invoke-virtual {v0, v14, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v8

    .line 8574
    const-wide v10, 0x10300000001L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8576
    nop

    .line 8577
    invoke-virtual {v0, v7, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v8

    .line 8576
    const-wide v10, 0x10300000002L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8578
    nop

    .line 8579
    invoke-virtual {v0, v14, v14}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v8

    .line 8578
    const-wide v12, 0x10300000005L

    invoke-virtual {v1, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8580
    nop

    .line 8581
    invoke-virtual {v0, v7, v14}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v8

    .line 8580
    const-wide v10, 0x10300000006L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8582
    nop

    .line 8583
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    .line 8582
    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8584
    nop

    .line 8585
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v10

    .line 8584
    const-wide v12, 0x10300000004L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8586
    nop

    .line 8587
    invoke-virtual {v0, v8, v14}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v10

    .line 8586
    const-wide v12, 0x10300000007L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8588
    nop

    .line 8589
    invoke-virtual {v0, v9, v14}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v10

    .line 8588
    const-wide v12, 0x10300000008L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8590
    nop

    .line 8591
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v10

    .line 8590
    const-wide v12, 0x10300000009L

    invoke-virtual {v1, v12, v13, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8592
    nop

    .line 8593
    const/4 v10, 0x5

    invoke-virtual {v0, v10, v14}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v11

    .line 8592
    const-wide v9, 0x1030000000aL

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8594
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8597
    nop

    .line 8598
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 8597
    const-wide v3, 0x10b0000000bL

    invoke-static {v1, v3, v4, v2, v14}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 8602
    const-wide v2, 0x10b0000000dL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8603
    nop

    .line 8604
    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8603
    const-wide v11, 0x10300000001L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8605
    nop

    .line 8606
    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8605
    const-wide v11, 0x10300000002L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8607
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8610
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v2

    .line 8611
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_342
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide v10, 0x10900000001L

    if-eqz v2, :cond_37c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8612
    const-wide v3, 0x20b0000000eL

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 8613
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8614
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move v10, v7

    const/4 v7, 0x0

    move-wide v11, v3

    move-object v4, v2

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8616
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8617
    move v7, v10

    goto :goto_342

    .line 8621
    :cond_37c
    move v2, v7

    .line 8622
    nop

    .line 8624
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v3

    .line 8625
    move v4, v14

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    :goto_387
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_3c3

    .line 8626
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    .line 8628
    nop

    .line 8629
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v7

    .line 8630
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    :goto_39d
    if-ltz v9, :cond_3c0

    .line 8631
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 8633
    invoke-virtual {v12, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v13

    .line 8634
    if-eqz v13, :cond_3b1

    .line 8635
    invoke-virtual {v13, v5, v6, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v28

    add-long v22, v22, v28

    .line 8639
    :cond_3b1
    invoke-virtual {v12, v14}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    .line 8640
    if-eqz v12, :cond_3bd

    .line 8641
    invoke-virtual {v12, v5, v6, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v24, v24, v12

    .line 8630
    :cond_3bd
    add-int/lit8 v9, v9, -0x1

    goto :goto_39d

    .line 8625
    :cond_3c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_387

    .line 8646
    :cond_3c3
    const-wide v3, 0x10b0000000fL

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 8647
    nop

    .line 8648
    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v12

    div-long v12, v12, v16

    .line 8647
    const-wide v10, 0x10300000001L

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8649
    nop

    .line 8650
    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8649
    const-wide v11, 0x10300000002L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8651
    div-long v9, v22, v16

    const-wide v11, 0x10300000003L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8653
    div-long v9, v24, v16

    const-wide v12, 0x10300000004L

    invoke-virtual {v1, v12, v13, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8655
    nop

    .line 8656
    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8655
    const-wide v12, 0x10300000005L

    invoke-virtual {v1, v12, v13, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8657
    nop

    .line 8658
    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8657
    const-wide v11, 0x10300000006L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8659
    nop

    .line 8660
    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v7

    .line 8659
    const-wide v9, 0x10500000007L

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8661
    nop

    .line 8662
    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8661
    const-wide v11, 0x10500000008L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8663
    nop

    .line 8664
    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8663
    const-wide v12, 0x10300000009L

    invoke-virtual {v1, v12, v13, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8665
    nop

    .line 8666
    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8665
    const-wide v11, 0x1030000000aL

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8667
    nop

    .line 8668
    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v7

    .line 8667
    const-wide v9, 0x1050000000bL

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8669
    nop

    .line 8670
    invoke-virtual {v0, v8, v5, v6, v14}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8669
    const-wide v11, 0x1030000000cL

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8671
    nop

    .line 8672
    invoke-virtual {v0, v8, v14}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    .line 8671
    const-wide v9, 0x1050000000dL

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8673
    nop

    .line 8674
    invoke-virtual {v0, v8, v5, v6, v14}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8673
    const-wide v11, 0x1030000000eL

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8675
    nop

    .line 8676
    invoke-virtual {v0, v8, v14}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    .line 8675
    const-wide v9, 0x1050000000fL

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8677
    nop

    .line 8678
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    .line 8677
    const-wide v11, 0x10300000010L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8679
    nop

    .line 8680
    invoke-virtual {v0, v2, v5, v6, v14}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8679
    const-wide v11, 0x10300000011L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8681
    nop

    .line 8682
    invoke-virtual {v0, v2, v14}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    .line 8681
    const-wide v9, 0x10500000012L

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8683
    nop

    .line 8684
    invoke-virtual {v0, v2, v5, v6, v14}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    div-long v9, v9, v16

    .line 8683
    const-wide v11, 0x10300000013L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8685
    nop

    .line 8686
    invoke-virtual {v0, v2, v14}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    .line 8685
    const-wide v9, 0x10500000014L

    invoke-virtual {v1, v9, v10, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8687
    nop

    .line 8688
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    .line 8687
    const-wide v11, 0x10300000015L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8689
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8692
    nop

    .line 8693
    invoke-virtual {v0, v5, v6, v14}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v3

    .line 8694
    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v7

    .line 8695
    const-wide v9, 0x10b00000017L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8696
    div-long v3, v3, v16

    const-wide v11, 0x10300000001L

    invoke-virtual {v1, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 8698
    const-wide v3, 0x10500000002L

    invoke-virtual {v1, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8700
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8702
    move-object/from16 v3, p2

    invoke-virtual {v3, v14}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v4

    .line 8705
    move v7, v14

    :goto_51e
    const/16 v9, 0x13

    if-ge v7, v9, :cond_594

    .line 8707
    nop

    .line 8708
    packed-switch v7, :pswitch_data_76a

    :pswitch_526
    move v9, v14

    goto :goto_547

    .line 8713
    :pswitch_528
    nop

    .line 8714
    move v9, v2

    goto :goto_547

    .line 8710
    :pswitch_52b
    nop

    .line 8711
    const/16 v9, 0xd

    goto :goto_547

    .line 8719
    :pswitch_52f
    nop

    .line 8720
    const/4 v9, 0x3

    goto :goto_547

    .line 8737
    :pswitch_532
    const/16 v9, 0xc

    goto :goto_547

    .line 8722
    :pswitch_535
    nop

    .line 8723
    const/4 v9, 0x4

    goto :goto_547

    .line 8716
    :pswitch_538
    nop

    .line 8717
    move v9, v8

    goto :goto_547

    .line 8731
    :pswitch_53b
    nop

    .line 8732
    const/4 v9, 0x6

    goto :goto_547

    .line 8734
    :pswitch_53e
    nop

    .line 8735
    const/16 v9, 0xb

    goto :goto_547

    .line 8725
    :pswitch_542
    nop

    .line 8726
    const/4 v9, 0x5

    goto :goto_547

    .line 8728
    :pswitch_545
    nop

    .line 8729
    const/4 v9, 0x7

    .line 8740
    :goto_547
    const-wide v10, 0x20b00000011L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 8741
    const-wide v12, 0x10e00000001L

    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8742
    const-wide v12, 0x10500000002L

    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8743
    nop

    .line 8744
    invoke-virtual {v4, v7}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v2

    .line 8743
    const-wide v8, 0x10100000003L

    invoke-virtual {v1, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8745
    nop

    .line 8746
    invoke-direct {v0, v7}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v2

    .line 8745
    const-wide v8, 0x10800000004L

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 8747
    const-wide v2, 0x10100000005L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8748
    const-wide v2, 0x10100000006L

    invoke-virtual {v1, v2, v3, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8749
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8706
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p2

    const/4 v2, 0x1

    const/4 v8, 0x2

    goto :goto_51e

    .line 8753
    :cond_594
    const-wide v2, 0x10b00000012L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 8754
    nop

    .line 8755
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v7

    .line 8754
    const-wide v9, 0x10100000001L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8756
    const-wide v7, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8757
    nop

    .line 8758
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 8757
    const-wide v9, 0x10100000003L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8759
    nop

    .line 8760
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 8759
    const-wide v9, 0x10100000004L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 8761
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8764
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v2

    .line 8765
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v8

    .line 8766
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5f7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_646

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/util/Map$Entry;

    .line 8767
    const-wide v2, 0x20b00000013L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 8768
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8769
    nop

    .line 8770
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/BatteryStats$Timer;

    .line 8769
    const-wide v2, 0x10b00000002L

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8771
    nop

    .line 8772
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    .line 8771
    const-wide v2, 0x10b00000003L

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8773
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8774
    goto :goto_5f7

    .line 8777
    :cond_646
    move v8, v14

    :goto_647
    const/4 v15, 0x5

    if-ge v8, v15, :cond_66e

    .line 8778
    const-wide v2, 0x20b00000014L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8779
    const-wide v12, 0x10e00000001L

    invoke-virtual {v1, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8780
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8782
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8777
    add-int/lit8 v8, v8, 0x1

    goto :goto_647

    .line 8786
    :cond_66e
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000015L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8790
    move v8, v14

    :goto_67c
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v2

    if-ge v8, v2, :cond_6a6

    .line 8791
    const-wide v2, 0x20b00000010L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8792
    const-wide v12, 0x10e00000001L

    invoke-virtual {v1, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8793
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8795
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8790
    add-int/lit8 v8, v8, 0x1

    goto :goto_67c

    .line 8799
    :cond_6a6
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v2

    .line 8800
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6b2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8801
    const-wide v3, 0x20b00000016L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8802
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide v11, 0x10900000001L

    invoke-virtual {v1, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 8803
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8804
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8805
    goto :goto_6b2

    .line 8808
    :cond_6e9
    move v8, v14

    :goto_6ea
    const/4 v15, 0x5

    if-ge v8, v15, :cond_711

    .line 8809
    const-wide v2, 0x20b00000018L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8810
    const-wide v12, 0x10e00000001L

    invoke-virtual {v1, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8811
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8813
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8808
    add-int/lit8 v8, v8, 0x1

    goto :goto_6ea

    .line 8817
    :cond_711
    move v8, v14

    :goto_712
    const/16 v2, 0x8

    if-ge v8, v2, :cond_73a

    .line 8818
    const-wide v2, 0x20b00000019L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 8819
    const-wide v12, 0x10e00000001L

    invoke-virtual {v1, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8820
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8822
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8817
    add-int/lit8 v8, v8, 0x1

    goto :goto_712

    .line 8826
    :cond_73a
    nop

    :goto_73b
    const/16 v2, 0xd

    if-ge v14, v2, :cond_763

    .line 8827
    const-wide v2, 0x20b0000001aL

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 8828
    const-wide v12, 0x10e00000001L

    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 8829
    invoke-virtual {v0, v14}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    const-wide v2, 0x10b00000002L

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8831
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8826
    add-int/lit8 v14, v14, 0x1

    goto :goto_73b

    .line 8834
    :cond_763
    move-wide/from16 v2, v20

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 8835
    return-void

    nop

    :pswitch_data_76a
    .packed-switch 0x0
        :pswitch_545
        :pswitch_526
        :pswitch_542
        :pswitch_53e
        :pswitch_526
        :pswitch_526
        :pswitch_53b
        :pswitch_526
        :pswitch_538
        :pswitch_526
        :pswitch_526
        :pswitch_535
        :pswitch_526
        :pswitch_532
        :pswitch_52f
        :pswitch_52b
        :pswitch_528
    .end packed-switch
.end method

.method private static greylist-max-o dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 8

    .line 7283
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_8

    .line 7284
    const/4 p0, 0x0

    return p0

    .line 7286
    :cond_8
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7287
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7288
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7289
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7290
    invoke-static {p1, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 7291
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7292
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 7293
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-o dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .registers 21

    .line 3816
    move-object/from16 v0, p3

    if-nez v0, :cond_5

    .line 3817
    return-void

    .line 3820
    :cond_5
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v1

    .line 3821
    move/from16 v3, p6

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    .line 3822
    const-wide/16 v4, 0x3e8

    div-long v4, p4, v4

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v6

    .line 3823
    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v8

    .line 3824
    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    .line 3825
    const-wide/16 v10, 0x0

    cmp-long v0, v1, v10

    const-wide/16 v10, -0x1

    if-nez v0, :cond_39

    if-nez v3, :cond_39

    cmp-long v0, v6, v10

    if-nez v0, :cond_39

    cmp-long v0, v8, v10

    if-nez v0, :cond_39

    cmp-long v0, v4, v10

    if-eqz v0, :cond_76

    .line 3827
    :cond_39
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 3828
    move-wide/from16 p3, v10

    const-wide v10, 0x10300000001L

    invoke-virtual {p0, v10, v11, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3829
    const-wide v0, 0x10300000002L

    invoke-virtual {p0, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3831
    cmp-long v0, v6, p3

    if-eqz v0, :cond_5b

    .line 3832
    const-wide v0, 0x10300000003L

    invoke-virtual {p0, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3834
    :cond_5b
    cmp-long v0, v8, p3

    if-eqz v0, :cond_67

    .line 3835
    const-wide v0, 0x10300000004L

    invoke-virtual {p0, v0, v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3837
    :cond_67
    cmp-long v0, v4, p3

    if-eqz v0, :cond_73

    .line 3838
    const-wide v0, 0x10300000005L

    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3840
    :cond_73
    invoke-virtual {p0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3842
    :cond_76
    return-void
.end method

.method private static final greylist-max-o dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .registers 10

    .line 3795
    if-eqz p4, :cond_25

    .line 3797
    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p5

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide p5

    .line 3798
    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p4

    .line 3799
    const-wide/16 v0, 0x0

    cmp-long p7, p5, v0

    if-nez p7, :cond_16

    if-eqz p4, :cond_25

    .line 3800
    :cond_16
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p5, p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3803
    :cond_25
    return-void
.end method

.method public static blacklist formatCharge(D)Ljava/lang/String;
    .registers 2

    .line 3554
    invoke-static {p0, p1}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final greylist-max-o formatTimeMs(Ljava/lang/StringBuilder;J)V
    .registers 7

    .line 3510
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 3511
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 3512
    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3513
    const-string p1, "ms "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3514
    return-void
.end method

.method public static final greylist-max-o formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .registers 7

    .line 3517
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 3518
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 3519
    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3520
    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3521
    return-void
.end method

.method private static final greylist-max-o formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .registers 13

    .line 3482
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    .line 3483
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    .line 3484
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3485
    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    :cond_13
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v6, 0x18

    mul-long/2addr v0, v6

    .line 3489
    sub-long v6, p1, v0

    const-wide/16 v8, 0xe10

    div-long/2addr v6, v8

    .line 3490
    cmp-long v8, v6, v2

    if-nez v8, :cond_27

    cmp-long v8, v0, v2

    if-eqz v8, :cond_2f

    .line 3491
    :cond_27
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3492
    const-string v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3494
    :cond_2f
    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 3496
    sub-long v6, p1, v0

    div-long/2addr v6, v4

    .line 3497
    cmp-long v8, v6, v2

    if-nez v8, :cond_3d

    cmp-long v8, v0, v2

    if-eqz v8, :cond_45

    .line 3498
    :cond_3d
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3499
    const-string v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    :cond_45
    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 3503
    cmp-long v4, p1, v2

    if-nez v4, :cond_4f

    cmp-long v2, v0, v2

    if-eqz v2, :cond_59

    .line 3504
    :cond_4f
    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3505
    const-string/jumbo p1, "s "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    :cond_59
    return-void
.end method

.method private static blacklist formatValue(D)Ljava/lang/String;
    .registers 4

    .line 3561
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_9

    const-string p0, "0"

    return-object p0

    .line 3564
    :cond_9
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_15

    .line 3565
    const-string v0, "%.8f"

    goto :goto_62

    .line 3566
    :cond_15
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_21

    .line 3567
    const-string v0, "%.7f"

    goto :goto_62

    .line 3568
    :cond_21
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2d

    .line 3569
    const-string v0, "%.6f"

    goto :goto_62

    .line 3570
    :cond_2d
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_39

    .line 3571
    const-string v0, "%.5f"

    goto :goto_62

    .line 3572
    :cond_39
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_45

    .line 3573
    const-string v0, "%.4f"

    goto :goto_62

    .line 3574
    :cond_45
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4e

    .line 3575
    const-string v0, "%.3f"

    goto :goto_62

    .line 3576
    :cond_4e
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_57

    .line 3577
    const-string v0, "%.2f"

    goto :goto_62

    .line 3578
    :cond_57
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_60

    .line 3579
    const-string v0, "%.1f"

    goto :goto_62

    .line 3581
    :cond_60
    const-string v0, "%.0f"

    .line 3585
    :goto_62
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getAllNetworkTypesCount()I
    .registers 4

    .line 2651
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    array-length v0, v0

    .line 2652
    sget-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v2, v0, 0x3

    if-ne v1, v2, :cond_d

    .line 2657
    return v0

    .line 2653
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA_CONNECTION_NAMES length does not match network type count. Expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getAllNetworkTypesCount$ravenwood()I
    .registers 1

    .line 2661
    sget-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount()I
    .registers 1

    .line 9005
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getCellSignalStrengthLevelCount$ravenwood()I
    .registers 1

    .line 9009
    const/4 v0, 0x5

    return v0
.end method

.method protected static blacklist getDisplayTransport([I)I
    .registers 1

    .line 9034
    invoke-static {p0}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->getDisplayTransport([I)I

    move-result p0

    return p0
.end method

.method protected static blacklist getDisplayTransport$ravenwood([I)I
    .registers 9

    .line 9049
    sget-object v0, Landroid/os/BatteryStats;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget v4, v0, v3

    .line 9050
    array-length v5, p0

    move v6, v2

    :goto_b
    if-ge v6, v5, :cond_15

    aget v7, p0, v6

    .line 9051
    if-ne v7, v4, :cond_12

    .line 9052
    return v4

    .line 9050
    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 9049
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 9056
    :cond_18
    aget p0, p0, v2

    return p0
.end method

.method protected static blacklist getModemTxPowerLevelCount()I
    .registers 1

    .line 9015
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    return v0
.end method

.method protected static blacklist getModemTxPowerLevelCount$ravenwood()I
    .registers 1

    .line 9019
    const/4 v0, 0x5

    return v0
.end method

.method private blacklist getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryStats$UidMobileRadioStats;",
            ">;"
        }
    .end annotation

    .line 8956
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 8957
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 8958
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_73

    .line 8959
    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer;

    .line 8960
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_26

    .line 8961
    move v5, v3

    goto :goto_6f

    .line 8964
    :cond_26
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v11

    .line 8965
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 8966
    if-nez v5, :cond_34

    .line 8967
    move v5, v3

    goto :goto_6f

    .line 8970
    :cond_34
    invoke-virtual {v5, v2, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 8972
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 8974
    const-wide/16 v6, 0x0

    cmp-long v10, v12, v6

    if-nez v10, :cond_49

    cmp-long v6, v14, v6

    if-nez v6, :cond_49

    .line 8975
    move v5, v3

    goto :goto_6f

    .line 8977
    :cond_49
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v6

    const-wide/16 v16, 0x3e8

    div-long v6, v6, v16

    .line 8978
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v18

    .line 8979
    move v5, v3

    long-to-double v2, v6

    move-wide/from16 v16, v8

    add-long v8, v12, v14

    long-to-double v8, v8

    div-double v19, v2, v8

    .line 8980
    cmpl-double v2, v19, v16

    if-nez v2, :cond_63

    .line 8981
    goto :goto_6f

    .line 8983
    :cond_63
    new-instance v10, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/16 v21, 0x0

    move-wide/from16 v16, v6

    invoke-direct/range {v10 .. v21}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJIDLandroid/os/BatteryStats-IA;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8958
    :goto_6f
    add-int/lit8 v3, v5, 0x1

    const/4 v2, 0x0

    goto :goto_a

    .line 8987
    :cond_73
    new-instance v0, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 8989
    return-object v1
.end method

.method protected static blacklist isKernelStatsAvailable()Z
    .registers 1

    .line 9025
    const/4 v0, 0x1

    return v0
.end method

.method protected static blacklist isKernelStatsAvailable$ravenwood()Z
    .registers 1

    .line 9029
    const/4 v0, 0x0

    return v0
.end method

.method protected static blacklist isLowRamDevice()Z
    .registers 1

    .line 8995
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    return v0
.end method

.method protected static blacklist isLowRamDevice$ravenwood()Z
    .registers 1

    .line 8999
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$getUidMobileRadioStats$0(Landroid/os/BatteryStats$UidMobileRadioStats;Landroid/os/BatteryStats$UidMobileRadioStats;)I
    .registers 4

    .line 8988
    iget-wide v0, p1, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    iget-wide p0, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static greylist-max-o mapToInternalProcessState(I)I
    .registers 6

    .line 663
    const/16 v0, 0x14

    if-ne p0, v0, :cond_6

    .line 664
    const/4 p0, 0x7

    return p0

    .line 665
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 666
    const/4 p0, 0x0

    return p0

    .line 667
    :cond_b
    const/4 v1, 0x3

    if-ne p0, v1, :cond_f

    .line 668
    return v1

    .line 669
    :cond_f
    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p0, v3, :cond_14

    .line 670
    return v2

    .line 671
    :cond_14
    const/4 v4, 0x5

    if-ne p0, v4, :cond_18

    .line 672
    return v2

    .line 673
    :cond_18
    const/4 v2, 0x6

    if-gt p0, v2, :cond_1c

    .line 675
    return v0

    .line 676
    :cond_1c
    const/16 v0, 0xb

    if-gt p0, v0, :cond_21

    .line 677
    return v1

    .line 678
    :cond_21
    const/16 v0, 0xc

    if-gt p0, v0, :cond_26

    .line 679
    return v3

    .line 680
    :cond_26
    const/16 v0, 0xd

    if-gt p0, v0, :cond_2b

    .line 681
    return v4

    .line 683
    :cond_2b
    return v2
.end method

.method public static blacklist mapUidProcessStateToBatteryConsumerProcessState(I)I
    .registers 1

    .line 692
    packed-switch p0, :pswitch_data_e

    .line 704
    :pswitch_3
    const/4 p0, 0x0

    return p0

    .line 702
    :pswitch_5
    const/4 p0, 0x4

    return p0

    .line 698
    :pswitch_7
    const/4 p0, 0x2

    return p0

    .line 700
    :pswitch_9
    const/4 p0, 0x3

    return p0

    .line 695
    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static greylist-max-o printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .registers 14

    .line 6654
    xor-int/2addr p1, p2

    .line 6655
    if-nez p1, :cond_4

    return-void

    .line 6656
    :cond_4
    nop

    .line 6657
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    array-length v2, p4

    const/4 v3, -0x1

    const-string v4, ":\""

    const-string v5, "\""

    if-ge v0, v2, :cond_a6

    .line 6658
    aget-object v2, p4, v0

    .line 6659
    iget v6, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, p1

    if-eqz v6, :cond_a2

    .line 6660
    if-eqz p5, :cond_1b

    const-string v6, " "

    goto :goto_1d

    :cond_1b
    const-string v6, ","

    :goto_1d
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6661
    iget v6, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    const-string v7, "="

    if-gez v6, :cond_72

    .line 6662
    iget v6, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, p2

    if-eqz v6, :cond_2e

    const-string v6, "+"

    goto :goto_30

    :cond_2e
    const-string v6, "-"

    :goto_30
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6663
    if-eqz p5, :cond_38

    iget-object v6, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_3a

    :cond_38
    iget-object v6, v2, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_3a
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6664
    iget v2, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v2, v6, :cond_a2

    if-eqz p3, :cond_a2

    .line 6665
    nop

    .line 6666
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6667
    if-nez p5, :cond_56

    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne v1, v3, :cond_50

    goto :goto_56

    .line 6676
    :cond_50
    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 6669
    :cond_56
    :goto_56
    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6670
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6671
    iget-object v1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-eqz v1, :cond_6d

    .line 6672
    iget-object v1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    const-string v2, "\"\""

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6674
    :cond_6d
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6657
    :goto_70
    const/4 v1, 0x1

    goto :goto_a2

    .line 6680
    :cond_72
    if-eqz p5, :cond_77

    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_79

    :cond_77
    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_79
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6681
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6682
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    iget v4, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v3, v4

    .line 6683
    iget-object v4, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v4, :cond_9f

    if-ltz v3, :cond_9f

    iget-object v4, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_9f

    .line 6684
    if-eqz p5, :cond_97

    iget-object v2, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_9b

    :cond_97
    iget-object v2, v2, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v2, v2, v3

    :goto_9b
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 6686
    :cond_9f
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6657
    :cond_a2
    :goto_a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 6691
    :cond_a6
    if-nez v1, :cond_d1

    if-eqz p3, :cond_d1

    .line 6692
    if-eqz p5, :cond_af

    const-string p1, " wake_lock="

    goto :goto_b1

    :cond_af
    const-string p1, ",w="

    :goto_b1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6693
    if-nez p5, :cond_c1

    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    if-ne p1, v3, :cond_bb

    goto :goto_c1

    .line 6699
    :cond_bb
    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d1

    .line 6694
    :cond_c1
    :goto_c1
    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, p1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 6695
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6696
    iget-object p1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6697
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6702
    :cond_d1
    :goto_d1
    return-void
.end method

.method private blacklist printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .registers 28

    .line 4107
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    const-string v1, "    High frequency (3GHz to 6GHz):\n"

    const-string v2, "    Mmwave frequency (greater than 6GHz):\n"

    const-string v3, "    Unknown frequency:\n"

    const-string v4, "    Low frequency (less than 1GHz):\n"

    const-string v5, "    Middle frequency (1GHz to 3GHz):\n"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v7

    .line 4119
    const-string v1, "        good:     "

    const-string v2, "        great:    "

    const-string v3, "        unknown:  "

    const-string v4, "        poor:     "

    const-string v5, "        moderate: "

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v8

    .line 4126
    const-wide/16 v1, 0x3e8

    mul-long v3, p4, v1

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v4, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v10, v3, v1

    .line 4129
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4130
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4131
    const-string v1, "Active Cellular Radio Access Technology Breakdown:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4132
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4134
    nop

    .line 4135
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v12

    .line 4136
    const/4 v13, 0x2

    move v2, v9

    move v1, v13

    :goto_41
    if-ltz v1, :cond_14b

    .line 4137
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4138
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4139
    const-string v3, "  "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4140
    sget-object v3, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4141
    const-string v3, ":\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4142
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4145
    const/4 v14, 0x1

    if-ne v1, v13, :cond_62

    const/4 v3, 0x5

    goto :goto_63

    :cond_62
    move v3, v14

    .line 4146
    :goto_63
    sub-int/2addr v3, v14

    move v15, v2

    move v2, v3

    :goto_66
    if-ltz v2, :cond_13e

    .line 4147
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 4148
    nop

    .line 4149
    if-ne v1, v13, :cond_75

    .line 4150
    aget-object v4, v7, v2

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 4152
    :cond_75
    const-string v4, "    All frequencies:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4155
    :goto_7a
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4156
    const-string v4, "      Signal Strength Time:\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4157
    move v4, v3

    move v3, v9

    move/from16 v16, v3

    :goto_86
    const-wide/16 v17, 0x0

    const-string v5, ")\n"

    const-string v13, "("

    if-ge v3, v12, :cond_c5

    .line 4158
    move v14, v4

    move-object v9, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveRadioDurationMs(IIIJ)J

    move-result-wide v7

    .line 4160
    cmp-long v4, v7, v17

    if-gtz v4, :cond_9f

    goto :goto_ba

    .line 4161
    :cond_9f
    nop

    .line 4162
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4163
    aget-object v4, v20, v3

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4164
    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4165
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4166
    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    .line 4157
    :goto_ba
    add-int/lit8 v3, v3, 0x1

    move v4, v14

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    const/4 v9, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto :goto_86

    .line 4170
    :cond_c5
    move v14, v4

    move-object v9, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4171
    const-string v3, "      Tx Time:\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4172
    const/4 v3, 0x0

    :goto_d4
    if-ge v3, v12, :cond_103

    .line 4173
    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v7

    .line 4175
    cmp-long v21, v7, v17

    if-gtz v21, :cond_e3

    move/from16 v21, v3

    goto :goto_100

    .line 4176
    :cond_e3
    nop

    .line 4177
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4178
    move/from16 v21, v3

    aget-object v3, v20, v21

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4179
    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4180
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4181
    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4182
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x1

    .line 4172
    :goto_100
    add-int/lit8 v3, v21, 0x1

    goto :goto_d4

    .line 4185
    :cond_103
    move-wide/from16 v4, p4

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    const-string v3, "      Rx Time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4187
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v7

    .line 4188
    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4189
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4190
    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4191
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4193
    if-eqz v16, :cond_130

    .line 4194
    nop

    .line 4195
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4196
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4197
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    goto :goto_133

    .line 4200
    :cond_130
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4146
    :goto_133
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    const/4 v9, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto/16 :goto_66

    .line 4136
    :cond_13e
    move-wide/from16 v4, p4

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    add-int/lit8 v1, v1, -0x1

    move v2, v15

    const/4 v9, 0x0

    const/4 v13, 0x2

    goto/16 :goto_41

    .line 4205
    :cond_14b
    if-nez v2, :cond_15c

    .line 4206
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4207
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4208
    const-string v0, "  (no activity)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4209
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4211
    :cond_15c
    return-void
.end method

.method private final greylist-max-o printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 35

    .line 3958
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 3959
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 3960
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 3961
    nop

    .line 3962
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    .line 3964
    nop

    .line 3965
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v0, v13, v14, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    div-long/2addr v13, v15

    .line 3966
    nop

    .line 3967
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v16, v11

    array-length v11, v15

    const-wide/16 v18, 0x0

    move-wide/from16 v21, v18

    const/4 v12, 0x0

    :goto_45
    if-ge v12, v11, :cond_56

    move/from16 v23, v11

    aget-object v11, v15, v12

    .line 3968
    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v24

    add-long v21, v21, v24

    .line 3967
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v23

    goto :goto_45

    .line 3971
    :cond_56
    const-string v11, "WiFi"

    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " Sleep time:  "

    const-string v15, ")"

    move/from16 v23, v11

    const-string v11, "("

    move-wide/from16 v24, v9

    const-string v9, "     "

    if-eqz v23, :cond_cb

    .line 3972
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v10

    move-wide/from16 v26, v7

    invoke-virtual {v10, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 3973
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3974
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3975
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3976
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    const-string v10, " Scan time:  "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3978
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3979
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3980
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3981
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3982
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    add-long v7, v5, v26

    add-long v7, v7, v21

    sub-long v7, v13, v7

    .line 3986
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3987
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3988
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3990
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3991
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3992
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3994
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3995
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_cd

    .line 3971
    :cond_cb
    move-wide/from16 v26, v7

    .line 3998
    :goto_cd
    const-string v7, "Cellular"

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_108

    .line 3999
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    move-object v10, v7

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 4000
    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4001
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4002
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4003
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4004
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4005
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4006
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4007
    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4008
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4009
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10a

    .line 3998
    :cond_108
    move-object/from16 v21, v7

    .line 4012
    :goto_10a
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4013
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4014
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4015
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4016
    const-string v7, " Idle time:   "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4017
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4018
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4019
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4020
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4021
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4023
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4024
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4025
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4026
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4027
    const-string v5, " Rx time:     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4028
    move-wide/from16 v5, v26

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4029
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4030
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4031
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4032
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4034
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4035
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4037
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4038
    const-string v5, " Tx time:     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4041
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_29e

    :cond_177
    goto :goto_182

    :pswitch_178
    move-object/from16 v10, v21

    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_177

    const/4 v5, 0x0

    goto :goto_183

    :goto_182
    const/4 v5, -0x1

    :goto_183
    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x5

    const/4 v12, 0x1

    packed-switch v5, :pswitch_data_2a4

    .line 4051
    new-array v5, v10, [Ljava/lang/String;

    const-string v10, "[0]"

    const/16 v20, 0x0

    aput-object v10, v5, v20

    const-string v10, "[1]"

    aput-object v10, v5, v12

    const-string v10, "[2]"

    aput-object v10, v5, v8

    const-string v8, "[3]"

    aput-object v8, v5, v7

    const-string v7, "[4]"

    aput-object v7, v5, v6

    goto :goto_1bd

    .line 4043
    :pswitch_1a4
    new-array v5, v10, [Ljava/lang/String;

    const-string v10, "   less than 0dBm: "

    const/16 v20, 0x0

    aput-object v10, v5, v20

    const-string v10, "   0dBm to 8dBm: "

    aput-object v10, v5, v12

    const-string v10, "   8dBm to 15dBm: "

    aput-object v10, v5, v8

    const-string v8, "   15dBm to 20dBm: "

    aput-object v8, v5, v7

    const-string v7, "   above 20dBm: "

    aput-object v7, v5, v6

    .line 4049
    nop

    .line 4054
    :goto_1bd
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    array-length v6, v6

    array-length v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4055
    if-le v6, v12, :cond_211

    .line 4056
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    const/4 v7, 0x0

    :goto_1d1
    if-ge v7, v6, :cond_234

    .line 4058
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    aget-object v8, v8, v7

    move-object v10, v5

    move v12, v6

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 4059
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4060
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4061
    const-string v8, "    "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4062
    aget-object v8, v10, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4063
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4065
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4068
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    add-int/lit8 v7, v7, 0x1

    move-object v5, v10

    move v6, v12

    goto :goto_1d1

    .line 4071
    :cond_211
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    const/16 v20, 0x0

    aget-object v5, v5, v20

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    .line 4072
    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4073
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    invoke-virtual {v0, v4, v5, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4079
    :cond_234
    cmp-long v0, v24, v18

    const-wide v4, 0x414b774000000000L    # 3600000.0

    if-lez v0, :cond_267

    .line 4080
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4081
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4082
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4083
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4084
    const-string v0, " Battery drain: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v6, v24

    long-to-double v6, v6

    div-double/2addr v6, v4

    .line 4085
    invoke-static {v6, v7}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v6

    .line 4084
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4086
    const-string v0, "mAh"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4087
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4090
    :cond_267
    cmp-long v0, v16, v18

    if-lez v0, :cond_29c

    .line 4091
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4092
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4093
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4094
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4095
    const-string v0, " Monitored rail energy drain: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v6, "#.##"

    invoke-direct {v3, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v6, v16

    long-to-double v6, v6

    div-double/2addr v6, v4

    .line 4096
    invoke-virtual {v3, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 4095
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    const-string v0, " mAh"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4099
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4101
    :cond_29c
    return-void

    nop

    :pswitch_data_29e
    .packed-switch -0x32c7c276
        :pswitch_178
    .end packed-switch

    :pswitch_data_2a4
    .packed-switch 0x0
        :pswitch_1a4
    .end packed-switch
.end method

.method private final greylist-max-o printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 8

    .line 3950
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3951
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3953
    :cond_9
    return-void
.end method

.method private greylist-max-o printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 7

    .line 7255
    long-to-float p2, p2

    .line 7256
    nop

    .line 7257
    const/high16 p3, 0x46200000    # 10240.0f

    cmpl-float v0, p2, p3

    const/high16 v1, 0x44800000    # 1024.0f

    if-ltz v0, :cond_f

    .line 7258
    nop

    .line 7259
    div-float/2addr p2, v1

    const-string v0, "KB"

    goto :goto_11

    .line 7257
    :cond_f
    const-string v0, ""

    .line 7261
    :goto_11
    cmpl-float v2, p2, p3

    if-ltz v2, :cond_19

    .line 7262
    nop

    .line 7263
    div-float/2addr p2, v1

    const-string v0, "MB"

    .line 7265
    :cond_19
    cmpl-float v2, p2, p3

    if-ltz v2, :cond_21

    .line 7266
    nop

    .line 7267
    div-float/2addr p2, v1

    const-string v0, "GB"

    .line 7269
    :cond_21
    cmpl-float v2, p2, p3

    if-ltz v2, :cond_29

    .line 7270
    nop

    .line 7271
    div-float/2addr p2, v1

    const-string v0, "TB"

    .line 7273
    :cond_29
    cmpl-float p3, p2, p3

    if-ltz p3, :cond_31

    .line 7274
    nop

    .line 7275
    div-float/2addr p2, v1

    const-string v0, "PB"

    .line 7277
    :cond_31
    float-to-int p2, p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 7278
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7279
    return-void
.end method

.method private static final greylist-max-o printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .registers 16

    .line 3671
    const/4 v0, 0x0

    if-eqz p2, :cond_76

    .line 3673
    invoke-virtual {p2, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 3675
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p5

    .line 3676
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_76

    .line 3677
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3678
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3679
    const-string p6, "    "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3681
    const-string p6, ": "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3682
    invoke-static {p1, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3683
    const-string/jumbo p6, "realtime ("

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3684
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3685
    const-string p5, " times)"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3686
    div-long/2addr p3, v3

    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide p5

    .line 3687
    cmp-long p7, p5, v5

    if-ltz p7, :cond_4c

    .line 3688
    const-string p7, " max="

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3689
    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3691
    :cond_4c
    invoke-virtual {p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result p5

    if-eqz p5, :cond_6d

    .line 3692
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide p2

    .line 3693
    cmp-long p4, p2, v5

    if-ltz p4, :cond_68

    .line 3694
    const-string p4, " (running for "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3695
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3696
    const-string p2, "ms)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 3698
    :cond_68
    const-string p2, " (running)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3701
    :cond_6d
    :goto_6d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3702
    const/4 p0, 0x1

    return p0

    .line 3705
    :cond_76
    return v0
.end method

.method private static final greylist-max-o printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 3615
    if-eqz p1, :cond_74

    .line 3616
    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    .line 3618
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p5

    .line 3619
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_74

    .line 3620
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3621
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3622
    if-eqz p4, :cond_20

    .line 3623
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3624
    const/16 p4, 0x20

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3626
    :cond_20
    const/16 p4, 0x28

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3627
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3628
    const-string p4, " times)"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3629
    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide p4

    .line 3630
    cmp-long p6, p4, v2

    if-ltz p6, :cond_40

    .line 3631
    const-string p6, " max="

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3632
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3635
    :cond_40
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide p4

    .line 3636
    cmp-long p6, p4, v0

    if-lez p6, :cond_50

    .line 3637
    const-string p6, " actual="

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3638
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3640
    :cond_50
    invoke-virtual {p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result p4

    if-eqz p4, :cond_71

    .line 3641
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide p1

    .line 3642
    cmp-long p3, p1, v2

    if-ltz p3, :cond_6c

    .line 3643
    const-string p3, " (running for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3644
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3645
    const-string p1, "ms)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 3647
    :cond_6c
    const-string p1, " (running)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3651
    :cond_71
    :goto_71
    const-string p0, ", "

    return-object p0

    .line 3654
    :cond_74
    return-object p6
.end method

.method private static final greylist-max-o printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 23

    .line 3721
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 3722
    nop

    .line 3723
    nop

    .line 3724
    nop

    .line 3725
    nop

    .line 3726
    const-wide/16 v6, 0x3e8

    if-eqz v1, :cond_28

    .line 3727
    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    .line 3728
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 3729
    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    .line 3730
    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v12

    .line 3731
    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    goto :goto_2e

    .line 3726
    :cond_28
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    move-wide v1, v8

    move-wide v10, v1

    move-wide v12, v10

    .line 3733
    :goto_2e
    move-object/from16 v3, p6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3734
    const-wide/16 v14, 0x1f4

    add-long/2addr v8, v14

    div-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3735
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3736
    const-string v6, ","

    if-eqz v4, :cond_55

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_57

    :cond_55
    const-string v7, ""

    :goto_57
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3737
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3738
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3739
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3740
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3741
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3745
    if-eqz v4, :cond_71

    .line 3746
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3747
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3749
    :cond_71
    return-object v6
.end method

.method private greylist-max-o printmAh(Ljava/io/PrintWriter;D)V
    .registers 4

    .line 4968
    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4969
    return-void
.end method

.method private greylist-max-o printmAh(Ljava/lang/StringBuilder;D)V
    .registers 4

    .line 4972
    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4973
    return-void
.end method

.method private static greylist-max-o roundUsToMs(J)J
    .registers 4

    .line 3589
    const-wide/16 v0, 0x1f4

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method private blacklist shouldHidePowerComponent(I)Z
    .registers 3

    .line 8849
    const/16 v0, 0x10

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    if-eqz p1, :cond_11

    const/16 v0, 0xf

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method


# virtual methods
.method public abstract greylist-max-o commitCurrentHistoryBatchLocked()V
.end method

.method public abstract greylist computeBatteryRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract greylist-max-o computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract greylist computeBatteryTimeRemaining(J)J
.end method

.method public abstract greylist computeBatteryUptime(JI)J
.end method

.method public abstract greylist computeChargeTimeRemaining(J)J
.end method

.method public abstract greylist-max-o computeRealtime(JI)J
.end method

.method public abstract greylist-max-o computeUptime(JI)J
.end method

.method public blacklist dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;J)V
    .registers 25

    .line 7636
    monitor-enter p0

    .line 7637
    :try_start_1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7638
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3e

    .line 7640
    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    move v6, v0

    .line 7643
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_13

    if-nez v6, :cond_23

    .line 7644
    :cond_13
    const/4 v12, 0x0

    move-object v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-wide/from16 v10, p5

    move-wide/from16 v13, p8

    invoke-direct/range {v7 .. v14}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZJ)V

    .line 7645
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 7648
    :cond_23
    if-eqz v6, :cond_2a

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_2a

    .line 7649
    return-void

    .line 7652
    :cond_2a
    monitor-enter p0

    .line 7653
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p7

    :try_start_36
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 7654
    monitor-exit p0

    .line 7655
    return-void

    .line 7654
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_3b

    throw v0

    .line 7638
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public blacklist dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;J)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            "J)V"
        }
    .end annotation

    .line 7802
    monitor-enter p0

    .line 7803
    :try_start_1
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7805
    const-string v0, "i"

    const-string/jumbo v1, "vers"

    .line 7806
    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v4

    .line 7807
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 7805
    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7808
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_4e

    .line 7810
    and-int/lit8 v0, p4, 0x18

    if-eqz v0, :cond_38

    .line 7811
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p2

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v10, p8

    invoke-direct/range {v4 .. v11}, Landroid/os/BatteryStats;->dumpHistory(Ljava/io/PrintWriter;IJZJ)V

    .line 7814
    :cond_38
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_3d

    .line 7815
    return-void

    .line 7818
    :cond_3d
    monitor-enter p0

    .line 7819
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p7

    :try_start_46
    invoke-direct/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;ILandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    .line 7820
    monitor-exit p0

    .line 7821
    return-void

    .line 7820
    :catchall_4b
    move-exception v0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4b

    throw v0

    .line 7808
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public final blacklist dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 124

    .line 4242
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v6, p3

    move/from16 v9, p4

    const/4 v10, 0x0

    .line 4350
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 4242
    if-eqz v6, :cond_36

    .line 4243
    sget-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: BatteryStats.dumpCheckin called for which type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but only STATS_SINCE_CHARGED is supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "err"

    invoke-static {v1, v10, v0, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4246
    return-void

    .line 4249
    :cond_36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v21, 0x3e8

    mul-long v2, v2, v21

    .line 4250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 4251
    mul-long v7, v11, v21

    .line 4252
    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v13

    .line 4253
    invoke-virtual {v0, v2, v3, v6}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v4

    .line 4254
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v16

    .line 4255
    invoke-virtual {v0, v2, v3, v6}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v18

    .line 4256
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v23

    .line 4258
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v25

    .line 4259
    invoke-virtual {v0, v2, v3, v6}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v2

    .line 4260
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v27

    .line 4261
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v29

    .line 4262
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v31

    .line 4263
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v33

    .line 4264
    move-wide/from16 v35, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v37

    .line 4266
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v39

    .line 4268
    invoke-virtual {v0, v2, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v41

    .line 4270
    invoke-virtual {v0, v3, v7, v8, v6}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v43

    .line 4272
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v20

    .line 4273
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v45

    .line 4274
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v47

    .line 4275
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v49

    .line 4276
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v51

    .line 4277
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v53

    .line 4278
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v55

    .line 4280
    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v57, v2

    const/16 v2, 0x80

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4282
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 4283
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 4285
    sget-object v58, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    move-object/from16 v59, v3

    aget-object v3, v58, v6

    .line 4288
    nop

    .line 4289
    if-nez v6, :cond_c3

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    goto :goto_c5

    :cond_c3
    const-string v58, "N/A"

    :goto_c5
    move-object/from16 v60, v58

    div-long v16, v16, v21

    .line 4290
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    div-long v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    div-long v25, v25, v21

    .line 4291
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    div-long v4, v35, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    .line 4292
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    div-long v23, v23, v21

    .line 4293
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    .line 4294
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    .line 4295
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v69

    .line 4296
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    div-long v29, v29, v21

    .line 4297
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    filled-new-array/range {v60 .. v71}, [Ljava/lang/Object;

    move-result-object v4

    .line 4288
    const-string v5, "bt"

    move-wide/from16 v16, v11

    const/4 v11, 0x0

    invoke-static {v1, v11, v3, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4301
    nop

    .line 4302
    nop

    .line 4304
    const-wide/16 v23, 0x0

    move-wide/from16 v11, v23

    move-wide/from16 v18, v11

    const/4 v4, 0x0

    :goto_126
    if-ge v4, v10, :cond_17b

    .line 4305
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 4307
    nop

    .line 4308
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 4309
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v112, v25

    move-object/from16 v25, v2

    move/from16 v2, v112

    :goto_13f
    if-ltz v2, :cond_172

    .line 4310
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v29, v2

    move-object/from16 v2, v26

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4312
    move/from16 v26, v4

    move-object/from16 v30, v5

    move/from16 v4, v57

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4313
    if-eqz v5, :cond_15c

    .line 4314
    invoke-virtual {v5, v7, v8, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long/2addr v11, v4

    .line 4318
    :cond_15c
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4319
    if-eqz v2, :cond_169

    .line 4320
    invoke-virtual {v2, v7, v8, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v18, v18, v4

    .line 4309
    :cond_169
    add-int/lit8 v2, v29, -0x1

    move/from16 v4, v26

    move-object/from16 v5, v30

    const/16 v57, 0x1

    goto :goto_13f

    .line 4304
    :cond_172
    move/from16 v26, v4

    add-int/lit8 v4, v26, 0x1

    move-object/from16 v2, v25

    const/16 v57, 0x1

    goto :goto_126

    .line 4327
    :cond_17b
    move-object/from16 v25, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v29

    .line 4328
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v35

    .line 4329
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v60

    .line 4330
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v62

    .line 4331
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v64

    .line 4332
    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v66

    .line 4333
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v68

    .line 4334
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v70

    .line 4335
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v72

    .line 4336
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v74

    .line 4337
    nop

    .line 4338
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v79

    .line 4339
    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v82

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v83

    .line 4340
    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v84

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v85

    filled-new-array/range {v76 .. v85}, [Ljava/lang/Object;

    move-result-object v2

    .line 4337
    const-string v4, "gn"

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4343
    nop

    .line 4344
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4343
    const/4 v2, 0x0

    const-string v4, "gmcd"

    move-wide/from16 v35, v11

    move-object/from16 v86, v25

    move-object/from16 v12, v59

    const/4 v11, 0x2

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4347
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v4

    .line 4348
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v25

    .line 4349
    div-long v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    div-long v25, v25, v21

    .line 4350
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v4, v15, v15, v15}, [Ljava/lang/Object;

    move-result-object v2

    .line 4349
    const-string v4, "gwfl"

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v4, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4352
    nop

    .line 4353
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4352
    const/4 v2, 0x0

    const-string v4, "gwfcd"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4356
    nop

    .line 4357
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4356
    const-string v4, "gble"

    move-object/from16 v1, p2

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4360
    move-object v2, v3

    div-long v27, v27, v21

    .line 4361
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    div-long v45, v45, v21

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    div-long v3, v35, v21

    .line 4362
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    .line 4363
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    .line 4364
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    div-long v31, v31, v21

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    div-long v33, v33, v21

    .line 4365
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v66

    div-long v39, v39, v21

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    .line 4366
    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    div-long v43, v43, v21

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    .line 4367
    invoke-virtual {v0, v11, v6}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    .line 4368
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    .line 4369
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v3

    div-long v3, v3, v21

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    div-long v37, v37, v21

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    .line 4370
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v74

    div-long v41, v41, v21

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    .line 4371
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v76

    .line 4372
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    .line 4373
    invoke-virtual {v0, v11}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    filled-new-array/range {v58 .. v78}, [Ljava/lang/Object;

    move-result-object v3

    .line 4360
    const-string v4, "m"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4376
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Object;

    .line 4377
    const/4 v5, 0x0

    :goto_2ce
    if-ge v5, v3, :cond_2df

    .line 4378
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v4, v5

    .line 4377
    add-int/lit8 v5, v5, 0x1

    goto :goto_2ce

    .line 4380
    :cond_2df
    const-string v5, "br"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4383
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    .line 4384
    const/4 v5, 0x0

    :goto_2ec
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v11

    if-ge v5, v11, :cond_301

    .line 4385
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v5

    .line 4384
    add-int/lit8 v5, v5, 0x1

    goto :goto_2ec

    .line 4387
    :cond_301
    const-string/jumbo v5, "sgt"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4388
    nop

    .line 4389
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 4388
    const-string/jumbo v3, "sst"

    invoke-static {v1, v11, v2, v3, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4390
    const/4 v3, 0x0

    :goto_31e
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    if-ge v3, v5, :cond_331

    .line 4391
    invoke-virtual {v0, v3, v6}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 4390
    add-int/lit8 v3, v3, 0x1

    goto :goto_31e

    .line 4393
    :cond_331
    const-string/jumbo v3, "sgc"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4396
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 4397
    const/4 v4, 0x0

    :goto_33d
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v5, :cond_350

    .line 4398
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4397
    add-int/lit8 v4, v4, 0x1

    goto :goto_33d

    .line 4400
    :cond_350
    const-string v4, "dct"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4401
    const/4 v4, 0x0

    :goto_357
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v4, v5, :cond_368

    .line 4402
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4401
    add-int/lit8 v4, v4, 0x1

    goto :goto_357

    .line 4404
    :cond_368
    const-string v4, "dcc"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4407
    const/16 v11, 0x8

    new-array v3, v11, [Ljava/lang/Object;

    .line 4408
    const/4 v4, 0x0

    :goto_373
    if-ge v4, v11, :cond_384

    .line 4409
    invoke-virtual {v0, v4, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4408
    add-int/lit8 v4, v4, 0x1

    goto :goto_373

    .line 4411
    :cond_384
    const-string/jumbo v4, "wst"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4412
    const/4 v4, 0x0

    :goto_38c
    if-ge v4, v11, :cond_39b

    .line 4413
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4412
    add-int/lit8 v4, v4, 0x1

    goto :goto_38c

    .line 4415
    :cond_39b
    const-string/jumbo v4, "wsc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4418
    const/16 v3, 0xd

    new-array v4, v3, [Ljava/lang/Object;

    .line 4419
    const/4 v5, 0x0

    :goto_3a7
    if-ge v5, v3, :cond_3b8

    .line 4420
    invoke-virtual {v0, v5, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v18

    div-long v18, v18, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v4, v5

    .line 4419
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a7

    .line 4422
    :cond_3b8
    const-string/jumbo v5, "wsst"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4423
    const/4 v5, 0x0

    :goto_3c0
    if-ge v5, v3, :cond_3cf

    .line 4424
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v5

    .line 4423
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c0

    .line 4426
    :cond_3cf
    const-string/jumbo v5, "wssc"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4429
    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    .line 4430
    const/4 v11, 0x0

    :goto_3da
    if-ge v11, v4, :cond_3ec

    .line 4431
    invoke-virtual {v0, v11, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v19

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v11

    .line 4430
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x5

    goto :goto_3da

    .line 4433
    :cond_3ec
    const-string/jumbo v4, "wsgt"

    const/4 v11, 0x0

    invoke-static {v1, v11, v2, v4, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4434
    const/4 v4, 0x0

    :goto_3f4
    const/4 v11, 0x5

    if-ge v4, v11, :cond_404

    .line 4435
    invoke-virtual {v0, v4, v6}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v4

    .line 4434
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f4

    .line 4437
    :cond_404
    const-string/jumbo v4, "wsgc"

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4440
    nop

    .line 4441
    invoke-virtual {v0, v7, v8, v6}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v3

    .line 4442
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v5

    .line 4443
    div-long v3, v3, v21

    .line 4444
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4445
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 4443
    const-string/jumbo v4, "wmct"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4447
    nop

    .line 4448
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 4449
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 4450
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    div-long v47, v47, v21

    .line 4451
    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    div-long v49, v49, v21

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    .line 4452
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    div-long v51, v51, v21

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    div-long v53, v53, v21

    .line 4453
    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    div-long v55, v55, v21

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    filled-new-array/range {v25 .. v34}, [Ljava/lang/Object;

    move-result-object v3

    .line 4447
    const-string v4, "dc"

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4455
    const-wide/16 v25, 0x1f4

    const-string v3, "\""

    if-gez v9, :cond_572

    .line 4456
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v4

    .line 4457
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_4ff

    .line 4458
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_492
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Ljava/util/Map$Entry;

    .line 4459
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4460
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x0

    move-object/from16 v28, v3

    move-wide/from16 v112, v7

    move-object v8, v2

    move-object v2, v4

    move-wide/from16 v3, v112

    const-string v7, ""

    move-object v11, v8

    const/16 v19, 0xd

    move-object v8, v1

    move-object v1, v12

    move-object/from16 v12, v28

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4461
    move-object v7, v1

    move-wide v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4462
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 4461
    const-string v4, "kwl"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4463
    move-object v3, v12

    move-object v12, v7

    move-wide/from16 v112, v1

    move-object v1, v8

    move-wide/from16 v7, v112

    move-object v2, v11

    const/4 v11, 0x5

    goto :goto_492

    .line 4458
    :cond_4f4
    move-object v11, v2

    const/16 v19, 0xd

    move-wide/from16 v112, v7

    move-object v8, v1

    move-wide/from16 v1, v112

    move-object v7, v12

    move-object v12, v3

    goto :goto_509

    .line 4457
    :cond_4ff
    move-object v11, v2

    const/16 v19, 0xd

    move-wide/from16 v112, v7

    move-object v8, v1

    move-wide/from16 v1, v112

    move-object v7, v12

    move-object v12, v3

    .line 4465
    :goto_509
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    .line 4466
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_57c

    .line 4467
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4470
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v5, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v27

    .line 4471
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4472
    move-object/from16 v20, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4473
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-long v27, v27, v25

    div-long v27, v27, v21

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 4472
    const-string/jumbo v4, "wr"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4474
    move-object/from16 v3, v20

    goto :goto_51b

    .line 4455
    :cond_572
    move-object v11, v2

    const/16 v19, 0xd

    move-wide/from16 v112, v7

    move-object v8, v1

    move-wide/from16 v1, v112

    move-object v7, v12

    move-object v12, v3

    .line 4478
    :cond_57c
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v3

    .line 4479
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v4

    .line 4480
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_60d

    .line 4481
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_592
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 4482
    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4483
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 4484
    invoke-virtual {v3, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v27

    add-long v27, v27, v25

    div-long v27, v27, v21

    .line 4485
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    .line 4486
    move/from16 v29, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 4487
    if-eqz v3, :cond_5cd

    .line 4488
    invoke-virtual {v3, v1, v2, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v30

    add-long v30, v30, v25

    div-long v30, v30, v21

    goto :goto_5ce

    :cond_5cd
    nop

    .line 4489
    :goto_5ce
    if-eqz v3, :cond_5d4

    .line 4490
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    goto :goto_5d5

    :cond_5d4
    nop

    .line 4496
    :goto_5d5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4497
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-wide/from16 v27, v1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 4496
    const-string/jumbo v2, "rpm"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4499
    move-object/from16 v3, v20

    move-wide/from16 v1, v27

    goto :goto_592

    .line 4481
    :cond_60a
    move-wide/from16 v27, v1

    goto :goto_60f

    .line 4480
    :cond_60d
    move-wide/from16 v27, v1

    .line 4502
    :goto_60f
    move-object/from16 v1, p6

    const/4 v4, 0x1

    invoke-interface {v1, v0, v4}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v1

    .line 4503
    nop

    .line 4504
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    .line 4505
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    .line 4506
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    .line 4507
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 4503
    const-string/jumbo v3, "pws"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4508
    invoke-virtual {v1, v5}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v2

    .line 4510
    const/4 v3, 0x0

    .line 4511
    :goto_65b
    const/16 v4, 0x13

    const-string/jumbo v5, "pwi"

    if-ge v3, v4, :cond_690

    .line 4512
    sget-object v4, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 4513
    if-nez v4, :cond_66a

    .line 4514
    const-string v4, "???"

    .line 4516
    :cond_66a
    nop

    .line 4517
    invoke-virtual {v2, v3}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v29

    move-object/from16 p6, v2

    invoke-static/range {v29 .. v30}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    .line 4518
    invoke-direct {v0, v3}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move/from16 v20, v3

    const-string v3, "0"

    filled-new-array {v4, v2, v0, v3, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 4516
    const/4 v3, 0x0

    invoke-static {v8, v3, v11, v5, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4511
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    goto :goto_65b

    .line 4521
    :cond_690
    new-instance v0, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    .line 4523
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    .line 4524
    const/4 v2, 0x0

    :goto_69c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6e8

    .line 4525
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer;

    .line 4526
    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v4

    .line 4527
    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v29

    move-object/from16 p1, v1

    invoke-static/range {v29 .. v30}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    .line 4528
    invoke-virtual {v0, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v20

    move/from16 v29, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4529
    move-object/from16 v20, v12

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v12

    .line 4531
    invoke-virtual {v0, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v30

    .line 4530
    invoke-static/range {v30 .. v31}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p6, v0

    const-string/jumbo v0, "uid"

    filled-new-array {v0, v1, v2, v12, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 4526
    invoke-static {v8, v4, v11, v5, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4524
    add-int/lit8 v2, v29, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, p6

    move-object/from16 v12, v20

    goto :goto_69c

    .line 4534
    :cond_6e8
    move-object/from16 v20, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    .line 4535
    if-eqz v0, :cond_73f

    .line 4536
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4537
    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_6fa
    if-ge v3, v2, :cond_72c

    aget v4, v1, v3

    .line 4538
    invoke-virtual {v0, v4}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v4

    array-length v5, v4

    const/4 v12, 0x0

    :goto_704
    if-ge v12, v5, :cond_725

    move-object/from16 p6, v0

    aget v0, v4, v12

    .line 4539
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    if-eqz v29, :cond_718

    move/from16 v29, v12

    const/16 v12, 0x2c

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_71c

    :cond_718
    move/from16 v29, v12

    const/16 v12, 0x2c

    .line 4540
    :goto_71c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4538
    add-int/lit8 v0, v29, 0x1

    move v12, v0

    move-object/from16 v0, p6

    goto :goto_704

    .line 4537
    :cond_725
    move-object/from16 p6, v0

    const/16 v12, 0x2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_6fa

    .line 4543
    :cond_72c
    move-object/from16 p6, v0

    const/16 v12, 0x2c

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gcf"

    const/4 v5, 0x0

    invoke-static {v8, v5, v11, v1, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_743

    .line 4535
    :cond_73f
    move-object/from16 p6, v0

    const/16 v12, 0x2c

    .line 4547
    :goto_743
    const/4 v0, 0x0

    :goto_744
    if-ge v0, v10, :cond_1087

    .line 4548
    move-object/from16 v1, v86

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 4549
    if-ltz v9, :cond_76f

    if-eq v2, v9, :cond_76f

    .line 4550
    move/from16 v51, v0

    move-object/from16 v86, v1

    move-object/from16 v59, v7

    move-object v1, v8

    move-object v7, v11

    move-wide v4, v13

    move-wide/from16 v11, v16

    move-object/from16 v13, v20

    move-wide/from16 v34, v27

    const/16 v27, 0x8

    const/16 v30, 0x2

    const/16 v57, 0x1

    const/16 v87, 0x3

    const/16 v88, 0x5

    move/from16 v16, v10

    move/from16 v28, v19

    goto/16 :goto_1070

    .line 4552
    :cond_76f
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    .line 4555
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v29

    .line 4556
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v31

    .line 4557
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v33

    .line 4558
    const/4 v12, 0x3

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v35

    .line 4559
    invoke-virtual {v3, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v37

    .line 4560
    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v39

    .line 4561
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v41

    .line 4562
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v5

    .line 4563
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v43

    .line 4564
    const/4 v12, 0x2

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v45

    .line 4565
    const/4 v12, 0x3

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v47

    .line 4566
    invoke-virtual {v3, v6}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v49

    .line 4567
    move/from16 v51, v0

    const/4 v0, 0x4

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v52

    .line 4568
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v54

    .line 4570
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v56

    .line 4572
    const/4 v0, 0x7

    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v59

    .line 4574
    const/16 v12, 0x8

    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v61

    .line 4575
    const/16 v4, 0x9

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v63

    .line 4576
    const/4 v4, 0x6

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v66

    .line 4578
    invoke-virtual {v3, v0, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v68

    .line 4580
    invoke-virtual {v3, v12, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v70

    .line 4582
    const/16 v4, 0x9

    invoke-virtual {v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v72

    .line 4585
    cmp-long v4, v29, v23

    if-gtz v4, :cond_836

    cmp-long v4, v31, v23

    if-gtz v4, :cond_836

    cmp-long v4, v33, v23

    if-gtz v4, :cond_836

    cmp-long v4, v35, v23

    if-gtz v4, :cond_836

    cmp-long v4, v37, v23

    if-gtz v4, :cond_836

    cmp-long v4, v39, v23

    if-gtz v4, :cond_836

    cmp-long v4, v45, v23

    if-gtz v4, :cond_836

    cmp-long v4, v47, v23

    if-gtz v4, :cond_836

    cmp-long v4, v41, v23

    if-gtz v4, :cond_836

    if-gtz v5, :cond_836

    cmp-long v4, v52, v23

    if-gtz v4, :cond_836

    cmp-long v4, v54, v23

    if-gtz v4, :cond_836

    cmp-long v4, v43, v23

    if-gtz v4, :cond_836

    cmp-long v4, v49, v23

    if-gtz v4, :cond_836

    cmp-long v4, v56, v23

    if-gtz v4, :cond_836

    cmp-long v4, v59, v23

    if-gtz v4, :cond_836

    cmp-long v4, v61, v23

    if-gtz v4, :cond_836

    cmp-long v4, v63, v23

    if-gtz v4, :cond_836

    cmp-long v4, v66, v23

    if-gtz v4, :cond_836

    cmp-long v4, v68, v23

    if-gtz v4, :cond_836

    cmp-long v4, v70, v23

    if-gtz v4, :cond_836

    cmp-long v4, v72, v23

    if-lez v4, :cond_898

    .line 4593
    :cond_836
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v89

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v90

    .line 4594
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v91

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v92

    .line 4595
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v93

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v94

    .line 4596
    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v95

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    .line 4597
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v97

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v98

    .line 4598
    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v99

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v100

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v101

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v102

    .line 4599
    invoke-static/range {v56 .. v57}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v103

    invoke-static/range {v59 .. v60}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v104

    invoke-static/range {v61 .. v62}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v105

    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v106

    .line 4600
    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v107

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v108

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v109

    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v110

    filled-new-array/range {v89 .. v110}, [Ljava/lang/Object;

    move-result-object v4

    .line 4593
    const-string/jumbo v5, "nt"

    invoke-static {v8, v2, v11, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4605
    :cond_898
    nop

    .line 4606
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4605
    const-string v4, "mcd"

    move-object v9, v11

    move-object v11, v3

    move-object v3, v9

    move-object/from16 v86, v1

    move-object v1, v8

    move-wide/from16 v8, v27

    const/16 v57, 0x1

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4609
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v4

    .line 4610
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v27

    .line 4611
    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v18

    .line 4612
    invoke-virtual {v11, v6}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v29

    .line 4614
    invoke-virtual {v11, v8, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v30

    add-long v30, v30, v25

    div-long v30, v30, v21

    .line 4615
    invoke-virtual {v11, v8, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v32

    add-long v32, v32, v25

    div-long v32, v32, v21

    .line 4617
    invoke-virtual {v11, v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v34

    .line 4618
    cmp-long v36, v4, v23

    if-nez v36, :cond_8f9

    cmp-long v36, v27, v23

    if-nez v36, :cond_8f9

    if-nez v18, :cond_8f9

    if-nez v29, :cond_8f9

    cmp-long v36, v30, v23

    if-nez v36, :cond_8f9

    cmp-long v36, v32, v23

    if-nez v36, :cond_8f9

    cmp-long v36, v34, v23

    if-eqz v36, :cond_8e9

    goto :goto_8f9

    :cond_8e9
    move-object/from16 p1, v11

    move/from16 v27, v12

    move-wide v4, v13

    move-wide/from16 v31, v16

    move-object/from16 v111, v20

    move/from16 v0, v57

    const/16 v87, 0x3

    const/16 v88, 0x5

    goto :goto_941

    .line 4621
    :cond_8f9
    :goto_8f9
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 4622
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 4623
    nop

    .line 4624
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-wide/from16 v31, v16

    move-object/from16 v16, v15

    move-object/from16 v17, v15

    move-object/from16 p1, v11

    move-object/from16 v111, v20

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move/from16 v0, v57

    const/16 v87, 0x3

    const/16 v88, 0x5

    move-object v11, v4

    move/from16 v112, v12

    move-object v12, v5

    move-wide v4, v13

    move-object/from16 v14, v18

    move-object/from16 v13, v27

    move-object/from16 v18, v28

    move/from16 v27, v112

    filled-new-array/range {v11 .. v20}, [Ljava/lang/Object;

    move-result-object v11

    .line 4621
    const-string/jumbo v12, "wfl"

    invoke-static {v1, v2, v3, v12, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4627
    :goto_941
    nop

    .line 4628
    move-wide v11, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4627
    const-string/jumbo v4, "wfcd"

    move-wide v13, v11

    move-wide/from16 v11, v31

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4630
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 4631
    if-eqz v4, :cond_a0a

    .line 4633
    invoke-virtual {v4, v8, v9, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v16, v16, v25

    div-long v16, v16, v21

    .line 4635
    cmp-long v5, v16, v23

    if-eqz v5, :cond_a07

    .line 4636
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4637
    move/from16 v57, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 4638
    if-eqz v0, :cond_973

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v18

    goto :goto_975

    :cond_973
    const/16 v18, 0x0

    .line 4640
    :goto_975
    invoke-virtual {v4, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v19

    .line 4641
    if-eqz v0, :cond_980

    .line 4642
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v31

    goto :goto_982

    :cond_980
    move-wide/from16 v31, v23

    .line 4644
    :goto_982
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_991

    .line 4645
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_992

    :cond_991
    const/4 v0, 0x0

    .line 4646
    :goto_992
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    if-eqz v4, :cond_9a1

    .line 4647
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    goto :goto_9a2

    :cond_9a1
    const/4 v4, 0x0

    .line 4649
    :goto_9a2
    move/from16 v33, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 4650
    if-eqz v0, :cond_9af

    .line 4651
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v34

    goto :goto_9b1

    :cond_9af
    move-wide/from16 v34, v23

    .line 4652
    :goto_9b1
    if-eqz v0, :cond_9b8

    .line 4653
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v36

    goto :goto_9ba

    :cond_9b8
    move-wide/from16 v36, v23

    .line 4655
    :goto_9ba
    nop

    .line 4656
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 4657
    if-eqz v0, :cond_9c6

    .line 4658
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v38

    goto :goto_9c8

    :cond_9c6
    move-wide/from16 v38, v23

    .line 4659
    :goto_9c8
    if-eqz v0, :cond_9cf

    .line 4660
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v40

    goto :goto_9d1

    :cond_9cf
    move-wide/from16 v40, v23

    .line 4662
    :goto_9d1
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    .line 4663
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    .line 4664
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    .line 4665
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    filled-new-array/range {v58 .. v68}, [Ljava/lang/Object;

    move-result-object v0

    .line 4662
    const-string v4, "blem"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a0c

    .line 4635
    :cond_a07
    move/from16 v57, v0

    goto :goto_a0c

    .line 4631
    :cond_a0a
    move/from16 v57, v0

    .line 4669
    :goto_a0c
    nop

    .line 4670
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 4669
    const-string v4, "ble"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4672
    move-object v0, v1

    move-object v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v3

    if-eqz v3, :cond_a4d

    .line 4673
    sget v3, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 4674
    nop

    .line 4675
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a25
    move/from16 v16, v4

    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v5, v4, :cond_a42

    .line 4676
    move-object/from16 v4, p1

    invoke-virtual {v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v17

    .line 4677
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v5

    .line 4678
    if-eqz v17, :cond_a3b

    move/from16 v16, v57

    .line 4675
    :cond_a3b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 p1, v4

    move/from16 v4, v16

    goto :goto_a25

    .line 4680
    :cond_a42
    move-object/from16 v4, p1

    if-eqz v16, :cond_a4f

    .line 4681
    const-string/jumbo v5, "ua"

    invoke-static {v0, v2, v1, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a4f

    .line 4672
    :cond_a4d
    move-object/from16 v4, p1

    .line 4685
    :cond_a4f
    :goto_a4f
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_a7b

    .line 4686
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 4688
    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v16

    .line 4689
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 4690
    if-eqz v3, :cond_a68

    .line 4691
    invoke-virtual {v3, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v18

    goto :goto_a6a

    :cond_a68
    move-wide/from16 v18, v23

    .line 4692
    :goto_a6a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "awl"

    invoke-static {v0, v2, v1, v5, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4695
    :cond_a7b
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 4696
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_a85
    move-wide/from16 v16, v8

    if-ltz v5, :cond_b41

    .line 4697
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 4698
    nop

    .line 4699
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4700
    move/from16 v18, v2

    move/from16 v9, v57

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    move v9, v5

    const-string v5, "f"

    move-object/from16 v59, v7

    const-string v7, ""

    move/from16 v112, v9

    move-object v9, v1

    move-object/from16 v1, v59

    move-wide/from16 v113, v13

    move-object v13, v3

    move/from16 v14, v112

    move-wide/from16 v115, v16

    move-object/from16 v17, v4

    move/from16 v16, v10

    move-wide/from16 v3, v115

    move/from16 v10, v18

    move-wide/from16 v18, v113

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4702
    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4703
    const-string/jumbo v5, "p"

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4705
    if-eqz v2, :cond_ad2

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    goto :goto_ad3

    :cond_ad2
    const/4 v2, 0x0

    :goto_ad3
    const-string v5, "bp"

    move/from16 v6, p3

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4707
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move/from16 v30, v2

    move-object v2, v5

    const-string/jumbo v5, "w"

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4711
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_b2d

    .line 4712
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4713
    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_b04

    .line 4714
    const/16 v7, 0x5f

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    goto :goto_b06

    .line 4713
    :cond_b04
    const/16 v7, 0x5f

    .line 4716
    :goto_b06
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_b12

    .line 4717
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4719
    :cond_b12
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_b1e

    .line 4720
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 4722
    :cond_b1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v7, "wl"

    invoke-static {v0, v10, v9, v7, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b2f

    .line 4711
    :cond_b2d
    const/16 v5, 0xd

    .line 4696
    :goto_b2f
    add-int/lit8 v2, v14, -0x1

    move-object v7, v1

    move v5, v2

    move-object v1, v9

    move v2, v10

    move/from16 v10, v16

    const/16 v57, 0x1

    move-wide v8, v3

    move-object v3, v13

    move-object/from16 v4, v17

    move-wide/from16 v13, v18

    goto/16 :goto_a85

    .line 4727
    :cond_b41
    move-wide/from16 v18, v16

    move-object/from16 v17, v4

    move-wide/from16 v3, v18

    move-object v9, v1

    move-object v1, v7

    move/from16 v16, v10

    move-wide/from16 v18, v13

    const/16 v5, 0xd

    const/16 v30, 0x2

    move v10, v2

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 4728
    if-eqz v2, :cond_b7a

    .line 4729
    nop

    .line 4730
    invoke-virtual {v2, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    div-long v7, v7, v21

    .line 4731
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 4732
    cmp-long v13, v7, v23

    if-lez v13, :cond_b7a

    .line 4733
    nop

    .line 4734
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 4733
    const-string/jumbo v7, "wmc"

    invoke-static {v0, v10, v9, v7, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4738
    :cond_b7a
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4739
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/16 v57, 0x1

    add-int/lit8 v7, v7, -0x1

    :goto_b86
    const-wide/16 v13, -0x1

    if-ltz v7, :cond_c03

    .line 4740
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v5, v20

    check-cast v5, Landroid/os/BatteryStats$Timer;

    .line 4742
    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v31

    add-long v31, v31, v25

    div-long v31, v31, v21

    .line 4743
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v20

    .line 4744
    invoke-virtual {v5}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4745
    if-eqz v5, :cond_ba9

    .line 4746
    invoke-virtual {v5, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    goto :goto_baa

    :cond_ba9
    nop

    .line 4747
    :goto_baa
    if-eqz v5, :cond_bb1

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    goto :goto_bb2

    :cond_bb1
    const/4 v8, -0x1

    .line 4748
    :goto_bb2
    cmp-long v5, v31, v23

    if-eqz v5, :cond_bf4

    .line 4749
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v33, v13

    move-object/from16 v13, v111

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4750
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v31, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v20, v7

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v5, v14, v2, v7, v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 4749
    const-string/jumbo v5, "sy"

    invoke-static {v0, v10, v9, v5, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_bfa

    .line 4748
    :cond_bf4
    move-object/from16 v31, v2

    move/from16 v20, v7

    move-object/from16 v13, v111

    .line 4739
    :goto_bfa
    add-int/lit8 v7, v20, -0x1

    move-object/from16 v111, v13

    move-object/from16 v2, v31

    const/16 v5, 0xd

    goto :goto_b86

    .line 4754
    :cond_c03
    move-wide/from16 v32, v13

    move-object/from16 v13, v111

    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 4755
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v57, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_c13
    if-ltz v5, :cond_c86

    .line 4756
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Timer;

    .line 4758
    invoke-virtual {v7, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v34

    add-long v34, v34, v25

    div-long v34, v34, v21

    .line 4759
    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    .line 4760
    invoke-virtual {v7}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 4761
    if-eqz v7, :cond_c32

    .line 4762
    invoke-virtual {v7, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v36

    goto :goto_c34

    :cond_c32
    move-wide/from16 v36, v32

    .line 4763
    :goto_c34
    if-eqz v7, :cond_c3b

    invoke-virtual {v7, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v7

    goto :goto_c3c

    :cond_c3b
    const/4 v7, -0x1

    .line 4764
    :goto_c3c
    cmp-long v20, v34, v23

    if-eqz v20, :cond_c7b

    .line 4765
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v38, v2

    move-object/from16 v2, v31

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4766
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-wide/from16 v34, v3

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v8, v14, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 4765
    const-string v3, "jb"

    invoke-static {v0, v10, v9, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c7f

    .line 4764
    :cond_c7b
    move-object/from16 v38, v2

    move-wide/from16 v34, v3

    .line 4755
    :goto_c7f
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v3, v34

    move-object/from16 v2, v38

    goto :goto_c13

    .line 4770
    :cond_c86
    move-wide/from16 v34, v3

    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v2

    .line 4771
    array-length v3, v2

    const/16 v57, 0x1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 4773
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 4774
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_c9d
    if-ltz v5, :cond_cee

    .line 4775
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseIntArray;

    .line 4776
    if-eqz v7, :cond_ce7

    .line 4777
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x0

    aput-object v8, v3, v14

    .line 4778
    move v8, v14

    :goto_cc6
    array-length v14, v2

    if-ge v8, v14, :cond_cdf

    .line 4779
    add-int/lit8 v14, v8, 0x1

    aget v8, v2, v8

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v14

    .line 4778
    move v8, v14

    move-object/from16 v2, v20

    const/4 v14, 0x0

    goto :goto_cc6

    .line 4782
    :cond_cdf
    move-object/from16 v20, v2

    const-string v2, "jbc"

    invoke-static {v0, v10, v9, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ce9

    .line 4776
    :cond_ce7
    move-object/from16 v20, v2

    .line 4774
    :goto_ce9
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v2, v20

    goto :goto_c9d

    .line 4787
    :cond_cee
    move-object/from16 v14, v17

    invoke-virtual {v14, v1, v6}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    .line 4788
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d06

    .line 4789
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "jbd"

    invoke-static {v0, v10, v9, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4792
    :cond_d06
    const-string v4, "fla"

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move v8, v6

    move-object v3, v9

    move v2, v10

    move-wide/from16 v6, v34

    const/16 v28, 0xd

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4794
    move-wide v3, v6

    const-string v4, "cam"

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v8, p3

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4796
    move-wide v3, v6

    const-string/jumbo v4, "vid"

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4798
    move-wide v3, v6

    const-string v4, "aud"

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4801
    move-wide v3, v6

    move v6, v8

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v5

    .line 4802
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 4803
    const/4 v8, 0x0

    :goto_d4a
    if-ge v8, v7, :cond_daf

    .line 4804
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid$Sensor;

    .line 4805
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 4806
    move-object/from16 v20, v5

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 4807
    if-eqz v5, :cond_daa

    .line 4809
    invoke-virtual {v5, v3, v4, v6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v31

    add-long v31, v31, v25

    div-long v31, v31, v21

    .line 4811
    cmp-long v33, v31, v23

    if-eqz v33, :cond_daa

    .line 4812
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v33

    .line 4813
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    .line 4814
    if-eqz v10, :cond_d79

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v34

    goto :goto_d7b

    :cond_d79
    const/16 v34, 0x0

    .line 4816
    :goto_d7b
    invoke-virtual {v5, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v35

    .line 4817
    if-eqz v10, :cond_d86

    .line 4818
    invoke-virtual {v10, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v37

    goto :goto_d88

    :cond_d86
    move-wide/from16 v37, v23

    .line 4819
    :goto_d88
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    .line 4820
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    filled-new-array/range {v39 .. v44}, [Ljava/lang/Object;

    move-result-object v5

    .line 4819
    const-string/jumbo v10, "sr"

    invoke-static {v1, v2, v9, v10, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4803
    :cond_daa
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v20

    goto :goto_d4a

    .line 4825
    :cond_daf
    move-wide/from16 v34, v3

    const-string/jumbo v4, "vib"

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move v8, v6

    move-object v3, v9

    move-wide/from16 v6, v34

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4828
    move-wide v3, v6

    const-string v4, "fg"

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object/from16 v1, p2

    move/from16 v8, p3

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4831
    move-wide v3, v6

    const-string v4, "fgs"

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    move-object v3, v9

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4834
    move-wide v3, v6

    move v6, v8

    const/4 v5, 0x7

    new-array v7, v5, [Ljava/lang/Object;

    .line 4835
    nop

    .line 4836
    move-wide/from16 v31, v23

    const/4 v8, 0x0

    :goto_de2
    if-ge v8, v5, :cond_df8

    .line 4837
    invoke-virtual {v14, v8, v3, v4, v6}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v33

    .line 4838
    add-long v31, v31, v33

    .line 4839
    add-long v33, v33, v25

    div-long v33, v33, v21

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v8

    .line 4836
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x7

    goto :goto_de2

    .line 4841
    :cond_df8
    cmp-long v5, v31, v23

    if-lez v5, :cond_e02

    .line 4842
    const-string/jumbo v5, "st"

    invoke-static {v1, v2, v9, v5, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4845
    :cond_e02
    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v7

    .line 4846
    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v31

    .line 4847
    cmp-long v5, v7, v23

    if-gtz v5, :cond_e12

    cmp-long v5, v31, v23

    if-lez v5, :cond_e27

    .line 4848
    :cond_e12
    div-long v7, v7, v21

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    div-long v31, v31, v21

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 4849
    filled-new-array {v5, v7, v15}, [Ljava/lang/Object;

    move-result-object v5

    .line 4848
    const-string v7, "cpu"

    invoke-static {v1, v2, v9, v7, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4853
    :cond_e27
    if-eqz p6, :cond_f14

    .line 4854
    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v5

    .line 4857
    if-eqz v5, :cond_e92

    array-length v7, v5

    .line 4858
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v8

    if-ne v7, v8, :cond_e8f

    .line 4859
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4860
    const/4 v7, 0x0

    :goto_e3b
    array-length v8, v5

    if-ge v7, v8, :cond_e51

    .line 4861
    if-eqz v7, :cond_e45

    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4862
    :cond_e45
    move-wide/from16 v34, v3

    aget-wide v3, v5, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4860
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v34

    goto :goto_e3b

    .line 4864
    :cond_e51
    move-wide/from16 v34, v3

    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v3

    .line 4865
    if-eqz v3, :cond_e6e

    .line 4866
    const/4 v4, 0x0

    :goto_e5a
    array-length v7, v3

    if-ge v4, v7, :cond_e7a

    .line 4867
    const/16 v8, 0x2c

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    move v10, v4

    aget-wide v3, v8, v10

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4866
    add-int/lit8 v4, v10, 0x1

    move-object v3, v8

    goto :goto_e5a

    .line 4870
    :cond_e6e
    const/4 v3, 0x0

    :goto_e6f
    array-length v4, v5

    if-ge v3, v4, :cond_e7a

    .line 4871
    const-string v4, ",0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4870
    add-int/lit8 v3, v3, 0x1

    goto :goto_e6f

    .line 4874
    :cond_e7a
    array-length v3, v5

    .line 4875
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "A"

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 4874
    const-string v4, "ctf"

    invoke-static {v1, v2, v9, v4, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e94

    .line 4858
    :cond_e8f
    move-wide/from16 v34, v3

    goto :goto_e94

    .line 4857
    :cond_e92
    move-wide/from16 v34, v3

    .line 4878
    :goto_e94
    nop

    .line 4879
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v3

    new-array v4, v3, [J

    .line 4880
    const/4 v5, 0x0

    :goto_ea0
    const/4 v7, 0x7

    if-ge v5, v7, :cond_f12

    .line 4881
    invoke-virtual {v14, v4, v5}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v8

    if-eqz v8, :cond_f09

    .line 4882
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4883
    move v10, v8

    :goto_eae
    if-ge v10, v3, :cond_ec3

    .line 4884
    if-eqz v10, :cond_eb7

    const/16 v7, 0x2c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4885
    :cond_eb7
    move-object v7, v9

    aget-wide v8, v4, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4883
    add-int/lit8 v10, v10, 0x1

    move-object v9, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    goto :goto_eae

    .line 4887
    :cond_ec3
    move-object v7, v9

    invoke-virtual {v14, v4, v5}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v8

    if-eqz v8, :cond_ee5

    .line 4888
    const/4 v8, 0x0

    :goto_ecb
    if-ge v8, v3, :cond_ee1

    .line 4889
    const/16 v9, 0x2c

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v9, v4

    move/from16 v17, v5

    aget-wide v4, v9, v8

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4888
    add-int/lit8 v8, v8, 0x1

    move-object v4, v9

    move/from16 v5, v17

    goto :goto_ecb

    :cond_ee1
    move-object v9, v4

    move/from16 v17, v5

    goto :goto_ef3

    .line 4892
    :cond_ee5
    move-object v9, v4

    move/from16 v17, v5

    const/4 v4, 0x0

    :goto_ee9
    if-ge v4, v3, :cond_ef3

    .line 4893
    const-string v5, ",0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4892
    add-int/lit8 v4, v4, 0x1

    goto :goto_ee9

    .line 4896
    :cond_ef3
    :goto_ef3
    sget-object v4, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v17

    .line 4897
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4898
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v5, v8}, [Ljava/lang/Object;

    move-result-object v4

    .line 4896
    const-string v5, "ctf"

    invoke-static {v1, v2, v7, v5, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f0d

    .line 4881
    :cond_f09
    move/from16 v17, v5

    move-object v7, v9

    move-object v9, v4

    .line 4880
    :goto_f0d
    add-int/lit8 v5, v17, 0x1

    move-object v4, v9

    move-object v9, v7

    goto :goto_ea0

    :cond_f12
    move-object v7, v9

    goto :goto_f17

    .line 4853
    :cond_f14
    move-wide/from16 v34, v3

    move-object v7, v9

    .line 4903
    :goto_f17
    nop

    .line 4904
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 4905
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/16 v57, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_f24
    if-ltz v4, :cond_fa7

    .line 4906
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Proc;

    .line 4908
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    .line 4909
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v31

    .line 4910
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v36

    .line 4911
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v10

    .line 4912
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v17

    .line 4913
    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v5

    .line 4915
    cmp-long v20, v8, v23

    if-nez v20, :cond_f5c

    cmp-long v20, v31, v23

    if-nez v20, :cond_f5c

    cmp-long v20, v36, v23

    if-nez v20, :cond_f5c

    if-nez v10, :cond_f5c

    if-nez v5, :cond_f5c

    if-eqz v17, :cond_f57

    goto :goto_f5c

    :cond_f57
    move-object/from16 v59, v0

    move-object/from16 p5, v3

    goto :goto_f9f

    .line 4917
    :cond_f5c
    :goto_f5c
    move-object/from16 v59, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p5, v3

    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 4918
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    filled-new-array/range {v38 .. v44}, [Ljava/lang/Object;

    move-result-object v0

    .line 4917
    const-string/jumbo v3, "pr"

    invoke-static {v1, v2, v7, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4905
    :goto_f9f
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v3, p5

    move-object/from16 v0, v59

    goto/16 :goto_f24

    .line 4922
    :cond_fa7
    move-object/from16 v59, v0

    .line 4923
    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4924
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v57, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_fb5
    if-ltz v3, :cond_106c

    .line 4925
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    .line 4926
    nop

    .line 4927
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 4928
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/16 v57, 0x1

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x0

    :goto_fcb
    if-ltz v8, :cond_fff

    .line 4929
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    .line 4930
    add-int/2addr v9, v10

    .line 4931
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 p5, v4

    move-object/from16 p1, v5

    const/16 v4, 0x5f

    const/16 v5, 0x2c

    invoke-virtual {v14, v5, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 4932
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v14, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string/jumbo v14, "wua"

    invoke-static {v1, v2, v7, v14, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4928
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v5, p1

    move-object/from16 v4, p5

    goto :goto_fcb

    .line 4934
    :cond_fff
    move-object/from16 p5, v4

    const/16 v4, 0x5f

    const/16 v5, 0x2c

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 4935
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/16 v57, 0x1

    add-int/lit8 v10, v10, -0x1

    :goto_1011
    if-ltz v10, :cond_1064

    .line 4936
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 4937
    move-wide/from16 v4, v18

    invoke-virtual {v14, v4, v5, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v17

    .line 4938
    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v19

    .line 4939
    invoke-virtual {v14, v6}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v14

    .line 4940
    cmp-long v20, v17, v23

    if-nez v20, :cond_1033

    if-nez v19, :cond_1033

    if-eqz v14, :cond_1030

    goto :goto_1033

    :cond_1030
    move-object/from16 p5, v0

    goto :goto_1059

    .line 4941
    :cond_1033
    :goto_1033
    nop

    .line 4942
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 4943
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v37

    .line 4944
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v38

    div-long v17, v17, v21

    .line 4945
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 4946
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 4947
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    filled-new-array/range {v36 .. v41}, [Ljava/lang/Object;

    move-result-object v14

    .line 4941
    move-object/from16 p5, v0

    const-string v0, "apk"

    invoke-static {v1, v2, v7, v0, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4935
    :goto_1059
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p5

    move-wide/from16 v18, v4

    const/16 v4, 0x5f

    const/16 v5, 0x2c

    goto :goto_1011

    .line 4924
    :cond_1064
    move-object/from16 p5, v0

    move-wide/from16 v4, v18

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_fb5

    :cond_106c
    move-wide/from16 v4, v18

    const/16 v57, 0x1

    .line 4547
    :goto_1070
    add-int/lit8 v0, v51, 0x1

    move/from16 v9, p4

    move-object v8, v1

    move-object/from16 v20, v13

    move/from16 v10, v16

    move/from16 v19, v28

    move-wide/from16 v27, v34

    move-wide v13, v4

    move-wide/from16 v16, v11

    const/16 v12, 0x2c

    move-object v11, v7

    move-object/from16 v7, v59

    goto/16 :goto_744

    .line 4952
    :cond_1087
    return-void
.end method

.method public final blacklist dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 95

    .line 4979
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    move/from16 v5, p4

    if-eqz v5, :cond_27

    .line 4980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: BatteryStats.dump called for which type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but only STATS_SINCE_CHARGED is supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4982
    return-void

    .line 4985
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v9, 0x3e8

    mul-long/2addr v2, v9

    .line 4986
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    mul-long/2addr v11, v9

    .line 4987
    const-wide/16 v13, 0x1f4

    add-long v15, v11, v13

    div-long/2addr v15, v9

    .line 4988
    move-wide/from16 v17, v9

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v9

    .line 4990
    move-wide/from16 v19, v13

    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v13

    .line 4991
    move-wide/from16 v21, v9

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v9

    .line 4992
    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v7

    .line 4993
    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v23

    .line 4994
    invoke-virtual {v0, v2, v3, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v2

    .line 4995
    move-wide/from16 v25, v2

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v2

    .line 4997
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v27

    .line 4998
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v29

    .line 4999
    move-wide/from16 v31, v2

    invoke-virtual {v0, v11, v12, v5}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v2

    .line 5001
    new-instance v4, Ljava/lang/StringBuilder;

    move-wide/from16 v33, v15

    const/16 v15, 0x80

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5003
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v15

    .line 5004
    move-object/from16 p1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 5006
    move/from16 p6, v15

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v15

    .line 5007
    move-wide/from16 v35, v11

    const-string v11, " mAh"

    const/4 v12, 0x0

    if-lez v15, :cond_aa

    .line 5008
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5009
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5010
    const-string v12, "  Estimated battery capacity: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5011
    move-wide/from16 v37, v2

    int-to-double v2, v15

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5012
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5013
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ac

    .line 5007
    :cond_aa
    move-wide/from16 v37, v2

    .line 5016
    :goto_ac
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v2

    .line 5017
    if-lez v2, :cond_d2

    .line 5018
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5019
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5020
    const-string v3, "  Last learned battery capacity: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5021
    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5022
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5023
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5025
    :cond_d2
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v2

    .line 5026
    if-lez v2, :cond_f8

    .line 5027
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5028
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5029
    const-string v3, "  Min learned battery capacity: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5030
    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5031
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5032
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5034
    :cond_f8
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v2

    .line 5035
    if-lez v2, :cond_11e

    .line 5036
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5037
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5038
    const-string v3, "  Max learned battery capacity: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5039
    div-int/lit16 v2, v2, 0x3e8

    int-to-double v2, v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5040
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5041
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    :cond_11e
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5045
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5046
    const-string v2, "  Time on battery: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5047
    div-long v2, v9, v17

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v12, "("

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5048
    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5049
    const-string v15, ") realtime, "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5050
    move-wide/from16 v39, v7

    div-long v7, v13, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5051
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5052
    const-string v7, ") uptime"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5053
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5055
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5056
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5057
    const-string v7, "  Time on battery screen off: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5058
    div-long v7, v31, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5059
    move-wide/from16 v7, v31

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5060
    const-string v7, ") realtime, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5061
    div-long v7, v25, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5062
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5063
    move-wide/from16 v7, v25

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5064
    const-string v7, ") uptime"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5065
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5067
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5068
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5069
    const-string v7, "  Time on battery screen doze: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5070
    div-long v7, v37, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5071
    move-wide/from16 v7, v37

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5072
    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5073
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5075
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5076
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5077
    const-string v7, "  Total run time: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5078
    div-long v13, v39, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5079
    const-string/jumbo v7, "realtime, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5080
    div-long v13, v23, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5081
    const-string/jumbo v7, "uptime"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5082
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5083
    const-wide/16 v13, 0x0

    cmp-long v7, v27, v13

    if-ltz v7, :cond_20f

    .line 5084
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5085
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5086
    const-string v7, "  Battery time remaining: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5087
    move-wide/from16 v23, v13

    div-long v13, v27, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5088
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_211

    .line 5083
    :cond_20f
    move-wide/from16 v23, v13

    .line 5090
    :goto_211
    cmp-long v7, v29, v23

    if-ltz v7, :cond_22d

    .line 5091
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5092
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5093
    const-string v7, "  Charge time remaining: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5094
    div-long v13, v29, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5095
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5098
    :cond_22d
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v13

    .line 5099
    cmp-long v7, v13, v23

    const-wide v25, 0x408f400000000000L    # 1000.0

    if-ltz v7, :cond_25d

    .line 5100
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5101
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5102
    const-string v7, "  Discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5103
    move-wide/from16 v27, v2

    long-to-double v2, v13

    div-double v2, v2, v25

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5104
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5105
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25f

    .line 5099
    :cond_25d
    move-wide/from16 v27, v2

    .line 5108
    :goto_25f
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v2

    .line 5109
    cmp-long v7, v2, v23

    if-ltz v7, :cond_28a

    .line 5110
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5111
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5112
    const-string v7, "  Screen off discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5113
    move-wide/from16 v29, v13

    long-to-double v13, v2

    div-double v13, v13, v25

    invoke-static {v13, v14}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5114
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28c

    .line 5109
    :cond_28a
    move-wide/from16 v29, v13

    .line 5118
    :goto_28c
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v13

    .line 5119
    cmp-long v7, v13, v23

    if-ltz v7, :cond_2b4

    .line 5120
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5121
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5122
    const-string v7, "  Screen doze discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5123
    long-to-double v13, v13

    div-double v13, v13, v25

    invoke-static {v13, v14}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5124
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5128
    :cond_2b4
    sub-long v13, v29, v2

    .line 5129
    cmp-long v2, v13, v23

    if-ltz v2, :cond_2da

    .line 5130
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5131
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5132
    const-string v2, "  Screen on discharge: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5133
    long-to-double v2, v13

    div-double v2, v2, v25

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5134
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5138
    :cond_2da
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v2

    .line 5139
    cmp-long v7, v2, v23

    if-ltz v7, :cond_302

    .line 5140
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5141
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5142
    const-string v7, "  Device light doze discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5143
    long-to-double v2, v2

    div-double v2, v2, v25

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5144
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5148
    :cond_302
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v2

    .line 5149
    cmp-long v7, v2, v23

    if-ltz v7, :cond_32a

    .line 5150
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5151
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5152
    const-string v7, "  Device deep doze discharge: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5153
    long-to-double v2, v2

    div-double v2, v2, v25

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5154
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5158
    :cond_32a
    const-string v2, "  Start clock time: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5159
    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v13

    invoke-static {v2, v13, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5161
    move-wide/from16 v13, v35

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    .line 5162
    move-object v11, v8

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v7

    .line 5163
    move-wide/from16 v25, v7

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v7

    .line 5164
    const/4 v15, 0x1

    move-wide/from16 v29, v7

    invoke-virtual {v0, v15, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v7

    .line 5166
    const/4 v15, 0x2

    move-wide/from16 v35, v7

    invoke-virtual {v0, v15, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v7

    .line 5168
    move-wide/from16 v37, v7

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v7

    .line 5170
    move-wide/from16 v39, v7

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v7

    .line 5172
    move-wide/from16 v41, v7

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v7

    .line 5173
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    .line 5174
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    .line 5175
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5176
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5177
    const-string v15, "  Screen on: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v43, v7

    div-long v7, v2, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5178
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5179
    const-string v8, ") "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5180
    const-string/jumbo v7, "x, Interactive: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v8

    div-long v7, v25, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5181
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v25

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5182
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5184
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5185
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5186
    const-string v7, "  Screen brightnesses:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5187
    nop

    .line 5188
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3d4
    move/from16 v25, v8

    const/4 v8, 0x5

    move-object/from16 v26, v15

    const-string v15, " "

    if-ge v7, v8, :cond_41d

    .line 5189
    move-wide/from16 v45, v9

    invoke-virtual {v0, v7, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v8

    .line 5190
    cmp-long v10, v8, v23

    if-nez v10, :cond_3ec

    .line 5191
    move-wide/from16 v47, v13

    move/from16 v8, v25

    goto :goto_414

    .line 5193
    :cond_3ec
    const-string v10, "\n    "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5194
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5195
    nop

    .line 5196
    sget-object v10, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5197
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5198
    move-wide/from16 v47, v13

    div-long v13, v8, v17

    invoke-static {v4, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5199
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5200
    invoke-virtual {v0, v8, v9, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5201
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    .line 5188
    :goto_414
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v15, v26

    move-wide/from16 v9, v45

    move-wide/from16 v13, v47

    goto :goto_3d4

    .line 5203
    :cond_41d
    move-wide/from16 v45, v9

    move-wide/from16 v47, v13

    const-string v7, " (no activity)"

    if-nez v25, :cond_428

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5204
    :cond_428
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5205
    cmp-long v2, v29, v23

    if-eqz v2, :cond_45d

    .line 5206
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5207
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5208
    const-string v2, "  Power save mode enabled: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5209
    div-long v2, v29, v17

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5210
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5211
    move-wide/from16 v2, v29

    move-wide/from16 v9, v45

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5212
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_45f

    .line 5205
    :cond_45d
    move-wide/from16 v9, v45

    .line 5215
    :goto_45f
    cmp-long v2, v39, v23

    const-string/jumbo v13, "x"

    if-eqz v2, :cond_49b

    .line 5216
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5217
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5218
    const-string v2, "  Device light idling: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5219
    div-long v2, v39, v17

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5220
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5221
    move-wide/from16 v2, v39

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5222
    move-object/from16 v14, v26

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5223
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49d

    .line 5215
    :cond_49b
    move-object/from16 v14, v26

    .line 5226
    :goto_49d
    cmp-long v2, v35, v23

    if-eqz v2, :cond_4e2

    .line 5227
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5228
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5229
    const-string v2, "  Idle mode light time: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5230
    div-long v2, v35, v17

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5231
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5232
    move-wide/from16 v2, v35

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5233
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5234
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5235
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5236
    const-string v3, " -- longest "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5237
    move-wide/from16 v45, v9

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4e4

    .line 5226
    :cond_4e2
    move-wide/from16 v45, v9

    .line 5240
    :goto_4e4
    cmp-long v2, v41, v23

    if-eqz v2, :cond_51d

    .line 5241
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5242
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5243
    const-string v2, "  Device full idling: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5244
    div-long v2, v41, v17

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5245
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5246
    move-wide/from16 v2, v41

    move-wide/from16 v9, v45

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5247
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5248
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_51f

    .line 5240
    :cond_51d
    move-wide/from16 v9, v45

    .line 5251
    :goto_51f
    cmp-long v2, v37, v23

    if-eqz v2, :cond_564

    .line 5252
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5253
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5254
    const-string v2, "  Idle mode full time: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5255
    div-long v2, v37, v17

    invoke-static {v4, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5256
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5257
    move-wide/from16 v2, v37

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5258
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5259
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5260
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5261
    const-string v3, " -- longest "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5262
    move-object/from16 v26, v7

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5263
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_566

    .line 5251
    :cond_564
    move-object/from16 v26, v7

    .line 5265
    :goto_566
    cmp-long v2, v43, v23

    if-eqz v2, :cond_594

    .line 5266
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5267
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5268
    const-string v2, "  Active phone call: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v43, v17

    invoke-static {v4, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5269
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v43

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5270
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5272
    :cond_594
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v2

    .line 5273
    if-eqz v2, :cond_5a5

    .line 5274
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5275
    const-string v3, "  Connectivity changes: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5279
    :cond_5a5
    nop

    .line 5280
    nop

    .line 5282
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5284
    move-wide/from16 v29, v23

    move-wide/from16 v35, v29

    const/4 v2, 0x0

    :goto_5b1
    move/from16 v8, p6

    if-ge v2, v8, :cond_63d

    .line 5285
    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/BatteryStats$Uid;

    .line 5287
    nop

    .line 5288
    move/from16 v38, v2

    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 5289
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v39

    const/4 v3, 0x1

    add-int/lit8 v39, v39, -0x1

    move/from16 v3, v39

    :goto_5cd
    if-ltz v3, :cond_62b

    .line 5290
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    move/from16 p6, v8

    move-object/from16 v8, v39

    check-cast v8, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 5292
    move-object/from16 v40, v11

    move-object/from16 v39, v13

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    .line 5293
    if-eqz v11, :cond_5ef

    .line 5294
    move-object/from16 v41, v14

    move-wide/from16 v13, v47

    invoke-virtual {v11, v13, v14, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v42

    add-long v29, v29, v42

    goto :goto_5f3

    .line 5293
    :cond_5ef
    move-object/from16 v41, v14

    move-wide/from16 v13, v47

    .line 5298
    :goto_5f3
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v8

    .line 5299
    if-eqz v8, :cond_61e

    .line 5300
    invoke-virtual {v8, v13, v14, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v46

    .line 5302
    cmp-long v11, v46, v23

    if-lez v11, :cond_61e

    .line 5303
    if-gez p5, :cond_61c

    .line 5307
    new-instance v42, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v43, v11

    check-cast v43, Ljava/lang/String;

    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v44

    move-object/from16 v45, v8

    invoke-direct/range {v42 .. v47}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v8, v42

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5310
    :cond_61c
    add-long v35, v35, v46

    .line 5289
    :cond_61e
    add-int/lit8 v3, v3, -0x1

    move/from16 v8, p6

    move-wide/from16 v47, v13

    move-object/from16 v13, v39

    move-object/from16 v11, v40

    move-object/from16 v14, v41

    goto :goto_5cd

    .line 5284
    :cond_62b
    move/from16 p6, v8

    move-object/from16 v40, v11

    move-object/from16 v39, v13

    move-object/from16 v41, v14

    move-wide/from16 v13, v47

    add-int/lit8 v2, v38, 0x1

    move-object/from16 v13, v39

    move-object/from16 v14, v41

    goto/16 :goto_5b1

    .line 5316
    :cond_63d
    move/from16 p6, v8

    move-object/from16 v40, v11

    move-object/from16 v39, v13

    move-object/from16 v41, v14

    move-wide/from16 v13, v47

    move-object v11, v7

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 5317
    move-object/from16 v37, v4

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    .line 5318
    move-wide/from16 v42, v7

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 5319
    const/4 v2, 0x3

    move-wide/from16 v44, v7

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 5320
    move-wide/from16 v46, v7

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 5321
    move-wide/from16 v48, v7

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 5322
    move-wide/from16 v50, v7

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 5323
    const/4 v2, 0x3

    move-wide/from16 v52, v7

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v7

    .line 5324
    const/4 v2, 0x4

    move-wide/from16 v54, v7

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 5325
    move-wide/from16 v56, v7

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v7

    .line 5327
    cmp-long v2, v29, v23

    if-eqz v2, :cond_6af

    .line 5328
    move-object/from16 v2, v37

    move-wide/from16 v37, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5329
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5330
    const-string v3, "  Total full wakelock time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v29, v29, v19

    div-long v3, v29, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6b3

    .line 5327
    :cond_6af
    move-object/from16 v2, v37

    move-wide/from16 v37, v3

    .line 5335
    :goto_6b3
    cmp-long v3, v35, v23

    if-eqz v3, :cond_6d1

    .line 5336
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5337
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5338
    const-string v3, "  Total partial wakelock time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v35, v35, v19

    div-long v3, v35, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5340
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5343
    :cond_6d1
    nop

    .line 5344
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v3

    .line 5345
    move-wide/from16 v29, v3

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v3

    .line 5346
    cmp-long v4, v29, v23

    if-eqz v4, :cond_710

    .line 5347
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5348
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5349
    const-string v4, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5351
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5353
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5354
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5355
    const-string v3, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5356
    add-long v3, v29, v19

    div-long v3, v3, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5357
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5360
    :cond_710
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getDisplayCount()I

    move-result v3

    .line 5361
    const/4 v4, 0x1

    if-le v3, v4, :cond_84f

    .line 5362
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5363
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5364
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5365
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5366
    const-string v4, "  MULTI-DISPLAY POWER SUMMARY START"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5369
    const/4 v4, 0x0

    :goto_733
    if-ge v4, v3, :cond_82c

    .line 5370
    move/from16 v29, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5371
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5372
    const-string v3, "  Display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5373
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5374
    const-string v3, " Statistics:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5375
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5377
    move-wide/from16 v35, v7

    invoke-virtual {v0, v4, v13, v14}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v7

    .line 5378
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5379
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5380
    const-string v3, "    Screen on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5381
    div-long v5, v7, v17

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5382
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5383
    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5384
    move-object/from16 v3, v41

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5385
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5387
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5388
    const-string v5, "    Screen brightness levels:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5389
    nop

    .line 5390
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_78b
    move/from16 v30, v6

    const/4 v6, 0x5

    if-ge v5, v6, :cond_7d4

    .line 5391
    move-wide/from16 v58, v9

    invoke-virtual {v0, v4, v5, v13, v14}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v9

    .line 5392
    cmp-long v6, v9, v23

    if-nez v6, :cond_7a1

    .line 5393
    move/from16 v41, v5

    move/from16 v6, v30

    move-object/from16 v9, v40

    goto :goto_7cd

    .line 5395
    :cond_7a1
    nop

    .line 5396
    const-string v6, "\n      "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5397
    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5398
    sget-object v30, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    move/from16 v41, v5

    aget-object v5, v30, v41

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5399
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5400
    div-long v5, v9, v17

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5401
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5402
    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5403
    move-object/from16 v9, v40

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 5390
    :goto_7cd
    add-int/lit8 v5, v41, 0x1

    move-object/from16 v40, v9

    move-wide/from16 v9, v58

    goto :goto_78b

    .line 5405
    :cond_7d4
    move-wide/from16 v58, v9

    move-object/from16 v9, v40

    if-nez v30, :cond_7e0

    move-object/from16 v7, v26

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e2

    :cond_7e0
    move-object/from16 v7, v26

    .line 5406
    :goto_7e2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5408
    invoke-virtual {v0, v4, v13, v14}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v5

    .line 5409
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5410
    move-object/from16 v8, p3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5411
    const-string v10, "    Screen Doze: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5412
    move-object/from16 v26, v11

    div-long v10, v5, v17

    invoke-static {v2, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5413
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5414
    move-wide/from16 v10, v58

    invoke-virtual {v0, v5, v6, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5415
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5369
    add-int/lit8 v4, v4, 0x1

    move/from16 v5, p4

    move-object/from16 v41, v3

    move-object v6, v8

    move-object/from16 v40, v9

    move-wide v9, v10

    move-object/from16 v11, v26

    move/from16 v3, v29

    move-object/from16 v26, v7

    move-wide/from16 v7, v35

    goto/16 :goto_733

    .line 5418
    :cond_82c
    move-wide/from16 v35, v7

    move-object/from16 v7, v26

    move-object/from16 v3, v41

    move-object v8, v6

    move-object/from16 v26, v11

    move-wide v10, v9

    move-object/from16 v9, v40

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5419
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5420
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5421
    const-string v4, "  MULTI-DISPLAY POWER SUMMARY END"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5422
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_85b

    .line 5361
    :cond_84f
    move-wide/from16 v35, v7

    move-object/from16 v7, v26

    move-object/from16 v3, v41

    move-object v8, v6

    move-object/from16 v26, v11

    move-wide v10, v9

    move-object/from16 v9, v40

    .line 5425
    :goto_85b
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5426
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5427
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5428
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5429
    const-string v4, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5432
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5433
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5434
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5435
    const-string v4, "  Logging duration for connectivity statistics: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5436
    move-wide/from16 v4, v27

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5437
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5439
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5440
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5441
    const-string v4, "  Cellular Statistics:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5444
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5445
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5446
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5447
    const-string v4, "     Cellular kernel active time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5448
    move/from16 v5, p4

    move-object/from16 v27, v7

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v7

    .line 5449
    move-object/from16 v41, v3

    div-long v3, v7, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5450
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5451
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5452
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5454
    nop

    .line 5455
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 5454
    const-string v4, "Cellular"

    move-object/from16 v3, p3

    move/from16 v6, p4

    move-wide/from16 v28, v7

    move-object/from16 v40, v9

    move-wide/from16 v7, v37

    move-object/from16 v9, v41

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5457
    move-object v0, v2

    move-object v6, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v1, p2

    move-object v2, v0

    move-wide/from16 v4, v33

    move-object/from16 v0, p0

    move/from16 v9, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats;->printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 5459
    const-string v3, "     Cellular data received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v42

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5460
    const-string v3, "     Cellular data sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5461
    const-string v3, "     Cellular packets received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v48

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 5462
    const-string v3, "     Cellular packets sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v50

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 5464
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5465
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5466
    const-string v3, "     Cellular Radio Access Technology:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5467
    nop

    .line 5468
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_94a
    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v3, v5, :cond_9c9

    .line 5469
    invoke-virtual {v0, v3, v13, v14, v9}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v7

    .line 5470
    cmp-long v5, v7, v23

    if-nez v5, :cond_95b

    .line 5471
    move-wide/from16 v37, v13

    move-object/from16 v8, v41

    goto :goto_9c2

    .line 5473
    :cond_95b
    const-string v4, "\n       "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5474
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5475
    nop

    .line 5476
    sget-object v4, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_96e

    .line 5477
    sget-object v4, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v3

    goto :goto_970

    :cond_96e
    const-string v4, "ERROR"

    .line 5476
    :goto_970
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5478
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5479
    div-long v4, v7, v17

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5480
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5481
    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5482
    move-object/from16 v8, v41

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5484
    const/16 v4, 0xd

    if-ne v3, v4, :cond_9bf

    .line 5486
    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats;->getNrNsaTime(J)J

    move-result-wide v4

    .line 5487
    cmp-long v7, v4, v23

    if-eqz v7, :cond_9bc

    .line 5488
    const-string v7, "\n         "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5489
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5490
    const-string/jumbo v7, "nr_nsa"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5491
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5492
    move-wide/from16 v37, v13

    div-long v13, v4, v17

    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5493
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5494
    invoke-virtual {v0, v4, v5, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5495
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c1

    .line 5487
    :cond_9bc
    move-wide/from16 v37, v13

    goto :goto_9c1

    .line 5484
    :cond_9bf
    move-wide/from16 v37, v13

    .line 5468
    :goto_9c1
    const/4 v4, 0x1

    :goto_9c2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v41, v8

    move-wide/from16 v13, v37

    goto :goto_94a

    .line 5499
    :cond_9c9
    move-wide/from16 v37, v13

    move-object/from16 v8, v41

    if-nez v4, :cond_9d5

    move-object/from16 v7, v27

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9d7

    :cond_9d5
    move-object/from16 v7, v27

    .line 5500
    :goto_9d7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5502
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5503
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5504
    const-string v3, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5505
    const-string v3, "good (-108dBm to -98dBm): "

    const-string v4, "great (greater than -98dBm): "

    const-string/jumbo v5, "very poor (less than -128dBm): "

    const-string/jumbo v13, "poor (-128dBm to -118dBm): "

    const-string v14, "moderate (-118dBm to -108dBm): "

    filled-new-array {v5, v13, v14, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 5511
    nop

    .line 5512
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5514
    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_a06
    if-ge v5, v4, :cond_a50

    .line 5515
    move-object/from16 v30, v3

    move/from16 v27, v13

    move-wide/from16 v13, v37

    move/from16 v37, v4

    invoke-virtual {v0, v5, v13, v14, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v3

    .line 5516
    cmp-long v38, v3, v23

    if-nez v38, :cond_a1f

    .line 5517
    move/from16 v38, v5

    move-wide/from16 v41, v13

    move/from16 v13, v27

    goto :goto_a47

    .line 5519
    :cond_a1f
    move/from16 v38, v5

    const-string v5, "\n       "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5520
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5521
    nop

    .line 5522
    aget-object v5, v30, v38

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5523
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5524
    move-wide/from16 v41, v13

    div-long v13, v3, v17

    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5525
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5526
    invoke-virtual {v0, v3, v4, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5527
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    .line 5514
    :goto_a47
    add-int/lit8 v5, v38, 0x1

    move-object/from16 v3, v30

    move/from16 v4, v37

    move-wide/from16 v37, v41

    goto :goto_a06

    .line 5529
    :cond_a50
    move/from16 v27, v13

    move-wide/from16 v41, v37

    if-nez v27, :cond_a59

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5530
    :cond_a59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5532
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5533
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5534
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5535
    const-string v3, "  Wifi Statistics:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5536
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5538
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5539
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5540
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5541
    const-string v3, "     Wifi kernel active time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5542
    move-wide/from16 v13, v41

    invoke-virtual {v0, v13, v14, v9}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v3

    .line 5543
    div-long v5, v3, v17

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5544
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5545
    move-object/from16 v3, v40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5546
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5548
    nop

    .line 5549
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 5548
    const-string v4, "WiFi"

    move v6, v9

    move-wide/from16 v60, v33

    move-object v9, v3

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5551
    move v5, v6

    move-object v6, v3

    const-string v3, "     Wifi data received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v44

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5552
    const-string v3, "     Wifi data sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v46

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5553
    const-string v3, "     Wifi packets received: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v52

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 5554
    const-string v3, "     Wifi packets sent: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v54

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 5556
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5557
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5558
    const-string v3, "     Wifi states:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5559
    nop

    .line 5560
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_af7
    move/from16 v27, v4

    const/16 v4, 0x8

    if-ge v3, v4, :cond_b3b

    .line 5561
    move-object v4, v7

    invoke-virtual {v0, v3, v13, v14, v5}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v6

    .line 5562
    cmp-long v30, v6, v23

    if-nez v30, :cond_b0d

    .line 5563
    move/from16 v30, v3

    move-object/from16 v33, v4

    move/from16 v4, v27

    goto :goto_b34

    .line 5565
    :cond_b0d
    move/from16 v30, v3

    const-string v3, "\n       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5566
    nop

    .line 5567
    sget-object v3, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5568
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5569
    move-object/from16 v33, v4

    div-long v3, v6, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5570
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5571
    invoke-virtual {v0, v6, v7, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5572
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 5560
    :goto_b34
    add-int/lit8 v3, v30, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v33

    goto :goto_af7

    .line 5574
    :cond_b3b
    move-object/from16 v33, v7

    if-nez v27, :cond_b45

    move-object/from16 v7, v33

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b47

    :cond_b45
    move-object/from16 v7, v33

    .line 5575
    :goto_b47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5577
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5578
    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5579
    const-string v3, "     Wifi supplicant states:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5580
    nop

    .line 5581
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b5f
    move/from16 v27, v4

    const/16 v4, 0xd

    if-ge v3, v4, :cond_ba3

    .line 5582
    move-object v4, v7

    invoke-virtual {v0, v3, v13, v14, v5}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v6

    .line 5583
    cmp-long v30, v6, v23

    if-nez v30, :cond_b75

    .line 5584
    move/from16 v30, v3

    move-object/from16 v33, v4

    move/from16 v4, v27

    goto :goto_b9c

    .line 5586
    :cond_b75
    move/from16 v30, v3

    const-string v3, "\n       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5587
    nop

    .line 5588
    sget-object v3, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5589
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5590
    move-object/from16 v33, v4

    div-long v3, v6, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5591
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5592
    invoke-virtual {v0, v6, v7, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5593
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 5581
    :goto_b9c
    add-int/lit8 v3, v30, 0x1

    move-object/from16 v6, p3

    move-object/from16 v7, v33

    goto :goto_b5f

    .line 5595
    :cond_ba3
    move-object/from16 v33, v7

    if-nez v27, :cond_bad

    move-object/from16 v7, v33

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_baf

    :cond_bad
    move-object/from16 v7, v33

    .line 5596
    :goto_baf
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5598
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5599
    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5600
    const-string v3, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5601
    const-string v3, "good (-66.25dBm to -55dBm): "

    const-string v4, "great (greater than -55dBm): "

    move-object/from16 v27, v15

    const-string/jumbo v15, "very poor (less than -88.75dBm): "

    move-object/from16 v40, v9

    const-string/jumbo v9, "poor (-88.75 to -77.5dBm): "

    const-string v1, "moderate (-77.5dBm to -66.25dBm): "

    filled-new-array {v15, v9, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 5607
    nop

    .line 5608
    const/4 v3, 0x5

    invoke-static {v3, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5610
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_be0
    if-ge v3, v4, :cond_c24

    .line 5611
    move-object/from16 v33, v7

    move-object v15, v8

    invoke-virtual {v0, v3, v13, v14, v5}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v7

    .line 5612
    cmp-long v30, v7, v23

    if-nez v30, :cond_bf2

    .line 5613
    move/from16 v34, v3

    move/from16 v30, v4

    goto :goto_c1c

    .line 5615
    :cond_bf2
    const-string v9, "\n    "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5616
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5617
    nop

    .line 5618
    const-string v9, "     "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5619
    aget-object v9, v1, v3

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5620
    move/from16 v34, v3

    move/from16 v30, v4

    div-long v3, v7, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5621
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5622
    invoke-virtual {v0, v7, v8, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5623
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    .line 5610
    :goto_c1c
    add-int/lit8 v3, v34, 0x1

    move-object v8, v15

    move/from16 v4, v30

    move-object/from16 v7, v33

    goto :goto_be0

    .line 5625
    :cond_c24
    move-object/from16 v33, v7

    move-object v15, v8

    if-nez v9, :cond_c2e

    move-object/from16 v7, v33

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5626
    :cond_c2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5628
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5629
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5630
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5631
    const-string v1, "  GPS Statistics:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5632
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5634
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5635
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5636
    const-string v1, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5637
    const-string/jumbo v1, "poor (less than 20 dBHz): "

    const-string v4, "good (greater than 20 dBHz): "

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 5640
    const/4 v4, 0x2

    invoke-static {v4, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 5643
    const/4 v4, 0x0

    :goto_c67
    if-ge v4, v7, :cond_c9b

    .line 5644
    invoke-virtual {v0, v4, v13, v14, v5}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v8

    .line 5645
    move-object/from16 v30, v1

    const-string v1, "\n    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5646
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5647
    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5648
    aget-object v1, v30, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5649
    move v1, v4

    div-long v4, v8, v17

    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5650
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5651
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5652
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5643
    add-int/lit8 v4, v1, 0x1

    move/from16 v5, p4

    move-object/from16 v1, v30

    goto :goto_c67

    .line 5654
    :cond_c9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5656
    invoke-virtual {v0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v4

    .line 5657
    cmp-long v1, v4, v23

    if-lez v1, :cond_cda

    .line 5658
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5659
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5660
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5661
    const-string v1, "     GPS Battery Drain: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5662
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v7, "#.##"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v4, v4

    const-wide v7, 0x414b774000000000L    # 3600000.0

    div-double/2addr v4, v7

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5664
    const-string v1, "mAh"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5665
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5668
    :cond_cda
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5669
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5670
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5671
    const-string v1, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5672
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5673
    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5675
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5676
    const-string v1, "  Bluetooth total received: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v4, v56

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5677
    const-string v1, ", sent: "

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v4, v35

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5679
    move/from16 v5, p4

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v7

    div-long v7, v7, v17

    .line 5680
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5681
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5682
    const-string v1, "  Bluetooth scan time: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5683
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5685
    const-string v4, "Bluetooth"

    invoke-virtual {v0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object v1, v3

    move-object v3, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5688
    move-object v8, v0

    move-object v7, v1

    move-object v0, v2

    move-object v9, v3

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 5690
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Device battery use since last full charge"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5691
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Amount discharged (lower bound): "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5692
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5693
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Amount discharged (upper bound): "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5694
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5695
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Amount discharged while screen on: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5696
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5697
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Amount discharged while screen off: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5698
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5699
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Amount discharged while screen doze: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5700
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5701
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 5704
    move-object/from16 v1, p7

    const/4 v2, 0x1

    invoke-interface {v1, v8, v2}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object v1

    .line 5705
    invoke-virtual {v1, v7, v9}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5707
    nop

    .line 5708
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/os/BatteryStats;->getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 5709
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, " ("

    const-string v4, ": "

    if-lez v2, :cond_e4a

    .line 5710
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5711
    const-string v2, "  Per-app mobile ms per packet:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5712
    nop

    .line 5713
    move-wide/from16 v5, v23

    const/4 v2, 0x0

    :goto_dc5
    move-wide/from16 v35, v13

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_e25

    .line 5714
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$UidMobileRadioStats;

    .line 5715
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5716
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5717
    const-string v14, "    Uid "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5718
    iget v14, v13, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    invoke-static {v0, v14}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 5719
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5720
    move-object/from16 p7, v1

    move v14, v2

    iget-wide v1, v13, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5721
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5722
    iget-wide v1, v13, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    move-wide/from16 v33, v1

    iget-wide v1, v13, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    add-long v1, v33, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5723
    const-string v1, " packets over "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5724
    iget-wide v1, v13, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5725
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5726
    iget v1, v13, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5727
    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5728
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5729
    iget-wide v1, v13, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    add-long/2addr v5, v1

    .line 5713
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v1, p7

    move-wide/from16 v13, v35

    goto :goto_dc5

    .line 5731
    :cond_e25
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5732
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5733
    const-string v1, "    TOTAL TIME: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5734
    invoke-static {v0, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5735
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5736
    invoke-virtual {v8, v5, v6, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5737
    move-object/from16 v13, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5738
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5739
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_e4e

    .line 5709
    :cond_e4a
    move-wide/from16 v35, v13

    move-object/from16 v13, v40

    .line 5742
    :goto_e4e
    new-instance v14, Landroid/os/BatteryStats$1;

    invoke-direct {v14, v8}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    .line 5757
    const-string v1, " realtime"

    if-gez p5, :cond_1077

    .line 5758
    nop

    .line 5759
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v2

    .line 5760
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_f53

    .line 5761
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5763
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e6f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_eb8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 5764
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 p7, v1

    move-object/from16 v1, v30

    check-cast v1, Landroid/os/BatteryStats$Timer;

    .line 5765
    move-object/from16 v30, v2

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-wide/from16 v3, v35

    move/from16 v2, p4

    invoke-static {v1, v3, v4, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v44

    .line 5766
    cmp-long v35, v44, v23

    if-lez v35, :cond_ead

    .line 5767
    new-instance v40, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v41, v6

    check-cast v41, Ljava/lang/String;

    const/16 v42, 0x0

    move-object/from16 v43, v1

    invoke-direct/range {v40 .. v45}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v1, v40

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5769
    :cond_ead
    move-object/from16 v1, p7

    move-wide/from16 v35, v3

    move-object/from16 v2, v30

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    goto :goto_e6f

    .line 5770
    :cond_eb8
    move/from16 v2, p4

    move-object/from16 p7, v1

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-wide/from16 v3, v35

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f46

    .line 5771
    invoke-static {v5, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5772
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  All kernel wake locks:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5773
    const/4 v1, 0x0

    :goto_ed4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_f36

    .line 5774
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$TimerEntry;

    .line 5775
    nop

    .line 5776
    move/from16 v30, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5777
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5778
    const-string v1, "  Kernel Wake lock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5779
    iget-object v1, v6, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5780
    iget-object v1, v6, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-wide/from16 v35, v3

    const/4 v4, 0x0

    const-string v6, ": "

    move-wide/from16 v45, v10

    move-object/from16 v40, v13

    move-object/from16 v62, v33

    move-object/from16 v10, v34

    move-object/from16 v11, v39

    move-object/from16 v13, p7

    move/from16 v33, v30

    move-object/from16 v30, v5

    move v5, v2

    move-wide/from16 v2, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5782
    move-wide v3, v2

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f23

    .line 5783
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5773
    :cond_f23
    add-int/lit8 v1, v33, 0x1

    move/from16 v2, p4

    move-object/from16 v34, v10

    move-object/from16 v39, v11

    move-object/from16 p7, v13

    move-object/from16 v5, v30

    move-object/from16 v13, v40

    move-wide/from16 v10, v45

    move-object/from16 v33, v62

    goto :goto_ed4

    .line 5788
    :cond_f36
    move-wide/from16 v45, v10

    move-object/from16 v40, v13

    move-object/from16 v62, v33

    move-object/from16 v10, v34

    move-object/from16 v11, v39

    move-object/from16 v13, p7

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_f5f

    .line 5770
    :cond_f46
    move-wide/from16 v45, v10

    move-object/from16 v40, v13

    move-object/from16 v62, v33

    move-object/from16 v10, v34

    move-object/from16 v11, v39

    move-object/from16 v13, p7

    goto :goto_f5f

    .line 5760
    :cond_f53
    move-object/from16 v62, v3

    move-wide/from16 v45, v10

    move-object/from16 v40, v13

    move-object/from16 v11, v39

    move-object v13, v1

    move-object v10, v4

    move-wide/from16 v3, v35

    .line 5792
    :goto_f5f
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_fd0

    .line 5793
    move-object/from16 v1, v26

    invoke-static {v1, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5794
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  All partial wake locks:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5795
    const/4 v2, 0x0

    :goto_f73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_fc1

    .line 5796
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$TimerEntry;

    .line 5797
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5798
    const-string v6, "  Wake lock "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5799
    iget v6, v5, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 5800
    move-object/from16 v6, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5801
    move-object/from16 v26, v1

    iget-object v1, v5, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5802
    iget-object v1, v5, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-wide/from16 v35, v3

    const/4 v4, 0x0

    const-string v6, ": "

    move/from16 v5, p4

    move-object/from16 v34, v10

    move-object/from16 v10, v27

    move/from16 v27, v2

    move-wide/from16 v2, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 5803
    move-wide v3, v2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5795
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v27, v10

    move-object/from16 v1, v26

    move-object/from16 v10, v34

    goto :goto_f73

    .line 5806
    :cond_fc1
    move/from16 v5, p4

    move-object/from16 v26, v1

    move-object/from16 v34, v10

    move-object/from16 v10, v27

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 5807
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_fd6

    .line 5792
    :cond_fd0
    move/from16 v5, p4

    move-object/from16 v34, v10

    move-object/from16 v10, v27

    .line 5810
    :goto_fd6
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    .line 5811
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1088

    .line 5812
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  All wakeup reasons:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5813
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5814
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ff5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_102f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 5815
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 p7, v1

    move-object/from16 v1, v26

    check-cast v1, Landroid/os/BatteryStats$Timer;

    .line 5816
    new-instance v47, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v48, v6

    check-cast v48, Ljava/lang/String;

    .line 5817
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    move-wide/from16 v35, v3

    int-to-long v3, v6

    const/16 v49, 0x0

    move-object/from16 v50, v1

    move-wide/from16 v51, v3

    invoke-direct/range {v47 .. v52}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    .line 5816
    move-object/from16 v1, v47

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5818
    move-object/from16 v1, p7

    move-wide/from16 v3, v35

    goto :goto_ff5

    .line 5819
    :cond_102f
    move-wide/from16 v35, v3

    invoke-static {v2, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5820
    const/4 v14, 0x0

    :goto_1035
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_1071

    .line 5821
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$TimerEntry;

    .line 5822
    nop

    .line 5823
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5824
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5825
    const-string v3, "  Wakeup reason "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5826
    iget-object v3, v1, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5827
    iget-object v1, v1, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v4, 0x0

    const-string v6, ": "

    move-object/from16 v26, v2

    move-wide/from16 v2, v35

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 5828
    move-wide v3, v2

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5829
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5820
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v35, v3

    move-object/from16 v2, v26

    goto :goto_1035

    .line 5831
    :cond_1071
    move-wide/from16 v3, v35

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_1088

    .line 5757
    :cond_1077
    move/from16 v5, p4

    move-object/from16 v62, v3

    move-object/from16 v34, v4

    move-wide/from16 v45, v10

    move-object/from16 v40, v13

    move-object/from16 v10, v27

    move-wide/from16 v3, v35

    move-object/from16 v11, v39

    move-object v13, v1

    .line 5835
    :cond_1088
    :goto_1088
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v1

    .line 5836
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-lez v2, :cond_10d4

    .line 5837
    const-string v2, "  Memory Stats"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5838
    const/4 v2, 0x0

    :goto_1098
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_10ce

    .line 5839
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5840
    const-string v6, "  Bandwidth "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5841
    move-object/from16 p7, v13

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5842
    const-string v6, " Time "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5843
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5844
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5838
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p7

    goto :goto_1098

    .line 5846
    :cond_10ce
    move-object/from16 p7, v13

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_10d6

    .line 5836
    :cond_10d4
    move-object/from16 p7, v13

    .line 5849
    :goto_10d6
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v1

    .line 5850
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1131

    .line 5851
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Resource Power Manager Stats"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5852
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1129

    .line 5853
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_10f6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1124

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5854
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5855
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Timer;

    .line 5856
    move-object v6, v1

    move-object v1, v0

    move-object v0, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v9

    move-object/from16 v26, v13

    move-wide/from16 v13, v28

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    .line 5857
    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-wide v2, v3

    move-object v7, v1

    move-wide v3, v2

    move-object/from16 v13, v26

    goto :goto_10f6

    .line 5853
    :cond_1124
    move-wide v2, v3

    move-object v1, v7

    move-wide/from16 v13, v28

    goto :goto_112d

    .line 5852
    :cond_1129
    move-wide v2, v3

    move-object v1, v7

    move-wide/from16 v13, v28

    .line 5859
    :goto_112d
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1135

    .line 5850
    :cond_1131
    move-wide v2, v3

    move-object v1, v7

    move-wide/from16 v13, v28

    .line 5877
    :goto_1135
    invoke-virtual {v8}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v4

    .line 5878
    if-eqz v4, :cond_1195

    .line 5879
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5880
    const-string v6, "  CPU scaling: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5881
    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v6

    array-length v7, v6

    move-object/from16 v26, v6

    const/4 v6, 0x0

    :goto_114c
    if-ge v6, v7, :cond_118c

    move/from16 v27, v6

    aget v6, v26, v27

    .line 5882
    move/from16 v28, v7

    const-string v7, " policy"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v29, v10

    const/16 v10, 0x3a

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5883
    invoke-virtual {v4, v6}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v6

    array-length v7, v6

    const/4 v10, 0x0

    :goto_116b
    if-ge v10, v7, :cond_1183

    move-object/from16 v30, v4

    aget v4, v6, v10

    .line 5884
    move-object/from16 v33, v6

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5883
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v30

    move-object/from16 v6, v33

    goto :goto_116b

    .line 5881
    :cond_1183
    move-object/from16 v30, v4

    add-int/lit8 v6, v27, 0x1

    move/from16 v7, v28

    move-object/from16 v10, v29

    goto :goto_114c

    .line 5888
    :cond_118c
    move-object/from16 v29, v10

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5889
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1197

    .line 5878
    :cond_1195
    move-object/from16 v29, v10

    .line 5892
    :goto_1197
    const/4 v10, 0x0

    :goto_1198
    move/from16 v7, p6

    if-ge v10, v7, :cond_207f

    .line 5893
    move-object/from16 v4, p1

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 5894
    if-ltz p5, :cond_11d0

    move/from16 p6, v7

    move/from16 v7, p5

    if-eq v6, v7, :cond_11d2

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_11d2

    .line 5895
    move-object/from16 v28, p7

    move-wide/from16 v35, v2

    move-object/from16 v25, v4

    move-object v6, v9

    move/from16 v26, v10

    move-object/from16 v39, v11

    move-object/from16 v30, v12

    move-wide/from16 v55, v13

    move-object/from16 v41, v15

    move-wide/from16 v12, v21

    move-object/from16 v27, v29

    move-object/from16 v10, v34

    move-object/from16 v11, v62

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v31, 0x1

    move-object v4, v1

    move v9, v5

    goto/16 :goto_205f

    .line 5894
    :cond_11d0
    move/from16 p6, v7

    .line 5898
    :cond_11d2
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    .line 5900
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5901
    move-object/from16 p1, v4

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5902
    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5903
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5904
    nop

    .line 5906
    move/from16 v26, v10

    move-object/from16 v39, v11

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    .line 5907
    move-wide/from16 v27, v13

    const/4 v4, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 5908
    move-object/from16 v30, v12

    move-wide/from16 v35, v13

    const/4 v4, 0x2

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 5909
    const/4 v4, 0x3

    move-wide/from16 v37, v12

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 5910
    const/4 v4, 0x4

    move-wide/from16 v41, v12

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 5911
    move-wide/from16 v43, v12

    const/4 v14, 0x5

    invoke-virtual {v7, v14, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v12

    .line 5913
    move-object/from16 v25, v15

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 5914
    move-wide/from16 v47, v12

    const/4 v4, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 5915
    move-wide/from16 v49, v12

    const/4 v4, 0x2

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 5916
    const/4 v4, 0x3

    move-wide/from16 v51, v12

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 5918
    move-wide/from16 v53, v12

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v12

    .line 5919
    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v4

    .line 5921
    move-wide/from16 v55, v12

    invoke-virtual {v7, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v12

    .line 5922
    move-wide/from16 v57, v12

    invoke-virtual {v7, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v12

    .line 5923
    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v6

    .line 5924
    move-wide/from16 v63, v12

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v12

    .line 5926
    move/from16 v59, v12

    invoke-virtual {v7, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v12

    .line 5927
    move-wide/from16 v65, v12

    invoke-virtual {v7, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v12

    .line 5928
    move-wide/from16 v67, v12

    invoke-virtual {v7, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v12

    .line 5930
    move-wide/from16 v69, v2

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v2

    .line 5931
    move-wide/from16 v71, v12

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v12

    .line 5933
    cmp-long v73, v10, v23

    if-gtz v73, :cond_1287

    cmp-long v73, v35, v23

    if-gtz v73, :cond_1287

    cmp-long v73, v14, v23

    if-gtz v73, :cond_1287

    cmp-long v73, v49, v23

    if-lez v73, :cond_1284

    goto :goto_1287

    :cond_1284
    move-wide/from16 v10, v49

    goto :goto_12bb

    .line 5935
    :cond_1287
    :goto_1287
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Mobile network: "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5936
    invoke-virtual {v8, v10, v11}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " received, "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5937
    move-wide/from16 v10, v35

    invoke-virtual {v8, v10, v11}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5938
    const-string v5, " sent (packets "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 5939
    const-string v5, " received, "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v10, v49

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, " sent)"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5941
    :goto_12bb
    cmp-long v5, v55, v23

    if-gtz v5, :cond_12cf

    if-lez v4, :cond_12c2

    goto :goto_12cf

    :cond_12c2
    move/from16 v35, v6

    move-object/from16 v11, v25

    move-wide/from16 v55, v27

    move-object/from16 v10, v30

    move-wide/from16 v27, v12

    move-object/from16 v12, v39

    goto :goto_1331

    .line 5942
    :cond_12cf
    :goto_12cf
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5943
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Mobile radio active: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5944
    move/from16 v35, v6

    div-long v5, v55, v17

    invoke-static {v0, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5945
    move-wide/from16 v49, v10

    move-object/from16 v10, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5946
    move-wide/from16 v73, v14

    move-wide/from16 v14, v27

    move-wide/from16 v27, v12

    move-wide/from16 v11, v55

    invoke-virtual {v8, v11, v12, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5947
    move-object/from16 v11, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5948
    add-long v49, v73, v49

    .line 5949
    cmp-long v4, v49, v23

    if-nez v4, :cond_1312

    .line 5950
    const-wide/16 v49, 0x1

    move-wide/from16 v55, v14

    move-wide/from16 v13, v49

    goto :goto_1316

    .line 5949
    :cond_1312
    move-wide/from16 v55, v14

    move-wide/from16 v13, v49

    .line 5952
    :goto_1316
    const-string v4, " @ "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5953
    long-to-double v4, v5

    long-to-double v13, v13

    div-double/2addr v4, v13

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5954
    const-string v4, " mspp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5955
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5958
    :goto_1331
    cmp-long v4, v2, v23

    if-lez v4, :cond_134b

    .line 5959
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5960
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5961
    const-string v4, "    Mobile radio AP wakeups: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5962
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5963
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5966
    :cond_134b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5967
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 5966
    const-string v4, "Cellular"

    move/from16 v6, p4

    move-object v2, v0

    move-object v0, v8

    move/from16 v15, v35

    move-wide/from16 v13, v69

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 5969
    cmp-long v3, v37, v23

    if-gtz v3, :cond_1381

    cmp-long v3, v41, v23

    if-gtz v3, :cond_1381

    cmp-long v3, v51, v23

    if-gtz v3, :cond_1381

    cmp-long v3, v53, v23

    if-lez v3, :cond_13b9

    .line 5970
    :cond_1381
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Wi-Fi network: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5971
    move-wide/from16 v3, v37

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " received, "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5972
    move-wide/from16 v3, v41

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5973
    const-string v3, " sent (packets "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v51

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 5974
    const-string v3, " received, "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v53

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, " sent)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5977
    :cond_13b9
    cmp-long v3, v57, v23

    if-nez v3, :cond_13d6

    cmp-long v3, v63, v23

    if-nez v3, :cond_13d6

    if-nez v15, :cond_13d6

    if-nez v59, :cond_13d6

    cmp-long v3, v65, v23

    if-nez v3, :cond_13d6

    cmp-long v3, v67, v23

    if-nez v3, :cond_13d6

    cmp-long v3, v71, v23

    if-eqz v3, :cond_13d2

    goto :goto_13d6

    :cond_13d2
    move-object/from16 p1, v7

    goto/16 :goto_1499

    .line 5980
    :cond_13d6
    :goto_13d6
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5981
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Wifi Running: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5982
    div-long v3, v71, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5983
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v45

    move-wide/from16 v5, v71

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5984
    const-string v5, ")\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5985
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Full Wifi Lock: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5986
    div-long v5, v57, v17

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5987
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v57

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5988
    const-string v5, ")\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5989
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Wifi Scan (blamed): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5990
    div-long v5, v63, v17

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5991
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v63

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5992
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5993
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5994
    const-string/jumbo v5, "x\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5996
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Wifi Scan (actual): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5997
    div-long v5, v65, v17

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5998
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5999
    const/4 v5, 0x0

    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v3

    .line 5998
    move-wide/from16 v5, v65

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6000
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6001
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6002
    const-string/jumbo v3, "x\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6003
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Background Wifi Scan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6004
    div-long v3, v67, v17

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6005
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6006
    const/4 v3, 0x0

    invoke-virtual {v0, v13, v14, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    .line 6005
    move-object/from16 p1, v7

    move-wide/from16 v6, v67

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6007
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6008
    move/from16 v3, v59

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6009
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6010
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6013
    :goto_1499
    cmp-long v3, v27, v23

    if-lez v3, :cond_14b5

    .line 6014
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6015
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6016
    const-string v3, "    WiFi AP wakeups: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6017
    move-wide/from16 v3, v27

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6018
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6021
    :cond_14b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6022
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 6021
    const-string v4, "WiFi"

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 6024
    move-object v15, v0

    move-object v7, v1

    move-object v0, v2

    move v5, v6

    cmp-long v1, v43, v23

    if-gtz v1, :cond_14df

    cmp-long v1, v47, v23

    if-lez v1, :cond_1503

    .line 6025
    :cond_14df
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    Bluetooth network: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6026
    move-wide/from16 v1, v43

    invoke-virtual {v15, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " received, "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6027
    move-wide/from16 v1, v47

    invoke-virtual {v15, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6028
    const-string v1, " sent"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6031
    :cond_1503
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 6032
    const-string v2, "\n"

    const-string v3, " times)"

    if-eqz v1, :cond_16c1

    .line 6034
    invoke-virtual {v1, v13, v14, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v27

    add-long v27, v27, v19

    move-object/from16 v41, v11

    move-object/from16 v39, v12

    div-long v11, v27, v17

    .line 6036
    cmp-long v4, v11, v23

    if-eqz v4, :cond_16b7

    .line 6037
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 6038
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6039
    if-eqz v6, :cond_1532

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v25

    move/from16 v85, v25

    move-object/from16 v25, v8

    move/from16 v8, v85

    goto :goto_1535

    :cond_1532
    move-object/from16 v25, v8

    const/4 v8, 0x0

    .line 6041
    :goto_1535
    move/from16 v27, v8

    move-wide/from16 v35, v13

    move-wide/from16 v13, v60

    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v7

    .line 6042
    if-eqz v6, :cond_1548

    .line 6043
    invoke-virtual {v6, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v37

    move-wide/from16 v75, v37

    goto :goto_154a

    :cond_1548
    move-wide/from16 v75, v23

    .line 6045
    :goto_154a
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v28

    if-eqz v28, :cond_155b

    .line 6046
    move-object/from16 v28, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v1

    goto :goto_155e

    :cond_155b
    move-object/from16 v28, v1

    const/4 v1, 0x0

    .line 6047
    :goto_155e
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v30

    if-eqz v30, :cond_156f

    .line 6048
    move-object/from16 v30, v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_1572

    :cond_156f
    move-object/from16 v30, v6

    const/4 v6, 0x0

    .line 6050
    :goto_1572
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 6051
    if-eqz v15, :cond_157f

    .line 6052
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v37

    move-wide/from16 v77, v37

    goto :goto_1581

    :cond_157f
    move-wide/from16 v77, v23

    .line 6053
    :goto_1581
    if-eqz v15, :cond_158a

    .line 6054
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v37

    move-wide/from16 v79, v37

    goto :goto_158c

    :cond_158a
    move-wide/from16 v79, v23

    .line 6056
    :goto_158c
    nop

    .line 6057
    move-object/from16 v37, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 6058
    if-eqz v15, :cond_159c

    .line 6059
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v42

    move-wide/from16 v81, v42

    goto :goto_159e

    :cond_159c
    move-wide/from16 v81, v23

    .line 6060
    :goto_159e
    if-eqz v15, :cond_15a9

    .line 6061
    invoke-virtual {v15, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v42

    move-wide/from16 v60, v13

    move-wide/from16 v13, v42

    goto :goto_15ad

    :cond_15a9
    move-wide/from16 v60, v13

    move-wide/from16 v13, v23

    .line 6063
    :goto_15ad
    move-object/from16 v38, v15

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6064
    cmp-long v15, v7, v11

    if-eqz v15, :cond_15dc

    .line 6065
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6066
    const-string v15, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6067
    invoke-static {v0, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6068
    move-object/from16 v11, v62

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6069
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6070
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6071
    invoke-virtual/range {v28 .. v28}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v12

    if-eqz v12, :cond_15d8

    .line 6072
    const-string v12, " (currently running)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6074
    :cond_15d8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15de

    .line 6064
    :cond_15dc
    move-object/from16 v11, v62

    .line 6077
    :goto_15de
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6078
    const-string v12, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6079
    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6080
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6081
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6082
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6083
    invoke-virtual/range {v28 .. v28}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v4

    if-eqz v4, :cond_15fd

    .line 6084
    const-string v4, " (currently running)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6086
    :cond_15fd
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6087
    move-wide/from16 v7, v75

    cmp-long v4, v7, v23

    if-gtz v4, :cond_1608

    if-lez v27, :cond_162e

    .line 6088
    :cond_1608
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6089
    const-string v4, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6090
    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6091
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6092
    move/from16 v4, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6093
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6094
    if-eqz v30, :cond_162b

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v4

    if-eqz v4, :cond_162b

    .line 6095
    const-string v4, " (currently running in background)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6097
    :cond_162b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6100
    :cond_162e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6101
    const-string v4, "    Bluetooth Scan Results: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6103
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6104
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6105
    const-string v1, " in background)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6107
    move-wide/from16 v6, v77

    cmp-long v1, v6, v23

    if-gtz v1, :cond_1655

    move-object v1, v3

    move-wide/from16 v3, v81

    cmp-long v8, v3, v23

    if-lez v8, :cond_1652

    goto :goto_1658

    :cond_1652
    move-object/from16 v8, v40

    goto :goto_16ac

    :cond_1655
    move-object v1, v3

    move-wide/from16 v3, v81

    .line 6108
    :goto_1658
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6109
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6110
    const-string v8, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6111
    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6112
    const-string v6, " (max "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6113
    move-wide/from16 v6, v79

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6114
    move-object/from16 v8, v40

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6115
    if-eqz v37, :cond_1682

    .line 6116
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_1682

    .line 6117
    const-string v6, " (currently running unoptimized)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6119
    :cond_1682
    if-eqz v38, :cond_16ac

    cmp-long v6, v3, v23

    if-lez v6, :cond_16ac

    .line 6120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6121
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6122
    const-string v6, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6123
    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6124
    const-string v3, " (max "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6125
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6126
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6127
    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_16ac

    .line 6128
    const-string v3, " (currently running unoptimized in background)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6132
    :cond_16ac
    :goto_16ac
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, p2

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6133
    const/4 v3, 0x1

    goto :goto_16cf

    .line 6036
    :cond_16b7
    move-object v1, v3

    move-object/from16 v25, v8

    move-wide/from16 v35, v13

    move-object/from16 v8, v40

    move-object/from16 v11, v62

    goto :goto_16ce

    .line 6032
    :cond_16c1
    move-object v1, v3

    move-object/from16 v25, v8

    move-object/from16 v41, v11

    move-object/from16 v39, v12

    move-wide/from16 v35, v13

    move-object/from16 v8, v40

    move-object/from16 v11, v62

    .line 6139
    :goto_16ce
    const/4 v3, 0x0

    :goto_16cf
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v4

    const-string v12, ", "

    if-eqz v4, :cond_171d

    .line 6140
    nop

    .line 6141
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_16da
    sget v13, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v4, v13, :cond_170f

    .line 6142
    move-object/from16 v13, p1

    invoke-virtual {v13, v4, v5}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v14

    .line 6143
    if-eqz v14, :cond_1706

    .line 6144
    if-nez v6, :cond_16f3

    .line 6145
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6146
    const-string v6, "    User activity: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6147
    const/4 v6, 0x1

    goto :goto_16f6

    .line 6149
    :cond_16f3
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6151
    :goto_16f6
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6152
    move-object/from16 v14, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6153
    sget-object v15, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1708

    .line 6143
    :cond_1706
    move-object/from16 v14, v29

    .line 6141
    :goto_1708
    add-int/lit8 v4, v4, 0x1

    move-object/from16 p1, v13

    move-object/from16 v29, v14

    goto :goto_16da

    .line 6156
    :cond_170f
    move-object/from16 v13, p1

    move-object/from16 v14, v29

    if-eqz v6, :cond_1721

    .line 6157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1721

    .line 6139
    :cond_171d
    move-object/from16 v13, p1

    move-object/from16 v14, v29

    .line 6161
    :cond_1721
    :goto_1721
    nop

    .line 6162
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v15

    .line 6163
    nop

    .line 6164
    nop

    .line 6165
    nop

    .line 6166
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/16 v31, 0x1

    add-int/lit8 v4, v4, -0x1

    move v6, v3

    move v3, v4

    move-object/from16 v30, v10

    move-object/from16 v62, v11

    move-object/from16 p1, v13

    move-object/from16 v27, v14

    move-wide/from16 v10, v23

    move-wide v13, v10

    move-wide/from16 v28, v13

    move-wide/from16 v37, v28

    const/4 v4, 0x0

    :goto_1743
    if-ltz v3, :cond_1811

    .line 6167
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 6168
    nop

    .line 6169
    move-object/from16 v40, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6170
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6171
    const-string v1, "    Wake lock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6172
    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6173
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v42

    move v1, v4

    const-string v4, "full"

    move-object/from16 v43, v6

    const-string v6, ": "

    move-object/from16 v83, v2

    move-object/from16 v84, v40

    move-object/from16 v40, v8

    move v8, v1

    move-object/from16 v1, v42

    move-wide/from16 v85, v35

    move/from16 v35, v3

    move-object/from16 v36, v15

    move-wide/from16 v2, v85

    move-object/from16 v15, v43

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6175
    move-wide v3, v2

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 6176
    move-wide v2, v3

    const-string/jumbo v4, "partial"

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6178
    move-wide v3, v2

    if-eqz v1, :cond_179e

    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_179f

    :cond_179e
    const/4 v1, 0x0

    :goto_179f
    move-wide v2, v3

    const-string v4, "background partial"

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6180
    move-wide v3, v2

    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    move-wide v2, v3

    const-string/jumbo v4, "window"

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6182
    move-wide v3, v2

    const/16 v1, 0x12

    invoke-virtual {v15, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    move-wide v2, v3

    const-string v4, "draw"

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 6184
    move-wide v3, v2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6186
    nop

    .line 6187
    add-int/lit8 v2, v8, 0x1

    .line 6189
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v8

    invoke-static {v8, v3, v4, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v42

    add-long v10, v10, v42

    .line 6191
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    invoke-static {v6, v3, v4, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v42

    add-long v28, v28, v42

    .line 6193
    const/4 v6, 0x2

    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v8

    invoke-static {v8, v3, v4, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v42

    add-long v37, v37, v42

    .line 6195
    const/16 v6, 0x12

    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    invoke-static {v6, v3, v4, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v42

    add-long v13, v13, v42

    .line 6166
    add-int/lit8 v6, v35, -0x1

    move-object/from16 v15, v36

    move-object/from16 v8, v40

    move-object/from16 v1, v84

    move-wide/from16 v35, v3

    move v3, v6

    const/4 v6, 0x1

    move v4, v2

    move-object/from16 v2, v83

    goto/16 :goto_1743

    .line 6198
    :cond_1811
    move-object/from16 v84, v1

    move-object/from16 v83, v2

    move-object/from16 v40, v8

    move-object/from16 v1, p7

    move v8, v4

    move-wide/from16 v3, v35

    const/4 v2, 0x1

    if-le v8, v2, :cond_18ee

    .line 6201
    nop

    .line 6202
    nop

    .line 6203
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_1848

    .line 6204
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 6206
    nop

    .line 6207
    move-wide/from16 v35, v3

    move-wide/from16 v3, v60

    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v42

    .line 6208
    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 6209
    if-eqz v2, :cond_183f

    .line 6210
    invoke-virtual {v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v47

    goto :goto_1841

    :cond_183f
    move-wide/from16 v47, v23

    :goto_1841
    move-wide/from16 v60, v3

    move-wide/from16 v2, v42

    move-wide/from16 v4, v47

    goto :goto_184f

    .line 6203
    :cond_1848
    move-wide/from16 v35, v3

    move-wide/from16 v3, v60

    move-wide/from16 v2, v23

    move-wide v4, v2

    .line 6213
    :goto_184f
    cmp-long v8, v2, v23

    if-nez v8, :cond_1863

    cmp-long v15, v4, v23

    if-nez v15, :cond_1863

    cmp-long v15, v10, v23

    if-nez v15, :cond_1863

    cmp-long v15, v28, v23

    if-nez v15, :cond_1863

    cmp-long v15, v37, v23

    if-eqz v15, :cond_18f0

    .line 6216
    :cond_1863
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6217
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6218
    const-string v15, "    TOTAL wake: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6219
    nop

    .line 6220
    cmp-long v15, v10, v23

    if-eqz v15, :cond_187f

    .line 6221
    nop

    .line 6222
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6223
    const-string v10, "full"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    goto :goto_1880

    .line 6220
    :cond_187f
    const/4 v10, 0x0

    .line 6225
    :goto_1880
    cmp-long v11, v28, v23

    if-eqz v11, :cond_1895

    .line 6226
    if-eqz v10, :cond_1889

    .line 6227
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6229
    :cond_1889
    nop

    .line 6230
    move-wide/from16 v10, v28

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6231
    const-string v10, "blamed partial"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    .line 6233
    :cond_1895
    if-eqz v8, :cond_18a6

    .line 6234
    if-eqz v10, :cond_189c

    .line 6235
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6237
    :cond_189c
    nop

    .line 6238
    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6239
    const-string v2, "actual partial"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    .line 6241
    :cond_18a6
    cmp-long v2, v4, v23

    if-eqz v2, :cond_18b9

    .line 6242
    if-eqz v10, :cond_18af

    .line 6243
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6245
    :cond_18af
    nop

    .line 6246
    invoke-static {v0, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6247
    const-string v2, "actual background partial"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    .line 6249
    :cond_18b9
    cmp-long v2, v37, v23

    if-eqz v2, :cond_18cf

    .line 6250
    if-eqz v10, :cond_18c2

    .line 6251
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6253
    :cond_18c2
    nop

    .line 6254
    move-wide/from16 v2, v37

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6255
    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    .line 6257
    :cond_18cf
    cmp-long v2, v13, v23

    if-eqz v2, :cond_18e3

    .line 6258
    if-eqz v10, :cond_18da

    .line 6259
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6261
    :cond_18da
    nop

    .line 6262
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6263
    const-string v2, "draw"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6265
    :cond_18e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18f0

    .line 6198
    :cond_18ee
    move-wide/from16 v35, v3

    .line 6271
    :cond_18f0
    :goto_18f0
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 6272
    if-eqz v2, :cond_192e

    .line 6273
    move/from16 v5, p4

    move-wide/from16 v3, v35

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    .line 6274
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 6276
    cmp-long v8, v10, v23

    if-lez v8, :cond_1932

    .line 6277
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6278
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6279
    const-string v8, "    WiFi Multicast Wakelock"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6280
    const-string v8, " count = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6282
    const-string v2, " time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6283
    add-long v10, v10, v19

    div-long v10, v10, v17

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 6284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1932

    .line 6272
    :cond_192e
    move/from16 v5, p4

    move-wide/from16 v3, v35

    .line 6288
    :cond_1932
    :goto_1932
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6289
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/16 v31, 0x1

    add-int/lit8 v8, v8, -0x1

    :goto_193e
    if-ltz v8, :cond_19d0

    .line 6290
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    .line 6292
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    add-long v13, v13, v19

    div-long v13, v13, v17

    .line 6293
    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v11

    .line 6294
    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6295
    if-eqz v6, :cond_1960

    .line 6296
    move v15, v11

    move-wide/from16 v10, v60

    invoke-virtual {v6, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    goto :goto_1965

    :cond_1960
    move v15, v11

    move-wide/from16 v10, v60

    const-wide/16 v28, -0x1

    :goto_1965
    move-wide/from16 v10, v28

    .line 6297
    if-eqz v6, :cond_196e

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    goto :goto_196f

    :cond_196e
    const/4 v6, -0x1

    .line 6298
    :goto_196f
    move-object/from16 v28, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6299
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6300
    const-string v1, "    Sync "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6301
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6302
    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6303
    cmp-long v29, v13, v23

    if-eqz v29, :cond_19b6

    .line 6304
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6305
    const-string/jumbo v13, "realtime ("

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6306
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6307
    move-object/from16 v13, v84

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6308
    cmp-long v14, v10, v23

    if-lez v14, :cond_19bd

    .line 6309
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6310
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6311
    const-string v10, "background ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6312
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6313
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19bd

    .line 6316
    :cond_19b6
    move-object/from16 v13, v84

    const-string v6, "(not used)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6318
    :cond_19bd
    :goto_19bd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6319
    nop

    .line 6289
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v34, v1

    move-object/from16 v84, v13

    move-object/from16 v1, v28

    const/4 v6, 0x1

    goto/16 :goto_193e

    .line 6322
    :cond_19d0
    move-object/from16 v28, v1

    move-object/from16 v1, v34

    move-object/from16 v13, v84

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6323
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/16 v31, 0x1

    add-int/lit8 v8, v8, -0x1

    move v10, v6

    :goto_19e3
    if-ltz v8, :cond_1a6b

    .line 6324
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    .line 6326
    invoke-virtual {v6, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    add-long v10, v10, v19

    div-long v10, v10, v17

    .line 6327
    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    .line 6328
    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 6329
    if-eqz v6, :cond_1a06

    .line 6330
    move-wide/from16 v35, v3

    move-wide/from16 v3, v60

    invoke-virtual {v6, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v37

    goto :goto_1a0c

    :cond_1a06
    move-wide/from16 v35, v3

    move-wide/from16 v3, v60

    const-wide/16 v37, -0x1

    :goto_1a0c
    move-wide/from16 v3, v37

    .line 6331
    if-eqz v6, :cond_1a15

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    goto :goto_1a16

    :cond_1a15
    const/4 v6, -0x1

    .line 6332
    :goto_1a16
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6333
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6334
    const-string v15, "    Job "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6335
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6336
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6337
    cmp-long v15, v10, v23

    if-eqz v15, :cond_1a57

    .line 6338
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6339
    const-string/jumbo v10, "realtime ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6340
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6341
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6342
    cmp-long v10, v3, v23

    if-lez v10, :cond_1a5c

    .line 6343
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6344
    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6345
    const-string v3, "background ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6346
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6347
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a5c

    .line 6350
    :cond_1a57
    const-string v3, "(not used)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6352
    :cond_1a5c
    :goto_1a5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6353
    nop

    .line 6323
    add-int/lit8 v8, v8, -0x1

    move-wide/from16 v3, v35

    const/4 v10, 0x1

    goto/16 :goto_19e3

    .line 6356
    :cond_1a6b
    move-wide/from16 v35, v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6357
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v31, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_1a79
    if-ltz v3, :cond_1ad8

    .line 6358
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    .line 6359
    if-eqz v4, :cond_1acd

    .line 6360
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6361
    const-string v6, "    Job Completions "

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6362
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6363
    const-string v6, ":"

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6364
    const/4 v6, 0x0

    :goto_1a9a
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_1ac5

    .line 6365
    move-object/from16 v14, v27

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6366
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6367
    move-object/from16 v8, v30

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6368
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 6369
    const-string/jumbo v11, "x)"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6364
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a9a

    .line 6371
    :cond_1ac5
    move-object/from16 v14, v27

    move-object/from16 v8, v30

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    goto :goto_1ad1

    .line 6359
    :cond_1acd
    move-object/from16 v14, v27

    move-object/from16 v8, v30

    .line 6357
    :goto_1ad1
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v30, v8

    move-object/from16 v27, v14

    goto :goto_1a79

    .line 6375
    :cond_1ad8
    move-object/from16 v14, v27

    move-object/from16 v8, v30

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v5}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    .line 6376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1af3

    .line 6377
    const-string v3, "    Jobs deferred on launch "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6380
    :cond_1af3
    move-object v3, v2

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Flashlight"

    move/from16 v11, p6

    move-object v15, v3

    move-object/from16 v30, v8

    move-object v6, v9

    move/from16 p1, v10

    move-wide/from16 v3, v35

    move-wide/from16 v8, v60

    move-object v10, v1

    move-object v1, v0

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    or-int v27, p1, v2

    .line 6382
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Camera"

    move-object/from16 v6, p3

    move/from16 v5, p4

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    or-int v27, v27, v2

    .line 6384
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Video"

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    or-int v27, v27, v2

    .line 6386
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Audio"

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v85, v1

    move-object v1, v0

    move-object/from16 v0, v85

    or-int v2, v27, v2

    .line 6389
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    .line 6390
    move/from16 p1, v2

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6391
    move/from16 v27, p1

    const/4 v11, 0x0

    :goto_1b53
    if-ge v11, v2, :cond_1c23

    .line 6392
    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/BatteryStats$Uid$Sensor;

    .line 6393
    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->keyAt(I)I

    .line 6394
    move/from16 p1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6395
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6396
    const-string v2, "    Sensor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6397
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v2

    .line 6398
    const/16 v6, -0x2710

    if-ne v2, v6, :cond_1b7a

    .line 6399
    const-string v2, "GPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b7d

    .line 6401
    :cond_1b7a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6403
    :goto_1b7d
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6405
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 6406
    if-eqz v2, :cond_1bf8

    .line 6408
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v34

    add-long v34, v34, v19

    move-wide/from16 v47, v3

    div-long v3, v34, v17

    .line 6410
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    .line 6411
    move-object/from16 p7, v7

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 6412
    if-eqz v7, :cond_1ba3

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v27

    move/from16 v5, v27

    goto :goto_1ba4

    :cond_1ba3
    const/4 v5, 0x0

    .line 6414
    :goto_1ba4
    move-object/from16 v34, v10

    move/from16 v29, v11

    invoke-virtual {v2, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    .line 6415
    if-eqz v7, :cond_1bb7

    .line 6416
    invoke-virtual {v7, v8, v9}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v35

    move-wide/from16 v60, v8

    move-wide/from16 v7, v35

    goto :goto_1bbb

    :cond_1bb7
    move-wide/from16 v60, v8

    move-wide/from16 v7, v23

    .line 6419
    :goto_1bbb
    cmp-long v2, v3, v23

    if-eqz v2, :cond_1bf2

    .line 6420
    cmp-long v2, v10, v3

    if-eqz v2, :cond_1bcb

    .line 6421
    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6422
    const-string v2, "blamed realtime, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6425
    :cond_1bcb
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6426
    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6427
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6428
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6430
    cmp-long v2, v7, v23

    if-nez v2, :cond_1be0

    if-lez v5, :cond_1bf7

    .line 6431
    :cond_1be0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6432
    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6433
    const-string v2, "background ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6434
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6435
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1bf7

    .line 6438
    :cond_1bf2
    const-string v2, "(not used)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6440
    :cond_1bf7
    :goto_1bf7
    goto :goto_1c07

    .line 6441
    :cond_1bf8
    move-wide/from16 v47, v3

    move-object/from16 p7, v7

    move-wide/from16 v60, v8

    move-object/from16 v34, v10

    move/from16 v29, v11

    const-string v2, "(not used)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6444
    :goto_1c07
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6445
    nop

    .line 6391
    add-int/lit8 v11, v29, 0x1

    move/from16 v2, p1

    move-object/from16 v6, p3

    move/from16 v5, p4

    move-object/from16 v7, p7

    move-object/from16 v10, v34

    move-wide/from16 v3, v47

    move-wide/from16 v8, v60

    const/16 v27, 0x1

    goto/16 :goto_1b53

    .line 6448
    :cond_1c23
    move-wide/from16 v47, v3

    move-wide/from16 v60, v8

    move-object/from16 v34, v10

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Vibrator"

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v6, p3

    move/from16 v5, p4

    move-wide/from16 v3, v47

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    or-int v8, v27, v2

    .line 6450
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Foreground activities"

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object v0, v1

    or-int/2addr v8, v2

    .line 6452
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v7, "Foreground services"

    move-object/from16 v0, p2

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v85, v1

    move-object v1, v0

    move-object/from16 v0, v85

    or-int/2addr v2, v8

    .line 6455
    nop

    .line 6456
    move-wide/from16 v8, v23

    const/4 v7, 0x0

    :goto_1c63
    const/4 v10, 0x7

    if-ge v7, v10, :cond_1c99

    .line 6457
    invoke-virtual {v15, v7, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v10

    .line 6458
    cmp-long v13, v10, v23

    if-lez v13, :cond_1c96

    .line 6459
    add-long/2addr v8, v10

    .line 6460
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6461
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6462
    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6463
    sget-object v2, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6464
    const-string v2, " for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6465
    add-long v10, v10, v19

    div-long v10, v10, v17

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6467
    const/4 v2, 0x1

    .line 6456
    :cond_1c96
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c63

    .line 6470
    :cond_1c99
    cmp-long v7, v8, v23

    if-lez v7, :cond_1cb7

    .line 6471
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6472
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6473
    const-string v7, "    Total running: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6474
    add-long v8, v8, v19

    div-long v8, v8, v17

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6478
    :cond_1cb7
    invoke-virtual {v15, v5}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v7

    .line 6479
    invoke-virtual {v15, v5}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v9

    .line 6480
    cmp-long v11, v7, v23

    if-gtz v11, :cond_1cc7

    cmp-long v11, v9, v23

    if-lez v11, :cond_1cea

    .line 6481
    :cond_1cc7
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6482
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6483
    const-string v11, "    Total cpu time: u="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6484
    div-long v7, v7, v17

    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6485
    const-string/jumbo v7, "s="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6486
    div-long v9, v9, v17

    invoke-static {v0, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6490
    :cond_1cea
    invoke-virtual {v15, v5}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v7

    .line 6491
    if-eqz v7, :cond_1d12

    .line 6492
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6493
    const-string v8, "    Total cpu time per freq:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6494
    const/4 v8, 0x0

    :goto_1cfa
    array-length v9, v7

    if-ge v8, v9, :cond_1d0b

    .line 6495
    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v7, v8

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6494
    add-int/lit8 v8, v8, 0x1

    goto :goto_1cfa

    .line 6497
    :cond_1d0b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6499
    :cond_1d12
    invoke-virtual {v15, v5}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v7

    .line 6500
    if-eqz v7, :cond_1d3a

    .line 6501
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6502
    const-string v8, "    Total screen-off cpu time per freq:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6503
    const/4 v8, 0x0

    :goto_1d22
    array-length v9, v7

    if-ge v8, v9, :cond_1d33

    .line 6504
    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v7, v8

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6503
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d22

    .line 6506
    :cond_1d33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6509
    :cond_1d3a
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v7

    new-array v8, v7, [J

    .line 6510
    const/4 v9, 0x0

    :goto_1d45
    const/4 v10, 0x7

    if-ge v9, v10, :cond_1dc7

    .line 6511
    invoke-virtual {v15, v8, v9}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v10

    if-eqz v10, :cond_1d88

    .line 6512
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6513
    const-string v10, "    Cpu times per freq at state "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v9

    .line 6514
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3a

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6515
    const/4 v10, 0x0

    :goto_1d66
    if-ge v10, v7, :cond_1d7c

    .line 6516
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 p1, v2

    move-wide/from16 v35, v3

    aget-wide v2, v8, v10

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6515
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p1

    move-wide/from16 v3, v35

    goto :goto_1d66

    .line 6518
    :cond_1d7c
    move/from16 p1, v2

    move-wide/from16 v35, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d8c

    .line 6511
    :cond_1d88
    move/from16 p1, v2

    move-wide/from16 v35, v3

    .line 6521
    :goto_1d8c
    invoke-virtual {v15, v8, v9}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v2

    if-eqz v2, :cond_1dbf

    .line 6522
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6523
    const-string v2, "   Screen-off cpu times per freq at state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v9

    .line 6524
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6525
    const/4 v2, 0x0

    :goto_1daa
    if-ge v2, v7, :cond_1db8

    .line 6526
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v10, v8, v2

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6525
    add-int/lit8 v2, v2, 0x1

    goto :goto_1daa

    .line 6528
    :cond_1db8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6510
    :cond_1dbf
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p1

    move-wide/from16 v3, v35

    goto/16 :goto_1d45

    .line 6532
    :cond_1dc7
    move/from16 p1, v2

    move-wide/from16 v35, v3

    .line 6533
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6534
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/16 v31, 0x1

    add-int/lit8 v3, v3, -0x1

    move/from16 v4, p1

    :goto_1dd9
    if-ltz v3, :cond_1f2c

    .line 6535
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Proc;

    .line 6542
    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    .line 6543
    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v10

    .line 6544
    move-object/from16 v27, v14

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v13

    .line 6545
    move/from16 p1, v4

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v4

    .line 6546
    move-object/from16 p7, v15

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v15

    .line 6547
    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v1

    .line 6548
    if-nez v5, :cond_1e08

    .line 6549
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v29

    move/from16 v5, v29

    goto :goto_1e09

    :cond_1e08
    const/4 v5, 0x0

    .line 6551
    :goto_1e09
    cmp-long v29, v8, v23

    if-nez v29, :cond_1e29

    cmp-long v29, v10, v23

    if-nez v29, :cond_1e29

    cmp-long v29, v13, v23

    if-nez v29, :cond_1e29

    if-nez v4, :cond_1e29

    if-nez v5, :cond_1e29

    if-nez v15, :cond_1e29

    if-eqz v1, :cond_1e1e

    goto :goto_1e29

    :cond_1e1e
    move/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v11, v62

    move-object/from16 v7, v83

    const/4 v15, 0x2

    goto/16 :goto_1f1b

    .line 6553
    :cond_1e29
    :goto_1e29
    move-object/from16 v29, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6554
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    Proc "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6555
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6556
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "      CPU: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6557
    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "usr + "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6558
    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "krn ; "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6559
    invoke-static {v0, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v7, "fg"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6560
    if-nez v4, :cond_1e70

    if-nez v15, :cond_1e70

    if-eqz v1, :cond_1e6d

    goto :goto_1e70

    :cond_1e6d
    move-object/from16 v7, v83

    goto :goto_1eac

    .line 6561
    :cond_1e70
    :goto_1e70
    move-object/from16 v7, v83

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6562
    nop

    .line 6563
    if-eqz v4, :cond_1e8b

    .line 6564
    nop

    .line 6565
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " starts"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_1e8c

    .line 6563
    :cond_1e8b
    const/4 v4, 0x0

    .line 6567
    :goto_1e8c
    if-eqz v15, :cond_1e9d

    .line 6568
    if-eqz v4, :cond_1e93

    .line 6569
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6571
    :cond_1e93
    nop

    .line 6572
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " crashes"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 6574
    :cond_1e9d
    if-eqz v1, :cond_1eac

    .line 6575
    if-eqz v4, :cond_1ea4

    .line 6576
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6578
    :cond_1ea4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " anrs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6581
    :cond_1eac
    :goto_1eac
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6582
    const/4 v1, 0x0

    :goto_1eb6
    if-ge v1, v5, :cond_1f17

    .line 6583
    move-object/from16 v8, v29

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v9

    .line 6584
    if-eqz v9, :cond_1f0d

    .line 6585
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "      * Killed for "

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6586
    iget v10, v9, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v15, 0x2

    if-ne v10, v15, :cond_1ed3

    .line 6587
    const-string v10, "cpu"

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1ed9

    .line 6589
    :cond_1ed3
    const-string/jumbo v10, "unknown"

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6591
    :goto_1ed9
    const-string v10, " use: "

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6592
    iget-wide v10, v9, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v10, v11, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6593
    const-string v10, " over "

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6594
    iget-wide v10, v9, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v10, v11, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6595
    iget-wide v10, v9, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v10, v10, v23

    if-eqz v10, :cond_1f0a

    .line 6596
    move-object/from16 v11, v62

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6597
    iget-wide v13, v9, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v37, 0x64

    mul-long v13, v13, v37

    iget-wide v9, v9, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v13, v9

    invoke-virtual {v4, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    .line 6598
    const-string v9, "%)"

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f10

    .line 6595
    :cond_1f0a
    move-object/from16 v11, v62

    goto :goto_1f10

    .line 6584
    :cond_1f0d
    move-object/from16 v11, v62

    const/4 v15, 0x2

    .line 6582
    :goto_1f10
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v29, v8

    move-object/from16 v62, v11

    goto :goto_1eb6

    .line 6602
    :cond_1f17
    move-object/from16 v11, v62

    const/4 v15, 0x2

    const/4 v1, 0x1

    .line 6534
    :goto_1f1b
    add-int/lit8 v3, v3, -0x1

    move-object v5, v4

    move v4, v1

    move-object v1, v5

    move/from16 v5, p4

    move-object/from16 v15, p7

    move-object/from16 v83, v7

    move-object/from16 v62, v11

    move-object/from16 v14, v27

    goto/16 :goto_1dd9

    .line 6606
    :cond_1f2c
    move/from16 p1, v4

    move-object/from16 v27, v14

    move-object/from16 p7, v15

    move-object/from16 v11, v62

    const/4 v15, 0x2

    move-object v4, v1

    .line 6607
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 6608
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/16 v31, 0x1

    add-int/lit8 v2, v2, -0x1

    move/from16 v3, p1

    :goto_1f44
    if-ltz v2, :cond_204b

    .line 6609
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Apk "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6610
    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6611
    nop

    .line 6612
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 6613
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 6614
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/16 v31, 0x1

    add-int/lit8 v7, v7, -0x1

    move v8, v7

    const/4 v7, 0x0

    :goto_1f71
    if-ltz v8, :cond_1fa2

    .line 6615
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "      Wakeup alarm "

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6616
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v10, v34

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6617
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Counter;

    move/from16 v9, p4

    invoke-virtual {v7, v9}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 6618
    const-string v7, " times"

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6619
    nop

    .line 6614
    add-int/lit8 v8, v8, -0x1

    const/4 v7, 0x1

    goto :goto_1f71

    .line 6621
    :cond_1fa2
    move/from16 v9, p4

    move-object/from16 v10, v34

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 6622
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v31, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_1fb2
    if-ltz v5, :cond_202c

    .line 6623
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 6624
    move-wide/from16 v12, v21

    invoke-virtual {v8, v12, v13, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v21

    .line 6625
    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v14

    .line 6626
    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v8

    .line 6627
    cmp-long v29, v21, v23

    if-nez v29, :cond_1fd6

    if-nez v14, :cond_1fd6

    if-eqz v8, :cond_1fd1

    goto :goto_1fd6

    :cond_1fd1
    move-object/from16 p1, v1

    move/from16 p7, v2

    goto :goto_2023

    .line 6628
    :cond_1fd6
    :goto_1fd6
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6629
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "      Service "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6630
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6631
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "        Created for: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6632
    move-object/from16 p1, v1

    move/from16 p7, v2

    div-long v1, v21, v17

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6633
    const-string/jumbo v1, "uptime\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6634
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "        Starts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6635
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6636
    const-string v1, ", launches: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6638
    move/from16 v7, v31

    .line 6622
    :goto_2023
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p1

    move/from16 v2, p7

    move-wide/from16 v21, v12

    goto :goto_1fb2

    .line 6641
    :cond_202c
    move-object/from16 p1, v1

    move/from16 p7, v2

    move-wide/from16 v12, v21

    const/16 v16, 0x0

    if-nez v7, :cond_203e

    .line 6642
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      (nothing executed)"

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6644
    :cond_203e
    nop

    .line 6608
    add-int/lit8 v2, p7, -0x1

    move-object/from16 v1, p1

    move-object/from16 v34, v10

    move-wide/from16 v21, v12

    move/from16 v3, v31

    goto/16 :goto_1f44

    .line 6646
    :cond_204b
    move/from16 v9, p4

    move-wide/from16 v12, v21

    move-object/from16 v10, v34

    const/16 v16, 0x0

    const/16 v31, 0x1

    if-nez v3, :cond_205f

    .line 6647
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    (nothing executed)"

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5892
    :cond_205f
    :goto_205f
    add-int/lit8 v1, v26, 0x1

    move-object/from16 v8, p0

    move v5, v9

    move-object/from16 v34, v10

    move-object/from16 v62, v11

    move-wide/from16 v21, v12

    move-object/from16 p1, v25

    move-object/from16 v29, v27

    move-object/from16 p7, v28

    move-object/from16 v12, v30

    move-wide/from16 v2, v35

    move-object/from16 v11, v39

    move-object/from16 v15, v41

    move-wide/from16 v13, v55

    move v10, v1

    move-object v1, v4

    move-object v9, v6

    goto/16 :goto_1198

    .line 6650
    :cond_207f
    return-void
.end method

.method public blacklist dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ",
            "Landroid/os/BatteryStats$BatteryStatsDumpHelper;",
            ")V"
        }
    .end annotation

    .line 7882
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7883
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 7885
    and-int/lit8 p2, p4, 0x18

    if-eqz p2, :cond_13

    .line 7886
    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    .line 7887
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 7888
    return-void

    .line 7891
    :cond_13
    const-wide p5, 0x10b00000001L

    invoke-virtual {v0, p5, p6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p5

    .line 7893
    const-wide v1, 0x10500000001L

    const/16 p2, 0x24

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7894
    const-wide v1, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7895
    const-wide v1, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7896
    const-wide v1, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7898
    and-int/lit8 p2, p4, 0x4

    if-nez p2, :cond_5f

    .line 7899
    nop

    .line 7900
    const/4 p2, 0x0

    invoke-interface {p7, p0, p2}, Landroid/os/BatteryStats$BatteryStatsDumpHelper;->getBatteryUsageStats(Landroid/os/BatteryStats;Z)Landroid/os/BatteryUsageStats;

    move-result-object p2

    .line 7901
    new-instance p4, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    invoke-direct {p4, p1, p2}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    .line 7903
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V

    .line 7904
    invoke-direct {p0, v0, p2}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V

    .line 7907
    :cond_5f
    invoke-virtual {v0, p5, p6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7908
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 7909
    return-void
.end method

.method final greylist-max-o formatBytesLocked(J)Ljava/lang/String;
    .registers 6

    .line 3534
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3536
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_20

    .line 3537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "B"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3538
    :cond_20
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_41

    .line 3539
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double p1, p1

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2fKB"

    invoke-virtual {v0, p2, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3540
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3541
    :cond_41
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_62

    .line 3542
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double p1, p1

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2fMB"

    invoke-virtual {v0, p2, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3543
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3545
    :cond_62
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    long-to-double p1, p1

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.2fGB"

    invoke-virtual {v0, p2, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3546
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final greylist-max-o formatRatioLocked(JJ)Ljava/lang/String;
    .registers 7

    .line 3524
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_9

    .line 3525
    const-string p1, "--%"

    return-object p1

    .line 3527
    :cond_9
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 3528
    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3529
    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%.1f%%"

    invoke-virtual {p2, p3, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3530
    iget-object p1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist getActiveRadioDurationMs(IIIJ)J
.end method

.method public abstract blacklist getActiveRxRadioDurationMs(IIJ)J
.end method

.method public abstract blacklist getActiveTxRadioDurationMs(IIIJ)J
.end method

.method public blacklist getBatteryCapacity()I
    .registers 2

    .line 3411
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v0

    .line 3412
    if-lez v0, :cond_9

    .line 3413
    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 3415
    :cond_9
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v0

    .line 3416
    if-lez v0, :cond_12

    .line 3417
    div-int/lit16 v0, v0, 0x3e8

    return v0

    .line 3419
    :cond_12
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v0

    return v0
.end method

.method public abstract greylist-max-o getBatteryRealtime(J)J
.end method

.method public abstract greylist getBatteryUptime(J)J
.end method

.method public abstract blacklist getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
.end method

.method public abstract greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-o getBluetoothScanTime(JI)J
.end method

.method public abstract greylist-max-o getCameraOnTime(JI)J
.end method

.method public abstract greylist-max-o getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract blacklist getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;
.end method

.method public abstract greylist-max-o getCurrentDailyStartTime()J
.end method

.method public abstract blacklist getCustomEnergyConsumerNames()[Ljava/lang/String;
.end method

.method public abstract greylist-max-o getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract greylist-max-o getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getDeviceIdleModeCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdleModeTime(IJI)J
.end method

.method public abstract greylist-max-o getDeviceIdlingCount(II)I
.end method

.method public abstract greylist-max-o getDeviceIdlingTime(IJI)J
.end method

.method public abstract greylist-max-o getDischargeAmount(I)I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDoze()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOff()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOn()I
.end method

.method public abstract greylist-max-o getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract greylist-max-o getDischargeCurrentLevel()I
.end method

.method public abstract greylist-max-o getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract greylist-max-o getDischargeStartLevel()I
.end method

.method public abstract blacklist getDisplayCount()I
.end method

.method public abstract blacklist getDisplayScreenBrightnessTime(IIJ)J
.end method

.method public abstract blacklist getDisplayScreenDozeTime(IJ)J
.end method

.method public abstract blacklist getDisplayScreenOnTime(IJ)J
.end method

.method public abstract greylist-max-o getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract greylist-max-o getEstimatedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getFlashlightOnCount(I)J
.end method

.method public abstract greylist-max-o getFlashlightOnTime(JI)J
.end method

.method public abstract greylist getGlobalWifiRunningTime(JI)J
.end method

.method public abstract greylist-max-o getGpsBatteryDrainMaMs()J
.end method

.method public abstract greylist-max-o getGpsSignalQualityTime(IJI)J
.end method

.method public abstract greylist-max-o getHighDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolBytes()I
.end method

.method public abstract greylist-max-o getHistoryStringPoolSize()I
.end method

.method public abstract greylist-max-o getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getHistoryTagPoolUid(I)I
.end method

.method public abstract greylist-max-o getHistoryTotalSize()I
.end method

.method public abstract greylist-max-o getHistoryUsedSize()I
.end method

.method public abstract greylist-max-o getInteractiveTime(JI)J
.end method

.method public abstract greylist-max-o getIsOnBattery()Z
.end method

.method public abstract greylist-max-o getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract greylist-max-o getLowDischargeAmountSinceCharge()I
.end method

.method public abstract greylist-max-o getMaxLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMinLearnedBatteryCapacity()I
.end method

.method public abstract greylist-max-o getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveCount(I)I
.end method

.method public abstract greylist-max-p getMobileRadioActiveTime(JI)J
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract greylist-max-o getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-p getNetworkActivityBytes(II)J
.end method

.method public abstract greylist-max-o getNetworkActivityPackets(II)J
.end method

.method public abstract greylist-max-o getNextMaxDailyDeadline()J
.end method

.method public abstract greylist-max-o getNextMinDailyDeadline()J
.end method

.method public abstract blacklist getNrNsaTime(J)J
.end method

.method public abstract greylist-max-o getNumConnectivityChange(I)I
.end method

.method public abstract greylist-max-o getParcelVersion()I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionCount(II)I
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract greylist-max-o getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPhoneOnCount(I)I
.end method

.method public abstract greylist getPhoneOnTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTime(JI)J
.end method

.method public abstract greylist-max-o getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPhoneSignalStrengthCount(II)I
.end method

.method public abstract greylist getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract greylist-max-o getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract greylist-max-o getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract greylist-max-o getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist getScreenBrightnessTime(IJI)J
.end method

.method public abstract greylist-max-o getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getScreenDozeCount(I)I
.end method

.method public abstract greylist-max-o getScreenDozeTime(JI)J
.end method

.method public abstract greylist-max-o getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getScreenOnCount(I)I
.end method

.method public abstract greylist getScreenOnTime(JI)J
.end method

.method public abstract greylist-max-o getStartClockTime()J
.end method

.method public abstract greylist-max-o getStartCount()I
.end method

.method public abstract greylist-max-o getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract blacklist getStatsStartRealtime()J
.end method

.method public abstract greylist-max-o getUahDischarge(I)J
.end method

.method public abstract greylist-max-o getUahDischargeDeepDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeLightDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenDoze(I)J
.end method

.method public abstract greylist-max-o getUahDischargeScreenOff(I)J
.end method

.method public abstract greylist getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getWakeLockStats()Landroid/os/WakeLockStats;
.end method

.method public abstract greylist-max-o getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getWifiActiveTime(JI)J
.end method

.method public abstract greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockCount(I)I
.end method

.method public abstract greylist-max-o getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract greylist getWifiOnTime(JI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthCount(II)I
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o getWifiSupplStateCount(II)I
.end method

.method public abstract greylist-max-o getWifiSupplStateTime(IJI)J
.end method

.method public abstract greylist-max-o getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract greylist-max-o hasBluetoothActivityReporting()Z
.end method

.method public abstract greylist-max-o hasModemActivityReporting()Z
.end method

.method public abstract greylist-max-o hasWifiActivityReporting()Z
.end method

.method public abstract blacklist isProcessStateDataAvailable()Z
.end method

.method public abstract blacklist iterateBatteryStatsHistory(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;
.end method

.method public greylist-max-o prepareForDumpLocked()V
    .registers 1

    .line 6706
    return-void
.end method
