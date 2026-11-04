.class public abstract Landroid/os/vibrator/VibrationEffectSegment;
.super Ljava/lang/Object;
.source "VibrationEffectSegment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist PARCEL_TOKEN_BASIC_PWLE:I = 0x6

.field static final blacklist PARCEL_TOKEN_PREBAKED:I = 0x1

.field static final blacklist PARCEL_TOKEN_PRIMITIVE:I = 0x2

.field static final blacklist PARCEL_TOKEN_PWLE:I = 0x5

.field static final blacklist PARCEL_TOKEN_RAMP:I = 0x4

.field static final blacklist PARCEL_TOKEN_STEP:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 215
    new-instance v0, Landroid/os/vibrator/VibrationEffectSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/VibrationEffectSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/VibrationEffectSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method protected static blacklist amplitudeRequiresAmplitudeControl(F)Z
    .registers 2

    .line 198
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_13

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static blacklist checkDurationArgument(JLjava/lang/String;)V
    .registers 5

    .line 187
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    .line 190
    return-void

    .line 188
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " must be >= 0, got "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkFrequencyArgument(FLjava/lang/String;)V
    .registers 4

    .line 167
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_48

    .line 170
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 173
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_12

    .line 176
    return-void

    .line 174
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " must be >= 0, got "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must not be infinite"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 168
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must not be NaN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static blacklist frequencyRequiresFrequencyControl(F)Z
    .registers 2

    .line 211
    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method


# virtual methods
.method public abstract blacklist applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
.end method

.method public abstract blacklist getDuration()J
.end method

.method public blacklist getDuration(Landroid/os/VibratorInfo;)J
    .registers 4

    .line 74
    invoke-virtual {p0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract blacklist isHapticFeedbackCandidate()Z
.end method

.method public abstract blacklist resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">(F)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist scaleLinearly(F)Landroid/os/vibrator/VibrationEffectSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">(F)TT;"
        }
    .end annotation
.end method

.method public abstract blacklist toDebugString()Ljava/lang/String;
.end method

.method public abstract blacklist validate()V
.end method
