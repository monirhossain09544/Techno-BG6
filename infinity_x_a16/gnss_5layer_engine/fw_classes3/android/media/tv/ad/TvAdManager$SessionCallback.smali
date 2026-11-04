.class public abstract Landroid/media/tv/ad/TvAdManager$SessionCallback;
.super Ljava/lang/Object;
.source "TvAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ad/TvAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onLayoutSurface(Landroid/media/tv/ad/TvAdManager$Session;IIII)V
    .registers 6

    .line 1178
    return-void
.end method

.method public blacklist onRequestCurrentChannelUri(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2

    .line 1196
    return-void
.end method

.method public blacklist onRequestCurrentTvInputId(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2

    .line 1214
    return-void
.end method

.method public blacklist onRequestCurrentVideoBounds(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2

    .line 1187
    return-void
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/ad/TvAdManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6

    .line 1230
    return-void
.end method

.method public blacklist onRequestTrackInfoList(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2

    .line 1205
    return-void
.end method

.method public blacklist onSessionCreated(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2

    .line 1156
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/tv/ad/TvAdManager$Session;)V
    .registers 2

    .line 1165
    return-void
.end method
