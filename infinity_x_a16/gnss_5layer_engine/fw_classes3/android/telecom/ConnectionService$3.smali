.class Landroid/telecom/ConnectionService$3;
.super Landroid/telecom/Conference$Listener;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1856
    iput-object p1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Landroid/telecom/Conference$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V
    .registers 5

    .line 1991
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1992
    if-eqz p1, :cond_17

    .line 1993
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1995
    :cond_17
    return-void
.end method

.method public blacklist onCallDirectionChanged(Landroid/telecom/Conference;I)V
    .registers 4

    .line 1983
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1984
    if-eqz p1, :cond_17

    .line 1985
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setCallDirection(Ljava/lang/String;I)V

    .line 1987
    :cond_17
    return-void
.end method

.method public blacklist onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V
    .registers 5

    .line 2000
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2001
    if-eqz p1, :cond_17

    .line 2002
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2004
    :cond_17
    return-void
.end method

.method public blacklist onConferenceStateChanged(Landroid/telecom/Conference;Z)V
    .registers 4

    .line 1975
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1976
    if-eqz p1, :cond_17

    .line 1977
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;Z)V

    .line 1979
    :cond_17
    return-void
.end method

.method public blacklist onConferenceableConnectionsChangedLegacy(Landroid/telecom/Conference;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    .line 1905
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    .line 1906
    invoke-static {v1, p2}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateConnectionIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 1904
    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    .line 1907
    return-void
.end method

.method public blacklist onConferenceablesChanged(Landroid/telecom/Conference;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 1896
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v1

    .line 1897
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    .line 1898
    invoke-static {v1, p2}, Landroid/telecom/ConnectionService;->-$$Nest$mcreateIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 1896
    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V

    .line 1899
    return-void
.end method

.method public blacklist onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .registers 3

    .line 1887
    return-void
.end method

.method public blacklist onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V
    .registers 5

    .line 1918
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1919
    nop

    .line 1920
    invoke-static {p2}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1919
    const-string v1, "call capabilities: conference: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1921
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V

    .line 1922
    return-void
.end method

.method public blacklist onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 2008
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2009
    if-eqz p1, :cond_17

    .line 2010
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telecom/ConnectionServiceAdapter;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2012
    :cond_17
    return-void
.end method

.method public blacklist onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V
    .registers 5

    .line 1928
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1929
    nop

    .line 1930
    invoke-static {p2}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1929
    const-string v1, "call capabilities: conference: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1931
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setConnectionProperties(Ljava/lang/String;I)V

    .line 1932
    return-void
.end method

.method public blacklist onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .registers 3

    .line 1891
    return-void
.end method

.method public blacklist onDestroyed(Landroid/telecom/Conference;)V
    .registers 3

    .line 1911
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/ConnectionService;->-$$Nest$mremoveConference(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V

    .line 1912
    return-void
.end method

.method public blacklist onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V
    .registers 4

    .line 1881
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1882
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    .line 1883
    return-void
.end method

.method public blacklist onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V
    .registers 4

    .line 1959
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1960
    if-eqz p1, :cond_17

    .line 1961
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1963
    :cond_17
    return-void
.end method

.method public blacklist onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1967
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1968
    if-eqz p1, :cond_17

    .line 1969
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 1971
    :cond_17
    return-void
.end method

.method public blacklist onRingbackRequested(Landroid/telecom/Conference;Z)V
    .registers 5

    .line 2016
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2017
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Adapter conference onRingback %b"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2018
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V

    .line 2019
    return-void
.end method

.method public blacklist onStateChanged(Landroid/telecom/Conference;II)V
    .registers 4

    .line 1859
    iget-object p2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1860
    packed-switch p3, :pswitch_data_3a

    goto :goto_38

    .line 1871
    :pswitch_10
    iget-object p2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/telecom/ConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V

    .line 1872
    goto :goto_38

    .line 1868
    :pswitch_1a
    iget-object p2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/telecom/ConnectionServiceAdapter;->setActive(Ljava/lang/String;)V

    .line 1869
    goto :goto_38

    .line 1865
    :pswitch_24
    iget-object p2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/telecom/ConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V

    .line 1866
    goto :goto_38

    .line 1862
    :pswitch_2e
    iget-object p2, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p2}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/telecom/ConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V

    .line 1863
    nop

    .line 1877
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_24
        :pswitch_1a
        :pswitch_10
    .end packed-switch
.end method

.method public blacklist onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V
    .registers 4

    .line 1951
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1952
    if-eqz p1, :cond_17

    .line 1953
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V

    .line 1955
    :cond_17
    return-void
.end method

.method public blacklist onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V
    .registers 5

    .line 1943
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1944
    const-string/jumbo v1, "onVideoProviderChanged: Connection: %s, VideoProvider: %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1946
    iget-object p1, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {p1}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 1947
    return-void
.end method

.method public blacklist onVideoStateChanged(Landroid/telecom/Conference;I)V
    .registers 5

    .line 1936
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1937
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onVideoStateChanged set video state %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1938
    iget-object v0, p0, Landroid/telecom/ConnectionService$3;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 1939
    return-void
.end method
