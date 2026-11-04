.class public final Landroid/os/CombinedVibration$SequentialCombination;
.super Ljava/lang/Object;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequentialCombination"
.end annotation


# instance fields
.field private final blacklist mDelays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    .line 265
    return-void
.end method


# virtual methods
.method public blacklist addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;
    .registers 4

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;I)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addNext(ILandroid/os/VibrationEffect;I)Landroid/os/CombinedVibration$SequentialCombination;
    .registers 5

    .line 300
    nop

    .line 301
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1, p3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;
    .registers 3

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;
    .registers 6

    .line 336
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_35

    .line 337
    check-cast p1, Landroid/os/CombinedVibration$Sequential;

    .line 338
    iget-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 339
    iget-object v1, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    iget-object v1, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    iget-object p1, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    goto :goto_43

    .line 343
    :cond_35
    iget-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object p1, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :goto_43
    return-object p0
.end method

.method public blacklist combine()Landroid/os/CombinedVibration;
    .registers 4

    .line 361
    iget-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 365
    new-instance v0, Landroid/os/CombinedVibration$Sequential;

    iget-object v1, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Landroid/os/CombinedVibration$Sequential;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 366
    invoke-virtual {v0}, Landroid/os/CombinedVibration;->validate()V

    .line 367
    return-object v0

    .line 362
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Combination must have at least one element to combine."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
