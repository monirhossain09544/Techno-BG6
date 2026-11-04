.class public abstract Landroid/media/tv/TvView$TvInputCallback;
.super Ljava/lang/Object;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAitInfoUpdated(Ljava/lang/String;Landroid/media/tv/AitInfo;)V
    .registers 3

    .line 1286
    return-void
.end method

.method public whitelist onAudioPresentationSelected(Ljava/lang/String;II)V
    .registers 4

    .line 1174
    return-void
.end method

.method public whitelist onAudioPresentationsChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;)V"
        }
    .end annotation

    .line 1163
    return-void
.end method

.method public whitelist onAvailableSpeeds(Ljava/lang/String;[F)V
    .registers 3

    .line 1334
    return-void
.end method

.method public whitelist onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 1153
    return-void
.end method

.method public whitelist onConnectionFailed(Ljava/lang/String;)V
    .registers 2

    .line 1135
    return-void
.end method

.method public whitelist onContentAllowed(Ljava/lang/String;)V
    .registers 2

    .line 1241
    return-void
.end method

.method public whitelist onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V
    .registers 3

    .line 1251
    return-void
.end method

.method public whitelist onCueingMessageAvailability(Ljava/lang/String;Z)V
    .registers 3

    .line 1306
    return-void
.end method

.method public whitelist onDisconnected(Ljava/lang/String;)V
    .registers 2

    .line 1143
    return-void
.end method

.method public whitelist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1263
    return-void
.end method

.method public whitelist onSignalStrengthUpdated(Ljava/lang/String;I)V
    .registers 3

    .line 1296
    return-void
.end method

.method public whitelist onTimeShiftMode(Ljava/lang/String;I)V
    .registers 3

    .line 1319
    return-void
.end method

.method public whitelist onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .registers 3

    .line 1278
    return-void
.end method

.method public whitelist onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    .line 1195
    return-void
.end method

.method public whitelist onTracksChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1183
    return-void
.end method

.method public whitelist onTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    .line 1342
    return-void
.end method

.method public whitelist onTvMessage(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .line 1360
    return-void
.end method

.method public whitelist onVideoAvailable(Ljava/lang/String;)V
    .registers 2

    .line 1215
    return-void
.end method

.method public whitelist onVideoFreezeUpdated(Ljava/lang/String;Z)V
    .registers 3

    .line 1370
    return-void
.end method

.method public whitelist onVideoSizeChanged(Ljava/lang/String;II)V
    .registers 4

    .line 1207
    return-void
.end method

.method public whitelist onVideoUnavailable(Ljava/lang/String;I)V
    .registers 3

    .line 1232
    return-void
.end method
