.class public abstract Landroid/os/PowerManagerInternal;
.super Ljava/lang/Object;
.source "PowerManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManagerInternal$LowPowerModeListener;
    }
.end annotation


# static fields
.field public static final blacklist BOOST_DISPLAY_UPDATE_IMMINENT:I = 0x1

.field public static final blacklist BOOST_INTERACTION:I = 0x0

.field public static final blacklist MODE_DEVICE_IDLE:I = 0x8

.field public static final blacklist MODE_DISPLAY_CHANGE:I = 0x11

.field public static final blacklist MODE_DISPLAY_INACTIVE:I = 0x9

.field public static final blacklist MODE_DOUBLE_TAP_TO_WAKE:I = 0x0

.field public static final blacklist MODE_EXPENSIVE_RENDERING:I = 0x6

.field public static final blacklist MODE_FIXED_PERFORMANCE:I = 0x3

.field public static final blacklist MODE_INTERACTIVE:I = 0x7

.field public static final blacklist MODE_LAUNCH:I = 0x5

.field public static final blacklist MODE_LOW_POWER:I = 0x1

.field public static final blacklist MODE_SUSTAINED_PERFORMANCE:I = 0x2

.field public static final blacklist MODE_VR:I = 0x4

.field public static final greylist-max-o WAKEFULNESS_ASLEEP:I = 0x0

.field public static final greylist-max-o WAKEFULNESS_AWAKE:I = 0x1

.field public static final greylist-max-o WAKEFULNESS_DOZING:I = 0x3

.field public static final greylist-max-o WAKEFULNESS_DREAMING:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getLockLevelString(I)Ljava/lang/String;
    .registers 2

    .line 99
    const v0, 0xffff

    and-int/2addr p0, v0

    sparse-switch p0, :sswitch_data_26

    .line 110
    const-string p0, "???"

    goto :goto_24

    .line 109
    :sswitch_a
    const-string p0, "PARTIAL_SLEEP_WAKE_LOCK"

    goto :goto_24

    .line 108
    :sswitch_d
    const-string p0, "SCREEN_TIMEOUT_OVERRIDE_WAKE_LOCK"

    goto :goto_24

    .line 106
    :sswitch_10
    const-string p0, "DRAW_WAKE_LOCK"

    goto :goto_24

    .line 105
    :sswitch_13
    const-string p0, "DOZE_WAKE_LOCK"

    goto :goto_24

    .line 104
    :sswitch_16
    const-string p0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    goto :goto_24

    .line 100
    :sswitch_19
    const-string p0, "FULL_WAKE_LOCK"

    goto :goto_24

    .line 101
    :sswitch_1c
    const-string p0, "SCREEN_BRIGHT_WAKE_LOCK"

    goto :goto_24

    .line 102
    :sswitch_1f
    const-string p0, "SCREEN_DIM_WAKE_LOCK"

    goto :goto_24

    .line 103
    :sswitch_22
    const-string p0, "PARTIAL_WAKE_LOCK"

    .line 99
    :goto_24
    return-object p0

    nop

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_22
        0x6 -> :sswitch_1f
        0xa -> :sswitch_1c
        0x1a -> :sswitch_19
        0x20 -> :sswitch_16
        0x40 -> :sswitch_13
        0x80 -> :sswitch_10
        0x100 -> :sswitch_d
        0x200 -> :sswitch_a
    .end sparse-switch
.end method

.method public static greylist-max-o isInteractive(I)Z
    .registers 3

    .line 119
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method public static greylist-max-o wakefulnessToProtoEnum(I)I
    .registers 1

    .line 78
    packed-switch p0, :pswitch_data_c

    .line 88
    return p0

    .line 86
    :pswitch_4
    const/4 p0, 0x3

    return p0

    .line 84
    :pswitch_6
    const/4 p0, 0x2

    return p0

    .line 82
    :pswitch_8
    const/4 p0, 0x1

    return p0

    .line 80
    :pswitch_a
    const/4 p0, 0x0

    return p0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public static greylist-max-o wakefulnessToString(I)Ljava/lang/String;
    .registers 1

    .line 60
    packed-switch p0, :pswitch_data_14

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :pswitch_8
    const-string p0, "Dozing"

    return-object p0

    .line 66
    :pswitch_b
    const-string p0, "Dreaming"

    return-object p0

    .line 64
    :pswitch_e
    const-string p0, "Awake"

    return-object p0

    .line 62
    :pswitch_11
    const-string p0, "Asleep"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public abstract greylist-max-o finishUidChanges()V
.end method

.method public abstract blacklist getLastGoToSleep()Landroid/os/PowerManager$SleepData;
.end method

.method public abstract blacklist getLastWakeup()Landroid/os/PowerManager$WakeData;
.end method

.method public abstract greylist-max-o getLowPowerState(I)Landroid/os/PowerSaveState;
.end method

.method public abstract blacklist interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
.end method

.method public abstract blacklist isAmbientDisplaySuppressed()Z
.end method

.method public abstract blacklist isAnyDefaultAdjacentGroupInteractive()Z
.end method

.method public abstract blacklist isDefaultGroupAdjacent(I)Z
.end method

.method public abstract blacklist isGroupInteractive(I)Z
.end method

.method public abstract blacklist nap(JZ)V
.end method

.method public greylist-max-o registerLowPowerModeObserver(ILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/os/PowerSaveState;",
            ">;)V"
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/os/PowerManagerInternal$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManagerInternal$1;-><init>(Landroid/os/PowerManagerInternal;ILjava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 198
    return-void
.end method

.method public abstract greylist-max-o registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end method

.method public abstract blacklist setButtonBrightnessOverrideFromWindowManager(F)V
.end method

.method public abstract greylist-max-o setDeviceIdleMode(Z)Z
.end method

.method public abstract greylist-max-o setDeviceIdleTempWhitelist([I)V
.end method

.method public abstract greylist-max-o setDeviceIdleWhitelist([I)V
.end method

.method public abstract blacklist setDevicePostured(Z)V
.end method

.method public abstract blacklist setDozeOverrideFromDreamManager(IIFZ)V
.end method

.method public abstract greylist-max-o setDrawWakeLockOverrideFromSidekick(Z)V
.end method

.method public abstract blacklist setForceDisableWakelocks(Z)V
.end method

.method public abstract greylist-max-o setLightDeviceIdleMode(Z)Z
.end method

.method public abstract blacklist setLowPowerStandbyActive(Z)V
.end method

.method public abstract blacklist setLowPowerStandbyAllowlist([I)V
.end method

.method public abstract greylist-max-o setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
.end method

.method public abstract blacklist setPowerBoost(II)V
.end method

.method public abstract blacklist setPowerMode(IZ)V
.end method

.method public abstract greylist-max-o setUserActivityTimeoutOverrideFromWindowManager(J)V
.end method

.method public abstract greylist-max-o setUserInactiveOverrideFromWindowManager()V
.end method

.method public abstract greylist-max-o startUidChanges()V
.end method

.method public abstract greylist-max-o uidActive(I)V
.end method

.method public abstract greylist-max-o uidGone(I)V
.end method

.method public abstract greylist-max-o uidIdle(I)V
.end method

.method public abstract blacklist updateSettings()V
.end method

.method public abstract greylist-max-o updateUidProcState(II)V
.end method

.method public abstract blacklist wasDeviceIdleFor(J)Z
.end method
