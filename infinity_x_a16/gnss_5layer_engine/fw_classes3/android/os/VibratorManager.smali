.class public abstract Landroid/os/VibratorManager;
.super Ljava/lang/Object;
.source "VibratorManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VibratorManager"


# instance fields
.field protected final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public abstract whitelist cancel()V
.end method

.method public abstract blacklist cancel(I)V
.end method

.method public abstract whitelist getDefaultVibrator()Landroid/os/Vibrator;
.end method

.method public abstract whitelist getVibrator(I)Landroid/os/Vibrator;
.end method

.method public abstract whitelist getVibratorIds()[I
.end method

.method public blacklist hasCapabilities(I)Z
    .registers 2

    .line 72
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist performHapticFeedback(IILjava/lang/String;II)V
    .registers 6

    .line 169
    const-string p1, "VibratorManager"

    const-string/jumbo p2, "performHapticFeedback is not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public blacklist performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V
    .registers 7

    .line 190
    const-string p1, "VibratorManager"

    const-string/jumbo p2, "performHapticFeedbackForInputDevice is not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z
    .registers 6

    .line 98
    const-string p1, "VibratorManager"

    const-string p2, "Always-on effects aren\'t supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist startVendorSession([ILandroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 7

    .line 232
    const-string p1, "VibratorManager"

    const-string/jumbo p2, "startVendorSession is not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public abstract blacklist vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
.end method

.method public final whitelist vibrate(Landroid/os/CombinedVibration;)V
    .registers 3

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/VibratorManager;->vibrate(Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)V

    .line 117
    return-void
.end method

.method public final whitelist vibrate(Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)V
    .registers 9

    .line 139
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/VibratorManager;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 140
    return-void
.end method
