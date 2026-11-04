.class public final Landroid/os/vibrator/VibrationConfig$Builder;
.super Ljava/lang/Object;
.source "VibrationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/VibrationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDefaultAlarmVibrationIntensity:I

.field private blacklist mDefaultHapticFeedbackIntensity:I

.field private blacklist mDefaultKeyboardVibrationIntensity:I

.field private blacklist mDefaultMediaVibrationIntensity:I

.field private blacklist mDefaultNotificationVibrationIntensity:I

.field private blacklist mDefaultRingVibrationIntensity:I

.field private blacklist mDefaultVibrationAmplitude:I

.field private blacklist mDefaultVibrationScaleLevelGain:F

.field private blacklist mExternalVibrationScaleFactors:[F

.field private blacklist mHapticChannelMaxVibrationAmplitude:F

.field private blacklist mIgnoreVibrationsOnWirelessCharger:Z

.field private blacklist mKeyboardVibrationSettingsSupported:Z

.field private blacklist mRampDownDurationMs:I

.field private blacklist mRampStepDurationMs:I

.field private blacklist mRequestVibrationParamsForUsages:[I

.field private blacklist mRequestVibrationParamsTimeoutMs:I

.field private blacklist mVibrationPipelineMaxDurationMs:I

.field private blacklist mVibrationScaleFactors:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDefaultAlarmVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultAlarmVibrationIntensity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHapticFeedbackIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultHapticFeedbackIntensity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultKeyboardVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultKeyboardVibrationIntensity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultMediaVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultMediaVibrationIntensity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultNotificationVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultNotificationVibrationIntensity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultRingVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultRingVibrationIntensity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultVibrationAmplitude(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultVibrationAmplitude:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultVibrationScaleLevelGain(Landroid/os/vibrator/VibrationConfig$Builder;)F
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultVibrationScaleLevelGain:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExternalVibrationScaleFactors(Landroid/os/vibrator/VibrationConfig$Builder;)[F
    .registers 1

    iget-object p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mExternalVibrationScaleFactors:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHapticChannelMaxVibrationAmplitude(Landroid/os/vibrator/VibrationConfig$Builder;)F
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mHapticChannelMaxVibrationAmplitude:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIgnoreVibrationsOnWirelessCharger(Landroid/os/vibrator/VibrationConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mIgnoreVibrationsOnWirelessCharger:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyboardVibrationSettingsSupported(Landroid/os/vibrator/VibrationConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mKeyboardVibrationSettingsSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRampDownDurationMs(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRampDownDurationMs:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRampStepDurationMs(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRampStepDurationMs:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestVibrationParamsForUsages(Landroid/os/vibrator/VibrationConfig$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRequestVibrationParamsForUsages:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestVibrationParamsTimeoutMs(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRequestVibrationParamsTimeoutMs:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVibrationPipelineMaxDurationMs(Landroid/os/vibrator/VibrationConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mVibrationPipelineMaxDurationMs:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVibrationScaleFactors(Landroid/os/vibrator/VibrationConfig$Builder;)[F
    .registers 1

    iget-object p0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mVibrationScaleFactors:[F

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const v0, 0x10e007e

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadInteger(Landroid/content/res/Resources;II)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultVibrationAmplitude:I

    .line 448
    const v0, 0x10500fd

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadFloat(Landroid/content/res/Resources;I)F

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mHapticChannelMaxVibrationAmplitude:F

    .line 450
    const v0, 0x10e016f

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadInteger(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRampDownDurationMs:I

    .line 452
    const v0, 0x10e0170

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadInteger(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRampStepDurationMs:I

    .line 454
    const v0, 0x10e012b

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadInteger(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRequestVibrationParamsTimeoutMs:I

    .line 456
    const v0, 0x10700c0

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadIntArray(Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRequestVibrationParamsForUsages:[I

    .line 458
    const v0, 0x11101d7

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadBoolean(Landroid/content/res/Resources;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mIgnoreVibrationsOnWirelessCharger:Z

    .line 460
    const v0, 0x11101e8

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadBoolean(Landroid/content/res/Resources;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mKeyboardVibrationSettingsSupported:Z

    .line 462
    const v0, 0x10e016e

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadInteger(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mVibrationPipelineMaxDurationMs:I

    .line 464
    const v0, 0x10700f5

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadIntensityScaleFactors(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mVibrationScaleFactors:[F

    .line 466
    const v0, 0x107007a

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadIntensityScaleFactors(Landroid/content/res/Resources;I)[F

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mExternalVibrationScaleFactors:[F

    .line 468
    const v0, 0x10e0063

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultAlarmVibrationIntensity:I

    .line 470
    const v0, 0x10e0068

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultHapticFeedbackIntensity:I

    .line 472
    const v0, 0x10e006b

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultMediaVibrationIntensity:I

    .line 474
    const v0, 0x10e0073

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultNotificationVibrationIntensity:I

    .line 476
    const v0, 0x10e007b

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultRingVibrationIntensity:I

    .line 478
    const v0, 0x10e0069

    invoke-static {p1, v0}, Landroid/os/vibrator/VibrationConfig;->-$$Nest$smloadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result p1

    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultKeyboardVibrationIntensity:I

    .line 480
    const p1, 0x3fb33333    # 1.4f

    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultVibrationScaleLevelGain:F

    .line 481
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/os/vibrator/VibrationConfig;
    .registers 2

    .line 557
    new-instance v0, Landroid/os/vibrator/VibrationConfig;

    invoke-direct {v0, p0}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/os/vibrator/VibrationConfig$Builder;)V

    return-object v0
.end method

.method public blacklist setDefaultAlarmVibrationIntensity(I)V
    .registers 2

    .line 516
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultAlarmVibrationIntensity:I

    .line 517
    return-void
.end method

.method public blacklist setDefaultHapticFeedbackIntensity(I)V
    .registers 2

    .line 528
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultHapticFeedbackIntensity:I

    .line 529
    return-void
.end method

.method public blacklist setDefaultKeyboardVibrationIntensity(I)V
    .registers 2

    .line 532
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultKeyboardVibrationIntensity:I

    .line 533
    return-void
.end method

.method public blacklist setDefaultMediaVibrationIntensity(I)V
    .registers 2

    .line 536
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultMediaVibrationIntensity:I

    .line 537
    return-void
.end method

.method public blacklist setDefaultNotificationVibrationIntensity(I)V
    .registers 2

    .line 520
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultNotificationVibrationIntensity:I

    .line 521
    return-void
.end method

.method public blacklist setDefaultRingVibrationIntensity(I)V
    .registers 2

    .line 524
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultRingVibrationIntensity:I

    .line 525
    return-void
.end method

.method public blacklist setDefaultVibrationAmplitude(I)V
    .registers 2

    .line 484
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultVibrationAmplitude:I

    .line 485
    return-void
.end method

.method public blacklist setDefaultVibrationScaleLevelGain(F)V
    .registers 2

    .line 544
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mDefaultVibrationScaleLevelGain:F

    .line 545
    return-void
.end method

.method public blacklist setExternalVibrationScaleFactors([F)V
    .registers 2

    .line 548
    iput-object p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mExternalVibrationScaleFactors:[F

    .line 549
    return-void
.end method

.method public blacklist setHapticChannelMaxVibrationAmplitude(F)V
    .registers 2

    .line 488
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mHapticChannelMaxVibrationAmplitude:F

    .line 489
    return-void
.end method

.method public blacklist setIgnoreVibrationsOnWirelessCharger(Z)V
    .registers 2

    .line 508
    iput-boolean p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mIgnoreVibrationsOnWirelessCharger:Z

    .line 509
    return-void
.end method

.method public blacklist setKeyboardVibrationSettingsSupported(Z)V
    .registers 2

    .line 512
    iput-boolean p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mKeyboardVibrationSettingsSupported:Z

    .line 513
    return-void
.end method

.method public blacklist setRampDownDurationMs(I)V
    .registers 2

    .line 492
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRampDownDurationMs:I

    .line 493
    return-void
.end method

.method public blacklist setRampStepDurationMs(I)V
    .registers 2

    .line 496
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRampStepDurationMs:I

    .line 497
    return-void
.end method

.method public blacklist setRequestVibrationParamsForUsages([I)V
    .registers 2

    .line 552
    iput-object p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRequestVibrationParamsForUsages:[I

    .line 553
    return-void
.end method

.method public blacklist setRequestVibrationParamsTimeoutMs(I)V
    .registers 2

    .line 500
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mRequestVibrationParamsTimeoutMs:I

    .line 501
    return-void
.end method

.method public blacklist setVibrationPipelineMaxDurationMs(I)V
    .registers 2

    .line 504
    iput p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mVibrationPipelineMaxDurationMs:I

    .line 505
    return-void
.end method

.method public blacklist setVibrationScaleFactors([F)V
    .registers 2

    .line 540
    iput-object p1, p0, Landroid/os/vibrator/VibrationConfig$Builder;->mVibrationScaleFactors:[F

    .line 541
    return-void
.end method
