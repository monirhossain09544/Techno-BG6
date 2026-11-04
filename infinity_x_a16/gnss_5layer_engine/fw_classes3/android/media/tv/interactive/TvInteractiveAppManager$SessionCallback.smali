.class public abstract Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBiInteractiveAppCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    .line 2687
    return-void
.end method

.method public blacklist onCommandRequest(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2418
    return-void
.end method

.method public blacklist onLayoutSurface(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;IIII)V
    .registers 6

    .line 2405
    return-void
.end method

.method public blacklist onRequestAvailableSpeeds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2521
    return-void
.end method

.method public blacklist onRequestCertificate(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;I)V
    .registers 4

    .line 2661
    return-void
.end method

.method public blacklist onRequestCurrentChannelLcn(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2467
    return-void
.end method

.method public blacklist onRequestCurrentChannelUri(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2458
    return-void
.end method

.method public blacklist onRequestCurrentTvInputId(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2503
    return-void
.end method

.method public blacklist onRequestCurrentVideoBounds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2449
    return-void
.end method

.method public blacklist onRequestScheduleRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;)V
    .registers 11

    .line 2583
    return-void
.end method

.method public blacklist onRequestScheduleRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7

    .line 2561
    return-void
.end method

.method public blacklist onRequestSelectedTrackInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2494
    return-void
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 7

    .line 2651
    return-void
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6

    .line 2633
    return-void
.end method

.method public blacklist onRequestStartRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 2531
    return-void
.end method

.method public blacklist onRequestStopRecording(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;)V
    .registers 3

    .line 2541
    return-void
.end method

.method public blacklist onRequestStreamVolume(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2476
    return-void
.end method

.method public blacklist onRequestTimeShiftMode(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2512
    return-void
.end method

.method public blacklist onRequestTrackInfoList(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2485
    return-void
.end method

.method public blacklist onRequestTvRecordingInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;)V
    .registers 3

    .line 2606
    return-void
.end method

.method public blacklist onRequestTvRecordingInfoList(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;I)V
    .registers 3

    .line 2617
    return-void
.end method

.method public blacklist onSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2383
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 2

    .line 2392
    return-void
.end method

.method public blacklist onSessionStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;II)V
    .registers 4

    .line 2674
    return-void
.end method

.method public blacklist onSetTvRecordingInfo(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;)V
    .registers 4

    .line 2596
    return-void
.end method

.method public blacklist onSetVideoBounds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/graphics/Rect;)V
    .registers 3

    .line 2440
    return-void
.end method

.method public blacklist onTeletextAppStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;I)V
    .registers 3

    .line 2698
    return-void
.end method

.method public blacklist onTimeShiftCommandRequest(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 2432
    return-void
.end method
