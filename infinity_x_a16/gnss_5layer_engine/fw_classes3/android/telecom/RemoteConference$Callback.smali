.class public abstract Landroid/telecom/RemoteConference$Callback;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onConferenceableConnectionsChanged(Landroid/telecom/RemoteConference;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConference;",
            "Ljava/util/List<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .line 115
    return-void
.end method

.method public whitelist onConnectionAdded(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .registers 3

    .line 73
    return-void
.end method

.method public whitelist onConnectionCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V
    .registers 3

    .line 92
    return-void
.end method

.method public whitelist onConnectionPropertiesChanged(Landroid/telecom/RemoteConference;I)V
    .registers 3

    .line 103
    return-void
.end method

.method public whitelist onConnectionRemoved(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .registers 3

    .line 81
    return-void
.end method

.method public whitelist onDestroyed(Landroid/telecom/RemoteConference;)V
    .registers 2

    .line 123
    return-void
.end method

.method public whitelist onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V
    .registers 3

    .line 65
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V
    .registers 3

    .line 131
    return-void
.end method

.method public whitelist onStateChanged(Landroid/telecom/RemoteConference;II)V
    .registers 4

    .line 56
    return-void
.end method
