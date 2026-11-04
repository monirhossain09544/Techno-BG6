.class public final Landroid/os/CombinedVibration$Mono;
.super Landroid/os/CombinedVibration;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mono"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration$Mono;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEffect:Landroid/os/VibrationEffect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 517
    new-instance v0, Landroid/os/CombinedVibration$Mono$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$Mono$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration$Mono;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 381
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 382
    sget-object v0, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/VibrationEffect;

    iput-object p1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    .line 383
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/VibrationEffect;)V
    .registers 2

    .line 385
    invoke-direct {p0}, Landroid/os/CombinedVibration;-><init>()V

    .line 386
    iput-object p1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    .line 387
    return-void
.end method


# virtual methods
.method public blacklist adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;
    .registers 9

    .line 443
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    .line 444
    nop

    .line 445
    invoke-interface {p1}, Landroid/os/CombinedVibration$VibratorAdapter;->getAvailableVibratorIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_27

    aget v5, v1, v4

    .line 446
    iget-object v6, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-interface {p1, v5, v6}, Landroid/os/CombinedVibration$VibratorAdapter;->adaptToVibrator(ILandroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 447
    if-nez v6, :cond_1a

    .line 449
    const/4 p1, 0x0

    return-object p1

    .line 451
    :cond_1a
    invoke-virtual {v0, v5, v6}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 452
    iget-object v5, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    and-int/2addr v3, v5

    .line 445
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 454
    :cond_27
    if-eqz v3, :cond_2a

    .line 455
    return-object p0

    .line 458
    :cond_2a
    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 478
    if-ne p0, p1, :cond_4

    .line 479
    const/4 p1, 0x1

    return p1

    .line 481
    :cond_4
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-nez v0, :cond_a

    .line 482
    const/4 p1, 0x0

    return p1

    .line 484
    :cond_a
    check-cast p1, Landroid/os/CombinedVibration$Mono;

    .line 485
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    iget-object p1, p1, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getDuration()J
    .registers 3

    .line 396
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDuration(Landroid/util/SparseArray;)J
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;)J"
        }
    .end annotation

    .line 402
    if-nez p1, :cond_7

    .line 403
    invoke-virtual {p0}, Landroid/os/CombinedVibration$Mono;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 405
    :cond_7
    nop

    .line 406
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_c
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_34

    .line 407
    iget-object v5, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibratorInfo;

    invoke-virtual {v5, v6}, Landroid/os/VibrationEffect;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide v5

    .line 408
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v5, v7

    if-eqz v7, :cond_33

    cmp-long v7, v5, v0

    if-gez v7, :cond_2c

    goto :goto_33

    .line 411
    :cond_2c
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 409
    :cond_33
    :goto_33
    return-wide v5

    .line 413
    :cond_34
    return-wide v3
.end method

.method public blacklist getEffect()Landroid/os/VibrationEffect;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method public blacklist hasVendorEffects()Z
    .registers 2

    .line 470
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->vendorVibrationEffects()Z

    move-result v0

    if-nez v0, :cond_8

    .line 471
    const/4 v0, 0x0

    return v0

    .line 473
    :cond_8
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$VendorEffect;

    return v0
.end method

.method public blacklist hasVibrator(I)Z
    .registers 2

    .line 464
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 490
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 419
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->isHapticFeedbackCandidate()Z

    move-result v0

    return v0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .registers 2

    .line 502
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->toDebugString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mono{mEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

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
    .registers 4
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

    .line 432
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-interface {p1, v0, p2}, Landroid/os/VibrationEffect$Transformation;->transform(Landroid/os/VibrationEffect;Ljava/lang/Object;)Landroid/os/VibrationEffect;

    move-result-object p1

    .line 433
    iget-object p2, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 434
    return-object p0

    .line 437
    :cond_f
    invoke-static {p1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist validate()V
    .registers 2

    .line 425
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    .line 426
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 512
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object v0, p0, Landroid/os/CombinedVibration$Mono;->mEffect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibrationEffect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 514
    return-void
.end method
