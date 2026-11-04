.class public Landroid/os/vibrator/VibrationConfig;
.super Ljava/lang/Object;
.source "VibrationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/VibrationConfig$Builder;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_AMPLITUDE:I = 0xff

.field private static final blacklist DEFAULT_SCALE_LEVEL_GAIN:F = 1.4f


# instance fields
.field private final blacklist mDefaultAlarmVibrationIntensity:I

.field private final blacklist mDefaultHapticFeedbackIntensity:I

.field private final blacklist mDefaultKeyboardVibrationIntensity:I

.field private final blacklist mDefaultMediaVibrationIntensity:I

.field private final blacklist mDefaultNotificationVibrationIntensity:I

.field private final blacklist mDefaultRingVibrationIntensity:I

.field private final blacklist mDefaultVibrationAmplitude:I

.field private final blacklist mDefaultVibrationScaleLevelGain:F

.field private final blacklist mExternalVibrationScaleFactors:[F

.field private final blacklist mHapticChannelMaxVibrationAmplitude:F

.field private final blacklist mIgnoreVibrationsOnWirelessCharger:Z

.field private final blacklist mKeyboardVibrationSettingsSupported:Z

.field private final blacklist mRampDownDurationMs:I

.field private final blacklist mRampStepDurationMs:I

.field private final blacklist mRequestVibrationParamsForUsages:[I

.field private final blacklist mRequestVibrationParamsTimeoutMs:I

.field private final blacklist mVibrationPipelineMaxDurationMs:I

.field private final blacklist mVibrationScaleFactors:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smloadBoolean(Landroid/content/res/Resources;I)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/VibrationConfig;->loadBoolean(Landroid/content/res/Resources;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadDefaultIntensity(Landroid/content/res/Resources;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/VibrationConfig;->loadDefaultIntensity(Landroid/content/res/Resources;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadFloat(Landroid/content/res/Resources;I)F
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/VibrationConfig;->loadFloat(Landroid/content/res/Resources;I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadIntArray(Landroid/content/res/Resources;I)[I
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/VibrationConfig;->loadIntArray(Landroid/content/res/Resources;I)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadInteger(Landroid/content/res/Resources;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadInteger(Landroid/content/res/Resources;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smloadIntensityScaleFactors(Landroid/content/res/Resources;I)[F
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/VibrationConfig;->loadIntensityScaleFactors(Landroid/content/res/Resources;I)[F

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 95
    new-instance v0, Landroid/os/vibrator/VibrationConfig$Builder;

    invoke-direct {v0, p1}, Landroid/os/vibrator/VibrationConfig$Builder;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/os/vibrator/VibrationConfig$Builder;)V

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/vibrator/VibrationConfig$Builder;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmDefaultVibrationAmplitude(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    .line 101
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmHapticChannelMaxVibrationAmplitude(Landroid/os/vibrator/VibrationConfig$Builder;)F

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    .line 102
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmRampDownDurationMs(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    .line 103
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmRampStepDurationMs(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    .line 104
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmRequestVibrationParamsTimeoutMs(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    .line 105
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmRequestVibrationParamsForUsages(Landroid/os/vibrator/VibrationConfig$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    .line 106
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmIgnoreVibrationsOnWirelessCharger(Landroid/os/vibrator/VibrationConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    .line 107
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmKeyboardVibrationSettingsSupported(Landroid/os/vibrator/VibrationConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mKeyboardVibrationSettingsSupported:Z

    .line 108
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmVibrationPipelineMaxDurationMs(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationPipelineMaxDurationMs:I

    .line 109
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmDefaultVibrationScaleLevelGain(Landroid/os/vibrator/VibrationConfig$Builder;)F

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationScaleLevelGain:F

    .line 110
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmVibrationScaleFactors(Landroid/os/vibrator/VibrationConfig$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationScaleFactors:[F

    .line 111
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmExternalVibrationScaleFactors(Landroid/os/vibrator/VibrationConfig$Builder;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mExternalVibrationScaleFactors:[F

    .line 112
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmDefaultAlarmVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    .line 113
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmDefaultHapticFeedbackIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    .line 114
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmDefaultMediaVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    .line 115
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmDefaultNotificationVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    .line 116
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmDefaultRingVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    .line 117
    invoke-static {p1}, Landroid/os/vibrator/VibrationConfig$Builder;->-$$Nest$fgetmDefaultKeyboardVibrationIntensity(Landroid/os/vibrator/VibrationConfig$Builder;)I

    move-result p1

    iput p1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationIntensity:I

    .line 118
    return-void
.end method

.method private blacklist getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;
    .registers 5

    .line 403
    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    array-length v0, v0

    .line 404
    new-array v1, v0, [Ljava/lang/String;

    .line 405
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_15

    .line 406
    iget-object v3, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    aget v3, v3, v2

    invoke-static {v3}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 405
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 409
    :cond_15
    return-object v1
.end method

.method private static blacklist loadBoolean(Landroid/content/res/Resources;I)Z
    .registers 2

    .line 159
    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static blacklist loadDefaultIntensity(Landroid/content/res/Resources;I)I
    .registers 3

    .line 122
    nop

    .line 123
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result p0

    .line 124
    if-ltz p0, :cond_d

    const/4 p1, 0x3

    if-le p0, p1, :cond_c

    goto :goto_d

    .line 127
    :cond_c
    return p0

    .line 125
    :cond_d
    :goto_d
    return v0
.end method

.method private static blacklist loadFloat(Landroid/content/res/Resources;I)F
    .registers 2

    .line 147
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static blacklist loadFloatArray(Landroid/content/res/Resources;I)[F
    .registers 5

    .line 167
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    .line 168
    :goto_9
    if-nez p0, :cond_c

    .line 169
    return-object v0

    .line 171
    :cond_c
    array-length p1, p0

    new-array p1, p1, [F

    .line 172
    const/4 v1, 0x0

    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 174
    :try_start_13
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, p1, v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1b} :catch_1f

    .line 177
    nop

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 175
    :catch_1f
    move-exception p0

    .line 176
    return-object v0

    .line 179
    :cond_21
    return-object p1
.end method

.method private static blacklist loadIntArray(Landroid/content/res/Resources;I)[I
    .registers 2

    .line 163
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    goto :goto_a

    :cond_7
    const/4 p0, 0x0

    new-array p0, p0, [I

    :goto_a
    return-object p0
.end method

.method private static blacklist loadInteger(Landroid/content/res/Resources;I)I
    .registers 3

    .line 151
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/VibrationConfig;->loadInteger(Landroid/content/res/Resources;II)I

    move-result p0

    return p0
.end method

.method private static blacklist loadInteger(Landroid/content/res/Resources;II)I
    .registers 3

    .line 155
    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    :cond_6
    return p2
.end method

.method private static blacklist loadIntensityScaleFactors(Landroid/content/res/Resources;I)[F
    .registers 6

    .line 132
    invoke-static {p0, p1}, Landroid/os/vibrator/VibrationConfig;->loadFloatArray(Landroid/content/res/Resources;I)[F

    move-result-object p0

    .line 133
    const/4 p1, 0x0

    if-eqz p0, :cond_1c

    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_1c

    .line 137
    :cond_c
    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1b

    aget v2, p0, v1

    .line 138
    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_18

    .line 140
    return-object p1

    .line 137
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 143
    :cond_1b
    return-object p0

    .line 135
    :cond_1c
    :goto_1c
    return-object p1
.end method


# virtual methods
.method public blacklist dumpWithoutDefaultSettings(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 386
    const-string v0, "VibrationConfig:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreVibrationsOnWirelessCharger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultVibrationAmplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hapticChannelMaxAmplitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vibrationScaleFactors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationScaleFactors:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "externalVibrationScaleFactors = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/vibrator/VibrationConfig;->mExternalVibrationScaleFactors:[F

    .line 393
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rampStepDurationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rampDownDurationMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestVibrationParamsForUsages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 397
    invoke-direct {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestVibrationParamsTimeoutMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 400
    return-void
.end method

.method public blacklist getDefaultVibrationAmplitude()I
    .registers 4

    .line 200
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-lt v0, v1, :cond_f

    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    if-le v0, v2, :cond_c

    goto :goto_f

    .line 203
    :cond_c
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    return v0

    .line 201
    :cond_f
    :goto_f
    return v2
.end method

.method public blacklist getDefaultVibrationIntensity(I)I
    .registers 2

    .line 331
    sparse-switch p1, :sswitch_data_1e

    .line 352
    iget p1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    return p1

    .line 346
    :sswitch_6
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->isKeyboardVibrationSettingsSupported()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 347
    iget p1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationIntensity:I

    goto :goto_11

    :cond_f
    iget p1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    .line 346
    :goto_11
    return p1

    .line 336
    :sswitch_12
    iget p1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    return p1

    .line 338
    :sswitch_15
    iget p1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    return p1

    .line 344
    :sswitch_18
    iget p1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    return p1

    .line 333
    :sswitch_1b
    iget p1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    return p1

    :sswitch_data_1e
    .sparse-switch
        0x11 -> :sswitch_1b
        0x12 -> :sswitch_18
        0x21 -> :sswitch_15
        0x22 -> :sswitch_18
        0x31 -> :sswitch_12
        0x32 -> :sswitch_18
        0x41 -> :sswitch_12
        0x42 -> :sswitch_18
        0x52 -> :sswitch_6
        0x62 -> :sswitch_18
    .end sparse-switch
.end method

.method public blacklist getDefaultVibrationScaleLevelGain()F
    .registers 3

    .line 211
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationScaleLevelGain:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    .line 212
    const v0, 0x3fb33333    # 1.4f

    return v0

    .line 214
    :cond_c
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationScaleLevelGain:F

    return v0
.end method

.method public blacklist getExternalVibrationScaleFactor(IF)F
    .registers 4

    .line 246
    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mExternalVibrationScaleFactors:[F

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mExternalVibrationScaleFactors:[F

    array-length v0, v0

    if-ge v0, p1, :cond_a

    goto :goto_11

    .line 250
    :cond_a
    iget-object p2, p0, Landroid/os/vibrator/VibrationConfig;->mExternalVibrationScaleFactors:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    return p1

    .line 248
    :cond_11
    :goto_11
    invoke-virtual {p0, p1, p2}, Landroid/os/vibrator/VibrationConfig;->getVibrationScaleFactor(IF)F

    move-result p1

    return p1
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .registers 3

    .line 189
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    .line 190
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 192
    :cond_a
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    return v0
.end method

.method public blacklist getRampDownDurationMs()I
    .registers 2

    .line 258
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    if-gez v0, :cond_6

    .line 259
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_6
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    return v0
.end method

.method public blacklist getRampStepDurationMs()I
    .registers 2

    .line 287
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    if-gez v0, :cond_6

    .line 288
    const/4 v0, 0x0

    return v0

    .line 290
    :cond_6
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    return v0
.end method

.method public blacklist getRequestVibrationParamsForUsages()[I
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsForUsages:[I

    return-object v0
.end method

.method public blacklist getRequestVibrationParamsTimeoutMs()I
    .registers 3

    .line 269
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public blacklist getVibrationPipelineMaxDurationMs()I
    .registers 2

    .line 304
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationPipelineMaxDurationMs:I

    if-gez v0, :cond_6

    .line 305
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_6
    iget v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationPipelineMaxDurationMs:I

    return v0
.end method

.method public blacklist getVibrationScaleFactor(IF)F
    .registers 4

    .line 227
    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationScaleFactors:[F

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationScaleFactors:[F

    array-length v0, v0

    if-ge v0, p1, :cond_a

    goto :goto_11

    .line 230
    :cond_a
    iget-object p2, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationScaleFactors:[F

    add-int/lit8 p1, p1, -0x1

    aget p1, p2, p1

    return p1

    .line 228
    :cond_11
    :goto_11
    return p2
.end method

.method public blacklist hasExternalVibrationScaleFactors()Z
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mExternalVibrationScaleFactors:[F

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasVibrationScaleFactors()Z
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationScaleFactors:[F

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist ignoreVibrationsOnWirelessCharger()Z
    .registers 2

    .line 317
    iget-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    return v0
.end method

.method public blacklist isKeyboardVibrationSettingsSupported()Z
    .registers 2

    .line 325
    iget-boolean v0, p0, Landroid/os/vibrator/VibrationConfig;->mKeyboardVibrationSettingsSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibrationConfig{mIgnoreVibrationsOnWirelessCharger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mIgnoreVibrationsOnWirelessCharger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultVibrationAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultVibrationAmplitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHapticChannelMaxVibrationAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mHapticChannelMaxVibrationAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampStepDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampStepDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRampDownDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRampDownDurationMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestVibrationParamsForUsages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    invoke-direct {p0}, Landroid/os/vibrator/VibrationConfig;->getRequestVibrationParamsForUsagesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestVibrationParamsTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mRequestVibrationParamsTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultAlarmIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultAlarmVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultHapticFeedbackIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultHapticFeedbackIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultMediaIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultMediaVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultNotificationIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultNotificationVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultRingIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultRingVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDefaultKeyboardIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/VibrationConfig;->mDefaultKeyboardVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyboardVibrationSettingsSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/vibrator/VibrationConfig;->mKeyboardVibrationSettingsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrationScaleFactors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/vibrator/VibrationConfig;->mVibrationScaleFactors:[F

    .line 374
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExternalVibrationScaleFactors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/vibrator/VibrationConfig;->mExternalVibrationScaleFactors:[F

    .line 376
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    return-object v0
.end method
