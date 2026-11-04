.class public Lcom/android/internal/util/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/LatencyTracker$ActionProperties;,
        Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;,
        Lcom/android/internal/util/LatencyTracker$Session;,
        Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;,
        Lcom/android/internal/util/LatencyTracker$Action;
    }
.end annotation


# static fields
.field private static final blacklist ACTIONS_ALL:[I

.field public static final blacklist ACTION_BACK_SYSTEM_ANIMATION:I = 0x19

.field public static final blacklist ACTION_CHECK_CREDENTIAL:I = 0x3

.field public static final blacklist ACTION_CHECK_CREDENTIAL_UNLOCKED:I = 0x4

.field public static final blacklist ACTION_DESKTOP_MODE_ENTER_APP_HANDLE_DRAG:I = 0x1e

.field public static final blacklist ACTION_DESKTOP_MODE_ENTER_APP_HANDLE_MENU:I = 0x1f

.field public static final blacklist ACTION_DESKTOP_MODE_EXIT_MODE:I = 0x20

.field public static final blacklist ACTION_DESKTOP_MODE_EXIT_MODE_ON_LAST_WINDOW_CLOSE:I = 0x21

.field public static final blacklist ACTION_EXPAND_PANEL:I = 0x0

.field public static final blacklist ACTION_FACE_WAKE_AND_UNLOCK:I = 0x7

.field public static final blacklist ACTION_FINGERPRINT_WAKE_AND_UNLOCK:I = 0x2

.field public static final blacklist ACTION_FOLD_TO_AOD:I = 0x12

.field public static final blacklist ACTION_KEYGUARD_FACE_UNLOCK_TO_HOME:I = 0x1c

.field public static final blacklist ACTION_KEYGUARD_FPS_UNLOCK_TO_HOME:I = 0x18

.field public static final blacklist ACTION_LOAD_SHARE_SHEET:I = 0x10

.field public static final blacklist ACTION_LOCKSCREEN_UNLOCK:I = 0xb

.field public static final blacklist ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE:I = 0x1a

.field public static final blacklist ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE_WITH_SHADE_OPEN:I = 0x1b

.field public static final blacklist ACTION_NOTIFICATION_BIG_PICTURE_LOADED:I = 0x17

.field public static final blacklist ACTION_REQUEST_IME_HIDDEN:I = 0x15

.field public static final blacklist ACTION_REQUEST_IME_SHOWN:I = 0x14

.field public static final blacklist ACTION_ROTATE_SCREEN:I = 0x6

.field public static final blacklist ACTION_ROTATE_SCREEN_CAMERA_CHECK:I = 0x9

.field public static final blacklist ACTION_ROTATE_SCREEN_SENSOR:I = 0xa

.field public static final blacklist ACTION_SHADE_WINDOW_DISPLAY_CHANGE:I = 0x1d

.field public static final blacklist ACTION_SHOW_BACK_ARROW:I = 0xf

.field public static final blacklist ACTION_SHOW_SELECTION_TOOLBAR:I = 0x11

.field public static final blacklist ACTION_SHOW_VOICE_INTERACTION:I = 0x13

.field public static final blacklist ACTION_SMARTSPACE_DOORBELL:I = 0x16

.field public static final blacklist ACTION_START_RECENTS_ANIMATION:I = 0x8

.field public static final blacklist ACTION_SWITCH_DISPLAY_FOLD:I = 0x22

.field public static final blacklist ACTION_SWITCH_DISPLAY_UNFOLD:I = 0xd

.field public static final blacklist ACTION_TOGGLE_RECENTS:I = 0x1

.field public static final blacklist ACTION_TURN_ON_SCREEN:I = 0x5

.field public static final blacklist ACTION_UDFPS_ILLUMINATE:I = 0xe

.field public static final blacklist ACTION_UDFPS_OVERLAY_ATTACHED_AFTER_GOING_TO_SLEEP:I = 0x23

.field public static final blacklist ACTION_USER_SWITCH:I = 0xc

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_ENABLED:Z

.field private static final blacklist DEFAULT_SAMPLING_INTERVAL:I = 0x5

.field public static final blacklist SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final blacklist SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field public static final blacklist STATSD_ACTION:[I

.field private static final blacklist TAG:Ljava/lang/String; = "LatencyTracker"


# instance fields
.field private final blacklist mActionPropertiesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$ActionProperties;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnabled:Z

.field private blacklist mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final blacklist mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$CoS167Roc-277yNER0JYfF9Y4Ho(Lcom/android/internal/util/LatencyTracker;Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/LatencyTracker;->lambda$startListeningForLatencyTrackerConfigChanges$0(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GEhnnM5WqqSsZoU7jDo0aVrxC_k(Lcom/android/internal/util/LatencyTracker;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bfKG0XUlZp6yLm2EoLfYk1sdLw8(Lcom/android/internal/util/LatencyTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->lambda$onActionStart$1(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/LatencyTracker;->getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 108
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    .line 340
    const/16 v0, 0x24

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    sput-object v1, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    .line 422
    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    return-void

    nop

    :array_16
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
    .end array-data

    :array_62
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    .line 462
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    .line 464
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    .line 468
    new-instance v0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/LatencyTracker;)V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 501
    sget-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 502
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;
    .registers 1

    .line 485
    invoke-static {}, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->-$$Nest$sfgetsLatencyTracker()Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getNameOfAction(I)Ljava/lang/String;
    .registers 2

    .line 612
    packed-switch p0, :pswitch_data_7a

    .line 688
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid action"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 686
    :pswitch_b
    const-string p0, "ACTION_UDFPS_OVERLAY_ATTACHED_AFTER_GOING_TO_SLEEP"

    return-object p0

    .line 684
    :pswitch_e
    const-string p0, "ACTION_SWITCH_DISPLAY_FOLD"

    return-object p0

    .line 682
    :pswitch_11
    const-string p0, "ACTION_DESKTOP_MODE_EXIT_MODE_ON_LAST_WINDOW_CLOSE"

    return-object p0

    .line 680
    :pswitch_14
    const-string p0, "ACTION_DESKTOP_MODE_EXIT_MODE"

    return-object p0

    .line 678
    :pswitch_17
    const-string p0, "ACTION_DESKTOP_MODE_ENTER_APP_HANDLE_MENU"

    return-object p0

    .line 676
    :pswitch_1a
    const-string p0, "ACTION_DESKTOP_MODE_ENTER_APP_HANDLE_DRAG"

    return-object p0

    .line 674
    :pswitch_1d
    const-string p0, "ACTION_SHADE_WINDOW_DISPLAY_CHANGE"

    return-object p0

    .line 672
    :pswitch_20
    const-string p0, "ACTION_KEYGUARD_FACE_UNLOCK_TO_HOME"

    return-object p0

    .line 670
    :pswitch_23
    const-string p0, "ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE_WITH_SHADE_OPEN"

    return-object p0

    .line 668
    :pswitch_26
    const-string p0, "ACTION_NOTIFICATIONS_HIDDEN_FOR_MEASURE"

    return-object p0

    .line 666
    :pswitch_29
    const-string p0, "ACTION_BACK_SYSTEM_ANIMATION"

    return-object p0

    .line 664
    :pswitch_2c
    const-string p0, "ACTION_KEYGUARD_FPS_UNLOCK_TO_HOME"

    return-object p0

    .line 662
    :pswitch_2f
    const-string p0, "ACTION_NOTIFICATION_BIG_PICTURE_LOADED"

    return-object p0

    .line 660
    :pswitch_32
    const-string p0, "ACTION_SMARTSPACE_DOORBELL"

    return-object p0

    .line 658
    :pswitch_35
    const-string p0, "ACTION_REQUEST_IME_HIDDEN"

    return-object p0

    .line 656
    :pswitch_38
    const-string p0, "ACTION_REQUEST_IME_SHOWN"

    return-object p0

    .line 654
    :pswitch_3b
    const-string p0, "ACTION_SHOW_VOICE_INTERACTION"

    return-object p0

    .line 652
    :pswitch_3e
    const-string p0, "ACTION_FOLD_TO_AOD"

    return-object p0

    .line 650
    :pswitch_41
    const-string p0, "ACTION_SHOW_SELECTION_TOOLBAR"

    return-object p0

    .line 648
    :pswitch_44
    const-string p0, "ACTION_LOAD_SHARE_SHEET"

    return-object p0

    .line 646
    :pswitch_47
    const-string p0, "ACTION_SHOW_BACK_ARROW"

    return-object p0

    .line 644
    :pswitch_4a
    const-string p0, "ACTION_UDFPS_ILLUMINATE"

    return-object p0

    .line 642
    :pswitch_4d
    const-string p0, "ACTION_SWITCH_DISPLAY_UNFOLD"

    return-object p0

    .line 640
    :pswitch_50
    const-string p0, "ACTION_USER_SWITCH"

    return-object p0

    .line 638
    :pswitch_53
    const-string p0, "ACTION_LOCKSCREEN_UNLOCK"

    return-object p0

    .line 636
    :pswitch_56
    const-string p0, "ACTION_ROTATE_SCREEN_SENSOR"

    return-object p0

    .line 634
    :pswitch_59
    const-string p0, "ACTION_ROTATE_SCREEN_CAMERA_CHECK"

    return-object p0

    .line 632
    :pswitch_5c
    const-string p0, "ACTION_START_RECENTS_ANIMATION"

    return-object p0

    .line 630
    :pswitch_5f
    const-string p0, "ACTION_FACE_WAKE_AND_UNLOCK"

    return-object p0

    .line 628
    :pswitch_62
    const-string p0, "ACTION_ROTATE_SCREEN"

    return-object p0

    .line 626
    :pswitch_65
    const-string p0, "ACTION_TURN_ON_SCREEN"

    return-object p0

    .line 624
    :pswitch_68
    const-string p0, "ACTION_CHECK_CREDENTIAL_UNLOCKED"

    return-object p0

    .line 622
    :pswitch_6b
    const-string p0, "ACTION_CHECK_CREDENTIAL"

    return-object p0

    .line 620
    :pswitch_6e
    const-string p0, "ACTION_FINGERPRINT_WAKE_AND_UNLOCK"

    return-object p0

    .line 618
    :pswitch_71
    const-string p0, "ACTION_TOGGLE_RECENTS"

    return-object p0

    .line 616
    :pswitch_74
    const-string p0, "ACTION_EXPAND_PANEL"

    return-object p0

    .line 614
    :pswitch_77
    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_3
        :pswitch_3
        :pswitch_3
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
    .end packed-switch
.end method

.method private static blacklist getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 693
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ">"

    const-string v2, "L<"

    if-eqz v0, :cond_28

    .line 694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget p0, v0, p0

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 696
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget p0, v2, p0

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "::"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getTraceTriggerNameForAction(I)Ljava/lang/String;
    .registers 3

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.telemetry.latency-tracker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget p0, v1, p0

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;I)Z
    .registers 2

    .line 723
    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$onActionStart$1(I)V
    .registers 2

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    return-void
.end method

.method private synthetic blacklist lambda$startListeningForLatencyTrackerConfigChanges$0(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .registers 5

    .line 575
    const-string v0, "latency_tracker"

    const/4 v1, 0x0

    :try_start_3
    new-array v1, v1, [Ljava/lang/String;

    .line 576
    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    .line 575
    invoke-direct {p0, v1}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    .line 577
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_11} :catch_12

    .line 586
    goto :goto_3f

    .line 579
    :catch_12
    move-exception p1

    .line 583
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t get properties: READ_DEVICE_CONFIG granted="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 584
    const-string v0, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", package="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 585
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 583
    const-string p2, "LatencyTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_3f
    return-void
.end method

.method private blacklist updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 15

    .line 505
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_3
    const-string v1, "sampling_interval"

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 508
    iget-boolean v2, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 509
    const-string v3, "enabled"

    sget-boolean v4, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    invoke-virtual {p1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 510
    iget-boolean v3, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-eq v2, v3, :cond_41

    .line 511
    const-string v2, "LatencyTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latency tracker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    if-eqz v4, :cond_2e

    const-string v4, "enabled"

    goto :goto_30

    :cond_2e
    const-string v4, "disabled"

    :goto_30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_41
    sget-object v2, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_45
    if-ge v4, v3, :cond_c3

    aget v5, v2, v4

    .line 514
    sget-object v6, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v6, v6, v5

    invoke-static {v6}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 515
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 517
    iget-object v8, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_enable"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    .line 518
    invoke-virtual {p1, v10, v11}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_sample_interval"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 519
    invoke-virtual {p1, v11, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "_trace_threshold"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 520
    invoke-virtual {p1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v9, v5, v10, v11, v6}, Lcom/android/internal/util/LatencyTracker$ActionProperties;-><init>(IZII)V

    .line 517
    invoke-virtual {v8, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 523
    :cond_c3
    iget-object p1, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onDeviceConfigPropertiesUpdated(Landroid/util/SparseArray;)V

    .line 524
    monitor-exit v0

    .line 525
    return-void

    .line 524
    :catchall_ca
    move-exception p1

    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_3 .. :try_end_cc} :catchall_ca

    throw p1
.end method


# virtual methods
.method public blacklist getActiveActionStartTime(I)J
    .registers 5

    .line 836
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 838
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/LatencyTracker$Session;

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker$Session;->-$$Nest$fgetmStartRtc(Lcom/android/internal/util/LatencyTracker$Session;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 840
    :cond_19
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 841
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public blacklist isEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 719
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isEnabled(I)Z
    .registers 4

    .line 727
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    .line 729
    if-eqz p1, :cond_13

    .line 730
    invoke-virtual {p1}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->isEnabled()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 732
    :cond_13
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 733
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public blacklist logAction(II)V
    .registers 12

    .line 853
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 854
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 855
    monitor-exit v1

    return-void

    .line 857
    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mActionPropertiesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/LatencyTracker$ActionProperties;

    .line 858
    if-nez v0, :cond_17

    .line 859
    monitor-exit v1

    return-void

    .line 861
    :cond_17
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    .line 862
    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->getSamplingInterval()I

    move-result v3

    .line 861
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result v2

    .line 863
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v4

    .line 864
    :goto_2a
    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker$ActionProperties;->getTraceThreshold()I

    move-result v0

    .line 865
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_64

    .line 867
    if-lez v0, :cond_34

    if-lt p2, v0, :cond_34

    goto :goto_35

    :cond_34
    move v3, v4

    .line 876
    :goto_35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x8ce6

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 877
    if-eqz v3, :cond_50

    .line 878
    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getTraceTriggerNameForAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/LatencyTracker;->onTriggerPerfetto(Ljava/lang/String;)V

    .line 880
    :cond_50
    if-eqz v2, :cond_63

    .line 881
    new-instance v3, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;

    sget-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v6, v0, p1

    const/4 v8, 0x0

    const/16 v5, 0x132

    move v4, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;-><init>(IIIILcom/android/internal/util/LatencyTracker-IA;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/util/LatencyTracker;->onLogToFrameworkStats(Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;)V

    .line 886
    :cond_63
    return-void

    .line 865
    :catchall_64
    move-exception v0

    move-object p1, v0

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_64

    throw p1
.end method

.method public blacklist onActionCancel(I)V
    .registers 7

    .line 808
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    .line 810
    if-nez v1, :cond_f

    .line 811
    monitor-exit v0

    return-void

    .line 813
    :cond_f
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v2, :cond_1d

    .line 814
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 815
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 814
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerRemoved(ZI)V

    .line 817
    :cond_1d
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->cancel()V

    .line 818
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 823
    monitor-exit v0

    .line 824
    return-void

    .line 823
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public blacklist onActionEnd(I)V
    .registers 7

    .line 779
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 781
    monitor-exit v0

    return-void

    .line 783
    :cond_b
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    .line 784
    if-nez v1, :cond_17

    .line 785
    monitor-exit v0

    return-void

    .line 787
    :cond_17
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz v2, :cond_25

    .line 788
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 789
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 788
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerRemoved(ZI)V

    .line 791
    :cond_25
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->end()V

    .line 792
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 793
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->duration()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    .line 798
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public blacklist onActionStart(I)V
    .registers 3

    .line 742
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 743
    return-void
.end method

.method public blacklist onActionStart(ILjava/lang/String;)V
    .registers 7

    .line 752
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 754
    monitor-exit v0

    return-void

    .line 757
    :cond_b
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 758
    monitor-exit v0

    return-void

    .line 760
    :cond_15
    new-instance v1, Lcom/android/internal/util/LatencyTracker$Session;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/util/LatencyTracker$Session;-><init>(ILjava/lang/String;)V

    .line 761
    iget-object p2, p0, Lcom/android/internal/util/LatencyTracker;->mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    if-eqz p2, :cond_2b

    .line 762
    iget-object p2, p0, Lcom/android/internal/util/LatencyTracker;->mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 763
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 762
    invoke-virtual {p2, v2, v3}, Lcom/android/internal/jank/InteractionMonitorDebugOverlay;->onTrackerAdded(Ljava/lang/String;I)V

    .line 765
    :cond_2b
    new-instance p2, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/LatencyTracker;I)V

    invoke-virtual {v1, p2}, Lcom/android/internal/util/LatencyTracker$Session;->begin(Ljava/lang/Runnable;)V

    .line 766
    iget-object p2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 770
    monitor-exit v0

    .line 771
    return-void

    .line 770
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public blacklist onDeviceConfigPropertiesUpdated(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$ActionProperties;",
            ">;)V"
        }
    .end annotation

    .line 1042
    return-void
.end method

.method public blacklist onLogToFrameworkStats(Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;)V
    .registers 4

    .line 1064
    iget v0, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->logCode:I

    iget v1, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->statsdAction:I

    iget p1, p1, Lcom/android/internal/util/LatencyTracker$FrameworkStatsLogEvent;->durationMillis:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1065
    return-void
.end method

.method public blacklist onTriggerPerfetto(Ljava/lang/String;)V
    .registers 2

    .line 1052
    invoke-static {p1}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public blacklist setDebugOverlay(Lcom/android/internal/jank/InteractionMonitorDebugOverlay;)V
    .registers 3

    .line 532
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker;->mInteractionMonitorDebugOverlay:Lcom/android/internal/jank/InteractionMonitorDebugOverlay;

    .line 534
    monitor-exit v0

    .line 535
    return-void

    .line 534
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public blacklist startListeningForLatencyTrackerConfigChanges(Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 552
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 553
    if-nez v0, :cond_1b

    .line 554
    nop

    .line 558
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 556
    const-string v0, "No application for package: %s. Latency Tracker Disabled"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 554
    const-string v0, "LatencyTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void

    .line 561
    :cond_1b
    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_24

    .line 569
    return-void

    .line 573
    :cond_24
    new-instance v1, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/LatencyTracker;Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 588
    return-void
.end method

.method public blacklist stopListeningForLatencyTrackerConfigChanges()V
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 602
    return-void
.end method
