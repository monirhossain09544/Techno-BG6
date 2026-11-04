.class Landroid/service/media/MediaBrowserService$ServiceState;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/MediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceState"
.end annotation


# instance fields
.field private final blacklist mConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/service/media/MediaBrowserService$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSession:Landroid/media/session/MediaSession$Token;

.field final synthetic blacklist this$0:Landroid/service/media/MediaBrowserService;


# direct methods
.method public static synthetic blacklist $r8$lambda$q_IDS0UBWytZoZ88cflfXtgsATE(Landroid/service/media/MediaBrowserService$ServiceState;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService$ServiceState;->clearConnectionsOnHandler()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnections(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/service/media/MediaBrowserService$ServiceState;)Landroid/media/session/MediaSession$Token;
    .registers 1

    iget-object p0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/service/media/MediaBrowserService$ServiceState;Landroid/media/session/MediaSession$Token;)V
    .registers 2

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/media/MediaBrowserService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 661
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/media/MediaBrowserService$ServiceState;-><init>(Landroid/service/media/MediaBrowserService;)V

    return-void
.end method

.method private blacklist clearConnectionsOnHandler()V
    .registers 5

    .line 682
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 683
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 685
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 687
    :try_start_19
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onDisconnect()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    .line 693
    goto :goto_32

    .line 688
    :catch_1f
    move-exception v2

    .line 689
    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 691
    const-string/jumbo v3, "onDisconnectRequest for %s failed"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 689
    const-string v3, "MediaBrowserService"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 694
    :goto_32
    goto :goto_a

    .line 695
    :cond_33
    return-void
.end method


# virtual methods
.method public blacklist addSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 9

    .line 737
    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 739
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 740
    if-nez p2, :cond_27

    .line 741
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaBrowserService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void

    .line 746
    :cond_27
    iget-object v0, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 747
    if-nez v0, :cond_36

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    :cond_36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 751
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v3, :cond_55

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 752
    invoke-static {p4, v2}, Landroid/media/browse/MediaBrowserUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 753
    return-void

    .line 755
    :cond_55
    goto :goto_3a

    .line 756
    :cond_56
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object p3, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    .line 760
    return-void
.end method

.method public blacklist connectOnHandler(Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 16

    .line 768
    invoke-interface {p5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 770
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v9, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    new-instance v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V

    invoke-static {v9, v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 783
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0, p1, p3, p4}, Landroid/service/media/MediaBrowserService;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;

    move-result-object v7

    .line 784
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 787
    const-string v9, "MediaBrowserService"

    if-nez v7, :cond_6e

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No root for client "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :try_start_52
    invoke-interface {p5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_55} :catch_56

    .line 793
    :goto_55
    goto :goto_b4

    .line 791
    :catch_56
    move-exception v0

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 796
    :cond_6e
    :try_start_6e
    new-instance v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/String;IILandroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/service/media/MediaBrowserService$BrowserRoot;)V

    .line 805
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const/4 v3, 0x0

    invoke-interface {v8, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 807
    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    if-eqz v3, :cond_97

    .line 808
    iget-object v3, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 809
    invoke-virtual {v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mSession:Landroid/media/session/MediaSession$Token;

    iget-object v0, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 808
    invoke-interface {p5, v3, v4, v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_97} :catch_98

    .line 814
    :cond_97
    goto :goto_b4

    .line 811
    :catch_98
    move-exception v0

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :goto_b4
    return-void
.end method

.method public blacklist getBinder()Landroid/service/media/MediaBrowserService$ServiceBinder;
    .registers 2

    .line 670
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmBinder(Landroid/service/media/MediaBrowserService;)Landroid/service/media/MediaBrowserService$ServiceBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isValidPackage(Ljava/lang/String;I)Z
    .registers 7

    .line 967
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 968
    return v0

    .line 970
    :cond_4
    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v1}, Landroid/service/media/MediaBrowserService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 971
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    array-length v1, p2

    move v2, v0

    :goto_10
    if-ge v2, v1, :cond_1f

    aget-object v3, p2, v2

    .line 972
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 973
    const/4 p1, 0x1

    return p1

    .line 971
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 976
    :cond_1f
    return v0
.end method

.method public blacklist notifyChildrenChangeOnHandler(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 721
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 722
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 723
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 724
    if-eqz v2, :cond_4a

    .line 725
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 726
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {p2, v4}, Landroid/media/browse/MediaBrowserUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 727
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1, v3}, Landroid/service/media/MediaBrowserService$ServiceState;->performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V

    .line 729
    :cond_49
    goto :goto_2c

    .line 731
    :cond_4a
    goto :goto_a

    .line 732
    :cond_4b
    return-void
.end method

.method public blacklist notifySessionTokenInitializedOnHandler(Landroid/media/session/MediaSession$Token;)V
    .registers 7

    .line 707
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 708
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 709
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 711
    :try_start_16
    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 712
    invoke-virtual {v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v4}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 711
    invoke-interface {v2, v3, p1, v4}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_27} :catch_28

    .line 716
    goto :goto_4c

    .line 713
    :catch_28
    move-exception v2

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no longer valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaBrowserService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 717
    :goto_4c
    goto :goto_a

    .line 718
    :cond_4d
    return-void
.end method

.method public blacklist performLoadChildrenOnHandler(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/Bundle;)V
    .registers 10

    .line 856
    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceState$1;

    move-object v4, p1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$ServiceState$1;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 899
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {p1, v3}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 900
    if-nez v5, :cond_17

    .line 901
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {p1, v2, v0}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    goto :goto_1c

    .line 903
    :cond_17
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {p1, v2, v0, v5}, Landroid/service/media/MediaBrowserService;->onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V

    .line 905
    :goto_1c
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 907
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 915
    return-void

    .line 908
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onLoadChildren must call detach() or sendResult() before returning for package="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist performLoadItemOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/ResultReceiver;)V
    .registers 10

    .line 921
    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 922
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 923
    if-nez v3, :cond_28

    .line 924
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getMediaItem for callback that isn\'t registered id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaBrowserService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return-void

    .line 928
    :cond_28
    new-instance v0, Landroid/service/media/MediaBrowserService$ServiceState$2;

    move-object v4, p1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/service/media/MediaBrowserService$ServiceState$2;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;Ljava/lang/Object;Landroid/service/media/MediaBrowserService$ConnectionRecord;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 954
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {p1, v3}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 955
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-virtual {p1, v2, v0}, Landroid/service/media/MediaBrowserService;->onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V

    .line 956
    iget-object p1, v1, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/service/media/MediaBrowserService;->-$$Nest$fputmCurrentConnectionOnHandler(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)V

    .line 958
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->isDone()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 963
    return-void

    .line 959
    :cond_48
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onLoadItem must call detach() or sendResult() before returning for id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist postOnHandler(Ljava/lang/Runnable;)V
    .registers 3

    .line 674
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method

.method public blacklist release()V
    .registers 3

    .line 678
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v0}, Landroid/service/media/MediaBrowserService;->-$$Nest$fgetmHandler(Landroid/service/media/MediaBrowserService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/media/MediaBrowserService$ServiceState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/media/MediaBrowserService$ServiceState$$ExternalSyntheticLambda0;-><init>(Landroid/service/media/MediaBrowserService$ServiceState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 679
    return-void
.end method

.method public blacklist removeConnectionRecordOnHandler(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 4

    .line 698
    invoke-interface {p1}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 700
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 701
    if-eqz p1, :cond_18

    .line 702
    iget-object v0, p1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 704
    :cond_18
    return-void
.end method

.method public blacklist removeSubscriptionOnHandler(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;Landroid/os/IBinder;)Z
    .registers 9

    .line 821
    invoke-interface {p2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 823
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceState;->mConnections:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    .line 824
    const/4 v0, 0x1

    if-nez p2, :cond_29

    .line 825
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "removeSubscription for callback that isn\'t registered id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaBrowserService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return v0

    .line 829
    :cond_29
    const/4 v1, 0x0

    if-nez p3, :cond_37

    .line 830
    iget-object p2, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    return v0

    .line 832
    :cond_37
    nop

    .line 833
    iget-object v2, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 834
    if-eqz v2, :cond_67

    .line 835
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 836
    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 837
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p3, v4, :cond_46

    .line 838
    nop

    .line 839
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v1, v0

    goto :goto_46

    .line 842
    :cond_5c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_67

    .line 843
    iget-object p2, p2, Landroid/service/media/MediaBrowserService$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :cond_67
    return v1
.end method
