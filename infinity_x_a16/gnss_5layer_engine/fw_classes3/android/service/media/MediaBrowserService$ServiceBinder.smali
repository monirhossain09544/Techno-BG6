.class Landroid/service/media/MediaBrowserService$ServiceBinder;
.super Landroid/service/media/IMediaBrowserService$Stub;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field private final blacklist mServiceState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/service/media/MediaBrowserService$ServiceState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .registers 3

    .line 224
    invoke-direct {p0}, Landroid/service/media/IMediaBrowserService$Stub;-><init>()V

    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 226
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder;->setServiceState(Landroid/service/media/MediaBrowserService$ServiceState;)V

    .line 227
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/MediaBrowserService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;)V

    return-void
.end method

.method static synthetic blacklist lambda$addSubscription$2(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5

    .line 277
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/media/MediaBrowserService$ServiceState;->addSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$connect$0(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 6

    .line 249
    invoke-virtual/range {p0 .. p5}, Landroid/service/media/MediaBrowserService$ServiceState;->connectOnHandler(Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static synthetic blacklist lambda$disconnect$1(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 2

    .line 260
    invoke-virtual {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceState;->removeConnectionRecordOnHandler(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static synthetic blacklist lambda$getMediaItem$4(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V
    .registers 4

    .line 311
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadItemOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic blacklist lambda$removeSubscription$3(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)V
    .registers 4

    .line 296
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/media/MediaBrowserService$ServiceState;->removeSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeSubscription for id with no subscription: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaBrowserService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1f
    return-void
.end method


# virtual methods
.method public greylist-max-o addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 12

    .line 271
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 272
    if-nez v2, :cond_12

    .line 273
    return-void

    .line 276
    :cond_12
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda4;

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda4;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v2, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public greylist-max-o addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 3

    .line 266
    return-void
.end method

.method public greylist-max-o connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 12

    .line 236
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 237
    if-nez v2, :cond_12

    .line 238
    return-void

    .line 241
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 243
    invoke-virtual {v2, p1, v5}, Landroid/service/media/MediaBrowserService$ServiceState;->isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 248
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda1;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v2, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 250
    return-void

    .line 244
    :cond_2c
    move-object v3, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package/uid mismatch: uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " package="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 4

    .line 254
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 255
    if-nez v0, :cond_11

    .line 256
    return-void

    .line 259
    :cond_11
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda3;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public greylist-max-o getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 6

    .line 305
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 306
    if-nez v0, :cond_11

    .line 307
    return-void

    .line 310
    :cond_11
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1, p3, p2}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda2;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method public greylist-max-o removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 6

    .line 289
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ServiceState;

    .line 290
    if-nez v0, :cond_11

    .line 291
    return-void

    .line 294
    :cond_11
    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p3, p2}, Landroid/service/media/MediaBrowserService$ServiceBinder$$ExternalSyntheticLambda0;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/service/media/MediaBrowserService$ServiceState;->postOnHandler(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public greylist-max-o removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 3

    .line 284
    return-void
.end method

.method public blacklist setServiceState(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .registers 4

    .line 230
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder;->mServiceState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 231
    return-void
.end method
