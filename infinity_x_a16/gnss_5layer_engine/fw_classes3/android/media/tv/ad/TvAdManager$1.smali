.class Landroid/media/tv/ad/TvAdManager$1;
.super Landroid/media/tv/ad/ITvAdClient$Stub;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/ad/TvAdManager;-><init>(Landroid/media/tv/ad/ITvAdManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/ad/TvAdManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/ad/TvAdManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 331
    iput-object p1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLayoutSurface(IIIII)V
    .registers 8

    .line 368
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 369
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 370
    if-nez v1, :cond_2f

    .line 371
    const-string p1, "TvAdManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback not found for seq "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    monitor-exit v0

    return-void

    .line 374
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postLayoutSurface(IIII)V

    .line 375
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestCurrentChannelUri(I)V
    .registers 6

    .line 392
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 393
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 394
    if-nez v1, :cond_2f

    .line 395
    const-string v1, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback not found for seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    monitor-exit v0

    return-void

    .line 398
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentChannelUri()V

    .line 399
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestCurrentTvInputId(I)V
    .registers 6

    .line 416
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 417
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 418
    if-nez v1, :cond_2f

    .line 419
    const-string v1, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback not found for seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v0

    return-void

    .line 422
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentTvInputId()V

    .line 423
    monitor-exit v0

    .line 424
    return-void

    .line 423
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestCurrentVideoBounds(I)V
    .registers 6

    .line 380
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 381
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 382
    if-nez v1, :cond_2f

    .line 383
    const-string v1, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback not found for seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    monitor-exit v0

    return-void

    .line 386
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestCurrentVideoBounds()V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 8

    .line 429
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 430
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 431
    if-nez v1, :cond_2f

    .line 432
    const-string p1, "TvAdManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback not found for seq "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    monitor-exit v0

    return-void

    .line 435
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 436
    monitor-exit v0

    .line 437
    return-void

    .line 436
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestTrackInfoList(I)V
    .registers 6

    .line 404
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 405
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 406
    if-nez v1, :cond_2f

    .line 407
    const-string v1, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback not found for seq "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v0

    return-void

    .line 410
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postRequestTrackInfoList()V

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 14

    .line 335
    iget-object p1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 336
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 337
    if-nez v0, :cond_2f

    .line 338
    const-string p3, "TvAdManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback not found for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit p1

    return-void

    .line 341
    :cond_2f
    nop

    .line 342
    if-eqz p2, :cond_4e

    .line 343
    new-instance v1, Landroid/media/tv/ad/TvAdManager$Session;

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmService(Landroid/media/tv/ad/TvAdManager;)Landroid/media/tv/ad/ITvAdManager;

    move-result-object v4

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmUserId(Landroid/media/tv/ad/TvAdManager;)I

    move-result v5

    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v1 .. v8}, Landroid/media/tv/ad/TvAdManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdManager;IILandroid/util/SparseArray;Landroid/media/tv/ad/TvAdManager-IA;)V

    goto :goto_59

    .line 346
    :cond_4e
    move v6, p4

    iget-object p2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {p2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->delete(I)V

    const/4 v1, 0x0

    .line 348
    :goto_59
    invoke-virtual {v0, v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V

    .line 349
    monitor-exit p1

    .line 350
    return-void

    .line 349
    :catchall_5e
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_5e

    throw p2
.end method

.method public blacklist onSessionReleased(I)V
    .registers 6

    .line 354
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 355
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 356
    iget-object v2, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v2}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 357
    if-nez v1, :cond_38

    .line 358
    const-string v1, "TvAdManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback not found for seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    monitor-exit v0

    return-void

    .line 361
    :cond_38
    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;)Landroid/media/tv/ad/TvAdManager$Session;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/ad/TvAdManager$Session;->-$$Nest$mreleaseInternal(Landroid/media/tv/ad/TvAdManager$Session;)V

    .line 362
    invoke-virtual {v1}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postSessionReleased()V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public blacklist onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    .line 441
    iget-object v0, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v0}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 442
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/ad/TvAdManager$1;->this$0:Landroid/media/tv/ad/TvAdManager;

    invoke-static {v1}, Landroid/media/tv/ad/TvAdManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/ad/TvAdManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;

    .line 443
    if-nez v1, :cond_2f

    .line 444
    const-string p1, "TvAdManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback not found for seq "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    monitor-exit v0

    return-void

    .line 447
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/ad/TvAdManager$SessionCallbackRecord;->postTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 448
    monitor-exit v0

    .line 449
    return-void

    .line 448
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method
