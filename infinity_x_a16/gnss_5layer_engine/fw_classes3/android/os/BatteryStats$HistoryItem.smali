.class public final Landroid/os/BatteryStats$HistoryItem;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryItem"
.end annotation


# static fields
.field public static final greylist-max-o CMD_CURRENT_TIME:B = 0x5t

.field public static final greylist-max-o CMD_NULL:B = -0x1t

.field public static final greylist-max-o CMD_OVERFLOW:B = 0x6t

.field public static final greylist-max-o CMD_RESET:B = 0x7t

.field public static final greylist-max-o CMD_SHUTDOWN:B = 0x8t

.field public static final greylist-max-o CMD_START:B = 0x4t

.field public static final greylist CMD_UPDATE:B = 0x0t

.field public static final greylist-max-o EVENT_ACTIVE:I = 0xa

.field public static final greylist-max-o EVENT_ALARM:I = 0xd

.field public static final greylist-max-o EVENT_ALARM_FINISH:I = 0x400d

.field public static final greylist-max-o EVENT_ALARM_START:I = 0x800d

.field public static final greylist-max-o EVENT_COLLECT_EXTERNAL_STATS:I = 0xe

.field public static final greylist-max-o EVENT_CONNECTIVITY_CHANGED:I = 0x9

.field public static final greylist-max-o EVENT_COUNT:I = 0x17

.field public static final blacklist EVENT_DISPLAY_STATE_CHANGED:I = 0x16

.field public static final greylist-max-o EVENT_FLAG_FINISH:I = 0x4000

.field public static final greylist-max-o EVENT_FLAG_START:I = 0x8000

.field public static final greylist-max-o EVENT_FOREGROUND:I = 0x2

.field public static final greylist-max-o EVENT_FOREGROUND_FINISH:I = 0x4002

.field public static final greylist-max-o EVENT_FOREGROUND_START:I = 0x8002

.field public static final greylist-max-o EVENT_JOB:I = 0x6

.field public static final greylist-max-o EVENT_JOB_FINISH:I = 0x4006

.field public static final greylist-max-o EVENT_JOB_START:I = 0x8006

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK:I = 0x14

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK_FINISH:I = 0x4014

.field public static final greylist-max-o EVENT_LONG_WAKE_LOCK_START:I = 0x8014

.field public static final greylist-max-o EVENT_NONE:I = 0x0

.field public static final greylist-max-o EVENT_PACKAGE_ACTIVE:I = 0x10

.field public static final greylist-max-o EVENT_PACKAGE_INACTIVE:I = 0xf

.field public static final greylist-max-o EVENT_PACKAGE_INSTALLED:I = 0xb

.field public static final greylist-max-o EVENT_PACKAGE_UNINSTALLED:I = 0xc

.field public static final greylist-max-o EVENT_PROC:I = 0x1

.field public static final greylist-max-o EVENT_PROC_FINISH:I = 0x4001

.field public static final greylist-max-o EVENT_PROC_START:I = 0x8001

.field public static final greylist-max-o EVENT_SCREEN_WAKE_UP:I = 0x12

.field public static final blacklist EVENT_STATE_CHANGE:I = 0x15

.field public static final greylist-max-o EVENT_SYNC:I = 0x4

.field public static final greylist-max-o EVENT_SYNC_FINISH:I = 0x4004

.field public static final greylist-max-o EVENT_SYNC_START:I = 0x8004

.field public static final greylist-max-o EVENT_TEMP_WHITELIST:I = 0x11

.field public static final greylist-max-o EVENT_TEMP_WHITELIST_FINISH:I = 0x4011

.field public static final greylist-max-o EVENT_TEMP_WHITELIST_START:I = 0x8011

.field public static final greylist-max-o EVENT_TOP:I = 0x3

.field public static final greylist-max-o EVENT_TOP_FINISH:I = 0x4003

.field public static final greylist-max-o EVENT_TOP_START:I = 0x8003

.field public static final greylist-max-o EVENT_TYPE_MASK:I = -0xc001

.field public static final greylist-max-o EVENT_USER_FOREGROUND:I = 0x8

.field public static final greylist-max-o EVENT_USER_FOREGROUND_FINISH:I = 0x4008

.field public static final greylist-max-o EVENT_USER_FOREGROUND_START:I = 0x8008

.field public static final greylist-max-o EVENT_USER_RUNNING:I = 0x7

.field public static final greylist-max-o EVENT_USER_RUNNING_FINISH:I = 0x4007

.field public static final greylist-max-o EVENT_USER_RUNNING_START:I = 0x8007

.field public static final greylist-max-o EVENT_WAKEUP_AP:I = 0x13

.field public static final greylist-max-o EVENT_WAKE_LOCK:I = 0x5

.field public static final greylist-max-o EVENT_WAKE_LOCK_FINISH:I = 0x4005

.field public static final greylist-max-o EVENT_WAKE_LOCK_START:I = 0x8005

.field public static final blacklist GNSS_SIGNAL_QUALITY_NONE:I = 0x2

.field public static final blacklist IMPORTANT_FOR_POWER_STATS_STATES:I = 0x60c00000

.field public static final blacklist IMPORTANT_FOR_POWER_STATS_STATES2:I = 0x48200180

.field public static final greylist-max-o MOST_INTERESTING_STATES:I = 0x1c0000

.field public static final greylist-max-o MOST_INTERESTING_STATES2:I = -0x68400000

.field public static final greylist-max-o SETTLE_TO_ZERO_STATES:I = -0x1d0000

.field public static final greylist-max-o SETTLE_TO_ZERO_STATES2:I = 0x683f0000

.field public static final greylist-max-o STATE2_BLUETOOTH_ON_FLAG:I = 0x400000

.field public static final greylist-max-o STATE2_BLUETOOTH_SCAN_FLAG:I = 0x100000

.field public static final greylist-max-o STATE2_CAMERA_FLAG:I = 0x200000

.field public static final greylist-max-o STATE2_CELLULAR_HIGH_TX_POWER_FLAG:I = 0x80000

.field public static final greylist-max-o STATE2_CHARGING_FLAG:I = 0x1000000

.field public static final greylist-max-o STATE2_DEVICE_IDLE_MASK:I = 0x6000000

.field public static final greylist-max-o STATE2_DEVICE_IDLE_SHIFT:I = 0x19

.field public static final blacklist STATE2_EXTENSIONS_FLAG:I = 0x20000

.field public static final greylist-max-o STATE2_FLASHLIGHT_FLAG:I = 0x8000000

.field public static final greylist-max-o STATE2_GPS_SIGNAL_QUALITY_MASK:I = 0x180

.field public static final greylist-max-o STATE2_GPS_SIGNAL_QUALITY_SHIFT:I = 0x7

.field public static final blacklist STATE2_NR_STATE_MASK:I = 0x600

.field public static final blacklist STATE2_NR_STATE_SHIFT:I = 0x9

.field public static final greylist-max-o STATE2_PHONE_IN_CALL_FLAG:I = 0x800000

.field public static final greylist-max-o STATE2_POWER_SAVE_FLAG:I = -0x80000000

.field public static final greylist-max-o STATE2_USB_DATA_LINK_FLAG:I = 0x40000

.field public static final greylist-max-o STATE2_VIDEO_ON_FLAG:I = 0x40000000

.field public static final greylist-max-o STATE2_WIFI_ON_FLAG:I = 0x10000000

.field public static final greylist-max-o STATE2_WIFI_RUNNING_FLAG:I = 0x20000000

.field public static final greylist-max-o STATE2_WIFI_SIGNAL_STRENGTH_MASK:I = 0x70

.field public static final greylist-max-o STATE2_WIFI_SIGNAL_STRENGTH_SHIFT:I = 0x4

.field public static final greylist-max-o STATE2_WIFI_SUPPL_STATE_MASK:I = 0xf

.field public static final greylist-max-o STATE2_WIFI_SUPPL_STATE_SHIFT:I = 0x0

.field public static final greylist-max-o STATE_AUDIO_ON_FLAG:I = 0x400000

.field public static final greylist-max-o STATE_BATTERY_PLUGGED_FLAG:I = 0x80000

.field public static final greylist-max-o STATE_BRIGHTNESS_MASK:I = 0x7

.field public static final greylist-max-o STATE_BRIGHTNESS_SHIFT:I = 0x0

.field public static final greylist-max-o STATE_CPU_RUNNING_FLAG:I = -0x80000000

.field public static final greylist-max-o STATE_DATA_CONNECTION_MASK:I = 0x3e00

.field public static final greylist-max-o STATE_DATA_CONNECTION_SHIFT:I = 0x9

.field public static final greylist-max-o STATE_GPS_ON_FLAG:I = 0x20000000

.field public static final greylist-max-o STATE_MOBILE_RADIO_ACTIVE_FLAG:I = 0x2000000

.field public static final greylist-max-o STATE_PHONE_SCANNING_FLAG:I = 0x200000

.field public static final greylist-max-o STATE_PHONE_SIGNAL_STRENGTH_MASK:I = 0x38

.field public static final greylist-max-o STATE_PHONE_SIGNAL_STRENGTH_SHIFT:I = 0x3

.field public static final greylist-max-o STATE_PHONE_STATE_MASK:I = 0x1c0

.field public static final greylist-max-o STATE_PHONE_STATE_SHIFT:I = 0x6

.field private static final greylist-max-o STATE_RESERVED_0:I = 0x1000000

.field public static final greylist-max-o STATE_SCREEN_DOZE_FLAG:I = 0x40000

.field public static final greylist-max-o STATE_SCREEN_ON_FLAG:I = 0x100000

.field public static final greylist-max-o STATE_SENSOR_ON_FLAG:I = 0x800000

.field public static final greylist-max-o STATE_WAKE_LOCK_FLAG:I = 0x40000000

.field public static final greylist-max-o STATE_WIFI_FULL_LOCK_FLAG:I = 0x10000000

.field public static final greylist-max-o STATE_WIFI_MULTICAST_ON_FLAG:I = 0x10000

.field public static final greylist-max-o STATE_WIFI_RADIO_ACTIVE_FLAG:I = 0x4000000

.field public static final greylist-max-o STATE_WIFI_SCAN_FLAG:I = 0x8000000


# instance fields
.field public blacklist batteryChargeUah:I

.field public greylist batteryHealth:B

.field public greylist batteryLevel:B

.field public greylist batteryPlugType:B

.field public greylist batteryStatus:B

.field public greylist-max-o batteryTemperature:S

.field public greylist batteryVoltage:S

.field public greylist cmd:B

.field public greylist-max-o currentTime:J

.field public greylist-max-o eventCode:I

.field public greylist-max-o eventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final greylist-max-o localEventTag:Landroid/os/BatteryStats$HistoryTag;

.field public final blacklist localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

.field public final greylist-max-o localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public final greylist-max-o localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public blacklist modemRailChargeMah:D

.field public greylist-max-p next:Landroid/os/BatteryStats$HistoryItem;

.field public greylist-max-o numReadInts:I

.field public blacklist powerStats:Lcom/android/internal/os/PowerStats;

.field public blacklist processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

.field public greylist states:I

.field public greylist states2:I

.field public greylist-max-o stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

.field public blacklist tagsFirstOccurrence:Z

.field public greylist time:J

.field public greylist-max-o wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

.field public greylist-max-o wakelockTag:Landroid/os/BatteryStats$HistoryTag;

.field public blacklist wifiRailChargeMah:D


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2001
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2002
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2003
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2004
    new-instance v0, Landroid/os/BatteryStats$ProcessStateChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$ProcessStateChange;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 2012
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2001
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2002
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2003
    new-instance v0, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2004
    new-instance v0, Landroid/os/BatteryStats$ProcessStateChange;

    invoke-direct {v0}, Landroid/os/BatteryStats$ProcessStateChange;-><init>()V

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localProcessStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 2015
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 2016
    return-void
.end method

.method private greylist-max-o setToCommon(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 5

    .line 2137
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2138
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2139
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2140
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2141
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2142
    iget-short v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 2143
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2144
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2145
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2146
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2147
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2148
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 2149
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2150
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_3f

    .line 2152
    :cond_3d
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2154
    :goto_3f
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_4f

    .line 2155
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2156
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_51

    .line 2158
    :cond_4f
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2160
    :goto_51
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2161
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_65

    .line 2162
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2163
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$HistoryTag;->setTo(Landroid/os/BatteryStats$HistoryTag;)V

    goto :goto_67

    .line 2165
    :cond_65
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2167
    :goto_67
    iget-boolean v0, p1, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2168
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2169
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 2170
    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 2171
    iget-object p1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iput-object p1, p0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2172
    return-void
.end method


# virtual methods
.method public greylist-max-p clear()V
    .registers 4

    .line 2099
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2100
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2101
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2102
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2103
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2104
    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2105
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2106
    iput-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 2107
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2108
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2109
    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2110
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2111
    const/16 v1, 0x100

    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2112
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2113
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2114
    iput v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2115
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2116
    iput-boolean v0, p0, Landroid/os/BatteryStats$HistoryItem;->tagsFirstOccurrence:Z

    .line 2117
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    .line 2118
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    .line 2119
    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    .line 2120
    return-void
.end method

.method public greylist-max-o isDeltaData()Z
    .registers 2

    .line 1773
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 2053
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2054
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2055
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2056
    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2057
    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 2058
    shr-int/lit8 v2, v1, 0x10

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    .line 2059
    shr-int/lit8 v2, v1, 0x14

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    .line 2060
    shr-int/lit8 v2, v1, 0x18

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    .line 2061
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2062
    const v3, 0xffff

    and-int v4, v2, v3

    int-to-short v4, v4

    iput-short v4, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    .line 2063
    shr-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    .line 2064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    .line 2065
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    .line 2066
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    .line 2067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    .line 2068
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    .line 2069
    const/high16 v2, 0x10000000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_6f

    .line 2070
    iget-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->localWakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2071
    iget-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_71

    .line 2073
    :cond_6f
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2075
    :goto_71
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_80

    .line 2076
    iget-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->localWakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2077
    iget-object v2, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v2, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_82

    .line 2079
    :cond_80
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2081
    :goto_82
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_97

    .line 2082
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2083
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->localEventTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2084
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$HistoryTag;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_9c

    .line 2086
    :cond_97
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 2087
    iput-object v3, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 2089
    :goto_9c
    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_ac

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x7

    if-ne v1, v2, :cond_a7

    goto :goto_ac

    .line 2092
    :cond_a7
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    goto :goto_b2

    .line 2090
    :cond_ac
    :goto_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 2094
    :goto_b2
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    iput v1, p0, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    .line 2095
    return-void
.end method

.method public greylist-max-p same(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 5

    .line 2191
    invoke-virtual {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eq v0, v2, :cond_e

    goto :goto_61

    .line 2194
    :cond_e
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_29

    .line 2195
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_28

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_1d

    goto :goto_28

    .line 2198
    :cond_1d
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2199
    return v1

    .line 2196
    :cond_28
    :goto_28
    return v1

    .line 2202
    :cond_29
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_44

    .line 2203
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_43

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_38

    goto :goto_43

    .line 2206
    :cond_38
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 2207
    return v1

    .line 2204
    :cond_43
    :goto_43
    return v1

    .line 2210
    :cond_44
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eq v0, v2, :cond_5f

    .line 2211
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_5e

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-nez v0, :cond_53

    goto :goto_5e

    .line 2214
    :cond_53
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$HistoryTag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 2215
    return v1

    .line 2212
    :cond_5e
    :goto_5e
    return v1

    .line 2218
    :cond_5f
    const/4 p1, 0x1

    return p1

    .line 2192
    :cond_61
    :goto_61
    return v1
.end method

.method public greylist-max-o sameNonEvent(Landroid/os/BatteryStats$HistoryItem;)Z
    .registers 6

    .line 2175
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v0, v1, :cond_50

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-ne v0, v1, :cond_50

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-ne v0, v1, :cond_50

    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-ne v0, v1, :cond_50

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-ne v0, v1, :cond_50

    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    if-ne v0, v1, :cond_50

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    if-ne v0, v1, :cond_50

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_50

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_50

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-ne v0, v1, :cond_50

    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    if-ne v0, v1, :cond_50

    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_50

    const/4 p1, 0x1

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :goto_51
    return p1
.end method

.method public greylist-max-p setTo(JBLandroid/os/BatteryStats$HistoryItem;)V
    .registers 5

    .line 2131
    iput-wide p1, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2132
    iput-byte p3, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2133
    invoke-direct {p0, p4}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2134
    return-void
.end method

.method public greylist-max-p setTo(Landroid/os/BatteryStats$HistoryItem;)V
    .registers 4

    .line 2124
    iget-wide v0, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 2125
    iget-byte v0, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 2126
    invoke-direct {p0, p1}, Landroid/os/BatteryStats$HistoryItem;->setToCommon(Landroid/os/BatteryStats$HistoryItem;)V

    .line 2127
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 2019
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2020
    iget-byte v0, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit16 v0, v0, 0xff

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xf0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    shl-int/lit8 v1, v1, 0x14

    const/high16 v2, 0xf00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget-byte v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xf000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2025
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    const/high16 v1, 0x10000000

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    or-int/2addr v0, v1

    .line 2026
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_3b

    const/high16 v1, 0x20000000

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    or-int/2addr v0, v1

    .line 2027
    iget v1, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_43

    const/high16 v2, 0x40000000    # 2.0f

    :cond_43
    or-int/2addr v0, v2

    .line 2028
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2029
    iget-short v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-short v1, p0, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:S

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 2031
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2032
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2033
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->modemRailChargeMah:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2034
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->wifiRailChargeMah:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2035
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2036
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_7a

    .line 2038
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2040
    :cond_7a
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_83

    .line 2041
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2043
    :cond_83
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v0, :cond_91

    .line 2044
    iget v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v0, p1, p2}, Landroid/os/BatteryStats$HistoryTag;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2047
    :cond_91
    iget-byte p2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v0, 0x5

    if-eq p2, v0, :cond_9b

    iget-byte p2, p0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v0, 0x7

    if-ne p2, v0, :cond_a0

    .line 2048
    :cond_9b
    iget-wide v0, p0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2050
    :cond_a0
    return-void
.end method
