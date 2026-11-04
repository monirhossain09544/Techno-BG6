.class public final Landroid/os/VibratorInfo$FrequencyProfile;
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
    name = "FrequencyProfile"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo$FrequencyProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFrequenciesHz:[F

.field private final blacklist mMaxFrequencyHz:F

.field private final blacklist mMaxOutputAccelerationGs:F

.field private final blacklist mMinFrequencyHz:F

.field private final blacklist mOutputAccelerationsGs:[F

.field private final blacklist mResonantFrequencyHz:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F
    .registers 1

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 916
    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfile$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(F[F[F)V
    .registers 10

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    .line 693
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    if-eqz p3, :cond_14

    array-length v2, p2

    array-length v3, p3

    if-ne v2, v3, :cond_14

    array-length v2, p2

    if-lez v2, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    .line 697
    :goto_15
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->decoupleFrequencyProfileFromResonance()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    .line 698
    if-eqz v2, :cond_2a

    .line 699
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_28

    cmpl-float v2, p1, v4

    if-lez v2, :cond_2a

    :cond_28
    move v2, v0

    goto :goto_3b

    :cond_2a
    move v2, v1

    goto :goto_3b

    .line 701
    :cond_2c
    if-eqz v2, :cond_3a

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3a

    cmpl-float v2, p1, v4

    if-lez v2, :cond_3a

    move v2, v0

    goto :goto_3b

    :cond_3a
    move v2, v1

    .line 704
    :goto_3b
    if-nez v2, :cond_7f

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid frequency profile received from HAL. resonantFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", frequenciesHz="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 707
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", outputAccelerationsGs="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 708
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 705
    const-string p2, "VibratorInfo"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    .line 711
    iput-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 712
    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    .line 713
    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    .line 714
    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    .line 715
    return-void

    .line 718
    :cond_7f
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 720
    move v2, v1

    :goto_85
    array-length v3, p2

    if-ge v2, v3, :cond_9a

    .line 721
    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aget v5, p3, v2

    .line 722
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 721
    invoke-virtual {p1, v3, v5}, Ljava/util/TreeMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 725
    :cond_9a
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p2

    new-array p2, p2, [F

    .line 726
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p3

    new-array p3, p3, [F

    .line 727
    nop

    .line 728
    nop

    .line 729
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :goto_b1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 730
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, p2, v2

    .line 731
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, p3, v2

    .line 732
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 733
    add-int/2addr v2, v0

    .line 734
    goto :goto_b1

    .line 736
    :cond_e5
    iput-object p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    .line 737
    iput-object p3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 738
    iget-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget p1, p1, v1

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    .line 739
    iget-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    iget-object p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    array-length p2, p2

    sub-int/2addr p2, v0

    aget p1, p1, p2

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    .line 740
    iput v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    .line 741
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    .line 678
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 886
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 887
    return v0

    .line 889
    :cond_4
    instance-of v1, p1, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Landroid/os/VibratorInfo$FrequencyProfile;

    .line 892
    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    iget v3, p1, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    iget-object v3, p1, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    .line 893
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    iget-object p1, p1, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 894
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 892
    :goto_2b
    return v0

    .line 890
    :cond_2c
    return v2
.end method

.method public blacklist getFrequenciesHz()[F
    .registers 2

    .line 753
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    return-object v0
.end method

.method public blacklist getFrequencyRangeHz(F)Landroid/util/Range;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    if-eqz v0, :cond_a3

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_11

    goto/16 :goto_a3

    .line 824
    :cond_11
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_28

    .line 825
    new-instance p1, Landroid/util/Range;

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    .line 828
    :cond_28
    nop

    .line 829
    nop

    .line 830
    nop

    .line 832
    const/4 v0, 0x0

    move v2, v0

    :goto_2d
    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    array-length v3, v3

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-ge v2, v3, :cond_5c

    .line 833
    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v3, v3, v2

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_59

    .line 834
    if-nez v2, :cond_41

    .line 835
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    goto :goto_57

    .line 837
    :cond_41
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    add-int/lit8 v3, v2, -0x1

    aget v0, v0, v3

    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v5, v5, v2

    iget-object v6, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v3, v6, v3

    iget-object v6, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v6, v6, v2

    invoke-static {v0, v5, v3, v6, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    .line 842
    :goto_57
    nop

    .line 843
    goto :goto_5e

    .line 832
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_5c
    move v2, v0

    move v0, v4

    .line 847
    :goto_5e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 849
    return-object v1

    .line 853
    :cond_65
    nop

    :goto_66
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    array-length v1, v1

    if-ge v2, v1, :cond_8d

    .line 854
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v1, v1, v2

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_8a

    .line 855
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    add-int/lit8 v3, v2, -0x1

    aget v1, v1, v3

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v4, v4, v2

    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v3, v5, v3

    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v2, v5, v2

    invoke-static {v1, v4, v3, v2, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v4

    .line 859
    goto :goto_8d

    .line 853
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 863
    :cond_8d
    :goto_8d
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 866
    iget v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    .line 869
    :cond_95
    new-instance p1, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p1

    .line 821
    :cond_a3
    :goto_a3
    return-object v1
.end method

.method public blacklist getMaxFrequencyHz()F
    .registers 2

    .line 807
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    return v0
.end method

.method public blacklist getMaxOutputAccelerationGs()F
    .registers 2

    .line 764
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    return v0
.end method

.method public blacklist getMinFrequencyHz()F
    .registers 2

    .line 802
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    return v0
.end method

.method public blacklist getOutputAccelerationGs(F)F
    .registers 7

    .line 775
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    if-nez v0, :cond_7

    .line 776
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 779
    :cond_7
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3b

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_14

    goto :goto_3b

    .line 784
    :cond_14
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    .line 785
    if-ltz v0, :cond_21

    .line 786
    iget-object p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget p1, p1, v0

    return p1

    .line 791
    :cond_21
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 794
    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    aget v1, v1, v0

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v0, v4, v0

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    aget v3, v4, v3

    invoke-static {v1, v2, v0, v3, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    return p1

    .line 781
    :cond_3b
    :goto_3b
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getOutputAccelerationsGs()[F
    .registers 2

    .line 759
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 899
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 900
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 899
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 745
    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

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

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrequencyProfile{mResonantFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequenciesHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    .line 907
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputAccelerationsGs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    .line 908
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxOutputAccelerationGs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxOutputAccelerationGs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 905
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 874
    iget p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 875
    iget-object p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequenciesHz:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 876
    iget-object p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mOutputAccelerationsGs:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 877
    return-void
.end method
