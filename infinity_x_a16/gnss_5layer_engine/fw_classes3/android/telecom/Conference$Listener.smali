.class abstract Landroid/telecom/Conference$Listener;
.super Ljava/lang/Object;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Listener"
.end annotation


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V
    .registers 4

    .line 77
    return-void
.end method

.method public blacklist onCallDirectionChanged(Landroid/telecom/Conference;I)V
    .registers 3

    .line 81
    return-void
.end method

.method public blacklist onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V
    .registers 4

    .line 80
    return-void
.end method

.method public blacklist onConferenceStateChanged(Landroid/telecom/Conference;Z)V
    .registers 3

    .line 76
    return-void
.end method

.method public blacklist onConferenceableConnectionsChangedLegacy(Landroid/telecom/Conference;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist onConferenceablesChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 63
    return-void
.end method

.method public greylist-max-o onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .registers 3

    .line 60
    return-void
.end method

.method public greylist-max-o onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .registers 3

    .line 68
    return-void
.end method

.method public blacklist onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 78
    return-void
.end method

.method public greylist-max-o onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V
    .registers 3

    .line 70
    return-void
.end method

.method public greylist-max-o onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .registers 3

    .line 61
    return-void
.end method

.method public greylist-max-o onDestroyed(Landroid/telecom/Conference;)V
    .registers 2

    .line 66
    return-void
.end method

.method public greylist-max-o onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .registers 3

    .line 59
    return-void
.end method

.method public greylist-max-o onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V
    .registers 3

    .line 74
    return-void
.end method

.method public greylist-max-o onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist onRingbackRequested(Landroid/telecom/Conference;Z)V
    .registers 3

    .line 82
    return-void
.end method

.method public greylist-max-o onStateChanged(Landroid/telecom/Conference;II)V
    .registers 4

    .line 58
    return-void
.end method

.method public greylist-max-o onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V
    .registers 3

    .line 73
    return-void
.end method

.method public greylist-max-o onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V
    .registers 3

    .line 72
    return-void
.end method

.method public greylist-max-o onVideoStateChanged(Landroid/telecom/Conference;I)V
    .registers 3

    .line 71
    return-void
.end method
