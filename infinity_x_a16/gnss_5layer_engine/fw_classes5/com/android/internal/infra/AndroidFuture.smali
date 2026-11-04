.class public Lcom/android/internal/infra/AndroidFuture;
.super Ljava/util/concurrent/CompletableFuture;
.source "AndroidFuture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;,
        Lcom/android/internal/infra/AndroidFuture$ThenApplyAsync;,
        Lcom/android/internal/infra/AndroidFuture$ThenCombine;,
        Lcom/android/internal/infra/AndroidFuture$SupplyAsync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CompletableFuture<",
        "TT;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/infra/AndroidFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final blacklist EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static blacklist sMainHandler:Landroid/os/Handler;


# instance fields
.field private blacklist mListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

.field private blacklist mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    const-class v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 76
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 637
    new-instance v0, Lcom/android/internal/infra/AndroidFuture$2;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture$2;-><init>()V

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 84
    invoke-static {}, Lcom/android/internal/infra/AndroidFuture;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    .line 90
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 93
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 84
    invoke-static {}, Lcom/android/internal/infra/AndroidFuture;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 98
    invoke-static {p1}, Lcom/android/internal/infra/AndroidFuture;->readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_30

    .line 101
    :cond_29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 103
    :goto_30
    iput-object v1, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    goto :goto_3d

    .line 106
    :cond_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/infra/IAndroidFuture$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/infra/IAndroidFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    .line 108
    :goto_3d
    return-void
.end method

.method static blacklist callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "-TTT;-",
            "Ljava/lang/Throwable;",
            ">;TTT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 260
    :try_start_0
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 272
    goto :goto_b

    .line 261
    :catchall_4
    move-exception v0

    .line 262
    if-nez p2, :cond_c

    .line 265
    const/4 p2, 0x0

    :try_start_8
    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    :goto_b
    goto :goto_29

    .line 269
    :cond_c
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 270
    throw v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_10

    .line 273
    :catchall_10
    move-exception p0

    .line 275
    sget-object p2, Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to call whenComplete listener. res = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :goto_29
    return-void
.end method

.method private blacklist callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    if-ne v0, v1, :cond_a

    .line 245
    invoke-static {p1, p2, p3}, Lcom/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 249
    :goto_14
    return-void
.end method

.method public static blacklist completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 129
    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 130
    return-object v0
.end method

.method private static blacklist getMainHandler()Landroid/os/Handler;
    .registers 2

    .line 113
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    .line 116
    :cond_f
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic blacklist lambda$callListenerAsync$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 247
    invoke-static {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$thenCombine$2(Ljava/lang/Object;Ljava/lang/Void;)Ljava/lang/Object;
    .registers 2

    .line 430
    return-object p0
.end method

.method static synthetic blacklist lambda$whenCompleteAsync$0(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    .line 221
    invoke-static {p0, p2, p3}, Lcom/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 222
    invoke-static {p1, p2, p3}, Lcom/android/internal/infra/AndroidFuture;->callListener(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method private static blacklist readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;
    .registers 8

    .line 596
    const-string v0, ": "

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 597
    if-nez v1, :cond_a

    .line 598
    const/4 p0, 0x0

    return-object p0

    .line 601
    :cond_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 602
    if-eqz v1, :cond_1d

    .line 603
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    .line 606
    :cond_1d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    :try_start_40
    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 613
    const-class v5, Ljava/lang/Throwable;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 614
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 615
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 616
    goto :goto_96

    .line 617
    :cond_69
    const-string v3, "186530450"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ""

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x534e4554

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 618
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_40 .. :try_end_96} :catchall_97

    .line 623
    :goto_96
    goto :goto_b6

    .line 620
    :catchall_97
    move-exception v3

    .line 621
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 624
    :goto_b6
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 625
    invoke-static {p0}, Lcom/android/internal/infra/AndroidFuture;->readThrowable(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object p0

    .line 626
    if-eqz p0, :cond_c4

    .line 627
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 629
    :cond_c4
    return-object v3
.end method

.method public static blacklist supply(Ljava/util/function/Supplier;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 484
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 491
    new-instance v0, Lcom/android/internal/infra/AndroidFuture$SupplyAsync;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/infra/AndroidFuture$SupplyAsync;-><init>(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static blacklist writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V
    .registers 8

    .line 561
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 562
    :goto_7
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 563
    if-nez v2, :cond_d

    .line 564
    return-void

    .line 567
    :cond_d
    instance-of v2, p1, Landroid/os/Parcelable;

    if-eqz v2, :cond_23

    .line 568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v2, v3, :cond_23

    move v2, v0

    goto :goto_24

    :cond_23
    move v2, v1

    .line 569
    :goto_24
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 570
    if-eqz v2, :cond_2f

    .line 571
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 573
    return-void

    .line 576
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    if-eqz v0, :cond_4e

    array-length v3, v0

    goto :goto_4f

    :cond_4e
    move v3, v1

    :goto_4f
    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 581
    nop

    :goto_55
    if-ge v1, v3, :cond_6c

    .line 582
    if-lez v1, :cond_5e

    .line 583
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    :cond_5e
    const-string v4, "\tat "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 587
    :cond_6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    .line 589
    return-void
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 4

    .line 153
    const-string v0, "Expected CancellationException"

    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result p1

    .line 154
    if-nez p1, :cond_9

    goto :goto_1f

    .line 156
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    .line 157
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_12} :catch_19
    .catchall {:try_start_9 .. :try_end_12} :catchall_12

    .line 160
    :catchall_12
    move-exception p1

    .line 161
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 158
    :catch_19
    move-exception v0

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 162
    nop

    .line 164
    :goto_1f
    return p1
.end method

.method public blacklist cancelTimeout()Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    return-object p0
.end method

.method public whitelist test-api complete(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    if-eqz v0, :cond_a

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 139
    :cond_a
    return v0
.end method

.method public whitelist test-api completeExceptionally(Ljava/lang/Throwable;)Z
    .registers 4

    .line 144
    invoke-super {p0, p1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v0

    .line 145
    if-eqz v0, :cond_a

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 148
    :cond_a
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCompleted(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->cancelTimeout()Lcom/android/internal/infra/AndroidFuture;

    .line 177
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    .line 179
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    .line 180
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    .line 182
    if-eqz v1, :cond_11

    .line 183
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 186
    :cond_11
    iget-object p1, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    if-eqz p1, :cond_23

    .line 188
    :try_start_15
    iget-object p1, p0, Lcom/android/internal/infra/AndroidFuture;->mRemoteOrigin:Lcom/android/internal/infra/IAndroidFuture;

    invoke-interface {p1, p0}, Lcom/android/internal/infra/IAndroidFuture;->complete(Lcom/android/internal/infra/AndroidFuture;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 191
    goto :goto_23

    .line 189
    :catch_1b
    move-exception p1

    .line 190
    sget-object p2, Lcom/android/internal/infra/AndroidFuture;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Failed to propagate completion"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :cond_23
    :goto_23
    return-void

    .line 180
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public blacklist orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 283
    return-object p0
.end method

.method public bridge synthetic whitelist test-api orTimeout(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
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

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setTimeoutHandler(Landroid/os/Handler;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->cancelTimeout()Lcom/android/internal/infra/AndroidFuture;

    .line 308
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture;->mTimeoutHandler:Landroid/os/Handler;

    .line 309
    return-object p0
.end method

.method public blacklist thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 382
    new-instance v0, Lcom/android/internal/infra/AndroidFuture$ThenApplyAsync;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenApplyAsync;-><init>(Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
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

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
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

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenCombine(Ljava/util/concurrent/CompletionStage;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 430
    new-instance v0, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "+TU;>;",
            "Ljava/util/function/BiFunction<",
            "-TT;-TU;+TV;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TV;>;"
        }
    .end annotation

    .line 425
    new-instance v0, Lcom/android/internal/infra/AndroidFuture$ThenCombine;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenCombine;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;
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

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;
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

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenCombine(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenCompose(Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->thenCompose(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/concurrent/CompletionStage<",
            "TU;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TU;>;"
        }
    .end annotation

    .line 322
    new-instance v0, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture$ThenComposeAsync;-><init>(Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
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

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
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

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->thenComposeAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method blacklist triggerTimeout()V
    .registers 2

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->cancelTimeout()Lcom/android/internal/infra/AndroidFuture;

    .line 288
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_11

    .line 289
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 291
    :cond_11
    return-void
.end method

.method blacklist unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    .line 551
    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_9

    .line 552
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_a

    .line 553
    :cond_9
    nop

    .line 551
    :goto_a
    return-object p1
.end method

.method public blacklist whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/android/internal/infra/AndroidFuture;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public blacklist whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;"
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/internal/infra/AndroidFuture;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 208
    iget-object v1, p0, Lcom/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    .line 210
    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    if-eq p2, v2, :cond_1c

    .line 213
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 214
    monitor-exit v0

    return-object p0

    .line 217
    :cond_1c
    iput-object p2, p0, Lcom/android/internal/infra/AndroidFuture;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 218
    if-nez v1, :cond_21

    .line 219
    goto :goto_27

    .line 220
    :cond_21
    new-instance p2, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda1;

    invoke-direct {p2, v1, p1}, Lcom/android/internal/infra/AndroidFuture$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    move-object p1, p2

    :goto_27
    iput-object p1, p0, Lcom/android/internal/infra/AndroidFuture;->mListener:Ljava/util/function/BiConsumer;

    .line 224
    monitor-exit v0

    return-object p0

    .line 226
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_43

    .line 229
    nop

    .line 230
    nop

    .line 232
    const/4 p2, 0x0

    :try_start_2f
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_33
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2f .. :try_end_33} :catch_39
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    .line 237
    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    goto :goto_3f

    .line 235
    :catchall_37
    move-exception v0

    .line 236
    goto :goto_3f

    .line 233
    :catch_39
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 237
    nop

    .line 238
    :goto_3f
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/infra/AndroidFuture;->callListenerAsync(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 239
    return-object p0

    .line 226
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public bridge synthetic whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;
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

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
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

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->isDone()Z

    move-result p2

    .line 515
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 516
    if-eqz p2, :cond_23

    .line 519
    :try_start_9
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_16

    .line 524
    nop

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 526
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 527
    goto :goto_2f

    .line 520
    :catchall_16
    move-exception p2

    .line 521
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 522
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/AndroidFuture;->unwrapExecutionException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->writeThrowable(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    .line 523
    return-void

    .line 528
    :cond_23
    new-instance p2, Lcom/android/internal/infra/AndroidFuture$1;

    invoke-direct {p2, p0}, Lcom/android/internal/infra/AndroidFuture$1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    .line 543
    invoke-virtual {p2}, Lcom/android/internal/infra/AndroidFuture$1;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 528
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 545
    :goto_2f
    return-void
.end method
