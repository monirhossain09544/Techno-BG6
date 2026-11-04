.class Landroid/media/tv/TvView$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field greylist-max-o mChannelUri:Landroid/net/Uri;

.field final greylist-max-o mInputId:Ljava/lang/String;

.field greylist-max-o mRecordedProgramUri:Landroid/net/Uri;

.field greylist-max-o mTuneParams:Landroid/os/Bundle;

.field final synthetic blacklist this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1402
    iput-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    .line 1403
    iput-object p2, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 1404
    iput-object p3, p0, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    .line 1405
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
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

    .line 1396
    iput-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    .line 1397
    iput-object p2, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    .line 1398
    iput-object p3, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    .line 1399
    iput-object p4, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    .line 1400
    return-void
.end method


# virtual methods
.method public blacklist onAitInfoUpdated(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/AitInfo;)V
    .registers 4

    .line 1707
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1708
    const-string p1, "TvView"

    const-string/jumbo p2, "onAitInfoUpdated - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    return-void

    .line 1711
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1712
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onAitInfoUpdated(Ljava/lang/String;Landroid/media/tv/AitInfo;)V

    .line 1714
    :cond_24
    return-void
.end method

.method public blacklist onAudioPresentationSelected(Landroid/media/tv/TvInputManager$Session;II)V
    .registers 5

    .line 1521
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1522
    const-string p1, "TvView"

    const-string/jumbo p2, "onAudioPresentationSelected - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    return-void

    .line 1525
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1526
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onAudioPresentationSelected(Ljava/lang/String;II)V

    .line 1528
    :cond_24
    return-void
.end method

.method public blacklist onAudioPresentationsChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    .line 1505
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1506
    const-string p1, "TvView"

    const-string/jumbo p2, "onAudioPresentationsChanged - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    return-void

    .line 1509
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1510
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onAudioPresentationsChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 1512
    :cond_24
    return-void
.end method

.method public blacklist onAvailableSpeeds(Landroid/media/tv/TvInputManager$Session;[F)V
    .registers 4

    .line 1763
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1764
    const-string p1, "TvView"

    const-string/jumbo p2, "onAvailableSpeeds - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    return-void

    .line 1767
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1768
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onAvailableSpeeds(Ljava/lang/String;[F)V

    .line 1770
    :cond_24
    return-void
.end method

.method public greylist-max-o onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .registers 4

    .line 1490
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1491
    const-string p1, "TvView"

    const-string/jumbo p2, "onChannelRetuned - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    return-void

    .line 1494
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1495
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1497
    :cond_24
    return-void
.end method

.method public greylist-max-o onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .registers 3

    .line 1605
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1606
    const-string p1, "TvView"

    const-string/jumbo v0, "onContentAllowed - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    return-void

    .line 1609
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1610
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/TvView$TvInputCallback;->onContentAllowed(Ljava/lang/String;)V

    .line 1612
    :cond_24
    return-void
.end method

.method public greylist-max-o onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .registers 4

    .line 1619
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1620
    const-string p1, "TvView"

    const-string/jumbo p2, "onContentBlocked - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-void

    .line 1623
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1624
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V

    .line 1626
    :cond_24
    return-void
.end method

.method public blacklist onCueingMessageAvailability(Landroid/media/tv/TvInputManager$Session;Z)V
    .registers 4

    .line 1735
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1736
    const-string p1, "TvView"

    const-string/jumbo p2, "onCueingMessageAvailability - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return-void

    .line 1739
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1740
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onCueingMessageAvailability(Ljava/lang/String;Z)V

    .line 1742
    :cond_24
    return-void
.end method

.method public greylist-max-o onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .registers 6

    .line 1634
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1635
    const-string p1, "TvView"

    const-string/jumbo p2, "onLayoutSurface - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    return-void

    .line 1638
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, p2}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/TvView;I)V

    .line 1639
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, p3}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceViewTop(Landroid/media/tv/TvView;I)V

    .line 1640
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, p4}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceViewRight(Landroid/media/tv/TvView;I)V

    .line 1641
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, p5}, Landroid/media/tv/TvView;->-$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/TvView;I)V

    .line 1642
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/media/tv/TvView;->-$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/TvView;Z)V

    .line 1643
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {p1}, Landroid/media/tv/TvView;->requestLayout()V

    .line 1644
    return-void
.end method

.method public greylist-max-o onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .registers 6

    .line 1412
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_16

    .line 1413
    const-string v0, "TvView"

    const-string/jumbo v1, "onSessionCreated - session already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    if-eqz p1, :cond_15

    .line 1416
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 1418
    :cond_15
    return-void

    .line 1420
    :cond_16
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0, p1}, Landroid/media/tv/TvView;->-$$Nest$fputmSession(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)V

    .line 1421
    if-eqz p1, :cond_117

    .line 1424
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvView;)Ljava/util/Queue;

    move-result-object p1

    monitor-enter p1

    .line 1425
    :try_start_24
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvView;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1426
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v2}, Landroid/media/tv/TvView;->-$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v1}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1427
    goto :goto_2e

    .line 1428
    :cond_4c
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$fgetmPendingAppPrivateCommands(Landroid/media/tv/TvView;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1429
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_24 .. :try_end_56} :catchall_114

    .line 1431
    invoke-static {}, Landroid/media/tv/TvView;->-$$Nest$sfgetsMainTvViewLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1432
    :try_start_5b
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-virtual {p1}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_80

    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {}, Landroid/media/tv/TvView;->-$$Nest$sfgetsMainTvView()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_80

    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    .line 1433
    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$mcheckChangeHdmiCecActiveSourcePermission(Landroid/media/tv/TvView;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1434
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->setMain()V

    .line 1436
    :cond_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_5b .. :try_end_81} :catchall_111

    .line 1440
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurface(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_b3

    .line 1441
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurface(Landroid/media/tv/TvView;)Landroid/view/Surface;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$msetSessionSurface(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    .line 1442
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceChanged(Landroid/media/tv/TvView;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 1443
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/TvView;)I

    move-result v0

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/TvView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v2}, Landroid/media/tv/TvView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/TvView;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/media/tv/TvView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/TvView;III)V

    .line 1446
    :cond_b3
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$mcreateSessionOverlayView(Landroid/media/tv/TvView;)V

    .line 1447
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmStreamVolume(Landroid/media/tv/TvView;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 1448
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$fgetmStreamVolume(Landroid/media/tv/TvView;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    .line 1450
    :cond_d3
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCaptionEnabled(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_ee

    .line 1451
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {v0}, Landroid/media/tv/TvView;->-$$Nest$fgetmCaptionEnabled(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    .line 1453
    :cond_ee
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    if-eqz p1, :cond_100

    .line 1454
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_10b

    .line 1456
    :cond_100
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSession(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mRecordedProgramUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/media/tv/TvInputManager$Session;->timeShiftPlay(Landroid/net/Uri;)V

    .line 1458
    :goto_10b
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$mensurePositionTracking(Landroid/media/tv/TvView;)V

    goto :goto_130

    .line 1436
    :catchall_111
    move-exception p1

    :try_start_112
    monitor-exit v0
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_111

    throw p1

    .line 1429
    :catchall_114
    move-exception v0

    :try_start_115
    monitor-exit p1
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    throw v0

    .line 1460
    :cond_117
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)V

    .line 1461
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_130

    .line 1462
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/TvView$TvInputCallback;->onConnectionFailed(Ljava/lang/String;)V

    .line 1465
    :cond_130
    :goto_130
    return-void
.end method

.method public greylist-max-o onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1651
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1652
    const-string p1, "TvView"

    const-string/jumbo p2, "onSessionEvent - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return-void

    .line 1655
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1656
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1658
    :cond_24
    return-void
.end method

.method public greylist-max-o onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .registers 3

    .line 1472
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1473
    const-string p1, "TvView"

    const-string/jumbo v0, "onSessionReleased - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return-void

    .line 1476
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$fputmOverlayViewCreated(Landroid/media/tv/TvView;Z)V

    .line 1477
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$fputmOverlayViewFrame(Landroid/media/tv/TvView;Landroid/graphics/Rect;)V

    .line 1478
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)V

    .line 1479
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1, v0}, Landroid/media/tv/TvView;->-$$Nest$fputmSession(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)V

    .line 1480
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 1481
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/TvView$TvInputCallback;->onDisconnected(Ljava/lang/String;)V

    .line 1483
    :cond_3a
    return-void
.end method

.method public blacklist onSignalStrengthUpdated(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 4

    .line 1721
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1722
    const-string p1, "TvView"

    const-string/jumbo p2, "onSignalStrengthUpdated - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    return-void

    .line 1725
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1726
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onSignalStrengthUpdated(Ljava/lang/String;I)V

    .line 1728
    :cond_24
    return-void
.end method

.method public greylist-max-o onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .registers 5

    .line 1693
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1694
    const-string p1, "TvView"

    const-string/jumbo p2, "onTimeShiftCurrentPositionChanged - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return-void

    .line 1697
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmTimeShiftPositionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1698
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmTimeShiftPositionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    .line 1700
    :cond_24
    return-void
.end method

.method public blacklist onTimeShiftMode(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 4

    .line 1749
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1750
    const-string p1, "TvView"

    const-string/jumbo p2, "onTimeShiftMode - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    return-void

    .line 1753
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1754
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTimeShiftMode(Ljava/lang/String;I)V

    .line 1756
    :cond_24
    return-void
.end method

.method public greylist-max-o onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .registers 5

    .line 1679
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1680
    const-string p1, "TvView"

    const-string/jumbo p2, "onTimeShiftStartPositionChanged - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void

    .line 1683
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmTimeShiftPositionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1684
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmTimeShiftPositionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    .line 1686
    :cond_24
    return-void
.end method

.method public greylist-max-o onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 4

    .line 1665
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1666
    const-string p1, "TvView"

    const-string/jumbo p2, "onTimeShiftStatusChanged - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    return-void

    .line 1669
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1670
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTimeShiftStatusChanged(Ljava/lang/String;I)V

    .line 1672
    :cond_24
    return-void
.end method

.method public greylist-max-o onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .registers 5

    .line 1549
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1550
    const-string p1, "TvView"

    const-string/jumbo p2, "onTrackSelected - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    return-void

    .line 1553
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1554
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V

    .line 1556
    :cond_24
    return-void
.end method

.method public greylist-max-o onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1535
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1536
    const-string p1, "TvView"

    const-string/jumbo p2, "onTracksChanged - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    return-void

    .line 1539
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1540
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTracksChanged(Ljava/lang/String;Ljava/util/List;)V

    .line 1542
    :cond_24
    return-void
.end method

.method public blacklist onTuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .registers 4

    .line 1777
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1778
    const-string p1, "TvView"

    const-string/jumbo p2, "onTuned - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return-void

    .line 1781
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1782
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTuned(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1784
    :cond_24
    return-void
.end method

.method public blacklist onTvMessage(Landroid/media/tv/TvInputManager$Session;ILandroid/os/Bundle;)V
    .registers 5

    .line 1791
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1792
    const-string p1, "TvView"

    const-string/jumbo p2, "onTvMessage - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    return-void

    .line 1795
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1796
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onTvMessage(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1798
    :cond_24
    return-void
.end method

.method public greylist-max-o onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .registers 3

    .line 1577
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1578
    const-string p1, "TvView"

    const-string/jumbo v0, "onVideoAvailable - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    return-void

    .line 1581
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1582
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/TvView$TvInputCallback;->onVideoAvailable(Ljava/lang/String;)V

    .line 1584
    :cond_24
    return-void
.end method

.method public blacklist onVideoFreezeUpdated(Landroid/media/tv/TvInputManager$Session;Z)V
    .registers 4

    .line 1805
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1806
    const-string p1, "TvView"

    const-string/jumbo p2, "onVideoFreezeUpdated - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    return-void

    .line 1809
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1810
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onVideoFreezeUpdated(Ljava/lang/String;Z)V

    .line 1812
    :cond_24
    return-void
.end method

.method public greylist-max-o onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .registers 5

    .line 1563
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1564
    const-string p1, "TvView"

    const-string/jumbo p2, "onVideoSizeChanged - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    return-void

    .line 1567
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1568
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onVideoSizeChanged(Ljava/lang/String;II)V

    .line 1570
    :cond_24
    return-void
.end method

.method public greylist-max-o onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .registers 4

    .line 1591
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1592
    const-string p1, "TvView"

    const-string/jumbo p2, "onVideoUnavailable - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return-void

    .line 1595
    :cond_11
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1596
    iget-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    invoke-static {p1}, Landroid/media/tv/TvView;->-$$Nest$fgetmCallback(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/TvView$TvInputCallback;->onVideoUnavailable(Ljava/lang/String;I)V

    .line 1598
    :cond_24
    return-void
.end method
