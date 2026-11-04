.class Landroid/speech/RecognitionService$2;
.super Ljava/lang/Object;
.source "RecognitionService.java"

# interfaces
.implements Landroid/speech/ModelDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/RecognitionService;->dispatchTriggerModelDownload(Landroid/content/Intent;Landroid/content/AttributionSource;Landroid/speech/IModelDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mIsTerminated:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field final synthetic blacklist val$listener:Landroid/speech/IModelDownloadListener;


# direct methods
.method constructor blacklist <init>(Landroid/speech/RecognitionService;Landroid/speech/IModelDownloadListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p2, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    .line 240
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .registers 4

    .line 289
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_9

    .line 291
    monitor-exit v0

    return-void

    .line 293
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 295
    :try_start_c
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1, p1}, Landroid/speech/IModelDownloadListener;->onError(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 298
    nop

    .line 299
    :try_start_12
    monitor-exit v0

    .line 300
    return-void

    .line 296
    :catch_14
    move-exception p1

    .line 297
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 299
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public whitelist onProgress(I)V
    .registers 4

    .line 245
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_9

    .line 247
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_17

    return-void

    .line 250
    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1, p1}, Landroid/speech/IModelDownloadListener;->onProgress(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_11
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    .line 253
    nop

    .line 254
    :try_start_f
    monitor-exit v0

    .line 255
    return-void

    .line 251
    :catch_11
    move-exception p1

    .line 252
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 254
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw p1
.end method

.method public whitelist onScheduled()V
    .registers 3

    .line 274
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_9

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 280
    :try_start_c
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1}, Landroid/speech/IModelDownloadListener;->onScheduled()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 283
    nop

    .line 284
    :try_start_12
    monitor-exit v0

    .line 285
    return-void

    .line 281
    :catch_14
    move-exception v1

    .line 282
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 284
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist onSuccess()V
    .registers 3

    .line 259
    iget-object v0, p0, Landroid/speech/RecognitionService$2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 260
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z

    if-eqz v1, :cond_9

    .line 261
    monitor-exit v0

    return-void

    .line 263
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/RecognitionService$2;->mIsTerminated:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a

    .line 265
    :try_start_c
    iget-object v1, p0, Landroid/speech/RecognitionService$2;->val$listener:Landroid/speech/IModelDownloadListener;

    invoke-interface {v1}, Landroid/speech/IModelDownloadListener;->onSuccess()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 268
    nop

    .line 269
    :try_start_12
    monitor-exit v0

    .line 270
    return-void

    .line 266
    :catch_14
    move-exception v1

    .line 267
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 269
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1
.end method
