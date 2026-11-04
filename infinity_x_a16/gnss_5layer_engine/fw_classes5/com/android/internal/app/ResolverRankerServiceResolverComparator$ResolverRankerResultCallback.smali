.class Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerResultCallback;
.super Landroid/service/resolver/IResolverRankerResult$Stub;
.source "ResolverRankerServiceResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolverRankerResultCallback"
.end annotation


# instance fields
.field private final blacklist mHandlerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 3

    .line 413
    invoke-direct {p0}, Landroid/service/resolver/IResolverRankerResult$Stub;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerResultCallback;->mLock:Ljava/lang/Object;

    .line 415
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerResultCallback;->mHandlerRef:Ljava/lang/ref/WeakReference;

    .line 416
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Object;Landroid/os/Handler;Lcom/android/internal/app/ResolverRankerServiceResolverComparator-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerResultCallback;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist sendResult(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerResultCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 425
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 426
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    iget-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerResultCallback;->mHandlerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 428
    if-eqz p1, :cond_19

    .line 429
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    :cond_19
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method
