.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Vibrator$OnVibratorStateChangedListener;,
        Landroid/os/Vibrator$VibrationIntensity;,
        Landroid/os/Vibrator$VibrationEffectSupport;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_NO:I = 0x2

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_UNKNOWN:I = 0x0

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_YES:I = 0x1

.field public static final greylist-max-o VIBRATION_INTENSITY_HIGH:I = 0x3

.field public static final greylist-max-o VIBRATION_INTENSITY_LOW:I = 0x1

.field public static final greylist-max-o VIBRATION_INTENSITY_MEDIUM:I = 0x2

.field public static final greylist-max-o VIBRATION_INTENSITY_OFF:I


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private volatile blacklist mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field private blacklist mVibratorEnvelopeEffectInfo:Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

.field private blacklist mVibratorFrequencyProfile:Landroid/os/vibrator/VibratorFrequencyProfile;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 151
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 159
    return-void
.end method

.method private blacklist getConfig()Landroid/os/vibrator/VibrationConfig;
    .registers 3

    .line 172
    iget-object v0, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    if-nez v0, :cond_1f

    .line 173
    iget-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    .line 174
    if-nez v0, :cond_18

    .line 175
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 180
    :cond_18
    :goto_18
    new-instance v1, Landroid/os/vibrator/VibrationConfig;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    .line 182
    :cond_1f
    iget-object v0, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    return-object v0
.end method

.method static synthetic blacklist lambda$startVendorSession$0(Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 2

    .line 961
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onFinished(I)V

    return-void
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 895
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 910
    return-void
.end method

.method public final varargs whitelist areAllEffectsSupported([I)I
    .registers 8

    .line 749
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 750
    nop

    .line 751
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_1c

    aget v5, p1, v4

    .line 752
    invoke-virtual {v0, v5}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v5

    packed-switch v5, :pswitch_data_1e

    .line 758
    move v2, v3

    goto :goto_19

    .line 754
    :pswitch_16
    const/4 p1, 0x2

    return p1

    .line 756
    :pswitch_18
    nop

    .line 751
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 762
    :cond_1c
    return v2

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_16
    .end packed-switch
.end method

.method public final varargs whitelist areAllPrimitivesSupported([I)Z
    .registers 7

    .line 806
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 807
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget v4, p1, v3

    .line 808
    invoke-virtual {v0, v4}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 809
    return v2

    .line 807
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 812
    :cond_15
    const/4 p1, 0x1

    return p1
.end method

.method public varargs whitelist areEffectsSupported([I)[I
    .registers 6

    .line 711
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 712
    array-length v1, p1

    new-array v1, v1, [I

    .line 713
    const/4 v2, 0x0

    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 714
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v3

    aput v3, v1, v2

    .line 713
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 716
    :cond_16
    return-object v1
.end method

.method public whitelist areEnvelopeEffectsSupported()Z
    .registers 2

    .line 390
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->areEnvelopeEffectsSupported()Z

    move-result v0

    return v0
.end method

.method public varargs whitelist arePrimitivesSupported([I)[Z
    .registers 6

    .line 784
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 785
    array-length v1, p1

    new-array v1, v1, [Z

    .line 786
    const/4 v2, 0x0

    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 787
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 786
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 789
    :cond_16
    return-object v1
.end method

.method public whitelist areVendorEffectsSupported()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 265
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    const-wide/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public whitelist areVendorSessionsSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z
    .registers 3

    .line 251
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/VibratorInfo;->areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z

    move-result p1

    return p1
.end method

.method public abstract whitelist cancel()V
.end method

.method public abstract blacklist cancel(I)V
.end method

.method public blacklist getDefaultVibrationIntensity(I)I
    .registers 3

    .line 193
    invoke-direct {p0}, Landroid/os/Vibrator;->getConfig()Landroid/os/vibrator/VibrationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result p1

    return p1
.end method

.method public whitelist getEnvelopeEffectInfo()Landroid/os/vibrator/VibratorEnvelopeEffectInfo;
    .registers 8

    .line 408
    iget-object v0, p0, Landroid/os/Vibrator;->mVibratorEnvelopeEffectInfo:Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    if-nez v0, :cond_25

    .line 409
    new-instance v1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    .line 410
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectSize()I

    move-result v2

    .line 411
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getMinEnvelopeEffectControlPointDurationMillis()I

    move-result v0

    int-to-long v3, v0

    .line 412
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectControlPointDurationMillis()I

    move-result v0

    int-to-long v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;-><init>(IJJ)V

    iput-object v1, p0, Landroid/os/Vibrator;->mVibratorEnvelopeEffectInfo:Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    .line 415
    :cond_25
    iget-object v0, p0, Landroid/os/Vibrator;->mVibratorEnvelopeEffectInfo:Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    return-object v0
.end method

.method public whitelist getFrequencyProfile()Landroid/os/vibrator/VibratorFrequencyProfile;
    .registers 3

    .line 353
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 355
    const/4 v0, 0x0

    return-object v0

    .line 358
    :cond_10
    iget-object v1, p0, Landroid/os/Vibrator;->mVibratorFrequencyProfile:Landroid/os/vibrator/VibratorFrequencyProfile;

    if-nez v1, :cond_1b

    .line 359
    new-instance v1, Landroid/os/vibrator/VibratorFrequencyProfile;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibratorFrequencyProfile;-><init>(Landroid/os/VibratorInfo$FrequencyProfile;)V

    iput-object v1, p0, Landroid/os/Vibrator;->mVibratorFrequencyProfile:Landroid/os/vibrator/VibratorFrequencyProfile;

    .line 362
    :cond_1b
    iget-object v0, p0, Landroid/os/Vibrator;->mVibratorFrequencyProfile:Landroid/os/vibrator/VibratorFrequencyProfile;

    return-object v0
.end method

.method public blacklist getFrequencyProfileLegacy()Landroid/os/vibrator/VibratorFrequencyProfileLegacy;
    .registers 3

    .line 331
    nop

    .line 332
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_11
    new-instance v1, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;-><init>(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)V

    return-object v1
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .registers 2

    .line 377
    invoke-direct {p0}, Landroid/os/Vibrator;->getConfig()Landroid/os/vibrator/VibrationConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationConfig;->getHapticChannelMaximumAmplitude()F

    move-result v0

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 203
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getId()I

    move-result v0

    return v0
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .registers 2

    .line 167
    sget-object v0, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public varargs whitelist getPrimitiveDurations([I)[I
    .registers 6

    .line 831
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    .line 832
    array-length v1, p1

    new-array v1, v1, [I

    .line 833
    const/4 v2, 0x0

    :goto_8
    array-length v3, p1

    if-ge v2, v3, :cond_16

    .line 834
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v3

    aput v3, v1, v2

    .line 833
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 836
    :cond_16
    return-object v1
.end method

.method public whitelist getQFactor()F
    .registers 2

    .line 312
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getQFactor()F

    move-result v0

    return v0
.end method

.method public whitelist getResonantFrequency()F
    .registers 2

    .line 301
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    return v0
.end method

.method public abstract whitelist hasAmplitudeControl()Z
.end method

.method public blacklist hasExternalControl()Z
    .registers 4

    .line 290
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasFrequencyControl()Z
    .registers 2

    .line 229
    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasFrequencyControl()Z

    move-result v0

    return v0
.end method

.method public abstract whitelist hasVibrator()Z
.end method

.method public whitelist isVibrating()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 864
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performHapticFeedback(IILjava/lang/String;II)V
    .registers 6

    .line 658
    const-string p1, "Vibrator"

    const-string/jumbo p2, "performHapticFeedback is not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return-void
.end method

.method public blacklist performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V
    .registers 7

    .line 683
    const-string p1, "Vibrator"

    const-string/jumbo p2, "performHapticFeedbackForInputDevice is not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 922
    return-void
.end method

.method public blacklist setAlwaysOnEffect(ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 10

    .line 432
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z

    move-result p1

    return p1
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .registers 6

    .line 441
    const-string p1, "Vibrator"

    const-string p2, "Always-on effects aren\'t supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist startVendorSession(Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 960
    const-string p1, "Vibrator"

    const-string/jumbo p2, "startVendorSession is not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance p1, Landroid/os/Vibrator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p5}, Landroid/os/Vibrator$$ExternalSyntheticLambda0;-><init>(Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 962
    return-void
.end method

.method public abstract blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
.end method

.method public whitelist vibrate(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 457
    return-void
.end method

.method public whitelist vibrate(JLandroid/media/AudioAttributes;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    nop

    .line 478
    const/4 v0, -0x1

    :try_start_2
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 479
    invoke-virtual {p0, p1, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_a

    .line 482
    goto :goto_12

    .line 480
    :catch_a
    move-exception p1

    .line 481
    const-string p2, "Vibrator"

    const-string p3, "Failed to create VibrationEffect"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    :goto_12
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;)V
    .registers 3

    .line 565
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 566
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .registers 4

    .line 583
    nop

    .line 584
    if-nez p2, :cond_d

    .line 585
    new-instance p2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p2}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p2

    goto :goto_16

    .line 586
    :cond_d
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p2

    .line 583
    :goto_16
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 587
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    .registers 4

    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public blacklist vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;)V
    .registers 10

    .line 623
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 624
    return-void
.end method

.method public whitelist vibrate([JI)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 510
    return-void
.end method

.method public whitelist vibrate([JILandroid/media/AudioAttributes;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    const/4 v0, -0x1

    const-string v1, "Vibrator"

    if-lt p2, v0, :cond_17

    array-length v0, p1

    if-ge p2, v0, :cond_17

    .line 550
    :try_start_8
    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_10

    .line 553
    goto :goto_16

    .line 551
    :catch_10
    move-exception p1

    .line 552
    const-string p2, "Failed to create VibrationEffect"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    :goto_16
    return-void

    .line 544
    :cond_17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "vibrate called with repeat index out of bounds (pattern.length="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", index="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
