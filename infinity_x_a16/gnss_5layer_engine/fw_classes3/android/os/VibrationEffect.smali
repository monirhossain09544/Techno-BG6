.class public abstract Landroid/os/VibrationEffect;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Composed;,
        Landroid/os/VibrationEffect$VendorEffect;,
        Landroid/os/VibrationEffect$Composition;,
        Landroid/os/VibrationEffect$WaveformBuilder;,
        Landroid/os/VibrationEffect$VibrationParameter;,
        Landroid/os/VibrationEffect$FrequencyVibrationParameter;,
        Landroid/os/VibrationEffect$AmplitudeVibrationParameter;,
        Landroid/os/VibrationEffect$BasicEnvelopeBuilder;,
        Landroid/os/VibrationEffect$WaveformEnvelopeBuilder;,
        Landroid/os/VibrationEffect$Transformation;,
        Landroid/os/VibrationEffect$EffectType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_AMPLITUDE:I = -0x1

.field public static final whitelist EFFECT_CLICK:I = 0x0

.field public static final whitelist EFFECT_DOUBLE_CLICK:I = 0x1

.field public static final whitelist EFFECT_HEAVY_CLICK:I = 0x5

.field public static final greylist-max-r EFFECT_POP:I = 0x4

.field public static final blacklist EFFECT_STRENGTH_LIGHT:I = 0x0

.field public static final blacklist EFFECT_STRENGTH_MEDIUM:I = 0x1

.field public static final blacklist EFFECT_STRENGTH_STRONG:I = 0x2

.field public static final blacklist EFFECT_TEXTURE_TICK:I = 0x15

.field public static final greylist-max-r EFFECT_THUD:I = 0x3

.field public static final whitelist EFFECT_TICK:I = 0x2

.field public static final greylist-max-o MAX_AMPLITUDE:I = 0xff

.field private static final blacklist MAX_HAPTIC_FEEDBACK_COMPOSITION_SIZE:J = 0x3L

.field private static final blacklist MAX_HAPTIC_FEEDBACK_DURATION:J = 0x3e8L

.field private static final blacklist PARCEL_TOKEN_COMPOSED:I = 0x1

.field private static final blacklist PARCEL_TOKEN_VENDOR_EFFECT:I = 0x2

.field public static final greylist-max-r RINGTONES:[I

.field private static final blacklist SCALE_GAMMA:F = 0.65f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 173
    const/4 v0, 0x6

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    sput-object v0, Landroid/os/VibrationEffect;->RINGTONES:[I

    .line 2506
    new-instance v0, Landroid/os/VibrationEffect$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist createOneShot(JI)Landroid/os/VibrationEffect;
    .registers 5

    .line 201
    if-eqz p2, :cond_12

    .line 206
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    filled-new-array {p2}, [I

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {v0, p0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 202
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "amplitude must either be DEFAULT_AMPLITUDE, or between 1 and 255 inclusive (amplitude="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist createPredefined(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 326
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createRepeatingEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 2

    .line 1443
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1444
    invoke-virtual {v0, p0}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 1445
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    .line 1443
    return-object p0
.end method

.method public static whitelist createRepeatingEffect(Landroid/os/VibrationEffect;Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 6

    .line 1465
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Can\'t repeat an indefinitely repeating effect."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1467
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1468
    invoke-virtual {v0, p0}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 1469
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composition;->repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object p0

    .line 1470
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object p0

    .line 1467
    return-object p0
.end method

.method public static whitelist createVendorEffect(Landroid/os/PersistableBundle;)Landroid/os/VibrationEffect;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 348
    new-instance v0, Landroid/os/VibrationEffect$VendorEffect;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/os/VibrationEffect$VendorEffect;-><init>(Landroid/os/PersistableBundle;IFF)V

    .line 350
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 351
    return-object v0
.end method

.method public static whitelist createWaveform([JI)Landroid/os/VibrationEffect;
    .registers 6

    .line 235
    array-length v0, p0

    new-array v0, v0, [I

    .line 236
    const/4 v1, 0x0

    :goto_4
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_13

    .line 237
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 239
    :cond_13
    invoke-static {p0, v0, p1}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createWaveform([J[II)Landroid/os/VibrationEffect;
    .registers 9

    .line 290
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_33

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    const/4 v1, 0x0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 298
    aget v2, p1, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 299
    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_1b

    :cond_15
    aget v2, p1, v1

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 300
    :goto_1b
    new-instance v3, Landroid/os/vibrator/StepSegment;

    aget-wide v4, p0, v1

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 302
    :cond_2a
    new-instance p0, Landroid/os/VibrationEffect$Composed;

    invoke-direct {p0, v0, p2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 303
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V

    .line 304
    return-object p0

    .line 291
    :cond_33
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timing and amplitude arrays must be of equal length (timings.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", amplitudes.length="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static blacklist effectIdToString(I)Ljava/lang/String;
    .registers 1

    .line 761
    sparse-switch p0, :sswitch_data_1e

    .line 769
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    .line 768
    :sswitch_8
    const-string p0, "TEXTURE_TICK"

    goto :goto_1c

    .line 764
    :sswitch_b
    const-string p0, "HEAVY_CLICK"

    goto :goto_1c

    .line 766
    :sswitch_e
    const-string p0, "POP"

    goto :goto_1c

    .line 767
    :sswitch_11
    const-string p0, "THUD"

    goto :goto_1c

    .line 763
    :sswitch_14
    const-string p0, "TICK"

    goto :goto_1c

    .line 765
    :sswitch_17
    const-string p0, "DOUBLE_CLICK"

    goto :goto_1c

    .line 762
    :sswitch_1a
    const-string p0, "CLICK"

    .line 761
    :goto_1c
    return-object p0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_1a
        0x1 -> :sswitch_17
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_e
        0x5 -> :sswitch_b
        0x15 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist effectStrengthToString(I)Ljava/lang/String;
    .registers 1

    .line 775
    packed-switch p0, :pswitch_data_12

    .line 779
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 778
    :pswitch_8
    const-string p0, "STRONG"

    goto :goto_10

    .line 777
    :pswitch_b
    const-string p0, "MEDIUM"

    goto :goto_10

    .line 776
    :pswitch_e
    const-string p0, "LIGHT"

    .line 775
    :goto_10
    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o get(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 374
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o get(IZ)Landroid/os/VibrationEffect;
    .registers 5

    .line 401
    new-instance v0, Landroid/os/VibrationEffect$Composed;

    new-instance v1, Landroid/os/vibrator/PrebakedSegment;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/os/vibrator/PrebakedSegment;-><init>(IZI)V

    invoke-direct {v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Landroid/os/vibrator/VibrationEffectSegment;)V

    .line 403
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 404
    return-object v0
.end method

.method public static greylist-max-o get(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/VibrationEffect;
    .registers 6

    .line 426
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 430
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 431
    return-object v2

    .line 434
    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 435
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 436
    if-nez v1, :cond_1b

    .line 440
    goto :goto_1c

    .line 436
    :cond_1b
    move-object p0, v1

    .line 443
    :goto_1c
    const/4 v1, 0x0

    :goto_1d
    array-length v3, v0

    if-ge v1, v3, :cond_49

    sget-object v3, Landroid/os/VibrationEffect;->RINGTONES:[I

    array-length v3, v3

    if-ge v1, v3, :cond_49

    .line 444
    aget-object v3, v0, v1

    if-nez v3, :cond_2a

    .line 445
    goto :goto_46

    .line 447
    :cond_2a
    aget-object v3, v0, v1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 448
    if-nez v3, :cond_37

    .line 449
    goto :goto_46

    .line 451
    :cond_37
    invoke-virtual {v3, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 452
    sget-object p0, Landroid/os/VibrationEffect;->RINGTONES:[I

    aget p0, p0, v1

    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    .line 443
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 455
    :cond_49
    return-object v2
.end method

.method public static blacklist scale(FF)F
    .registers 6

    .line 703
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->hapticsScaleV2Enabled()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_20

    .line 704
    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_1e

    invoke-static {p0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1e

    .line 709
    :cond_16
    mul-float v0, p1, p0

    sub-float/2addr p1, v2

    mul-float/2addr p1, p0

    mul-float/2addr p1, p0

    add-float/2addr p1, v2

    div-float/2addr v0, p1

    return v0

    .line 706
    :cond_1e
    :goto_1e
    mul-float/2addr p1, p0

    return p1

    .line 714
    :cond_20
    const v0, 0x3fc4ec4f

    invoke-static {p1, v0}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 716
    cmpg-float v3, p1, v2

    if-gtz v3, :cond_2d

    .line 719
    mul-float/2addr p0, v0

    return p0

    .line 723
    :cond_2d
    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v3, p1

    invoke-static {p1, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result p1

    .line 724
    mul-float/2addr p0, v0

    mul-float/2addr p0, p1

    .line 725
    mul-float/2addr v0, p1

    .line 727
    invoke-static {p0}, Landroid/util/MathUtils;->exp(F)F

    move-result p0

    .line 728
    invoke-static {v0}, Landroid/util/MathUtils;->exp(F)F

    move-result p1

    .line 732
    add-float v0, p1, v2

    sub-float/2addr p1, v2

    div-float/2addr v0, p1

    .line 733
    sub-float p1, p0, v2

    add-float/2addr p0, v2

    div-float/2addr p1, p0

    .line 735
    mul-float/2addr v0, p1

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public static blacklist scaleLinearly(FF)F
    .registers 3

    .line 749
    mul-float/2addr p0, p1

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public static whitelist startComposition()Landroid/os/VibrationEffect$Composition;
    .registers 1

    .line 465
    new-instance v0, Landroid/os/VibrationEffect$Composition;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 1

    .line 484
    new-instance v0, Landroid/os/VibrationEffect$WaveformBuilder;

    invoke-direct {v0}, Landroid/os/VibrationEffect$WaveformBuilder;-><init>()V

    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 3

    .line 504
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 505
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 506
    return-object v0
.end method

.method public static blacklist startWaveform(Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;
    .registers 4

    .line 530
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 531
    sget-object v1, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/VibrationEffect$WaveformBuilder;->addTransition(Ljava/time/Duration;Landroid/os/VibrationEffect$VibrationParameter;Landroid/os/VibrationEffect$VibrationParameter;)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 532
    return-object v0
.end method


# virtual methods
.method public abstract blacklist applyAdaptiveScale(F)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
.end method

.method public abstract blacklist computeCreateWaveformOffOnTimingsOrNull()[J
.end method

.method public abstract blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o getDuration()J
.end method

.method public blacklist getDuration(Landroid/os/VibratorInfo;)J
    .registers 4

    .line 576
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist resolve(I)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist scale(F)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist scaleLinearly(F)Landroid/os/VibrationEffect;
.end method

.method public abstract blacklist toDebugString()Ljava/lang/String;
.end method

.method public abstract greylist-max-o validate()V
.end method
