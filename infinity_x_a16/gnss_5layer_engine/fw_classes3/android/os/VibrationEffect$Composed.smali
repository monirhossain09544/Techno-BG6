.class public final Landroid/os/VibrationEffect$Composed;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composed"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$Composed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mRepeatIndex:I

.field private final blacklist mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1110
    new-instance v0, Landroid/os/VibrationEffect$Composed$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Composed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 812
    const-class v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 813
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 812
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 812
    invoke-direct {p0, v0, p1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 816
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/vibrator/VibrationEffectSegment;)V
    .registers 4

    .line 820
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/vibrator/VibrationEffectSegment;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 821
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;I)V"
        }
    .end annotation

    .line 825
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    .line 827
    iput p2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    .line 828
    return-void
.end method

.method private blacklist applyToSegments(Ljava/util/function/BiFunction;Ljava/lang/Object;)Landroid/os/VibrationEffect$Composed;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            "TT;",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;TT;)",
            "Landroid/os/VibrationEffect$Composed;"
        }
    .end annotation

    .line 1151
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1153
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_22

    .line 1154
    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-interface {p1, v3, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1156
    :cond_22
    iget-object p1, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1157
    return-object p0

    .line 1159
    :cond_2b
    new-instance p1, Landroid/os/VibrationEffect$Composed;

    iget p2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {p1, v1, p2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 1160
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->validate()V

    .line 1161
    return-object p1
.end method

.method private static blacklist castToValidStepSegmentForOffOnTimingsOrNull(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/vibrator/StepSegment;
    .registers 4

    .line 1132
    instance-of v0, p0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1133
    return-object v1

    .line 1136
    :cond_6
    check-cast p0, Landroid/os/vibrator/StepSegment;

    .line 1137
    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_12

    .line 1138
    return-object v1

    .line 1141
    :cond_12
    invoke-virtual {p0}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v0

    .line 1142
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_21

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_21

    .line 1143
    return-object v1

    .line 1146
    :cond_21
    return-object p0
.end method

.method private blacklist getDuration(Ljava/util/function/Function;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 942
    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-ltz v0, :cond_a

    .line 943
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 945
    :cond_a
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 946
    nop

    .line 947
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_15
    if-ge v3, v0, :cond_32

    .line 948
    iget-object v6, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-interface {p1, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 949
    cmp-long v8, v6, v1

    if-gez v8, :cond_2e

    .line 950
    return-wide v6

    .line 952
    :cond_2e
    add-long/2addr v4, v6

    .line 947
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 954
    :cond_32
    return-wide v4
.end method

.method static synthetic blacklist lambda$getDuration$0(Landroid/os/VibratorInfo;Landroid/os/vibrator/VibrationEffectSegment;)Ljava/lang/Long;
    .registers 2

    .line 938
    invoke-virtual {p1, p0}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist applyAdaptiveScale(F)Landroid/os/VibrationEffect$Composed;
    .registers 3

    .line 1030
    new-instance v0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/VibrationEffect$Composed;->applyToSegments(Ljava/util/function/BiFunction;Ljava/lang/Object;)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist applyAdaptiveScale(F)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->applyAdaptiveScale(F)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
    .registers 3

    .line 1009
    new-instance v0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/VibrationEffect$Composed;->applyToSegments(Ljava/util/function/BiFunction;Ljava/lang/Object;)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$Composed;
    .registers 6

    .line 1037
    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 1038
    :goto_9
    if-ne v0, p1, :cond_c

    .line 1039
    return-object p0

    .line 1040
    :cond_c
    if-nez p1, :cond_17

    .line 1041
    new-instance p1, Landroid/os/VibrationEffect$Composed;

    iget-object p2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object p1

    .line 1042
    :cond_17
    if-gtz p2, :cond_21

    .line 1044
    new-instance p1, Landroid/os/VibrationEffect$Composed;

    iget-object p2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-direct {p1, p2, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object p1

    .line 1048
    :cond_21
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    .line 1049
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1050
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1051
    new-instance v0, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    new-instance p2, Landroid/os/VibrationEffect$Composed;

    invoke-direct {p2, p1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object p2
.end method

.method public bridge synthetic blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1, p2}, Landroid/os/VibrationEffect$Composed;->applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .registers 4

    .line 960
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    .line 961
    invoke-virtual {v1, p1}, Landroid/os/vibrator/VibrationEffectSegment;->areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 962
    const/4 p1, 0x0

    return p1

    .line 964
    :cond_1a
    goto :goto_6

    .line 965
    :cond_1b
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist computeCreateWaveformOffOnTimingsOrNull()[J
    .registers 13

    .line 843
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_8

    .line 845
    return-object v1

    .line 848
    :cond_8
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    .line 857
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [J

    .line 858
    nop

    .line 860
    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4f

    .line 861
    nop

    .line 862
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {v7}, Landroid/os/VibrationEffect$Composed;->castToValidStepSegmentForOffOnTimingsOrNull(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/vibrator/StepSegment;

    move-result-object v7

    .line 863
    if-nez v7, :cond_2c

    .line 867
    return-object v1

    .line 870
    :cond_2c
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_37

    move v8, v3

    goto :goto_38

    :cond_37
    move v8, v4

    .line 872
    :goto_38
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_3e

    move v9, v3

    goto :goto_3f

    :cond_3e
    move v9, v4

    .line 873
    :goto_3f
    if-eq v8, v9, :cond_43

    .line 876
    add-int/lit8 v6, v6, 0x1

    .line 878
    :cond_43
    aget-wide v8, v2, v6

    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v2, v6

    .line 860
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 881
    :cond_4f
    add-int/2addr v6, v3

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
    .registers 6

    .line 911
    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_6

    .line 912
    return-object v1

    .line 915
    :cond_6
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 916
    if-gt v0, p1, :cond_f

    .line 917
    return-object p0

    .line 920
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 921
    new-instance p1, Landroid/os/VibrationEffect$Composed;

    iget v2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-direct {p1, v0, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    .line 923
    :try_start_22
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->validate()V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_25} :catch_27

    .line 926
    nop

    .line 927
    return-object p1

    .line 924
    :catch_27
    move-exception p1

    .line 925
    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1099
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1059
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1060
    return v0

    .line 1062
    :cond_4
    instance-of v1, p1, Landroid/os/VibrationEffect$Composed;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    .line 1065
    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    iget p1, p1, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-ne v1, p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    .line 1063
    :cond_1e
    return v2
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 932
    new-instance v0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/VibrationEffect$Composed;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/os/VibratorInfo;)J
    .registers 4

    .line 938
    new-instance v0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda2;-><init>(Landroid/os/VibratorInfo;)V

    invoke-direct {p0, v0}, Landroid/os/VibrationEffect$Composed;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRepeatIndex()I
    .registers 2

    .line 836
    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    return v0
.end method

.method public blacklist getSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1070
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 13

    .line 971
    invoke-virtual {p0}, Landroid/os/VibrationEffect$Composed;->getDuration()J

    move-result-wide v0

    .line 972
    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_c

    .line 975
    return v1

    .line 977
    :cond_c
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 978
    int-to-long v4, v0

    const-wide/16 v6, 0x3

    cmp-long v4, v4, v6

    if-lez v4, :cond_1a

    .line 981
    return v1

    .line 983
    :cond_1a
    nop

    .line 984
    const-wide/16 v4, 0x0

    move v6, v1

    move-wide v7, v4

    :goto_1f
    if-ge v6, v0, :cond_44

    .line 985
    iget-object v9, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v9}, Landroid/os/vibrator/VibrationEffectSegment;->isHapticFeedbackCandidate()Z

    move-result v9

    if-nez v9, :cond_30

    .line 987
    return v1

    .line 989
    :cond_30
    iget-object v9, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v9}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v9

    .line 990
    cmp-long v11, v9, v4

    if-lez v11, :cond_41

    .line 991
    add-long/2addr v7, v9

    .line 984
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 995
    :cond_44
    cmp-long v0, v7, v2

    if-gtz v0, :cond_49

    const/4 v1, 0x1

    :cond_49
    return v1
.end method

.method public blacklist resolve(I)Landroid/os/VibrationEffect$Composed;
    .registers 3

    .line 1002
    new-instance v0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/VibrationEffect$Composed;->applyToSegments(Ljava/util/function/BiFunction;Ljava/lang/Object;)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->resolve(I)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scale(F)Landroid/os/VibrationEffect$Composed;
    .registers 3

    .line 1016
    new-instance v0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/VibrationEffect$Composed;->applyToSegments(Ljava/util/function/BiFunction;Ljava/lang/Object;)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->scale(F)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist scaleLinearly(F)Landroid/os/VibrationEffect$Composed;
    .registers 3

    .line 1023
    new-instance v0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/os/VibrationEffect$Composed;->applyToSegments(Ljava/util/function/BiFunction;Ljava/lang/Object;)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist scaleLinearly(F)Landroid/os/VibrationEffect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$Composed;->scaleLinearly(F)Landroid/os/VibrationEffect$Composed;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 6

    .line 1083
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1b

    iget v0, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-gez v0, :cond_1b

    .line 1085
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v0}, Landroid/os/vibrator/VibrationEffectSegment;->toDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_1b
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "["

    const-string v3, "]"

    const-string v4, ","

    invoke-direct {v0, v4, v1, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1088
    nop

    :goto_27
    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_41

    .line 1089
    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-virtual {v1}, Landroid/os/vibrator/VibrationEffectSegment;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1088
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1091
    :cond_41
    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    if-ltz v1, :cond_58

    .line 1092
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget v2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s, repeat=%d"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1094
    :cond_58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Composed{segments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validate()V
    .registers 9

    .line 887
    iget-object v0, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 888
    nop

    .line 889
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_28

    .line 890
    iget-object v4, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    .line 891
    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->validate()V

    .line 893
    invoke-virtual {v4}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    goto :goto_24

    :cond_23
    move v4, v1

    :goto_24
    or-int/2addr v3, v4

    .line 889
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 895
    :cond_28
    const-string v2, ")"

    if-eqz v3, :cond_5d

    .line 899
    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5c

    .line 900
    iget v3, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    add-int/lit8 v4, v0, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "repeat index must be within the bounds of the segments (segments.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", index="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 904
    :cond_5c
    return-void

    .line 896
    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at least one timing must be non-zero (segments="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1104
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget-object p2, p0, Landroid/os/VibrationEffect$Composed;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1106
    iget p2, p0, Landroid/os/VibrationEffect$Composed;->mRepeatIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1107
    return-void
.end method
