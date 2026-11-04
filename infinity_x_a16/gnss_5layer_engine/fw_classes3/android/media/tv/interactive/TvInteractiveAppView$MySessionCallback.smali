.class Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;
.super Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
.source "TvInteractiveAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field final blacklist mIAppServiceId:Ljava/lang/String;

.field blacklist mType:I

.field final synthetic blacklist this$0:Landroid/media/tv/interactive/TvInteractiveAppView;


# direct methods
.method public static synthetic blacklist $r8$lambda$2ed9PMbgJHEuwDK7effeHsRbUTo(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestSelectedTrackInfo$10()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6cBpPyNIMNK_VMtJubf0InzJBoI(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestCurrentVideoBounds$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7kC_SSFkTiwqHnw4vHJZ_fzKQ_I(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestStreamVolume$8()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A6jV9lrppdFzPCIKqfTz4Ibo1bs(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestCurrentChannelLcn$7()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CasaKfbCXk_M9oBdSGD9RhyYZuo(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onTimeShiftCommandRequest$1(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UoU3sVPPvgpfUbyRq2ffE7G9Dvk(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestTrackInfoList$9()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VTJ9EMZ6dqe8sCsIfE3N0_MLzA4(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onCommandRequest$0(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$__orhQagUlu_v4MIyZLZGaw4z0c(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onSetVideoBounds$4(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jvv68SBc9noi6CDmpdGtUbNuqag(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onBiInteractiveAppCreated$3(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$s7FXIGqCAcSVC7hAR-sNlSpl43Q(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onSessionStateChanged$2(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yvPeoUSvl77hD1A6Ki-pJ-HkOVQ(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->lambda$onRequestCurrentChannelUri$6()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppView;Ljava/lang/String;I)V
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

    .line 1521
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;-><init>()V

    .line 1522
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    .line 1523
    iput p3, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mType:I

    .line 1524
    return-void
.end method

.method private synthetic blacklist lambda$onBiInteractiveAppCreated$3(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 1683
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1684
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1685
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onBiInteractiveAppCreated(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1688
    :cond_1a
    monitor-exit v0

    .line 1689
    return-void

    .line 1688
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private synthetic blacklist lambda$onCommandRequest$0(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1607
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1608
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1609
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onPlaybackCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1612
    :cond_1a
    monitor-exit v0

    .line 1613
    return-void

    .line 1612
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private synthetic blacklist lambda$onRequestCurrentChannelLcn$7()V
    .registers 4

    .line 1786
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1787
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1788
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentChannelLcn(Ljava/lang/String;)V

    .line 1790
    :cond_1a
    monitor-exit v0

    .line 1791
    return-void

    .line 1790
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestCurrentChannelUri$6()V
    .registers 4

    .line 1764
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1765
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1766
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentChannelUri(Ljava/lang/String;)V

    .line 1768
    :cond_1a
    monitor-exit v0

    .line 1769
    return-void

    .line 1768
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestCurrentVideoBounds$5()V
    .registers 4

    .line 1742
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1743
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1744
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentVideoBounds(Ljava/lang/String;)V

    .line 1746
    :cond_1a
    monitor-exit v0

    .line 1747
    return-void

    .line 1746
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestSelectedTrackInfo$10()V
    .registers 4

    .line 1852
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1853
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1854
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestSelectedTrackInfo(Ljava/lang/String;)V

    .line 1856
    :cond_1a
    monitor-exit v0

    .line 1857
    return-void

    .line 1856
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestStreamVolume$8()V
    .registers 4

    .line 1808
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1809
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1810
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestStreamVolume(Ljava/lang/String;)V

    .line 1812
    :cond_1a
    monitor-exit v0

    .line 1813
    return-void

    .line 1812
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private synthetic blacklist lambda$onRequestTrackInfoList$9()V
    .registers 4

    .line 1830
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1831
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1832
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTrackInfoList(Ljava/lang/String;)V

    .line 1834
    :cond_1a
    monitor-exit v0

    .line 1835
    return-void

    .line 1834
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private synthetic blacklist lambda$onSessionStateChanged$2(II)V
    .registers 6

    .line 1660
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1661
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1662
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onStateChanged(Ljava/lang/String;II)V

    .line 1664
    :cond_1a
    monitor-exit v0

    .line 1665
    return-void

    .line 1664
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private synthetic blacklist lambda$onSetVideoBounds$4(Landroid/graphics/Rect;)V
    .registers 5

    .line 1720
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1721
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1722
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onSetVideoBounds(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 1724
    :cond_1a
    monitor-exit v0

    .line 1725
    return-void

    .line 1724
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method private synthetic blacklist lambda$onTimeShiftCommandRequest$1(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1634
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1635
    :try_start_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1636
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onTimeShiftCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1639
    :cond_1a
    monitor-exit v0

    .line 1640
    return-void

    .line 1639
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw p1
.end method


# virtual methods
.method public blacklist onBiInteractiveAppCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    .line 1676
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1677
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onBiInteractiveAppCreated - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return-void

    .line 1680
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1681
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1682
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1691
    :cond_2e
    monitor-exit p1

    .line 1692
    return-void

    .line 1691
    :catchall_30
    move-exception p2

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw p2
.end method

.method public blacklist onCommandRequest(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1600
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1601
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onCommandRequest - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    return-void

    .line 1604
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1605
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1606
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1615
    :cond_2e
    monitor-exit p1

    .line 1616
    return-void

    .line 1615
    :catchall_30
    move-exception p2

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw p2
.end method

.method public blacklist onLayoutSurface(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;IIII)V
    .registers 6

    .line 1579
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1580
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onLayoutSurface - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return-void

    .line 1583
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewLeft(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    .line 1584
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, p3}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewTop(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    .line 1585
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, p4}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewRight(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    .line 1586
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, p5}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSurfaceViewBottom(Landroid/media/tv/interactive/TvInteractiveAppView;I)V

    .line 1587
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmUseRequestedSurfaceLayout(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V

    .line 1588
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->requestLayout()V

    .line 1589
    return-void
.end method

.method public blacklist onRequestAvailableSpeeds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 3

    .line 1895
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1896
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestAvailableSpeeds - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    return-void

    .line 1899
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1900
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestAvailableSpeeds(Ljava/lang/String;)V

    .line 1902
    :cond_24
    return-void
.end method

.method public blacklist onRequestCertificate(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;I)V
    .registers 5

    .line 2045
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 2046
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestCertificate - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    return-void

    .line 2049
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->tiafVApis()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 2050
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCertificate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2052
    :cond_2a
    return-void
.end method

.method public blacklist onRequestCurrentChannelLcn(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4

    .line 1779
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1780
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestCurrentChannelLcn - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    return-void

    .line 1783
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1784
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1785
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1793
    :cond_2e
    monitor-exit p1

    .line 1794
    return-void

    .line 1793
    :catchall_30
    move-exception v0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public blacklist onRequestCurrentChannelUri(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4

    .line 1757
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1758
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestCurrentChannelUri - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    return-void

    .line 1761
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1762
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1763
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1771
    :cond_2e
    monitor-exit p1

    .line 1772
    return-void

    .line 1771
    :catchall_30
    move-exception v0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public blacklist onRequestCurrentTvInputId(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 3

    .line 1867
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1868
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestCurrentTvInputId - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    return-void

    .line 1871
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1872
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestCurrentTvInputId(Ljava/lang/String;)V

    .line 1874
    :cond_24
    return-void
.end method

.method public blacklist onRequestCurrentVideoBounds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4

    .line 1735
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1736
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestCurrentVideoBounds - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return-void

    .line 1739
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1740
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1741
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1749
    :cond_2e
    monitor-exit p1

    .line 1750
    return-void

    .line 1749
    :catchall_30
    move-exception v0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public blacklist onRequestScheduleRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 22

    .line 1970
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1971
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestScheduleRecording - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    return-void

    .line 1974
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 1975
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V

    .line 1978
    :cond_2f
    return-void
.end method

.method public blacklist onRequestScheduleRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 14

    .line 1954
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1955
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestScheduleRecording - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    return-void

    .line 1958
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 1959
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1962
    :cond_29
    return-void
.end method

.method public blacklist onRequestSelectedTrackInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4

    .line 1845
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1846
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestSelectedTrackInfo - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return-void

    .line 1849
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1850
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1851
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1859
    :cond_2e
    monitor-exit p1

    .line 1860
    return-void

    .line 1859
    :catchall_30
    move-exception v0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 14

    .line 2031
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 2032
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestSigning - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    return-void

    .line 2035
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->tiafVApis()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 2036
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 2038
    :cond_2f
    return-void
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 12

    .line 2016
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 2017
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestSigning - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    return-void

    .line 2020
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 2021
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 2023
    :cond_28
    return-void
.end method

.method public blacklist onRequestStartRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 1909
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1910
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestStartRecording - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    return-void

    .line 1913
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1914
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestStartRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1916
    :cond_24
    return-void
.end method

.method public blacklist onRequestStopRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;)V
    .registers 4

    .line 1923
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1924
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestStopRecording - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return-void

    .line 1927
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1928
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestStopRecording(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    :cond_24
    return-void
.end method

.method public blacklist onRequestStreamVolume(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4

    .line 1801
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1802
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestStreamVolume - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    return-void

    .line 1805
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1806
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1807
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1815
    :cond_2e
    monitor-exit p1

    .line 1816
    return-void

    .line 1815
    :catchall_30
    move-exception v0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public blacklist onRequestTimeShiftMode(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 3

    .line 1881
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1882
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestTimeShiftMode - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    return-void

    .line 1885
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1886
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTimeShiftMode(Ljava/lang/String;)V

    .line 1888
    :cond_24
    return-void
.end method

.method public blacklist onRequestTrackInfoList(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 4

    .line 1823
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1824
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onRequestTrackInfoList - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return-void

    .line 1827
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1828
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1829
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1837
    :cond_2e
    monitor-exit p1

    .line 1838
    return-void

    .line 1837
    :catchall_30
    move-exception v0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public blacklist onRequestTvRecordingInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;)V
    .registers 4

    .line 1986
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1987
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestRecordingInfo - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    return-void

    .line 1990
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1991
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTvRecordingInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    :cond_24
    return-void
.end method

.method public blacklist onRequestTvRecordingInfoList(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;I)V
    .registers 4

    .line 2001
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 2002
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onRequestRecordingInfoList - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return-void

    .line 2005
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 2006
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onRequestTvRecordingInfoList(Ljava/lang/String;I)V

    .line 2008
    :cond_24
    return-void
.end method

.method public blacklist onSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 5

    .line 1531
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object v0

    if-eq p0, v0, :cond_16

    .line 1532
    const-string v0, "TvInteractiveAppView"

    const-string/jumbo v1, "onSessionCreated - session already created"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    if-eqz p1, :cond_15

    .line 1535
    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->release()V

    .line 1537
    :cond_15
    return-void

    .line 1539
    :cond_16
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSession(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 1540
    if-eqz p1, :cond_55

    .line 1544
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 1545
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurface(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/view/Surface;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$msetSessionSurface(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/view/Surface;)V

    .line 1546
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1547
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceFormat(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v0

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceWidth(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSurfaceHeight(Landroid/media/tv/interactive/TvInteractiveAppView;)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mdispatchSurfaceChanged(Landroid/media/tv/interactive/TvInteractiveAppView;III)V

    .line 1550
    :cond_4f
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$mcreateSessionMediaView(Landroid/media/tv/interactive/TvInteractiveAppView;)V

    goto :goto_5b

    .line 1554
    :cond_55
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    .line 1556
    :goto_5b
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 3

    .line 1563
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1564
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo v0, "onSessionReleased - session not created"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    return-void

    .line 1567
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmMediaViewCreated(Landroid/media/tv/interactive/TvInteractiveAppView;Z)V

    .line 1568
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmMediaViewFrame(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/graphics/Rect;)V

    .line 1569
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;)V

    .line 1570
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fputmSession(Landroid/media/tv/interactive/TvInteractiveAppView;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    .line 1571
    return-void
.end method

.method public blacklist onSessionStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;II)V
    .registers 6

    .line 1653
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1654
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onSessionStateChanged - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    return-void

    .line 1657
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1658
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1659
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1667
    :cond_2e
    monitor-exit p1

    .line 1668
    return-void

    .line 1667
    :catchall_30
    move-exception p2

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw p2
.end method

.method public blacklist onSetTvRecordingInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 5

    .line 1938
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1939
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onSetRecordingInfo - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    return-void

    .line 1942
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1943
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onSetTvRecordingInfo(Ljava/lang/String;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V

    .line 1945
    :cond_24
    return-void
.end method

.method public blacklist onSetVideoBounds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/graphics/Rect;)V
    .registers 5

    .line 1713
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1714
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onSetVideoBounds - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    return-void

    .line 1717
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1718
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1719
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1727
    :cond_2e
    monitor-exit p1

    .line 1728
    return-void

    .line 1727
    :catchall_30
    move-exception p2

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw p2
.end method

.method public blacklist onTeletextAppStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;I)V
    .registers 4

    .line 1699
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1700
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onTeletextAppStateChanged - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    return-void

    .line 1703
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1704
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;

    move-result-object p1

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->mIAppServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;->onTeletextAppStateChanged(Ljava/lang/String;I)V

    .line 1706
    :cond_24
    return-void
.end method

.method public blacklist onTimeShiftCommandRequest(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 1627
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppView;)Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;

    move-result-object p1

    if-eq p0, p1, :cond_11

    .line 1628
    const-string p1, "TvInteractiveAppView"

    const-string/jumbo p2, "onTimeShiftCommandRequest - session not created"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    return-void

    .line 1631
    :cond_11
    iget-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {p1}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackLock(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1632
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1633
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;->this$0:Landroid/media/tv/interactive/TvInteractiveAppView;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppView;->-$$Nest$fgetmCallbackExecutor(Landroid/media/tv/interactive/TvInteractiveAppView;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppView$MySessionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1642
    :cond_2e
    monitor-exit p1

    .line 1643
    return-void

    .line 1642
    :catchall_30
    move-exception p2

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_30

    throw p2
.end method
