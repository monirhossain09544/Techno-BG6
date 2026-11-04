.class public final Landroid/os/CombinedVibration$Sequential;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sequential"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Sequential;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_HAPTIC_FEEDBACK_SEQUENCE_SIZE:J = 0x3L


# instance fields
.field private final blacklist mDelays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 999
    new-instance v0, Landroid/os/CombinedVibration$Sequential$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Sequential$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Sequential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 781
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 783
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    .line 784
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    .line 785
    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_35

    .line 786
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    sget-object v3, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 789
    :cond_35
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 792
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    .line 794
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    .line 795
    return-void
.end method

.method private blacklist getDuration(Ljava/util/function/Function;)J
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/os/CombinedVibration;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 821
    nop

    .line 822
    nop

    .line 823
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 824
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move v5, v4

    move-wide v6, v2

    :goto_e
    if-ge v4, v0, :cond_38

    .line 825
    iget-object v8, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/CombinedVibration;

    invoke-interface {p1, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 826
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v8, v10

    if-nez v10, :cond_2c

    .line 828
    return-wide v8

    .line 830
    :cond_2c
    add-long/2addr v6, v8

    .line 834
    cmp-long v8, v8, v2

    if-gez v8, :cond_33

    const/4 v8, 0x1

    goto :goto_34

    :cond_33
    move v8, v1

    :goto_34
    or-int/2addr v5, v8

    .line 824
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 836
    :cond_38
    if-eqz v5, :cond_3d

    .line 838
    const-wide/16 v0, -0x1

    return-wide v0

    .line 840
    :cond_3d
    nop

    .line 841
    nop

    :goto_3f
    if-ge v1, v0, :cond_52

    .line 842
    iget-object p1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 844
    :cond_52
    add-long/2addr v6, v2

    return-wide v6
.end method

.method static synthetic blacklist lambda$getDuration$0(Landroid/util/SparseArray;Landroid/os/CombinedVibration;)Ljava/lang/Long;
    .registers 2

    .line 817
    invoke-virtual {p1, p0}, Landroid/os/CombinedVibration;->getDuration(Landroid/util/SparseArray;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;
    .registers 8

    .line 908
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 909
    nop

    .line 910
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 911
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 912
    invoke-virtual {v3, p1}, Landroid/os/CombinedVibration;->adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;

    move-result-object v4

    .line 913
    if-nez v4, :cond_1f

    .line 915
    const/4 p1, 0x0

    return-object p1

    .line 917
    :cond_1f
    iget-object v5, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;

    .line 918
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 910
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 920
    :cond_36
    if-eqz v1, :cond_39

    .line 921
    return-object p0

    .line 924
    :cond_39
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 952
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 953
    return v0

    .line 955
    :cond_4
    instance-of v1, p1, Landroid/os/CombinedVibration$Sequential;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 956
    return v2

    .line 958
    :cond_a
    check-cast p1, Landroid/os/CombinedVibration$Sequential;

    .line 959
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    iget-object v3, p1, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    iget-object p1, p1, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0
.end method

.method public blacklist getDelays()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 811
    new-instance v0, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/CombinedVibration$Sequential;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/util/SparseArray;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;)J"
        }
    .end annotation

    .line 817
    new-instance v0, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/os/CombinedVibration$Sequential$$ExternalSyntheticLambda1;-><init>(Landroid/util/SparseArray;)V

    invoke-direct {p0, v0}, Landroid/os/CombinedVibration$Sequential;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getEffects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation

    .line 800
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasVendorEffects()Z
    .registers 4

    .line 942
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 943
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    invoke-virtual {v2}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 944
    const/4 v0, 0x1

    return v0

    .line 942
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 947
    :cond_1d
    return v0
.end method

.method public blacklist hasVibrator(I)Z
    .registers 6

    .line 930
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 931
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 932
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    invoke-virtual {v3, p1}, Landroid/os/CombinedVibration;->hasVibrator(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 933
    const/4 p1, 0x1

    return p1

    .line 931
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 936
    :cond_1d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 964
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 6

    .line 850
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 851
    int-to-long v1, v0

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_f

    .line 852
    return v2

    .line 854
    :cond_f
    move v1, v2

    :goto_10
    if-ge v1, v0, :cond_24

    .line 855
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    invoke-virtual {v3}, Landroid/os/CombinedVibration;->isHapticFeedbackCandidate()Z

    move-result v3

    if-nez v3, :cond_21

    .line 856
    return v2

    .line 854
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 859
    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 6

    .line 975
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "Sequential{"

    const-string/jumbo v2, "}"

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 976
    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 977
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    .line 978
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CombinedVibration;

    invoke-virtual {v4}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 977
    const-string v4, "delayMs=%d, effect=%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 976
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 980
    :cond_39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequential{mEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDelays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParamT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/VibrationEffect$Transformation<",
            "TParamT;>;TParamT;)",
            "Landroid/os/CombinedVibration;"
        }
    .end annotation

    .line 890
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 891
    nop

    .line 892
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 893
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/CombinedVibration;

    .line 894
    invoke-virtual {v3, p1, p2}, Landroid/os/CombinedVibration;->transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;

    move-result-object v4

    .line 895
    iget-object v5, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;

    .line 896
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 892
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 898
    :cond_32
    if-eqz v1, :cond_35

    .line 899
    return-object p0

    .line 902
    :cond_35
    invoke-virtual {v0}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist validate()V
    .registers 5

    .line 865
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    const-string v3, "There should be at least one effect set for a combined effect"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 867
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    const-string v0, "Effect and delays should have equal length"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 869
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 870
    move v1, v2

    :goto_2e
    if-ge v1, v0, :cond_62

    .line 871
    iget-object v3, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_41

    .line 870
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 872
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delays must all be >= 0 (delays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_62
    nop

    :goto_63
    if-ge v2, v0, :cond_7f

    .line 877
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    .line 878
    instance-of v3, v1, Landroid/os/CombinedVibration$Sequential;

    if-nez v3, :cond_77

    .line 882
    invoke-virtual {v1}, Landroid/os/CombinedVibration;->validate()V

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 879
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There should be no nested sequential effects in a combined effect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_7f
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 990
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    iget-object v0, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 993
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mDelays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    iget-object v1, p0, Landroid/os/CombinedVibration$Sequential;->mEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CombinedVibration;

    invoke-virtual {v1, p1, p2}, Landroid/os/CombinedVibration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 996
    :cond_33
    return-void
.end method
