.class Landroid/media/tv/interactive/TvInteractiveAppManager$1;
.super Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;-><init>(Landroid/media/tv/interactive/ITvInteractiveAppManager;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAdBufferReady(Landroid/media/tv/AdBuffer;I)V
    .registers 6

    .line 722
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 723
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 724
    if-nez v1, :cond_2f

    .line 725
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    monitor-exit v0

    return-void

    .line 728
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postAdBufferReady(Landroid/media/tv/AdBuffer;)V

    .line 729
    monitor-exit v0

    .line 730
    return-void

    .line 729
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onAdRequest(Landroid/media/tv/AdRequest;I)V
    .registers 6

    .line 438
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 439
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 440
    if-nez v1, :cond_2f

    .line 441
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    monitor-exit v0

    return-void

    .line 444
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postAdRequest(Landroid/media/tv/AdRequest;)V

    .line 445
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V
    .registers 6

    .line 698
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 699
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 700
    if-nez v1, :cond_2f

    .line 701
    const-string p1, "TvInteractiveAppManager"

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

    .line 702
    monitor-exit v0

    return-void

    .line 704
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V

    .line 705
    monitor-exit v0

    .line 706
    return-void

    .line 705
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V
    .registers 6

    .line 372
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 374
    if-nez v1, :cond_2f

    .line 375
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    monitor-exit v0

    return-void

    .line 378
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V

    .line 379
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    .line 399
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 401
    if-nez v1, :cond_2f

    .line 402
    const-string p1, "TvInteractiveAppManager"

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

    .line 403
    monitor-exit v0

    return-void

    .line 405
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 406
    monitor-exit v0

    .line 407
    return-void

    .line 406
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onLayoutSurface(IIIII)V
    .registers 8

    .line 360
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 361
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 362
    if-nez v1, :cond_2f

    .line 363
    const-string p1, "TvInteractiveAppManager"

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

    .line 364
    monitor-exit v0

    return-void

    .line 366
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postLayoutSurface(IIII)V

    .line 367
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRemoveBroadcastInfo(II)V
    .registers 6

    .line 384
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 385
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 386
    if-nez v1, :cond_2f

    .line 387
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit v0

    return-void

    .line 390
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRemoveBroadcastInfo(I)V

    .line 391
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestAvailableSpeeds(I)V
    .registers 6

    .line 546
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 547
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 548
    if-nez v1, :cond_2f

    .line 549
    const-string v1, "TvInteractiveAppManager"

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

    .line 550
    monitor-exit v0

    return-void

    .line 552
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestAvailableSpeeds()V

    .line 553
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestCertificate(Ljava/lang/String;II)V
    .registers 6

    .line 674
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 675
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 676
    if-nez v1, :cond_2f

    .line 677
    const-string p1, "TvInteractiveAppManager"

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

    .line 678
    monitor-exit v0

    return-void

    .line 680
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCertificate(Ljava/lang/String;I)V

    .line 681
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestCurrentChannelLcn(I)V
    .registers 6

    .line 474
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 475
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 476
    if-nez v1, :cond_2f

    .line 477
    const-string v1, "TvInteractiveAppManager"

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

    .line 478
    monitor-exit v0

    return-void

    .line 480
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentChannelLcn()V

    .line 481
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestCurrentChannelUri(I)V
    .registers 6

    .line 462
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 463
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 464
    if-nez v1, :cond_2f

    .line 465
    const-string v1, "TvInteractiveAppManager"

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

    .line 466
    monitor-exit v0

    return-void

    .line 468
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentChannelUri()V

    .line 469
    monitor-exit v0

    .line 470
    return-void

    .line 469
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestCurrentTvInputId(I)V
    .registers 6

    .line 522
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 523
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 524
    if-nez v1, :cond_2f

    .line 525
    const-string v1, "TvInteractiveAppManager"

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

    .line 526
    monitor-exit v0

    return-void

    .line 528
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentTvInputId()V

    .line 529
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestCurrentVideoBounds(I)V
    .registers 6

    .line 450
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 451
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 452
    if-nez v1, :cond_2f

    .line 453
    const-string v1, "TvInteractiveAppManager"

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

    .line 454
    monitor-exit v0

    return-void

    .line 456
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestCurrentVideoBounds()V

    .line 457
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 9

    .line 583
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 584
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 585
    if-nez v0, :cond_2f

    .line 586
    const-string p1, "TvInteractiveAppManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback not found for seq "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    monitor-exit v1

    return-void

    .line 589
    :cond_2f
    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 591
    monitor-exit v1

    .line 592
    return-void

    .line 591
    :catchall_35
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_35

    throw p1
.end method

.method public blacklist onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V
    .registers 13

    .line 598
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 599
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 600
    if-nez v0, :cond_2f

    .line 601
    const-string p1, "TvInteractiveAppManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback not found for seq "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    monitor-exit v1

    return-void

    .line 604
    :cond_2f
    move-object p0, v0

    invoke-virtual/range {p0 .. p9}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    .line 606
    monitor-exit v1

    .line 607
    return-void

    .line 606
    :catchall_35
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_35

    throw p1
.end method

.method public blacklist onRequestSelectedTrackInfo(I)V
    .registers 6

    .line 510
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 511
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 512
    if-nez v1, :cond_2f

    .line 513
    const-string v1, "TvInteractiveAppManager"

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

    .line 514
    monitor-exit v0

    return-void

    .line 516
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestSelectedTrackInfo()V

    .line 517
    monitor-exit v0

    .line 518
    return-void

    .line 517
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .registers 8

    .line 649
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 650
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 651
    if-nez v1, :cond_2f

    .line 652
    const-string p1, "TvInteractiveAppManager"

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

    .line 653
    monitor-exit v0

    return-void

    .line 655
    :cond_2f
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 656
    monitor-exit v0

    .line 657
    return-void

    .line 656
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestSigning2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BI)V
    .registers 9

    .line 662
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 663
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 664
    if-nez v0, :cond_2f

    .line 665
    const-string p1, "TvInteractiveAppManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Callback not found for seq "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    monitor-exit v1

    return-void

    .line 668
    :cond_2f
    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 669
    monitor-exit v1

    .line 670
    return-void

    .line 669
    :catchall_35
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_35

    throw p1
.end method

.method public blacklist onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 6

    .line 558
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 560
    if-nez v1, :cond_2f

    .line 561
    const-string p1, "TvInteractiveAppManager"

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

    .line 562
    monitor-exit v0

    return-void

    .line 564
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;)V

    .line 565
    monitor-exit v0

    .line 566
    return-void

    .line 565
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestStopRecording(Ljava/lang/String;I)V
    .registers 6

    .line 570
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 571
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 572
    if-nez v1, :cond_2f

    .line 573
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    monitor-exit v0

    return-void

    .line 576
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestStopRecording(Ljava/lang/String;)V

    .line 577
    monitor-exit v0

    .line 578
    return-void

    .line 577
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestStreamVolume(I)V
    .registers 6

    .line 486
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 487
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 488
    if-nez v1, :cond_2f

    .line 489
    const-string v1, "TvInteractiveAppManager"

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

    .line 490
    monitor-exit v0

    return-void

    .line 492
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestStreamVolume()V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestTimeShiftMode(I)V
    .registers 6

    .line 534
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 535
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 536
    if-nez v1, :cond_2f

    .line 537
    const-string v1, "TvInteractiveAppManager"

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

    .line 538
    monitor-exit v0

    return-void

    .line 540
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTimeShiftMode()V

    .line 541
    monitor-exit v0

    .line 542
    return-void

    .line 541
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestTrackInfoList(I)V
    .registers 6

    .line 498
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 499
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 500
    if-nez v1, :cond_2f

    .line 501
    const-string v1, "TvInteractiveAppManager"

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

    .line 502
    monitor-exit v0

    return-void

    .line 504
    :cond_2f
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTrackInfoList()V

    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestTvRecordingInfo(Ljava/lang/String;I)V
    .registers 6

    .line 624
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 625
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 626
    if-nez v1, :cond_2f

    .line 627
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit v0

    return-void

    .line 630
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTvRecordingInfo(Ljava/lang/String;)V

    .line 631
    monitor-exit v0

    .line 632
    return-void

    .line 631
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onRequestTvRecordingInfoList(II)V
    .registers 6

    .line 636
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 637
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 638
    if-nez v1, :cond_2f

    .line 639
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-exit v0

    return-void

    .line 642
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postRequestTvRecordingInfoList(I)V

    .line 643
    monitor-exit v0

    .line 644
    return-void

    .line 643
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .registers 14

    .line 327
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 328
    :try_start_7
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 329
    if-nez v0, :cond_2f

    .line 330
    const-string p3, "TvInteractiveAppManager"

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

    .line 331
    monitor-exit p1

    return-void

    .line 333
    :cond_2f
    nop

    .line 334
    if-eqz p2, :cond_4e

    .line 335
    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmService(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/media/tv/interactive/ITvInteractiveAppManager;

    move-result-object v4

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmUserId(Landroid/media/tv/interactive/TvInteractiveAppManager;)I

    move-result v5

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v1 .. v8}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;Landroid/media/tv/interactive/TvInteractiveAppManager-IA;)V

    goto :goto_59

    .line 338
    :cond_4e
    move v6, p4

    iget-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {p2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->delete(I)V

    const/4 v1, 0x0

    .line 340
    :goto_59
    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 341
    monitor-exit p1

    .line 342
    return-void

    .line 341
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

    .line 346
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 347
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 348
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 349
    if-nez v1, :cond_38

    .line 350
    const-string v1, "TvInteractiveAppManager"

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

    .line 351
    monitor-exit v0

    return-void

    .line 353
    :cond_38
    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->-$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    move-result-object p1

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->-$$Nest$mreleaseInternal(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 354
    invoke-virtual {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionReleased()V

    .line 355
    monitor-exit v0

    .line 356
    return-void

    .line 355
    :catchall_44
    move-exception p1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public blacklist onSessionStateChanged(III)V
    .registers 6

    .line 686
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 687
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 688
    if-nez v1, :cond_2f

    .line 689
    const-string p1, "TvInteractiveAppManager"

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

    .line 690
    monitor-exit v0

    return-void

    .line 692
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSessionStateChanged(II)V

    .line 693
    monitor-exit v0

    .line 694
    return-void

    .line 693
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V
    .registers 6

    .line 612
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 613
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 614
    if-nez v1, :cond_2f

    .line 615
    const-string p1, "TvInteractiveAppManager"

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

    .line 616
    monitor-exit v0

    return-void

    .line 618
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    .line 619
    monitor-exit v0

    .line 620
    return-void

    .line 619
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onSetVideoBounds(Landroid/graphics/Rect;I)V
    .registers 6

    .line 426
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 427
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 428
    if-nez v1, :cond_2f

    .line 429
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    monitor-exit v0

    return-void

    .line 432
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postSetVideoBounds(Landroid/graphics/Rect;)V

    .line 433
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onTeletextAppStateChanged(II)V
    .registers 6

    .line 710
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 711
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 712
    if-nez v1, :cond_2f

    .line 713
    const-string p1, "TvInteractiveAppManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback not found for seq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    monitor-exit v0

    return-void

    .line 716
    :cond_2f
    invoke-virtual {v1, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postTeletextAppStateChanged(I)V

    .line 717
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public blacklist onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 6

    .line 414
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 415
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppManager;->-$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    .line 416
    if-nez v1, :cond_2f

    .line 417
    const-string p1, "TvInteractiveAppManager"

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

    .line 418
    monitor-exit v0

    return-void

    .line 420
    :cond_2f
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->postTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 421
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :catchall_34
    move-exception p1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p1
.end method
