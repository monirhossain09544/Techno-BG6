.class public final Landroid/os/vibrator/PwleSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;
.source "PwleSegment.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/PwleSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDuration:J

.field private final blacklist mEndAmplitude:F

.field private final blacklist mEndFrequencyHz:F

.field private final blacklist mStartAmplitude:F

.field private final blacklist mStartFrequencyHz:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 220
    new-instance v0, Landroid/os/vibrator/PwleSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/PwleSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/PwleSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFFFJ)V
    .registers 7

    .line 56
    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    .line 57
    iput p1, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    .line 58
    iput p2, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    .line 59
    iput p3, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    .line 60
    iput p4, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    .line 61
    iput-wide p5, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist applyEffectStrength(I)Landroid/os/vibrator/PwleSegment;
    .registers 2

    .line 174
    return-object p0
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PwleSegment;->applyEffectStrength(I)Landroid/os/vibrator/PwleSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .registers 5

    .line 101
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->areEnvelopeEffectsSupported()Z

    move-result v0

    .line 104
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result v1

    .line 105
    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result p1

    .line 107
    iget v2, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_2e

    iget v2, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_2e

    iget v2, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2e

    iget v1, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    and-int/2addr p1, v0

    .line 111
    return p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 87
    instance-of v0, p1, Landroid/os/vibrator/PwleSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 88
    return v1

    .line 90
    :cond_6
    check-cast p1, Landroid/os/vibrator/PwleSegment;

    .line 91
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    iget v2, p1, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3a

    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    iget v2, p1, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    .line 92
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3a

    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    iget v2, p1, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    .line 93
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3a

    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    iget v2, p1, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    .line 94
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3a

    iget-wide v2, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    iget-wide v4, p1, Landroid/os/vibrator/PwleSegment;->mDuration:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3a

    const/4 v1, 0x1

    goto :goto_3b

    :cond_3a
    nop

    .line 91
    :goto_3b
    return v1
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 82
    iget-wide v0, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    return-wide v0
.end method

.method public blacklist getEndAmplitude()F
    .registers 2

    .line 69
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    return v0
.end method

.method public blacklist getEndFrequencyHz()F
    .registers 2

    .line 77
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    return v0
.end method

.method public blacklist getStartAmplitude()F
    .registers 2

    .line 65
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    return v0
.end method

.method public blacklist getStartFrequencyHz()F
    .registers 2

    .line 73
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 179
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-wide v4, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    .line 180
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resolve(I)Landroid/os/vibrator/PwleSegment;
    .registers 2

    .line 137
    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PwleSegment;->resolve(I)Landroid/os/vibrator/PwleSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/vibrator/PwleSegment;
    .registers 10

    .line 144
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v2

    .line 145
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v3

    .line 146
    iget p1, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1d

    iget p1, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    .line 147
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1d

    .line 148
    return-object p0

    .line 150
    :cond_1d
    new-instance v1, Landroid/os/vibrator/PwleSegment;

    iget v4, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    iget v5, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    iget-wide v6, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    return-object v1
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PwleSegment;->scale(F)Landroid/os/vibrator/PwleSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scaleLinearly(F)Landroid/os/vibrator/PwleSegment;
    .registers 10

    .line 159
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v2

    .line 160
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scaleLinearly(FF)F

    move-result v3

    .line 161
    iget p1, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1d

    iget p1, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    .line 162
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1d

    .line 163
    return-object p0

    .line 165
    :cond_1d
    new-instance v1, Landroid/os/vibrator/PwleSegment;

    iget v4, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    iget v5, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    iget-wide v6, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    invoke-direct/range {v1 .. v7}, Landroid/os/vibrator/PwleSegment;-><init>(FFFFJ)V

    return-object v1
.end method

.method public bridge synthetic blacklist scaleLinearly(F)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PwleSegment;->scaleLinearly(F)Landroid/os/vibrator/PwleSegment;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 7

    .line 196
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    .line 198
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    .line 199
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v4, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    .line 200
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    .line 201
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 196
    const-string v2, "Pwle=%dms(amplitude=%.2f @ %.2fHz to %.2f @ %.2fHz)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pwle{startAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .registers 5

    .line 123
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    const-string v1, "Start frequency must be greater than zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 125
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    const-string v1, "End frequency must be greater than zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 127
    iget-wide v0, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    long-to-float v0, v0

    const-string v1, "Time must be greater than zero."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    .line 129
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    const-string/jumbo v1, "startAmplitude"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 130
    iget v0, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    const-string v1, "endAmplitude"

    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 131
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 211
    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget p2, p0, Landroid/os/vibrator/PwleSegment;->mStartAmplitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 213
    iget p2, p0, Landroid/os/vibrator/PwleSegment;->mEndAmplitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 214
    iget p2, p0, Landroid/os/vibrator/PwleSegment;->mStartFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 215
    iget p2, p0, Landroid/os/vibrator/PwleSegment;->mEndFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 216
    iget-wide v0, p0, Landroid/os/vibrator/PwleSegment;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    return-void
.end method
