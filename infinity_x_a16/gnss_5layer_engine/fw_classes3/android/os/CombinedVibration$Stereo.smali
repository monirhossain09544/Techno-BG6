.class public final Landroid/os/CombinedVibration$Stereo;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stereo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Stereo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$cdvXeSO9pMJjJ-u7cs1pGfka_30(Landroid/os/CombinedVibration$Stereo;Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/CombinedVibration$Stereo;->lambda$getDuration$0(Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$etDOqC3FtktB09k8rHwTuDQO1Ys(Landroid/os/CombinedVibration$Stereo;Landroid/util/SparseArray;Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/CombinedVibration$Stereo;->lambda$getDuration$1(Landroid/util/SparseArray;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 749
    new-instance v0, Landroid/os/CombinedVibration$Stereo$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Stereo$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Stereo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 546
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 548
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    .line 549
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_25

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 551
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    sget-object v4, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 553
    :cond_25
    return-void
.end method

.method constructor blacklist <init>(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;)V"
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 556
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    .line 557
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 558
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 560
    :cond_27
    return-void
.end method

.method private blacklist getDuration(Ljava/util/function/Function;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 587
    nop

    .line 588
    nop

    .line 589
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_7
    iget-object v5, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_38

    .line 590
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 591
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v5, v7

    if-nez v7, :cond_27

    .line 593
    return-wide v5

    .line 595
    :cond_27
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 599
    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    move v5, v2

    :goto_34
    or-int/2addr v4, v5

    .line 589
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 601
    :cond_38
    if-eqz v4, :cond_3d

    .line 603
    const-wide/16 v0, -0x1

    return-wide v0

    .line 605
    :cond_3d
    return-wide v0
.end method

.method private synthetic blacklist lambda$getDuration$0(Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 4

    .line 570
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect;

    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private synthetic blacklist lambda$getDuration$1(Landroid/util/SparseArray;Ljava/lang/Integer;)Ljava/lang/Long;
    .registers 5

    .line 580
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    .line 581
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibratorInfo;

    .line 582
    invoke-virtual {v0, p1}, Landroid/os/VibrationEffect;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;
    .registers 8

    .line 652
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    .line 653
    nop

    .line 654
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 655
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 656
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    .line 657
    invoke-interface {p1, v3, v4}, Landroid/os/CombinedVibration$VibratorAdapter;->adaptToVibrator(ILandroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 658
    if-nez v5, :cond_25

    .line 660
    const/4 p1, 0x0

    return-object p1

    .line 662
    :cond_25
    invoke-virtual {v0, v3, v5}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 663
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 665
    :cond_30
    if-eqz v1, :cond_33

    .line 666
    return-object p0

    .line 669
    :cond_33
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 694
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 695
    return v0

    .line 697
    :cond_4
    instance-of v1, p1, Landroid/os/CombinedVibration$Stereo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 698
    return v2

    .line 700
    :cond_a
    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    .line 701
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v3, p1, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v1, v3, :cond_1b

    .line 702
    return v2

    .line 704
    :cond_1b
    move v1, v2

    :goto_1c
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    .line 705
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    iget-object v4, p1, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    iget-object v5, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 706
    return v2

    .line 704
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 709
    :cond_42
    return v0
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 570
    new-instance v0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda0;-><init>(Landroid/os/CombinedVibration$Stereo;)V

    invoke-direct {p0, v0}, Landroid/os/CombinedVibration$Stereo;->getDuration(Ljava/util/function/Function;)J

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

    .line 576
    if-nez p1, :cond_7

    .line 577
    invoke-virtual {p0}, Landroid/os/CombinedVibration$Stereo;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 579
    :cond_7
    new-instance v0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda1;-><init>(Landroid/os/CombinedVibration$Stereo;Landroid/util/SparseArray;)V

    invoke-direct {p0, v0}, Landroid/os/CombinedVibration$Stereo;->getDuration(Ljava/util/function/Function;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getEffects()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist hasVendorEffects()Z
    .registers 4

    .line 681
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 682
    return v1

    .line 684
    :cond_8
    move v0, v1

    :goto_9
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    .line 685
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/os/VibrationEffect$VendorEffect;

    if-eqz v2, :cond_1d

    .line 686
    const/4 v0, 0x1

    return v0

    .line 684
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 689
    :cond_20
    return v1
.end method

.method public blacklist hasVibrator(I)Z
    .registers 3

    .line 675
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 714
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 4

    .line 611
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 612
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/VibrationEffect;

    invoke-virtual {v2}, Landroid/os/VibrationEffect;->isHapticFeedbackCandidate()Z

    move-result v2

    if-nez v2, :cond_19

    .line 613
    return v0

    .line 611
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 616
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 6

    .line 725
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "Stereo{"

    const-string/jumbo v2, "}"

    const-string v3, ","

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 726
    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 727
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    .line 728
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {v4}, Landroid/os/VibrationEffect;->toDebugString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 727
    const-string/jumbo v4, "vibrator(id=%d): %s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 730
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stereo{mEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

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

    .line 633
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    .line 634
    nop

    .line 635
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 636
    iget-object v3, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 637
    iget-object v4, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    .line 638
    invoke-interface {p1, v4, p2}, Landroid/os/VibrationEffect$Transformation;->transform(Landroid/os/VibrationEffect;Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 639
    invoke-virtual {v0, v3, v5}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 640
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 642
    :cond_2c
    if-eqz v1, :cond_2f

    .line 643
    return-object p0

    .line 646
    :cond_2f
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist validate()V
    .registers 4

    .line 622
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    const-string v2, "There should be at least one effect set for a combined effect"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 624
    nop

    :goto_12
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 625
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 624
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 627
    :cond_28
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 740
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 743
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    iget-object v1, p0, Landroid/os/CombinedVibration$Stereo;->mEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    invoke-virtual {v1, p1, p2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 746
    :cond_2d
    return-void
.end method
