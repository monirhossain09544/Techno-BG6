.class public final Landroid/os/VibratorInfo$FrequencyProfileLegacy;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequencyProfileLegacy"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo$FrequencyProfileLegacy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequencyRangeHz:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFrequencyResolutionHz:F

.field private final blacklist mMaxAmplitudes:[F

.field private final blacklist mMinFrequencyHz:F

.field private final blacklist mResonantFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)F
    .registers 1

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1114
    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FFF[F)V
    .registers 11

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    .line 975
    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    .line 976
    iput p3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    .line 977
    const/4 v0, 0x0

    if-nez p4, :cond_e

    move v1, v0

    goto :goto_f

    :cond_e
    array-length v1, p4

    :goto_f
    new-array v1, v1, [F

    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    .line 978
    if-eqz p4, :cond_1b

    .line 979
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v2, p4

    invoke-static {p4, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 983
    :cond_1b
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p4, :cond_42

    cmpl-float p4, p1, v1

    if-lez p4, :cond_42

    .line 985
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-nez p4, :cond_42

    cmpl-float p4, p2, v1

    if-lez p4, :cond_42

    .line 987
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-nez p4, :cond_42

    cmpl-float p4, p3, v1

    if-lez p4, :cond_42

    iget-object p4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length p4, p4

    if-lez p4, :cond_42

    move p4, v2

    goto :goto_43

    :cond_42
    move p4, v0

    .line 992
    :goto_43
    move v3, v0

    :goto_44
    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v4, v4

    if-ge v3, v4, :cond_62

    .line 993
    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v4, v4, v3

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_5d

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v4, v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5d

    move v4, v2

    goto :goto_5e

    :cond_5d
    move v4, v0

    :goto_5e
    and-int/2addr p4, v4

    .line 992
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 996
    :cond_62
    if-eqz p4, :cond_6c

    .line 997
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v1, v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr p3, v1

    add-float/2addr p3, p2

    goto :goto_6e

    .line 998
    :cond_6c
    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 1001
    :goto_6e
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_81

    cmpl-float v1, p1, p2

    if-ltz v1, :cond_81

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_81

    cmpg-float p1, p2, p3

    if-gez p1, :cond_81

    move v0, v2

    :cond_81
    and-int p1, p4, v0

    .line 1006
    if-eqz p1, :cond_92

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    goto :goto_93

    :cond_92
    const/4 p1, 0x0

    :goto_93
    iput-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    .line 1007
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    .line 958
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1076
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1081
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1082
    return v0

    .line 1084
    :cond_4
    instance-of v1, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1085
    return v2

    .line 1087
    :cond_a
    check-cast p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 1088
    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    iget v3, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_35

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    iget v3, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    .line 1089
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_35

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    iget v3, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    .line 1090
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    iget-object p1, p1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    .line 1091
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v2

    .line 1088
    :goto_36
    return v0
.end method

.method public blacklist getFrequencyRangeHz()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1017
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    return-object v0
.end method

.method public blacklist getFrequencyResolutionHz()F
    .registers 2

    .line 1063
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    return v0
.end method

.method public blacklist getMaxAmplitude(F)F
    .registers 7

    .line 1030
    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_50

    .line 1036
    :cond_19
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    sub-float/2addr p1, v0

    .line 1041
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    div-float v0, p1, v0

    float-to-double v0, v0

    .line 1042
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 1041
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 1044
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 1049
    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v2, v2, v0

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    aget v3, v3, v1

    int-to-float v0, v0

    iget v4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    mul-float/2addr v0, v4

    int-to-float v1, v1

    iget v4, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    mul-float/2addr v1, v4

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    return p1

    .line 1032
    :cond_50
    :goto_50
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getMaxAmplitudes()[F
    .registers 3

    .line 1058
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1096
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    .line 1097
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1096
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 1098
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1099
    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 1011
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrequencyProfileLegacy{mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResonantFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxAmplitudes count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1068
    iget p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mResonantFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1069
    iget p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMinFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1070
    iget p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mFrequencyResolutionHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1071
    iget-object p2, p0, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->mMaxAmplitudes:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 1072
    return-void
.end method
