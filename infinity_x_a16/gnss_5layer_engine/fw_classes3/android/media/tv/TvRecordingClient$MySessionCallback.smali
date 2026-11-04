.class Landroid/media/tv/TvRecordingClient$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvRecordingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvRecordingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field greylist-max-o mChannelUri:Landroid/net/Uri;

.field greylist-max-o mConnectionParams:Landroid/os/Bundle;

.field final greylist-max-o mInputId:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/media/tv/TvRecordingClient;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvRecordingClient;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 478
    iput-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    .line 479
    iput-object p2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 480
    iput-object p3, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 481
    iput-object p4, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    .line 482
    return-void
.end method


# virtual methods
.method public greylist-max-o onError(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 4

    .line 590
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 591
    const-string p1, "TvRecordingClient"

    const-string/jumbo p2, "onError - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 594
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 595
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onError(I)V

    .line 597
    :cond_22
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 598
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmRecordingId(Landroid/media/tv/TvRecordingClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->notifyRecordingError(Ljava/lang/String;I)V

    .line 600
    :cond_39
    return-void
.end method

.method public greylist-max-o onRecordingStopped(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .registers 4

    .line 566
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object p1

    const-string v0, "TvRecordingClient"

    if-eq p0, p1, :cond_11

    .line 567
    const-string/jumbo p1, "onRecordingStopped - session not created"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void

    .line 570
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 571
    const-string/jumbo p1, "onRecordingStopped - recording not yet started"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 574
    :cond_20
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;Z)V

    .line 575
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsPaused(Landroid/media/tv/TvRecordingClient;Z)V

    .line 576
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsRecordingStopping(Landroid/media/tv/TvRecordingClient;Z)V

    .line 577
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 578
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onRecordingStopped(Landroid/net/Uri;)V

    .line 580
    :cond_41
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 581
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    iget-object p2, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p2}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmRecordingId(Landroid/media/tv/TvRecordingClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->notifyRecordingStopped(Ljava/lang/String;)V

    .line 583
    :cond_58
    return-void
.end method

.method public greylist-max-o onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .registers 5

    .line 489
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_16

    .line 490
    const-string v0, "TvRecordingClient"

    const-string/jumbo v1, "onSessionCreated - session already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    if-eqz p1, :cond_15

    .line 493
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 495
    :cond_15
    return-void

    .line 497
    :cond_16
    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0, p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmSession(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)V

    .line 498
    if-eqz p1, :cond_5c

    .line 500
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 501
    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSession(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 502
    goto :goto_27

    .line 503
    :cond_45
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvRecordingClient;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 504
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSession(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvInputManager$Session;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mConnectionParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_8e

    .line 506
    :cond_5c
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmSessionCallback(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)V

    .line 507
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 508
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onConnectionFailed(Ljava/lang/String;)V

    .line 510
    :cond_75
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    if-eqz p1, :cond_8e

    .line 511
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmRecordingId(Landroid/media/tv/TvRecordingClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_8e
    :goto_8e
    return-void
.end method

.method public greylist-max-o onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 609
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 610
    const-string p1, "TvRecordingClient"

    const-string/jumbo p2, "onSessionEvent - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 613
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 614
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 616
    :cond_24
    return-void
.end method

.method public greylist-max-o onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .registers 4

    .line 543
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 544
    const-string p1, "TvRecordingClient"

    const-string/jumbo v0, "onSessionReleased - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void

    .line 547
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsTuned(Landroid/media/tv/TvRecordingClient;Z)V

    .line 548
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsRecordingStarted(Landroid/media/tv/TvRecordingClient;Z)V

    .line 549
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsPaused(Landroid/media/tv/TvRecordingClient;Z)V

    .line 550
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsRecordingStopping(Landroid/media/tv/TvRecordingClient;Z)V

    .line 551
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmSessionCallback(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvRecordingClient$MySessionCallback;)V

    .line 552
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmSession(Landroid/media/tv/TvRecordingClient;Landroid/media/tv/TvInputManager$Session;)V

    .line 553
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 554
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onDisconnected(Ljava/lang/String;)V

    .line 556
    :cond_44
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 557
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmRecordingId(Landroid/media/tv/TvRecordingClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_5d
    return-void
.end method

.method public greylist-max-o onTuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .registers 4

    .line 521
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$MySessionCallback;

    move-result-object p1

    const-string v0, "TvRecordingClient"

    if-eq p0, p1, :cond_11

    .line 522
    const-string/jumbo p1, "onTuned - session not created"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void

    .line 525
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmIsTuned(Landroid/media/tv/TvRecordingClient;)Z

    move-result p1

    if-nez p1, :cond_51

    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_51

    .line 529
    :cond_22
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fputmIsTuned(Landroid/media/tv/TvRecordingClient;Z)V

    .line 530
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 531
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmCallback(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/TvRecordingClient$RecordingCallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/tv/TvRecordingClient$RecordingCallback;->onTuned(Landroid/net/Uri;)V

    .line 533
    :cond_39
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 534
    iget-object p1, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {p1}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmTvIAppView(Landroid/media/tv/TvRecordingClient;)Landroid/media/tv/interactive/TvInteractiveAppView;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvRecordingClient$MySessionCallback;->this$0:Landroid/media/tv/TvRecordingClient;

    invoke-static {v0}, Landroid/media/tv/TvRecordingClient;->-$$Nest$fgetmRecordingId(Landroid/media/tv/TvRecordingClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V

    .line 536
    :cond_50
    return-void

    .line 526
    :cond_51
    :goto_51
    const-string/jumbo p1, "onTuned - already tuned or not yet tuned to last channel"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void
.end method
