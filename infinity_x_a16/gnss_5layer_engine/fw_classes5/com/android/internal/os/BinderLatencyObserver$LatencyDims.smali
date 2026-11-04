.class public Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
.super Ljava/lang/Object;
.source "BinderLatencyObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderLatencyObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatencyDims"
.end annotation


# instance fields
.field private blacklist mBinderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHashCode:I

.field private blacklist mTransactionCode:I


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)V"
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    .line 330
    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    .line 331
    iput p2, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    .line 332
    return-void
.end method

.method public static blacklist create(Ljava/lang/Class;I)Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)",
            "Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;"
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 344
    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    instance-of v1, p1, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    if-nez v1, :cond_8

    goto :goto_1c

    .line 347
    :cond_8
    check-cast p1, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    .line 348
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    invoke-virtual {p1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getTransactionCode()I

    move-result v2

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getBinderClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v1, p1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    return v0

    .line 345
    :cond_1c
    :goto_1c
    return v0
.end method

.method public blacklist getBinderClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getTransactionCode()I
    .registers 2

    .line 339
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 353
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    if-eqz v0, :cond_7

    .line 354
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    return v0

    .line 356
    :cond_7
    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mTransactionCode:I

    .line 357
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mBinderClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->mHashCode:I

    .line 359
    return v0
.end method
