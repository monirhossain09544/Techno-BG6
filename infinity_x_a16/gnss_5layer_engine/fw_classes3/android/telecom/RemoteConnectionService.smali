.class final Landroid/telecom/RemoteConnectionService;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"


# static fields
.field private static final greylist-max-o NULL_CONFERENCE:Landroid/telecom/RemoteConference;

.field private static final greylist-max-o NULL_CONNECTION:Landroid/telecom/RemoteConnection;


# instance fields
.field private final greylist-max-o mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/RemoteConference;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final greylist-max-o mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

.field private final greylist-max-o mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

.field private final greylist-max-o mPendingConnections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mServant:Landroid/telecom/ConnectionServiceAdapterServant;

.field private final greylist-max-o mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

.field private final blacklist mTelecomFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConferenceById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectionById(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telecom/RemoteConnectionService;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOurConnectionServiceImpl(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutgoingConnectionServiceRpc(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingConnections(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindConferenceForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindConnectionForAction(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasConnection(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/RemoteConnectionService;->hasConnection(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeDisconnectAdapter(Landroid/telecom/RemoteConnectionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/RemoteConnectionService;->maybeDisconnectAdapter()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetNULL_CONFERENCE()Landroid/telecom/RemoteConference;
    .registers 1

    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetNULL_CONNECTION()Landroid/telecom/RemoteConnection;
    .registers 1

    sget-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Landroid/telecom/RemoteConnection;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/telecom/ConnectionRequest;

    const-string v2, "NULL"

    invoke-direct {v0, v2, v1, v1}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    sput-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    .line 53
    new-instance v0, Landroid/telecom/RemoteConference;

    invoke-direct {v0, v2, v1}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    sput-object v0, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    return-void
.end method

.method constructor greylist-max-o <init>(Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/telecom/RemoteConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionService$1;-><init>(Landroid/telecom/RemoteConnectionService;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 544
    new-instance v0, Landroid/telecom/ConnectionServiceAdapterServant;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServantDelegate:Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionServiceAdapterServant;-><init>(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    .line 547
    new-instance v0, Landroid/telecom/RemoteConnectionService$2;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionService$2;-><init>(Landroid/telecom/RemoteConnectionService;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    .line 566
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    .line 567
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    .line 570
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlagsImpl;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnectionService;->mTelecomFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;

    .line 575
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    .line 576
    iget-object p1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 577
    iput-object p2, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    .line 578
    return-void
.end method

.method private greylist-max-o findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    .registers 4

    .line 714
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 715
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/RemoteConference;

    return-object p1

    .line 717
    :cond_11
    const-string v0, "%s - Cannot find Conference %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    sget-object p1, Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;

    return-object p1
.end method

.method private greylist-max-o findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    .registers 4

    .line 705
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 706
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/RemoteConnection;

    return-object p1

    .line 708
    :cond_11
    const-string v0, "%s - Cannot find Connection %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    sget-object p1, Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;

    return-object p1
.end method

.method private greylist-max-o hasConnection(Ljava/lang/String;)Z
    .registers 3

    .line 700
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o maybeDisconnectAdapter()V
    .registers 4

    .line 722
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 724
    :try_start_10
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-virtual {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 727
    goto :goto_1e

    .line 726
    :catch_1d
    move-exception v0

    .line 729
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method blacklist createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;
    .registers 12

    .line 653
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    :try_start_8
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 656
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-virtual {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 661
    :cond_1c
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mTelecomFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;->setRemoteConnectionCallId()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 662
    move-object v0, v3

    goto :goto_2a

    :cond_26
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getTelecomCallId()Ljava/lang/String;

    move-result-object v0

    .line 664
    :goto_2a
    new-instance v1, Landroid/telecom/ConnectionRequest$Builder;

    invoke-direct {v1}, Landroid/telecom/ConnectionRequest$Builder;-><init>()V

    .line 665
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 666
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 667
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 668
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 669
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->shouldShowIncomingCallUi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setShouldShowIncomingCallUi(Z)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 670
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 671
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 672
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getParticipants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ConnectionRequest$Builder;->setParticipants(Ljava/util/List;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v1

    .line 673
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->isAdhocConferenceCall()Z

    move-result p2

    invoke-virtual {v1, p2}, Landroid/telecom/ConnectionRequest$Builder;->setIsAdhocConferenceCall(Z)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object p2

    .line 674
    invoke-virtual {p2, v0}, Landroid/telecom/ConnectionRequest$Builder;->setTelecomCallId(Ljava/lang/String;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object p2

    .line 675
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest$Builder;->build()Landroid/telecom/ConnectionRequest;

    move-result-object v4

    .line 677
    new-instance p2, Landroid/telecom/RemoteConference;

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-direct {p2, v3, v0}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 678
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v5, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telecom/IConnectionService;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 684
    new-instance p1, Landroid/telecom/RemoteConnectionService$4;

    invoke-direct {p1, p0, v3}, Landroid/telecom/RemoteConnectionService$4;-><init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 691
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_9e} :catch_9f

    .line 692
    return-object p2

    .line 693
    :catch_9f
    move-exception v0

    move-object p1, v0

    .line 694
    new-instance p2, Landroid/telecom/DisconnectCause;

    .line 695
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 694
    invoke-static {p2}, Landroid/telecom/RemoteConference;->failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConference;

    move-result-object p1

    return-object p1
.end method

.method final greylist-max-o createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;
    .registers 12

    .line 589
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 590
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 591
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 592
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 597
    :cond_1a
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;

    .line 598
    invoke-virtual {v1}, Landroid/telecom/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 597
    const-string v2, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    nop

    .line 602
    nop

    .line 603
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mTelecomFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;

    invoke-interface {v1}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/FeatureFlags;->setRemoteConnectionCallId()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 604
    nop

    .line 605
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->shouldShowIncomingCallUi()Z

    move-result v1

    move v2, v1

    move-object v1, v3

    goto :goto_3e

    .line 603
    :cond_3b
    const-string v1, ""

    const/4 v2, 0x0

    .line 608
    :goto_3e
    new-instance v4, Landroid/telecom/ConnectionRequest$Builder;

    invoke-direct {v4}, Landroid/telecom/ConnectionRequest$Builder;-><init>()V

    .line 609
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telecom/ConnectionRequest$Builder;->setAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v4

    .line 610
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/telecom/ConnectionRequest$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v4

    .line 611
    invoke-virtual {v4, v0}, Landroid/telecom/ConnectionRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 612
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telecom/ConnectionRequest$Builder;->setVideoState(I)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 613
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeFromInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeFromInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object v0

    .line 614
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getRttPipeToInCall()Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/telecom/ConnectionRequest$Builder;->setRttPipeToInCall(Landroid/os/ParcelFileDescriptor;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object p2

    .line 616
    invoke-virtual {p2, v1}, Landroid/telecom/ConnectionRequest$Builder;->setTelecomCallId(Ljava/lang/String;)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object p2

    .line 617
    invoke-virtual {p2, v2}, Landroid/telecom/ConnectionRequest$Builder;->setShouldShowIncomingCallUi(Z)Landroid/telecom/ConnectionRequest$Builder;

    move-result-object p2

    .line 618
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest$Builder;->build()Landroid/telecom/ConnectionRequest;

    move-result-object v4

    .line 620
    :try_start_7b
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 621
    iget-object p2, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mServant:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-virtual {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->getStub()Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/android/internal/telecom/IConnectionService;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 624
    :cond_8f
    new-instance p2, Landroid/telecom/RemoteConnection;

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-direct {p2, v3, v0, v4}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V

    .line 626
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v5, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telecom/IConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 635
    new-instance p1, Landroid/telecom/RemoteConnectionService$3;

    invoke-direct {p1, p0, v3}, Landroid/telecom/RemoteConnectionService$3;-><init>(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_b1} :catch_b2

    .line 642
    return-object p2

    .line 643
    :catch_b2
    move-exception v0

    move-object p1, v0

    .line 644
    new-instance p2, Landroid/telecom/DisconnectCause;

    .line 645
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 644
    invoke-static {p2}, Landroid/telecom/RemoteConnection;->failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RemoteCS - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;

    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
