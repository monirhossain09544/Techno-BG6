.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;,
        Landroid/os/PowerManager$ScreenTimeoutPolicyListener;,
        Landroid/os/PowerManager$SleepLock;,
        Landroid/os/PowerManager$ServiceType;,
        Landroid/os/PowerManager$LowPowerStandbyPolicy;,
        Landroid/os/PowerManager$LowPowerStandbyPortsLock;,
        Landroid/os/PowerManager$LowPowerStandbyPortDescription;,
        Landroid/os/PowerManager$OnThermalStatusChangedListener;,
        Landroid/os/PowerManager$OnThermalHeadroomChangedListener;,
        Landroid/os/PowerManager$WakeLockStateListener;,
        Landroid/os/PowerManager$LowPowerStandbyAllowedReason;,
        Landroid/os/PowerManager$ThermalStatus;,
        Landroid/os/PowerManager$AutoPowerSaveModeTriggers;,
        Landroid/os/PowerManager$SoundTriggerPowerSaveMode;,
        Landroid/os/PowerManager$LocationPowerSaveMode;,
        Landroid/os/PowerManager$ScreenTimeoutPolicy;,
        Landroid/os/PowerManager$ShutdownReason;,
        Landroid/os/PowerManager$SleepData;,
        Landroid/os/PowerManager$WakeData;,
        Landroid/os/PowerManager$GoToSleepReason;,
        Landroid/os/PowerManager$WakeReason;,
        Landroid/os/PowerManager$BrightnessConstraint;,
        Landroid/os/PowerManager$FlagAmbientSuppression;,
        Landroid/os/PowerManager$UserActivityEvent;
    }
.end annotation


# static fields
.field public static final whitelist ACQUIRE_CAUSES_WAKEUP:I = 0x10000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.DEVICE_IDLE_MODE_CHANGED"

.field public static final whitelist ACTION_DEVICE_LIGHT_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

.field public static final blacklist ACTION_ENHANCED_DISCHARGE_PREDICTION_CHANGED:Ljava/lang/String; = "android.os.action.ENHANCED_DISCHARGE_PREDICTION_CHANGED"

.field public static final greylist-max-r ACTION_LIGHT_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_LOW_POWER_STANDBY_ENABLED_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

.field public static final whitelist ACTION_LOW_POWER_STANDBY_POLICY_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_POLICY_CHANGED"

.field public static final whitelist ACTION_LOW_POWER_STANDBY_PORTS_CHANGED:Ljava/lang/String; = "android.os.action.LOW_POWER_STANDBY_PORTS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final greylist-max-o ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

.field public static final greylist-max-o ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DEFAULT:I = 0x2

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DEFAULT_BUTTON:I = 0x8

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DEFAULT_KEYBOARD:I = 0x9

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_DIM:I = 0x3

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MAXIMUM:I = 0x1

.field public static final blacklist BRIGHTNESS_CONSTRAINT_TYPE_MINIMUM:I = 0x0

.field public static final greylist-max-o BRIGHTNESS_DEFAULT:I = -0x1

.field public static final blacklist BRIGHTNESS_INVALID:I = -0x1

.field public static final blacklist BRIGHTNESS_INVALID_FLOAT:F = NaNf

.field public static final blacklist BRIGHTNESS_MAX:F = 1.0f

.field public static final blacklist BRIGHTNESS_MIN:F = 0.0f

.field public static final greylist-max-o BRIGHTNESS_OFF:I = 0x0

.field public static final blacklist BRIGHTNESS_OFF_FLOAT:F = -1.0f

.field public static final greylist BRIGHTNESS_ON:I = 0xff

.field private static final blacklist CACHE_KEY_IS_INTERACTIVE_API:Ljava/lang/String; = "is_interactive"

.field private static final blacklist CACHE_KEY_IS_POWER_SAVE_MODE_API:Ljava/lang/String; = "is_power_save_mode"

.field public static final greylist-max-o DOZE_WAKE_LOCK:I = 0x40

.field public static final greylist-max-o DRAW_WAKE_LOCK:I = 0x80

.field public static final whitelist FEATURE_WAKE_ON_LAN_IN_LOW_POWER_STANDBY:Ljava/lang/String; = "com.android.lowpowerstandby.WAKE_ON_LAN"

.field public static final blacklist FLAG_AMBIENT_SUPPRESSION_ALL:I = 0x3

.field public static final blacklist FLAG_AMBIENT_SUPPRESSION_AOD:I = 0x2

.field public static final blacklist FLAG_AMBIENT_SUPPRESSION_DREAM:I = 0x1

.field public static final blacklist FLAG_AMBIENT_SUPPRESSION_NONE:I = 0x0

.field public static final whitelist FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final blacklist GO_TO_SLEEP_FLAG_SOFT_SLEEP:I = 0x2

.field public static final greylist-max-o GO_TO_SLEEP_REASON_ACCESSIBILITY:I = 0x7

.field public static final greylist-max-o GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final greylist-max-o GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final blacklist GO_TO_SLEEP_REASON_DEVICE_FOLD:I = 0xd

.field public static final blacklist GO_TO_SLEEP_REASON_DISPLAY_GROUPS_TURNED_OFF:I = 0xc

.field public static final blacklist GO_TO_SLEEP_REASON_DISPLAY_GROUP_REMOVED:I = 0xb

.field public static final blacklist GO_TO_SLEEP_REASON_FORCE_SUSPEND:I = 0x8

.field public static final greylist-max-o GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final blacklist GO_TO_SLEEP_REASON_INATTENTIVE:I = 0x9

.field public static final greylist-max-o GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final blacklist GO_TO_SLEEP_REASON_MAX:I = 0xe

.field public static final blacklist GO_TO_SLEEP_REASON_MIN:I = 0x0

.field public static final greylist-max-o GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final blacklist GO_TO_SLEEP_REASON_QUIESCENT:I = 0xa

.field public static final greylist-max-o GO_TO_SLEEP_REASON_SLEEP_BUTTON:I = 0x6

.field public static final greylist GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final blacklist GO_TO_SLEEP_REASON_UNKNOWN:I = 0xe

.field public static final whitelist LOCATION_MODE_ALL_DISABLED_WHEN_SCREEN_OFF:I = 0x2

.field public static final whitelist LOCATION_MODE_FOREGROUND_ONLY:I = 0x3

.field public static final whitelist LOCATION_MODE_GPS_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field public static final whitelist LOCATION_MODE_NO_CHANGE:I = 0x0

.field public static final whitelist LOCATION_MODE_THROTTLE_REQUESTS_WHEN_SCREEN_OFF:I = 0x4

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_ONGOING_CALL:I = 0x4

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_TEMP_POWER_SAVE_ALLOWLIST:I = 0x2

.field public static final whitelist LOW_POWER_STANDBY_ALLOWED_REASON_VOICE_INTERACTION:I = 0x1

.field private static final blacklist MAX_CACHE_ENTRIES:I = 0x1

.field public static final blacklist MAX_LOCATION_MODE:I = 0x4

.field public static final blacklist MAX_SOUND_TRIGGER_MODE:I = 0x2

.field private static final blacklist MINIMUM_HEADROOM_TIME_MILLIS:I = 0x1f4

.field public static final blacklist MIN_LOCATION_MODE:I = 0x0

.field public static final blacklist MIN_SOUND_TRIGGER_MODE:I = 0x0

.field public static final whitelist ON_AFTER_RELEASE:I = 0x20000000

.field public static final blacklist PARTIAL_SLEEP_WAKE_LOCK:I = 0x200

.field public static final whitelist PARTIAL_WAKE_LOCK:I = 0x1

.field public static final whitelist POWER_SAVE_MODE_TRIGGER_DYNAMIC:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist POWER_SAVE_MODE_TRIGGER_PERCENTAGE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final blacklist REBOOT_BOOTLOADER:Ljava/lang/String; = "bootloader"

.field public static final blacklist REBOOT_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final blacklist REBOOT_FASTBOOT:Ljava/lang/String; = "fastboot"

.field public static final greylist-max-o REBOOT_QUIESCENT:Ljava/lang/String; = "quiescent"

.field public static final greylist-max-o REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final greylist-max-o REBOOT_RECOVERY_UPDATE:Ljava/lang/String; = "recovery-update"

.field public static final greylist-max-o REBOOT_REQUESTED_BY_DEVICE_OWNER:Ljava/lang/String; = "deviceowner"

.field public static final greylist-max-o REBOOT_SAFE_MODE:Ljava/lang/String; = "safemode"

.field public static final whitelist REBOOT_USERSPACE:Ljava/lang/String; = "userspace"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o RELEASE_FLAG_TIMEOUT:I = 0x10000

.field public static final whitelist RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field public static final whitelist SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SCREEN_TIMEOUT_ACTIVE:I = 0x0

.field public static final blacklist SCREEN_TIMEOUT_KEEP_DISPLAY_ON:I = 0x1

.field public static final blacklist SCREEN_TIMEOUT_OVERRIDE_WAKE_LOCK:I = 0x100

.field public static final greylist-max-o SHUTDOWN_BATTERY_THERMAL_STATE:Ljava/lang/String; = "thermal,battery"

.field public static final greylist-max-o SHUTDOWN_LOW_BATTERY:Ljava/lang/String; = "battery"

.field public static final greylist-max-o SHUTDOWN_REASON_BATTERY_THERMAL:I = 0x6

.field public static final greylist-max-o SHUTDOWN_REASON_LOW_BATTERY:I = 0x5

.field public static final greylist-max-o SHUTDOWN_REASON_REBOOT:I = 0x2

.field public static final greylist-max-o SHUTDOWN_REASON_SHUTDOWN:I = 0x1

.field public static final greylist-max-o SHUTDOWN_REASON_THERMAL_SHUTDOWN:I = 0x4

.field public static final greylist-max-o SHUTDOWN_REASON_UNKNOWN:I = 0x0

.field public static final greylist-max-o SHUTDOWN_REASON_USER_REQUESTED:I = 0x3

.field public static final blacklist SHUTDOWN_SERVICE_CALL:Ljava/lang/String; = "service"

.field public static final blacklist SHUTDOWN_THERMAL_STATE:Ljava/lang/String; = "thermal"

.field public static final greylist-max-o SHUTDOWN_USER_REQUESTED:Ljava/lang/String; = "userrequested"

.field public static final whitelist SOUND_TRIGGER_MODE_ALL_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SOUND_TRIGGER_MODE_ALL_ENABLED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SOUND_TRIGGER_MODE_CRITICAL_ONLY:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SYSTEM_WAKELOCK:I = -0x80000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "PowerManager"

.field public static final whitelist THERMAL_STATUS_CRITICAL:I = 0x4

.field public static final whitelist THERMAL_STATUS_EMERGENCY:I = 0x5

.field public static final whitelist THERMAL_STATUS_LIGHT:I = 0x1

.field public static final whitelist THERMAL_STATUS_MODERATE:I = 0x2

.field public static final whitelist THERMAL_STATUS_NONE:I = 0x0

.field public static final whitelist THERMAL_STATUS_SEVERE:I = 0x3

.field public static final whitelist THERMAL_STATUS_SHUTDOWN:I = 0x6

.field public static final greylist-max-o UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final whitelist USER_ACTIVITY_EVENT_ACCESSIBILITY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_EVENT_ATTENTION:I = 0x4

.field public static final whitelist USER_ACTIVITY_EVENT_BUTTON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_EVENT_DEVICE_STATE:I = 0x6

.field public static final blacklist USER_ACTIVITY_EVENT_FACE_DOWN:I = 0x5

.field public static final whitelist USER_ACTIVITY_EVENT_OTHER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_ACTIVITY_EVENT_TOUCH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist USER_ACTIVITY_FLAG_INDIRECT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist USER_ACTIVITY_FLAG_NO_BUTTON_LIGHTS:I = 0x4

.field public static final whitelist USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o WAKE_LOCK_LEVEL_MASK:I = 0xffff

.field public static final blacklist WAKE_REASON_APPLICATION:I = 0x2

.field public static final blacklist WAKE_REASON_BIOMETRIC:I = 0x11

.field public static final blacklist WAKE_REASON_CAMERA_LAUNCH:I = 0x5

.field public static final blacklist WAKE_REASON_DISPLAY_GROUP_ADDED:I = 0xa

.field public static final blacklist WAKE_REASON_DISPLAY_GROUP_TURNED_ON:I = 0xb

.field public static final blacklist WAKE_REASON_DOCK:I = 0x12

.field public static final blacklist WAKE_REASON_DOZE_STOPPED:I = 0x13

.field public static final blacklist WAKE_REASON_DREAM_FINISHED:I = 0xd

.field public static final blacklist WAKE_REASON_GESTURE:I = 0x4

.field public static final blacklist WAKE_REASON_HDMI:I = 0x8

.field public static final blacklist WAKE_REASON_LID:I = 0x9

.field public static final blacklist WAKE_REASON_LIFT:I = 0x10

.field public static final blacklist WAKE_REASON_PLUGGED_IN:I = 0x3

.field public static final blacklist WAKE_REASON_POWER_BUTTON:I = 0x1

.field public static final blacklist WAKE_REASON_TAP:I = 0xf

.field public static final blacklist WAKE_REASON_TILT:I = 0xe

.field public static final blacklist WAKE_REASON_UNFOLD_DEVICE:I = 0xc

.field public static final blacklist WAKE_REASON_UNKNOWN:I = 0x0

.field public static final blacklist WAKE_REASON_WAKE_KEY:I = 0x6

.field public static final blacklist WAKE_REASON_WAKE_MOTION:I = 0x7


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field final greylist-max-p mHandler:Landroid/os/Handler;

.field private final blacklist mInteractiveCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

.field private blacklist mPowerExemptionManager:Landroid/os/PowerExemptionManager;

.field private final blacklist mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/PowerManager$ScreenTimeoutPolicyListener;",
            "Landroid/os/IScreenTimeoutPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field final greylist mService:Landroid/os/IPowerManager;

.field private final blacklist mThermalHeadroomListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/PowerManager$OnThermalHeadroomChangedListener;",
            "Landroid/os/IThermalHeadroomListener;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mThermalService:Landroid/os/IThermalService;

.field private final blacklist mThermalStatusListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/PowerManager$OnThermalStatusChangedListener;",
            "Landroid/os/IThermalStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mconvertThresholdsToMap(Landroid/os/PowerManager;[F)Ljava/util/Map;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/PowerManager;->convertThresholdsToMap([F)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/IThermalService;Landroid/os/Handler;)V
    .registers 9

    .line 1379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    new-instance v0, Landroid/os/PowerManager$1;

    .line 1326
    const-string v1, "is_power_save_mode"

    invoke-static {v1}, Landroid/os/PowerManager;->getCacheArgs(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v1, v3}, Landroid/os/PowerManager$1;-><init>(Landroid/os/PowerManager;Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v0, p0, Landroid/os/PowerManager;->mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;

    .line 1338
    new-instance v0, Landroid/os/PowerManager$2;

    .line 1339
    const-string v1, "is_interactive"

    invoke-static {v1}, Landroid/os/PowerManager;->getCacheArgs(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1, v3}, Landroid/os/PowerManager$2;-><init>(Landroid/os/PowerManager;Landroid/app/PropertyInvalidatedCache$Args;Ljava/lang/String;Landroid/app/PropertyInvalidatedCache$QueryHandler;)V

    iput-object v0, p0, Landroid/os/PowerManager;->mInteractiveCache:Landroid/app/PropertyInvalidatedCache;

    .line 1365
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    .line 1368
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    .line 1372
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    .line 3324
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1380
    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    .line 1381
    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 1382
    iput-object p3, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    .line 1383
    iput-object p4, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 1384
    return-void
.end method

.method private blacklist convertThresholdsToMap([F)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 3429
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3430
    const/4 v2, 0x1

    :goto_7
    if-gt v2, v1, :cond_21

    .line 3431
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3432
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3430
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3435
    :cond_21
    return-object v0
.end method

.method private static blacklist getCacheArgs(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;
    .registers 3

    .line 1318
    new-instance v0, Landroid/app/PropertyInvalidatedCache$Args;

    const-string/jumbo v1, "system_server"

    invoke-direct {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;-><init>(Ljava/lang/String;)V

    .line 1319
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;->maxEntries(I)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    .line 1320
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;->isolateUids(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    .line 1321
    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$Args;->cacheNulls(Z)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object v0

    .line 1322
    invoke-virtual {v0, p0}, Landroid/app/PropertyInvalidatedCache$Args;->api(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$Args;

    move-result-object p0

    .line 1318
    return-object p0
.end method

.method private blacklist getPowerExemptionManager()Landroid/os/PowerExemptionManager;
    .registers 3

    .line 1387
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    if-nez v0, :cond_10

    .line 1389
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerExemptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerExemptionManager;

    iput-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 1391
    :cond_10
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    return-object v0
.end method

.method public static blacklist invalidateIsInteractiveCaches()V
    .registers 2

    .line 4675
    const-string/jumbo v0, "system_server"

    const-string v1, "is_interactive"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 4676
    return-void
.end method

.method public static blacklist invalidatePowerSaveModeCaches()V
    .registers 2

    .line 4668
    const-string/jumbo v0, "system_server"

    const-string v1, "is_power_save_mode"

    invoke-static {v0, v1}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 4669
    return-void
.end method

.method public static blacklist isRebootingUserspaceSupportedImpl()Z
    .registers 1

    .line 2108
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist locationPowerSaveModeToString(I)Ljava/lang/String;
    .registers 1

    .line 1295
    packed-switch p0, :pswitch_data_18

    .line 1307
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1305
    :pswitch_8
    const-string p0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    return-object p0

    .line 1303
    :pswitch_b
    const-string p0, "FOREGROUND_ONLY"

    return-object p0

    .line 1301
    :pswitch_e
    const-string p0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    return-object p0

    .line 1299
    :pswitch_11
    const-string p0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    return-object p0

    .line 1297
    :pswitch_14
    const-string p0, "NO_CHANGE"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;
    .registers 3

    .line 3789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3790
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 3791
    const-string v1, "ALLOWED_REASON_VOICE_INTERACTION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    and-int/lit8 p0, p0, -0x2

    .line 3794
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1b

    .line 3795
    const-string v1, "ALLOWED_REASON_TEMP_POWER_SAVE_ALLOWLIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3796
    and-int/lit8 p0, p0, -0x3

    .line 3798
    :cond_1b
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_26

    .line 3799
    const-string v1, "ALLOWED_REASON_ONGOING_CALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3800
    and-int/lit8 p0, p0, -0x5

    .line 3802
    :cond_26
    if-eqz p0, :cond_2f

    .line 3803
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3805
    :cond_2f
    const-string p0, ","

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist sleepReasonToString(I)Ljava/lang/String;
    .registers 1

    .line 608
    packed-switch p0, :pswitch_data_3a

    .line 624
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 623
    :pswitch_8
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 612
    :pswitch_c
    const-string p0, "device_folded"

    return-object p0

    .line 614
    :pswitch_f
    const-string p0, "display_groups_turned_off"

    return-object p0

    .line 613
    :pswitch_12
    const-string p0, "display_group_removed"

    return-object p0

    .line 620
    :pswitch_15
    const-string/jumbo p0, "quiescent"

    return-object p0

    .line 617
    :pswitch_19
    const-string p0, "inattentive"

    return-object p0

    .line 615
    :pswitch_1c
    const-string p0, "force_suspend"

    return-object p0

    .line 609
    :pswitch_1f
    const-string p0, "accessibility"

    return-object p0

    .line 621
    :pswitch_22
    const-string/jumbo p0, "sleep_button"

    return-object p0

    .line 616
    :pswitch_26
    const-string p0, "hdmi"

    return-object p0

    .line 619
    :pswitch_29
    const-string/jumbo p0, "power_button"

    return-object p0

    .line 618
    :pswitch_2d
    const-string p0, "lid_switch"

    return-object p0

    .line 622
    :pswitch_30
    const-string/jumbo p0, "timeout"

    return-object p0

    .line 611
    :pswitch_34
    const-string p0, "device_admin"

    return-object p0

    .line 610
    :pswitch_37
    const-string p0, "application"

    return-object p0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist userActivityEventToString(I)Ljava/lang/String;
    .registers 1

    .line 461
    packed-switch p0, :pswitch_data_20

    .line 469
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 468
    :pswitch_8
    const-string p0, "deviceState"

    return-object p0

    .line 467
    :pswitch_b
    const-string p0, "faceDown"

    return-object p0

    .line 466
    :pswitch_e
    const-string p0, "attention"

    return-object p0

    .line 465
    :pswitch_11
    const-string p0, "accessibility"

    return-object p0

    .line 464
    :pswitch_14
    const-string/jumbo p0, "touch"

    return-object p0

    .line 463
    :pswitch_18
    const-string p0, "button"

    return-object p0

    .line 462
    :pswitch_1b
    const-string/jumbo p0, "other"

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist validateWakeLockParameters(ILjava/lang/String;)V
    .registers 3

    .line 1556
    const v0, 0xffff

    and-int/2addr p0, v0

    sparse-switch p0, :sswitch_data_2a

    .line 1573
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify a valid wake lock level."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1567
    :sswitch_f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/feature/flags/Flags;->partialSleepWakelocks()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1568
    goto :goto_1f

    .line 1570
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Partial sleep wake lock flag not rolled out yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1565
    :sswitch_1e
    nop

    .line 1575
    :goto_1f
    if-eqz p1, :cond_22

    .line 1578
    return-void

    .line 1576
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The tag must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_1e
        0x6 -> :sswitch_1e
        0xa -> :sswitch_1e
        0x1a -> :sswitch_1e
        0x20 -> :sswitch_1e
        0x40 -> :sswitch_1e
        0x80 -> :sswitch_1e
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_f
    .end sparse-switch
.end method

.method public static blacklist wakeReasonToString(I)Ljava/lang/String;
    .registers 1

    .line 872
    packed-switch p0, :pswitch_data_44

    .line 893
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 892
    :pswitch_8
    const-string p0, "WAKE_REASON_DOZE_STOPPED"

    return-object p0

    .line 891
    :pswitch_b
    const-string p0, "WAKE_REASON_DOCK"

    return-object p0

    .line 890
    :pswitch_e
    const-string p0, "WAKE_REASON_BIOMETRIC"

    return-object p0

    .line 889
    :pswitch_11
    const-string p0, "WAKE_REASON_LIFT"

    return-object p0

    .line 888
    :pswitch_14
    const-string p0, "WAKE_REASON_TAP"

    return-object p0

    .line 887
    :pswitch_17
    const-string p0, "WAKE_REASON_TILT"

    return-object p0

    .line 886
    :pswitch_1a
    const-string p0, "WAKE_REASON_DREAM_FINISHED"

    return-object p0

    .line 885
    :pswitch_1d
    const-string p0, "WAKE_REASON_UNFOLD_DEVICE"

    return-object p0

    .line 884
    :pswitch_20
    const-string p0, "WAKE_REASON_DISPLAY_GROUP_TURNED_ON"

    return-object p0

    .line 883
    :pswitch_23
    const-string p0, "WAKE_REASON_DISPLAY_GROUP_ADDED"

    return-object p0

    .line 882
    :pswitch_26
    const-string p0, "WAKE_REASON_LID"

    return-object p0

    .line 881
    :pswitch_29
    const-string p0, "WAKE_REASON_HDMI"

    return-object p0

    .line 880
    :pswitch_2c
    const-string p0, "WAKE_REASON_WAKE_MOTION"

    return-object p0

    .line 879
    :pswitch_2f
    const-string p0, "WAKE_REASON_WAKE_KEY"

    return-object p0

    .line 878
    :pswitch_32
    const-string p0, "WAKE_REASON_CAMERA_LAUNCH"

    return-object p0

    .line 877
    :pswitch_35
    const-string p0, "WAKE_REASON_GESTURE"

    return-object p0

    .line 876
    :pswitch_38
    const-string p0, "WAKE_REASON_PLUGGED_IN"

    return-object p0

    .line 875
    :pswitch_3b
    const-string p0, "WAKE_REASON_APPLICATION"

    return-object p0

    .line 874
    :pswitch_3e
    const-string p0, "WAKE_REASON_POWER_BUTTON"

    return-object p0

    .line 873
    :pswitch_41
    const-string p0, "WAKE_REASON_UNKNOWN"

    return-object p0

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist addScreenTimeoutPolicyListener(ILjava/util/concurrent/Executor;Landroid/os/PowerManager$ScreenTimeoutPolicyListener;)V
    .registers 7

    .line 1963
    const-string v0, "listener cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1964
    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1965
    iget-object v0, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Listener already registered: %s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1968
    new-instance v0, Landroid/os/PowerManager$3;

    invoke-direct {v0, p0, p2, p3}, Landroid/os/PowerManager$3;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$ScreenTimeoutPolicyListener;)V

    .line 1981
    :try_start_20
    iget-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {p2, p1, v0}, Landroid/os/IPowerManager;->addScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 1982
    iget-object p1, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2a} :catch_2c

    .line 1985
    nop

    .line 1986
    return-void

    .line 1983
    :catch_2c
    move-exception p1

    .line 1984
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist addThermalHeadroomListener(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    .registers 3

    .line 3254
    const-string v0, "Thermal headroom listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3255
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->addThermalHeadroomListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V

    .line 3256
    return-void
.end method

.method public whitelist addThermalHeadroomListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    .registers 7

    .line 3267
    const-string v0, "Thermal headroom listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3268
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3269
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3270
    :try_start_d
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const-string v2, "Thermal headroom listener already registered: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3272
    new-instance v1, Landroid/os/PowerManager$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/PowerManager$5;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_44

    .line 3288
    :try_start_26
    iget-object p1, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {p1, v1}, Landroid/os/IThermalService;->registerThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 3289
    iget-object p1, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_33} :catch_3e
    .catchall {:try_start_26 .. :try_end_33} :catchall_44

    .line 3295
    nop

    .line 3296
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_44

    .line 3297
    return-void

    .line 3291
    :cond_36
    :try_start_36
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Thermal headroom listener failed to set"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_44

    .line 3293
    :catch_3e
    move-exception p1

    .line 3294
    :try_start_3f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3296
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw p1
.end method

.method public whitelist addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .registers 3

    .line 3183
    const-string v0, "Thermal status listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3184
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 3185
    return-void
.end method

.method public whitelist addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .registers 7

    .line 3195
    const-string v0, "Thermal status listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3196
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3197
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3198
    :try_start_d
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    const-string v2, "Thermal status listener already registered: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3200
    new-instance v1, Landroid/os/PowerManager$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/PowerManager$4;-><init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_44

    .line 3212
    :try_start_26
    iget-object p1, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {p1, v1}, Landroid/os/IThermalService;->registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 3213
    iget-object p1, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_33} :catch_3e
    .catchall {:try_start_26 .. :try_end_33} :catchall_44

    .line 3219
    nop

    .line 3220
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_44

    .line 3221
    return-void

    .line 3215
    :cond_36
    :try_start_36
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Thermal status listener failed to set"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_44

    .line 3217
    :catch_3e
    move-exception p1

    .line 3218
    :try_start_3f
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3220
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw p1
.end method

.method public blacklist areAutoPowerSaveModesEnabled()Z
    .registers 2

    .line 2330
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->areAutoPowerSaveModesEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2331
    :catch_7
    move-exception v0

    .line 2332
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o boostScreenBrightness(J)V
    .registers 4

    .line 1932
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1935
    nop

    .line 1936
    return-void

    .line 1933
    :catch_7
    move-exception p1

    .line 1934
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist dream(J)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1912
    iget-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/service/dreams/Sandman;->startDreamByUserRequest(Landroid/content/Context;)V

    .line 1913
    return-void
.end method

.method public blacklist forceLowPowerStandbyActive(Z)V
    .registers 3

    .line 2848
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->forceLowPowerStandbyActive(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2851
    nop

    .line 2852
    return-void

    .line 2849
    :catch_7
    move-exception p1

    .line 2850
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist forceSuspend()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3629
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->forceSuspend()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3630
    :catch_7
    move-exception v0

    .line 3631
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getActiveLowPowerStandbyPorts()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation

    .line 2977
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 2978
    invoke-interface {v0}, Landroid/os/IPowerManager;->getActiveLowPowerStandbyPorts()Ljava/util/List;

    move-result-object v0

    .line 2977
    invoke-static {v0}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->fromParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 2979
    :catch_b
    move-exception v0

    .line 2980
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getBatteryDischargePrediction()Ljava/time/Duration;
    .registers 2

    .line 2623
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getBatteryDischargePrediction()Landroid/os/ParcelDuration;

    move-result-object v0

    .line 2624
    if-nez v0, :cond_a

    .line 2625
    const/4 v0, 0x0

    return-object v0

    .line 2627
    :cond_a
    invoke-virtual {v0}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 2628
    :catch_f
    move-exception v0

    .line 2629
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-r getBrightnessConstraint(I)F
    .registers 3

    .line 1434
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result p1

    return p1
.end method

.method public blacklist getBrightnessConstraint(II)F
    .registers 4

    .line 1443
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->getBrightnessConstraint(II)F

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1444
    :catch_7
    move-exception p1

    .line 1445
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getCurrentThermalStatus()I
    .registers 2

    .line 3110
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getCurrentThermalStatus()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3111
    :catch_7
    move-exception v0

    .line 3112
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getDefaultScreenBrightnessSetting()I
    .registers 3

    .line 1424
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public whitelist getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2396
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getFullPowerSavePolicy()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2397
    :catch_7
    move-exception v0

    .line 2398
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getLastShutdownReason()I
    .registers 2

    .line 3586
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastShutdownReason()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3587
    :catch_7
    move-exception v0

    .line 3588
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getLastSleepReason()I
    .registers 2

    .line 3603
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastSleepReason()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3604
    :catch_7
    move-exception v0

    .line 3605
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getLocationPowerSaveMode()I
    .registers 3

    .line 2677
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 2678
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v1, :cond_b

    .line 2679
    const/4 v0, 0x0

    return v0

    .line 2681
    :cond_b
    iget v0, v0, Landroid/os/PowerSaveState;->locationMode:I

    return v0
.end method

.method public whitelist getLowPowerStandbyPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2894
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLowPowerStandbyPolicy()Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 2895
    :catch_b
    move-exception v0

    .line 2896
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist getMaximumScreenBrightnessSetting()I
    .registers 3

    .line 1414
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public greylist getMinimumScreenBrightnessSetting()I
    .registers 3

    .line 1402
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public whitelist getPowerSaveModeTrigger()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2576
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getPowerSaveModeTrigger()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2577
    :catch_7
    move-exception v0

    .line 2578
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public greylist-max-o getPowerSaveState(I)Landroid/os/PowerSaveState;
    .registers 3

    .line 2660
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 2661
    :catch_7
    move-exception p1

    .line 2662
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getSoundTriggerPowerSaveMode()I
    .registers 3

    .line 2697
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    .line 2698
    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-nez v1, :cond_c

    .line 2699
    const/4 v0, 0x0

    return v0

    .line 2701
    :cond_c
    iget v0, v0, Landroid/os/PowerSaveState;->soundTriggerMode:I

    return v0
.end method

.method public whitelist getThermalHeadroom(I)F
    .registers 6

    .line 3366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3367
    iget-object v2, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3368
    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 3369
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 3373
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p1}, Landroid/os/IThermalService;->getThermalHeadroom(I)F

    move-result p1

    .line 3374
    iget-object v0, p0, Landroid/os/PowerManager;->mLastHeadroomUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_23} :catch_24

    .line 3375
    return p1

    .line 3376
    :catch_24
    move-exception p1

    .line 3377
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getThermalHeadroomThresholds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 3422
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0}, Landroid/os/IThermalService;->getThermalHeadroomThresholds()[F

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/PowerManager;->convertThresholdsToMap([F)Ljava/util/Map;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 3423
    :catch_b
    move-exception v0

    .line 3424
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist goToSleep(IJII)V
    .registers 7

    .line 1754
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/os/IPowerManager;->goToSleepWithDisplayId(IJII)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1757
    nop

    .line 1758
    return-void

    .line 1755
    :catch_8
    move-exception v0

    move-object p1, v0

    .line 1756
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist goToSleep(J)V
    .registers 4

    .line 1680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1681
    return-void
.end method

.method public greylist goToSleep(JII)V
    .registers 6

    .line 1717
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1720
    nop

    .line 1721
    return-void

    .line 1718
    :catch_7
    move-exception p1

    .line 1719
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isAllowedInLowPowerStandby(I)Z
    .registers 3

    .line 2923
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isReasonAllowedInLowPowerStandby(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2924
    :catch_7
    move-exception p1

    .line 2925
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isAllowedInLowPowerStandby(Ljava/lang/String;)Z
    .registers 3

    .line 2935
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isFeatureAllowedInLowPowerStandby(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2936
    :catch_7
    move-exception p1

    .line 2937
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isAmbientDisplayAvailable()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3471
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isAmbientDisplayAvailable()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3472
    :catch_7
    move-exception v0

    .line 3473
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isAmbientDisplaySuppressed()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3549
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 3550
    :catch_7
    move-exception v0

    .line 3551
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3533
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressedForToken(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 3534
    :catch_7
    move-exception p1

    .line 3535
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z
    .registers 4

    .line 3570
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->isAmbientDisplaySuppressedForTokenByApp(Ljava/lang/String;I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 3571
    :catch_7
    move-exception p1

    .line 3572
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist isBatteryDischargePredictionPersonalized()Z
    .registers 2

    .line 2643
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isBatteryDischargePredictionPersonalized()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2644
    :catch_7
    move-exception v0

    .line 2645
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isBatterySaverSupported()Z
    .registers 2

    .line 2378
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isBatterySaverSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2379
    :catch_7
    move-exception v0

    .line 2380
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isDeviceIdleMode()Z
    .registers 2

    .line 2718
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isDeviceIdleMode()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2719
    :catch_7
    move-exception v0

    .line 2720
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isDeviceLightIdleMode()Z
    .registers 2

    .line 2737
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLightDeviceIdleMode()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2738
    :catch_7
    move-exception v0

    .line 2739
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isExemptFromLowPowerStandby()Z
    .registers 2

    .line 2907
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isExemptFromLowPowerStandby()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2908
    :catch_7
    move-exception v0

    .line 2909
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    .registers 4

    .line 2992
    invoke-direct {p0}, Landroid/os/PowerManager;->getPowerExemptionManager()Landroid/os/PowerExemptionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/PowerExemptionManager;->isAllowListed(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist isInteractive()Z
    .registers 2

    .line 2080
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->isInteractive(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isInteractive(I)Z
    .registers 3

    .line 2095
    iget-object v0, p0, Landroid/os/PowerManager;->mInteractiveCache:Landroid/app/PropertyInvalidatedCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isLightDeviceIdleMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2752
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceLightIdleMode()Z

    move-result v0

    return v0
.end method

.method public whitelist isLowPowerStandbyEnabled()Z
    .registers 2

    .line 2786
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLowPowerStandbyEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2787
    :catch_7
    move-exception v0

    .line 2788
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isLowPowerStandbySupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2767
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLowPowerStandbySupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2768
    :catch_7
    move-exception v0

    .line 2769
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isPowerSaveMode()Z
    .registers 3

    .line 2345
    iget-object v0, p0, Landroid/os/PowerManager;->mPowerSaveModeCache:Landroid/app/PropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isRebootingUserspaceSupported()Z
    .registers 2

    .line 2117
    invoke-static {}, Landroid/os/PowerManager;->isRebootingUserspaceSupportedImpl()Z

    move-result v0

    return v0
.end method

.method public whitelist isScreenOn()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2042
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public whitelist isSustainedPerformanceModeSupported()Z
    .registers 3

    .line 3048
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110295

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWakeLockLevelSupported(I)Z
    .registers 4

    .line 2017
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/os/IPowerManager;->isWakeLockLevelSupportedWithDisplayId(II)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 2018
    :catch_d
    move-exception p1

    .line 2019
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist nap(J)V
    .registers 4

    .line 1883
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1886
    nop

    .line 1887
    return-void

    .line 1884
    :catch_7
    move-exception p1

    .line 1885
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist newLowPowerStandbyPortsLock(Ljava/util/List;)Landroid/os/PowerManager$LowPowerStandbyPortsLock;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)",
            "Landroid/os/PowerManager$LowPowerStandbyPortsLock;"
        }
    .end annotation

    .line 2959
    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;

    invoke-direct {v0, p0, p1}, Landroid/os/PowerManager$LowPowerStandbyPortsLock;-><init>(Landroid/os/PowerManager;Ljava/util/List;)V

    .line 2960
    return-object v0
.end method

.method public blacklist newSleepLock(ILjava/lang/String;)Landroid/os/PowerManager$SleepLock;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 2183
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2188
    new-instance v0, Landroid/os/PowerManager$SleepLock;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManager$SleepLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    return-object v0

    .line 2184
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Partial Sleep WakeLocks are not allowed on this device due to the configuration"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 4

    .line 1531
    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;
    .registers 10

    .line 1549
    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 1550
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public whitelist reboot(Ljava/lang/String;)V
    .registers 5

    .line 2139
    const-string/jumbo v0, "userspace"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/os/PowerManager;->isRebootingUserspaceSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_18

    .line 2140
    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempted userspace reboot on a device that doesn\'t support it"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2144
    :cond_18
    :goto_18
    :try_start_18
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_21

    .line 2147
    nop

    .line 2148
    return-void

    .line 2145
    :catch_21
    move-exception p1

    .line 2146
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist rebootCustom(Ljava/lang/String;)V
    .registers 5

    .line 2299
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->rebootCustom(ZLjava/lang/String;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2302
    nop

    .line 2303
    return-void

    .line 2300
    :catch_9
    move-exception p1

    .line 2301
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o rebootSafeMode()V
    .registers 4

    .line 2315
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->rebootSafeMode(ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2318
    nop

    .line 2319
    return-void

    .line 2316
    :catch_9
    move-exception v0

    .line 2317
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist removeScreenTimeoutPolicyListener(ILandroid/os/PowerManager$ScreenTimeoutPolicyListener;)V
    .registers 6

    .line 1997
    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1998
    iget-object v0, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IScreenTimeoutPolicyListener;

    .line 1999
    if-eqz v0, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const-string v2, "Listener was not added"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2002
    :try_start_17
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, v0}, Landroid/os/IPowerManager;->removeScreenTimeoutPolicyListener(ILandroid/os/IScreenTimeoutPolicyListener;)V

    .line 2003
    iget-object p1, p0, Landroid/os/PowerManager;->mScreenTimeoutPolicyListeners:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_23

    .line 2006
    nop

    .line 2007
    return-void

    .line 2004
    :catch_23
    move-exception p1

    .line 2005
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist removeThermalHeadroomListener(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    .registers 6

    .line 3306
    const-string v0, "Thermal headroom listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3307
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3308
    :try_start_8
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IThermalHeadroomListener;

    .line 3309
    if-eqz v1, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    const-string v3, "Thermal headroom listener was not added"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_38

    .line 3312
    :try_start_1a
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v2, v1}, Landroid/os/IThermalService;->unregisterThermalHeadroomListener(Landroid/os/IThermalHeadroomListener;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3313
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalHeadroomListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_32
    .catchall {:try_start_1a .. :try_end_27} :catchall_38

    .line 3319
    nop

    .line 3320
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_38

    .line 3321
    return-void

    .line 3315
    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Failed to unregister thermal status listener"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_38

    .line 3317
    :catch_32
    move-exception p1

    .line 3318
    :try_start_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3320
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public whitelist removeThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .registers 6

    .line 3229
    const-string v0, "Thermal status listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3230
    iget-object v0, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3231
    :try_start_8
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IThermalStatusListener;

    .line 3232
    if-eqz v1, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    const-string v3, "Thermal status listener was not added"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_38

    .line 3235
    :try_start_1a
    iget-object v2, p0, Landroid/os/PowerManager;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v2, v1}, Landroid/os/IThermalService;->unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3236
    iget-object v1, p0, Landroid/os/PowerManager;->mThermalStatusListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_32
    .catchall {:try_start_1a .. :try_end_27} :catchall_38

    .line 3242
    nop

    .line 3243
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_38

    .line 3244
    return-void

    .line 3238
    :cond_2a
    :try_start_2a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Failed to unregister thermal status listener"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_32} :catch_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_38

    .line 3240
    :catch_32
    move-exception p1

    .line 3241
    :try_start_33
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3243
    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public whitelist setAdaptivePowerSaveEnabled(Z)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2520
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAdaptivePowerSaveEnabled(Z)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2521
    :catch_7
    move-exception p1

    .line 2522
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2499
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2500
    :catch_7
    move-exception p1

    .line 2501
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setBatteryDischargePrediction(Ljava/time/Duration;Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2603
    if-eqz p1, :cond_14

    .line 2607
    :try_start_2
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    new-instance v1, Landroid/os/ParcelDuration;

    invoke-direct {v1, p1}, Landroid/os/ParcelDuration;-><init>(Ljava/time/Duration;)V

    invoke-interface {v0, v1, p2}, Landroid/os/IPowerManager;->setBatteryDischargePrediction(Landroid/os/ParcelDuration;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_e

    .line 2611
    nop

    .line 2612
    return-void

    .line 2609
    :catch_e
    move-exception p1

    .line 2610
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2604
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "time remaining must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o setDozeAfterScreenOff(Z)V
    .registers 3

    .line 3457
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setDozeAfterScreenOff(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3460
    nop

    .line 3461
    return-void

    .line 3458
    :catch_7
    move-exception p1

    .line 3459
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setDynamicPowerSaveHint(ZI)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2478
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setDynamicPowerSaveHint(ZI)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2479
    :catch_7
    move-exception p1

    .line 2480
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2437
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setFullPowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2438
    :catch_7
    move-exception p1

    .line 2439
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setKeyboardVisibility(Z)V
    .registers 3

    .line 3443
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    if-eqz v0, :cond_9

    .line 3444
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setKeyboardVisibility(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3447
    :cond_9
    goto :goto_b

    .line 3446
    :catch_a
    move-exception p1

    .line 3448
    :goto_b
    return-void
.end method

.method public whitelist setLowPowerStandbyActiveDuringMaintenance(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2828
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyActiveDuringMaintenance(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2831
    nop

    .line 2832
    return-void

    .line 2829
    :catch_7
    move-exception p1

    .line 2830
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setLowPowerStandbyEnabled(Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2807
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2810
    nop

    .line 2811
    return-void

    .line 2808
    :catch_7
    move-exception p1

    .line 2809
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setLowPowerStandbyPolicy(Landroid/os/PowerManager$LowPowerStandbyPolicy;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2871
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-static {p1}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->toParcelable(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setLowPowerStandbyPolicy(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 2874
    nop

    .line 2875
    return-void

    .line 2872
    :catch_b
    move-exception p1

    .line 2873
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setPowerSaveModeEnabled(Z)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2363
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setPowerSaveModeEnabled(Z)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2364
    :catch_7
    move-exception p1

    .line 2365
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist shutdown(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3026
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const-string/jumbo v1, "service"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p1}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 3029
    nop

    .line 3030
    return-void

    .line 3027
    :catch_b
    move-exception p1

    .line 3028
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist-max-o shutdown(ZLjava/lang/String;Z)V
    .registers 5

    .line 3006
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3009
    nop

    .line 3010
    return-void

    .line 3007
    :catch_7
    move-exception p1

    .line 3008
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist suppressAmbientDisplay(Ljava/lang/String;I)V
    .registers 4

    .line 3514
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->suppressAmbientDisplayBehavior(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3517
    nop

    .line 3518
    return-void

    .line 3515
    :catch_7
    move-exception p1

    .line 3516
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist suppressAmbientDisplay(Ljava/lang/String;Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3493
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->suppressAmbientDisplay(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 3496
    nop

    .line 3497
    return-void

    .line 3494
    :catch_7
    move-exception p1

    .line 3495
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist userActivity(JII)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1644
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->userActivity(IJII)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 1647
    nop

    .line 1648
    return-void

    .line 1645
    :catch_10
    move-exception v0

    move-object p1, v0

    .line 1646
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist userActivity(JZ)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1609
    nop

    .line 1610
    nop

    .line 1609
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1611
    return-void
.end method

.method public greylist wakeUp(J)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1770
    const/4 v0, 0x0

    const-string/jumbo v1, "wakeUp"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1771
    return-void
.end method

.method public blacklist wakeUp(JILjava/lang/String;)V
    .registers 11

    .line 1795
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IPowerManager;->wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 1798
    nop

    .line 1799
    return-void

    .line 1796
    :catch_10
    move-exception v0

    move-object p1, v0

    .line 1797
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist wakeUp(JILjava/lang/String;I)V
    .registers 13

    .line 1835
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->wakeUpWithDisplayId(JILjava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1839
    nop

    .line 1840
    return-void

    .line 1837
    :catch_11
    move-exception v0

    move-object p1, v0

    .line 1838
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public greylist wakeUp(JLjava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1784
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 1785
    return-void
.end method

.method public blacklist wakeUpWithProximityCheck(JILjava/lang/String;I)V
    .registers 13

    .line 1853
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/IPowerManager;->wakeUpWithProximityCheck(JILjava/lang/String;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 1857
    nop

    .line 1858
    return-void

    .line 1855
    :catch_11
    move-exception v0

    move-object p1, v0

    .line 1856
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
