.class public abstract Landroid/telecom/RemoteConnection$Callback;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .registers 4

    .line 155
    return-void
.end method

.method public whitelist onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .registers 4

    .line 167
    return-void
.end method

.method public whitelist onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .registers 3

    .line 219
    return-void
.end method

.method public whitelist onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConnection;",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .line 196
    return-void
.end method

.method public whitelist onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V
    .registers 3

    .line 95
    return-void
.end method

.method public whitelist onConnectionEvent(Landroid/telecom/RemoteConnection;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 238
    return-void
.end method

.method public whitelist onConnectionPropertiesChanged(Landroid/telecom/RemoteConnection;I)V
    .registers 3

    .line 106
    return-void
.end method

.method public whitelist onDestroyed(Landroid/telecom/RemoteConnection;)V
    .registers 2

    .line 184
    return-void
.end method

.method public whitelist onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .registers 3

    .line 75
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/telecom/RemoteConnection;Landroid/os/Bundle;)V
    .registers 3

    .line 227
    return-void
.end method

.method public whitelist onPostDialChar(Landroid/telecom/RemoteConnection;C)V
    .registers 3

    .line 126
    return-void
.end method

.method public whitelist onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .registers 3

    .line 117
    return-void
.end method

.method public greylist-max-o onRemoteRttRequest(Landroid/telecom/RemoteConnection;)V
    .registers 2

    .line 273
    return-void
.end method

.method public whitelist onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V
    .registers 3

    .line 84
    return-void
.end method

.method public greylist-max-o onRttInitiationFailure(Landroid/telecom/RemoteConnection;I)V
    .registers 3

    .line 257
    return-void
.end method

.method public greylist-max-o onRttInitiationSuccess(Landroid/telecom/RemoteConnection;)V
    .registers 2

    .line 246
    return-void
.end method

.method public greylist-max-o onRttSessionRemotelyTerminated(Landroid/telecom/RemoteConnection;)V
    .registers 2

    .line 265
    return-void
.end method

.method public whitelist onStateChanged(Landroid/telecom/RemoteConnection;I)V
    .registers 3

    .line 64
    return-void
.end method

.method public whitelist onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V
    .registers 3

    .line 144
    return-void
.end method

.method public whitelist onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V
    .registers 3

    .line 207
    return-void
.end method

.method public whitelist onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V
    .registers 3

    .line 176
    return-void
.end method

.method public whitelist onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V
    .registers 3

    .line 135
    return-void
.end method
