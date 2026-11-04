.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/RemoteConnectionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 7

    .line 240
    new-instance p3, Landroid/telecom/RemoteConference;

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOutgoingConnectionServiceRpc(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 243
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection;

    .line 245
    if-eqz v1, :cond_30

    .line 246
    invoke-virtual {p3, v1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    .line 248
    :cond_30
    goto :goto_13

    .line 253
    :cond_31
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 254
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 255
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionProperties()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 256
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    const-string v1, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    nop

    .line 266
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    .line 265
    const-string v1, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 267
    invoke-virtual {p3, v0}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 269
    new-instance p2, Landroid/telecom/RemoteConnectionService$1$1;

    invoke-direct {p2, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 277
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    .line 278
    return-void
.end method

.method public blacklist addConferenceCallFromConnection(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 235
    return-void
.end method

.method public blacklist addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .registers 10

    .line 385
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string v0, "addExistingConnection: callId=%s, conn=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telecom/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 388
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 389
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telecom/ConnectionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget v5, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 391
    new-instance v0, Landroid/telecom/RemoteConnection;

    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOutgoingConnectionServiceRpc(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;Ljava/lang/String;I)V

    .line 395
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 396
    nop

    .line 397
    invoke-virtual {v3}, Landroid/telecom/ParcelableConnection;->getPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object p2

    .line 396
    const-string p3, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 398
    invoke-virtual {v3}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_74

    .line 399
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v3}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/RemoteConference;

    .line 406
    if-eqz p2, :cond_74

    .line 407
    const-string p3, "android.telecom.extra.ADD_TO_CONFERENCE_ID"

    invoke-virtual {p2}, Landroid/telecom/RemoteConference;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    nop

    .line 409
    invoke-virtual {v3}, Landroid/telecom/ParcelableConnection;->getParentCallId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/telecom/RemoteConference;->getId()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 408
    const-string p3, "addExistingConnection: stash parent of %s as %s"

    invoke-static {p0, p3, p2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    :cond_74
    invoke-virtual {v0, p1}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 413
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance p1, Landroid/telecom/RemoteConnectionService$1$2;

    invoke-direct {p1, p0, v1}, Landroid/telecom/RemoteConnectionService$1$2;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 421
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    .line 422
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 112
    return-void
.end method

.method public blacklist handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .registers 8

    .line 63
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 64
    const-string p4, "handleCreateConnectionSuccessful"

    invoke-static {p2, p1, p4}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 65
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONNECTION()Landroid/telecom/RemoteConnection;

    move-result-object p2

    if-eq p1, p2, :cond_da

    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmPendingConnections(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_da

    .line 66
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmPendingConnections(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 69
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    .line 70
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object p2

    const/4 p4, 0x6

    if-nez p2, :cond_3e

    .line 71
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result p2

    if-eq p2, p4, :cond_49

    .line 72
    :cond_3e
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 74
    :cond_49
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_55

    .line 75
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result p2

    if-eq p2, p4, :cond_61

    .line 76
    :cond_55
    nop

    .line 77
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v0

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 81
    :cond_61
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result p2

    if-ne p2, p4, :cond_6f

    .line 82
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_76

    .line 84
    :cond_6f
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 86
    :goto_76
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 89
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_aa
    goto :goto_83

    .line 92
    :cond_ab
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 93
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 94
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getState()I

    move-result p2

    if-ne p2, p4, :cond_be

    .line 97
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 99
    :cond_be
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 100
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 101
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 102
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 104
    :cond_da
    return-void
.end method

.method public blacklist onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 455
    iget-object p4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p4}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_18

    .line 456
    iget-object p4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "onConnectionEvent"

    invoke-static {p4, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/telecom/RemoteConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    :cond_18
    return-void
.end method

.method public blacklist onConnectionServiceFocusReleased(Landroid/telecom/Logging/Session$Info;)V
    .registers 2

    .line 231
    return-void
.end method

.method public blacklist onPhoneAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 228
    return-void
.end method

.method public blacklist onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 299
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "onPostDialChar"

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 300
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    .line 301
    return-void
.end method

.method public blacklist onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 293
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "onPostDialWait"

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 294
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public blacklist onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 498
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "onRemoteRttRequest"

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->onRemoteRttRequest()V

    goto :goto_1e

    .line 501
    :cond_15
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "onRemoteRttRequest called on a remote conference"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :goto_1e
    return-void
.end method

.method public blacklist onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 476
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "onRttInitiationFailure"

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 477
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->onRttInitiationFailure(I)V

    goto :goto_1e

    .line 479
    :cond_15
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "onRttInitiationFailure called on a remote conference"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    :goto_1e
    return-void
.end method

.method public blacklist onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 465
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "onRttInitiationSuccess"

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->onRttInitiationSuccess()V

    goto :goto_1e

    .line 468
    :cond_15
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "onRttInitiationSuccess called on a remote conference"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :goto_1e
    return-void
.end method

.method public blacklist onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 487
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "onRttSessionRemotelyTerminated"

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->onRttSessionRemotelyTerminated()V

    goto :goto_1e

    .line 490
    :cond_15
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "onRttSessionRemotelyTerminated called on a remote conference"

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :goto_1e
    return-void
.end method

.method public blacklist putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 426
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result p3

    const-string/jumbo v0, "putExtras"

    if-eqz p3, :cond_15

    .line 427
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    goto :goto_1e

    .line 429
    :cond_15
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 431
    :goto_1e
    return-void
.end method

.method public blacklist queryLocation(Ljava/lang/String;JLjava/lang/String;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    .registers 7

    .line 531
    return-void
.end method

.method public blacklist queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 307
    return-void
.end method

.method public blacklist removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 282
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string/jumbo v0, "removeCall"

    if-eqz p2, :cond_19

    .line 283
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    goto :goto_22

    .line 286
    :cond_19
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Landroid/telecom/RemoteConference;->setDestroyed()V

    .line 289
    :goto_22
    return-void
.end method

.method public blacklist removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 435
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result p3

    const-string/jumbo v0, "removeExtra"

    if-eqz p3, :cond_15

    .line 436
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->removeExtras(Ljava/util/List;)V

    goto :goto_1e

    .line 438
    :cond_15
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->removeExtras(Ljava/util/List;)V

    .line 440
    :goto_1e
    return-void
.end method

.method public blacklist requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 525
    return-void
.end method

.method public blacklist resetConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3

    .line 508
    return-void
.end method

.method public blacklist setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 116
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x4

    const-string/jumbo v1, "setActive"

    if-eqz p2, :cond_1a

    .line 117
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 118
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_23

    .line 120
    :cond_1a
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    .line 121
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 123
    :goto_23
    return-void
.end method

.method public blacklist setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 347
    iget-object p4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setAddress"

    invoke-static {p4, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 348
    invoke-virtual {p1, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 349
    return-void
.end method

.method public blacklist setAudioProcessing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;I)V
    .registers 4

    .line 536
    return-void
.end method

.method public blacklist setAudioRoute(Ljava/lang/String;ILjava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 445
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    .line 450
    return-void
.end method

.method public blacklist setCallDirection(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 519
    return-void
.end method

.method public blacklist setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 354
    iget-object p4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setCallerDisplayName"

    invoke-static {p4, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 355
    invoke-virtual {p1, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 356
    return-void
.end method

.method public blacklist setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3

    .line 223
    return-void
.end method

.method public blacklist setConferenceState(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 514
    return-void
.end method

.method public final blacklist setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    .line 366
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 369
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_30
    goto :goto_9

    .line 373
    :cond_31
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result p2

    const-string/jumbo v0, "setConferenceableConnections"

    if-eqz p2, :cond_46

    .line 374
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 375
    invoke-virtual {p1, p3}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_4f

    .line 377
    :cond_46
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    .line 378
    invoke-virtual {p1, p3}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    .line 380
    :goto_4f
    return-void
.end method

.method public blacklist setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 175
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const-string/jumbo v0, "setConnectionCapabilities"

    if-eqz p3, :cond_19

    .line 176
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 177
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    goto :goto_22

    .line 179
    :cond_19
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    .line 180
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 182
    :goto_22
    return-void
.end method

.method public blacklist setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 187
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const-string/jumbo v0, "setConnectionProperties"

    if-eqz p3, :cond_19

    .line 188
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    goto :goto_22

    .line 191
    :cond_19
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    .line 192
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 194
    :goto_22
    return-void
.end method

.method public blacklist setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 133
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setDialing"

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 134
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 135
    return-void
.end method

.method public blacklist setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 146
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const-string/jumbo v0, "setDisconnected"

    if-eqz p3, :cond_19

    .line 147
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 148
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_22

    .line 150
    :cond_19
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    .line 151
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 153
    :goto_22
    return-void
.end method

.method public blacklist setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 200
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 201
    const-string/jumbo v0, "setIsConferenced"

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 202
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONNECTION()Landroid/telecom/RemoteConnection;

    move-result-object p3

    if-eq p1, p3, :cond_2e

    .line 203
    if-nez p2, :cond_1f

    .line 205
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object p2

    if-eqz p2, :cond_2e

    .line 206
    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_2e

    .line 209
    :cond_1f
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    .line 210
    invoke-static {p3, p2, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p2

    .line 211
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-$$Nest$sfgetNULL_CONFERENCE()Landroid/telecom/RemoteConference;

    move-result-object p3

    if-eq p2, p3, :cond_2e

    .line 212
    invoke-virtual {p2, p1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    .line 216
    :cond_2e
    :goto_2e
    return-void
.end method

.method public blacklist setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 333
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setIsVoipAudioMode"

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 334
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 335
    return-void
.end method

.method public blacklist setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 157
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x5

    const-string/jumbo v1, "setOnHold"

    if-eqz p2, :cond_1a

    .line 158
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_23

    .line 161
    :cond_1a
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p2, p1, v1}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p1

    .line 162
    invoke-virtual {p1, v0}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 164
    :goto_23
    return-void
.end method

.method public blacklist setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 139
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setPulling"

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 140
    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 141
    return-void
.end method

.method public blacklist setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 168
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setRingbackRequested"

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 170
    return-void
.end method

.method public blacklist setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 4

    .line 127
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setRinging"

    invoke-static {p2, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 128
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 129
    return-void
.end method

.method public blacklist setSimulatedRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .registers 3

    .line 541
    return-void
.end method

.method public blacklist setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 340
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setStatusHints"

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 341
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 342
    return-void
.end method

.method public blacklist setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    .registers 6

    .line 313
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {p3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telecom/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 314
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    .line 315
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 316
    nop

    .line 317
    if-eqz p2, :cond_23

    .line 318
    new-instance v1, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {v1, p2, p3, v0}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    goto :goto_24

    .line 317
    :cond_23
    const/4 v1, 0x0

    .line 321
    :goto_24
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo p3, "setVideoProvider"

    invoke-static {p2, p1, p3}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 322
    invoke-virtual {p1, v1}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    .line 323
    return-void
.end method

.method public blacklist setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .registers 5

    .line 327
    iget-object p3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v0, "setVideoState"

    invoke-static {p3, p1, v0}, Landroid/telecom/RemoteConnectionService;->-$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    .line 328
    invoke-virtual {p1, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 329
    return-void
.end method
