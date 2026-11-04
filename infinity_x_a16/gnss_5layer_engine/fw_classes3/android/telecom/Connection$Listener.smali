.class abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Listener"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .registers 4

    .line 1288
    return-void
.end method

.method public greylist-max-o onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .registers 3

    .line 1302
    return-void
.end method

.method public greylist-max-o onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V
    .registers 4

    .line 1311
    return-void
.end method

.method public greylist-max-o onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .registers 4

    .line 1290
    return-void
.end method

.method public greylist-max-o onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .registers 3

    .line 1306
    return-void
.end method

.method public greylist-max-o onConferenceMergeFailed(Landroid/telecom/Connection;)V
    .registers 2

    .line 1307
    return-void
.end method

.method public greylist-max-o onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 1305
    return-void
.end method

.method public greylist-max-o onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .registers 3

    .line 1297
    return-void
.end method

.method public greylist-max-o onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1310
    return-void
.end method

.method public greylist-max-o onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V
    .registers 3

    .line 1298
    return-void
.end method

.method public blacklist onConnectionTimeReset(Landroid/telecom/Connection;)V
    .registers 2

    .line 1318
    return-void
.end method

.method public greylist-max-o onDestroyed(Landroid/telecom/Connection;)V
    .registers 2

    .line 1296
    return-void
.end method

.method public greylist-max-o onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .registers 3

    .line 1292
    return-void
.end method

.method public blacklist onEndpointChanged(Landroid/telecom/Connection;Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    .line 1320
    return-void
.end method

.method public greylist-max-o onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V
    .registers 3

    .line 1308
    return-void
.end method

.method public greylist-max-o onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1309
    return-void
.end method

.method public greylist-max-o onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V
    .registers 3

    .line 1317
    return-void
.end method

.method public greylist-max-o onPostDialChar(Landroid/telecom/Connection;C)V
    .registers 3

    .line 1294
    return-void
.end method

.method public greylist-max-o onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .registers 3

    .line 1293
    return-void
.end method

.method public blacklist onQueryLocation(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/location/Location;",
            "Landroid/telecom/QueryLocationException;",
            ">;)V"
        }
    .end annotation

    .line 1323
    return-void
.end method

.method public greylist-max-o onRemoteRttRequest(Landroid/telecom/Connection;)V
    .registers 2

    .line 1315
    return-void
.end method

.method public greylist-max-o onRingbackRequested(Landroid/telecom/Connection;Z)V
    .registers 3

    .line 1295
    return-void
.end method

.method public greylist-max-o onRttInitiationFailure(Landroid/telecom/Connection;I)V
    .registers 3

    .line 1313
    return-void
.end method

.method public greylist-max-o onRttInitiationSuccess(Landroid/telecom/Connection;)V
    .registers 2

    .line 1312
    return-void
.end method

.method public greylist-max-o onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V
    .registers 2

    .line 1314
    return-void
.end method

.method public greylist-max-o onStateChanged(Landroid/telecom/Connection;I)V
    .registers 3

    .line 1287
    return-void
.end method

.method public greylist-max-o onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .registers 3

    .line 1303
    return-void
.end method

.method public greylist-max-o onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V
    .registers 3

    .line 1299
    return-void
.end method

.method public greylist-max-o onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .registers 3

    .line 1301
    return-void
.end method

.method public greylist-max-o onVideoStateChanged(Landroid/telecom/Connection;I)V
    .registers 3

    .line 1291
    return-void
.end method
