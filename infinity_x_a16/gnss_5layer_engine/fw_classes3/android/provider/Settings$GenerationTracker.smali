.class final Landroid/provider/Settings$GenerationTracker;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenerationTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$GenerationTracker$Key;
    }
.end annotation


# instance fields
.field private final greylist-max-o mArray:Landroid/util/MemoryIntArray;

.field private greylist-max-o mCurrentGeneration:I

.field private final blacklist mErrorHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIndex:I

.field private final blacklist mKey:Landroid/provider/Settings$GenerationTracker$Key;


# direct methods
.method constructor blacklist <init>(Landroid/provider/Settings$GenerationTracker$Key;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            "Landroid/util/MemoryIntArray;",
            "II",
            "Ljava/util/function/Consumer<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            ">;)V"
        }
    .end annotation

    .line 3464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3465
    iput-object p1, p0, Landroid/provider/Settings$GenerationTracker;->mKey:Landroid/provider/Settings$GenerationTracker$Key;

    .line 3466
    iput-object p2, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    .line 3467
    iput p3, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    .line 3468
    iput-object p5, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/util/function/Consumer;

    .line 3469
    iput p4, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 3470
    return-void
.end method

.method private greylist-max-o readCurrentGeneration()I
    .registers 4

    .line 3490
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MemoryIntArray;->get(I)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 3491
    :catch_9
    move-exception v0

    .line 3492
    const-string v1, "Settings"

    const-string v2, "Error getting current generation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3493
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mKey:Landroid/provider/Settings$GenerationTracker$Key;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3495
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 2

    .line 3499
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    invoke-static {v0}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    .line 3500
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3505
    :try_start_0
    invoke-virtual {p0}, Landroid/provider/Settings$GenerationTracker;->destroy()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 3507
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3508
    nop

    .line 3509
    return-void

    .line 3507
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3508
    throw v0
.end method

.method public greylist-max-o getCurrentGeneration()I
    .registers 2

    .line 3485
    iget v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    return v0
.end method

.method public greylist-max-o isGenerationChanged()Z
    .registers 3

    .line 3474
    invoke-direct {p0}, Landroid/provider/Settings$GenerationTracker;->readCurrentGeneration()I

    move-result v0

    .line 3475
    if-ltz v0, :cond_e

    .line 3476
    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    if-ne v0, v1, :cond_c

    .line 3477
    const/4 v0, 0x0

    return v0

    .line 3479
    :cond_c
    iput v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 3481
    :cond_e
    const/4 v0, 0x1

    return v0
.end method
