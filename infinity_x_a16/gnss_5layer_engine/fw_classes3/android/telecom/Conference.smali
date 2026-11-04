.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$Listener;,
        Landroid/telecom/Conference$FailureSignalingConference;
    }
.end annotation


# static fields
.field public static final whitelist CONNECT_TIME_NOT_SPECIFIED:J


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mAddressPresentation:I

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private blacklist mCallEndpoint:Landroid/telecom/CallEndpoint;

.field private blacklist mCallerDisplayName:Ljava/lang/String;

.field private blacklist mCallerDisplayNamePresentation:I

.field private final greylist-max-o mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionStartElapsedRealTime:J

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mDisconnectMessage:Ljava/lang/String;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private blacklist mIsMultiparty:Z

.field private final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConferenceableConnections(Landroid/telecom/Conference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConferenceables(Landroid/telecom/Conference;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Conference;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;)V
    .registers 5

    .line 148
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    .line 87
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    .line 88
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    .line 90
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    .line 91
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    .line 93
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    .line 94
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/Conference;->mState:I

    .line 105
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 106
    iput-wide v1, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    .line 110
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    .line 112
    const/4 v1, 0x3

    iput v1, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    .line 117
    iput-boolean v0, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    .line 119
    new-instance v0, Landroid/telecom/Conference$1;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 128
    new-instance v0, Landroid/telecom/Conference$2;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$2;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 149
    iput-object p1, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 150
    return-void
.end method

.method private final greylist-max-o clearConferenceableList()V
    .registers 4

    .line 942
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->multiPartyAnchorConf()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 943
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 944
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_24

    .line 945
    check-cast v1, Landroid/telecom/Connection;

    .line 946
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_30

    .line 947
    :cond_24
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_30

    .line 948
    check-cast v1, Landroid/telecom/Conference;

    .line 949
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_31

    .line 947
    :cond_30
    :goto_30
    nop

    .line 951
    :goto_31
    goto :goto_c

    .line 952
    :cond_32
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_55

    .line 954
    :cond_38
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 955
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 956
    goto :goto_3e

    .line 957
    :cond_50
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 959
    :goto_55
    return-void
.end method

.method public static whitelist createFailedConference(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Conference;
    .registers 3

    .line 938
    new-instance v0, Landroid/telecom/Conference$FailureSignalingConference;

    invoke-direct {v0, p0, p1}, Landroid/telecom/Conference$FailureSignalingConference;-><init>(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)V

    return-object v0
.end method

.method private final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .registers 4

    .line 654
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 655
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->multiPartyAnchorConf()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 656
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceablesChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    goto :goto_28

    .line 658
    :cond_20
    nop

    .line 659
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceableConnections()Ljava/util/List;

    move-result-object v2

    .line 658
    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChangedLegacy(Landroid/telecom/Conference;Ljava/util/List;)V

    .line 661
    :goto_28
    goto :goto_6

    .line 662
    :cond_29
    return-void
.end method

.method private greylist-max-o setState(I)V
    .registers 5

    .line 901
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    if-eq v0, p1, :cond_1e

    .line 902
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    .line 903
    iput p1, p0, Landroid/telecom/Conference;->mState:I

    .line 904
    iget-object v1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 905
    invoke-virtual {v2, p0, v0, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    .line 906
    goto :goto_e

    .line 908
    :cond_1e
    return-void
.end method


# virtual methods
.method public final whitelist addConnection(Landroid/telecom/Connection;)Z
    .registers 4

    .line 524
    const-string v0, "Connection=%s, connection="

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    if-eqz p1, :cond_39

    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 526
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 527
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 529
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 530
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    .line 531
    goto :goto_27

    .line 532
    :cond_37
    const/4 p1, 0x1

    return p1

    .line 535
    :cond_39
    const/4 p1, 0x0

    return p1
.end method

.method final greylist-max-o addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .registers 3

    .line 720
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 721
    return-object p0
.end method

.method public final whitelist destroy()V
    .registers 5

    .line 693
    const-string v0, "destroying conference : %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 696
    const-string/jumbo v2, "removing connection %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    invoke-virtual {p0, v1}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    .line 698
    goto :goto_f

    .line 701
    :cond_29
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_40

    .line 702
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setting to disconnected"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 707
    :cond_40
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 708
    invoke-virtual {v1, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    .line 709
    goto :goto_46

    .line 710
    :cond_56
    return-void
.end method

.method public final blacklist getAddress()Landroid/net/Uri;
    .registers 2

    .line 1271
    iget-object v0, p0, Landroid/telecom/Conference;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final blacklist getAddressPresentation()I
    .registers 2

    .line 1290
    iget v0, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final blacklist getCallDirection()I
    .registers 2

    .line 1316
    iget v0, p0, Landroid/telecom/Conference;->mCallDirection:I

    return v0
.end method

.method public final blacklist getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 1298
    iget-object v0, p0, Landroid/telecom/Conference;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getCallerDisplayNamePresentation()I
    .registers 2

    .line 1307
    iget v0, p0, Landroid/telecom/Conference;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getConferenceableConnections()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 677
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->multiPartyAnchorConf()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 680
    iget-object v1, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conferenceable;

    .line 681
    instance-of v3, v2, Landroid/telecom/Connection;

    if-eqz v3, :cond_26

    check-cast v2, Landroid/telecom/Connection;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_26
    goto :goto_11

    .line 683
    :cond_27
    return-object v0

    .line 685
    :cond_28
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final blacklist getConferenceables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 821
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .registers 3

    .line 850
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    return-wide v0
.end method

.method public final whitelist getConnectionTime()J
    .registers 3

    .line 832
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getCurrentCallEndpoint()Landroid/telecom/CallEndpoint;
    .registers 2

    .line 266
    iget-object v0, p0, Landroid/telecom/Conference;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    return-object v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 482
    iget-object v0, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1157
    iget-object v0, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist getPrimaryConnection()Landroid/telecom/Connection;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 745
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_17

    .line 748
    :cond_d
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 746
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist getState()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 990
    iget-object v0, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 2

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVideoState()I
    .registers 2

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .registers 4

    .line 1350
    nop

    .line 1351
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1352
    :try_start_4
    iput-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 1353
    iget-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_12

    .line 1354
    new-instance p1, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_13

    .line 1353
    :cond_12
    const/4 p1, 0x0

    .line 1356
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 1357
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 1358
    return-void

    .line 1356
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public blacklist isMultiparty()Z
    .registers 2

    .line 1230
    iget-boolean v0, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    return v0
.end method

.method public final whitelist isRingbackRequested()Z
    .registers 2

    .line 210
    iget-boolean v0, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    return v0
.end method

.method public whitelist onAddConferenceParticipants(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 404
    return-void
.end method

.method public final blacklist onAnswer()V
    .registers 2

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAnswer(I)V

    .line 425
    return-void
.end method

.method public whitelist onAnswer(I)V
    .registers 2

    .line 414
    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    return-void
.end method

.method public whitelist onAvailableCallEndpointsChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 384
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    return-void
.end method

.method public whitelist onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
    .registers 2

    .line 377
    return-void
.end method

.method public whitelist onConnectionAdded(Landroid/telecom/Connection;)V
    .registers 2

    .line 398
    return-void
.end method

.method public whitelist onDisconnect()V
    .registers 1

    .line 287
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2

    .line 1170
    return-void
.end method

.method public whitelist onHold()V
    .registers 1

    .line 318
    return-void
.end method

.method public whitelist onMerge()V
    .registers 1

    .line 329
    return-void
.end method

.method public blacklist onMerge(Landroid/telecom/Conference;)V
    .registers 2

    .line 313
    return-void
.end method

.method public whitelist onMerge(Landroid/telecom/Connection;)V
    .registers 2

    .line 303
    return-void
.end method

.method public whitelist onMuteStateChanged(Z)V
    .registers 2

    .line 391
    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .registers 2

    .line 342
    return-void
.end method

.method public whitelist onReject()V
    .registers 1

    .line 433
    return-void
.end method

.method public whitelist onSeparate(Landroid/telecom/Connection;)V
    .registers 2

    .line 295
    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .registers 1

    .line 347
    return-void
.end method

.method public whitelist onSwap()V
    .registers 1

    .line 335
    return-void
.end method

.method public whitelist onUnhold()V
    .registers 1

    .line 323
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;I)V
    .registers 4

    .line 1091
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1092
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1093
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 1094
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1105
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 1107
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Z)V
    .registers 4

    .line 1078
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1079
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1080
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 1081
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .registers 5

    .line 1050
    if-nez p1, :cond_3

    .line 1051
    return-void

    .line 1057
    :cond_3
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_6
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_11

    .line 1059
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 1061
    :cond_11
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1062
    new-instance p1, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1063
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3a

    .line 1065
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1066
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    .line 1067
    goto :goto_24

    .line 1068
    :cond_39
    return-void

    .line 1063
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public final whitelist removeConnection(Landroid/telecom/Connection;)V
    .registers 4

    .line 544
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "removing %s from %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    if-eqz p1, :cond_2f

    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 546
    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    .line 547
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 548
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    .line 549
    goto :goto_1f

    .line 551
    :cond_2f
    return-void
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1115
    if-eqz p1, :cond_45

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_45

    .line 1119
    :cond_9
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1120
    :try_start_c
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_26

    .line 1121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1122
    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1123
    goto :goto_14

    .line 1125
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_42

    .line 1127
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1128
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1129
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V

    .line 1130
    goto :goto_31

    .line 1131
    :cond_41
    return-void

    .line 1125
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1

    .line 1116
    :cond_45
    :goto_45
    return-void
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .registers 2

    .line 1139
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 1140
    return-void
.end method

.method final greylist-max-o removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .registers 3

    .line 732
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 733
    return-object p0
.end method

.method public whitelist sendConferenceEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 1410
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1411
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onConnectionEvent(Landroid/telecom/Conference;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1412
    goto :goto_6

    .line 1413
    :cond_16
    return-void
.end method

.method public final whitelist setActive()V
    .registers 2

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setRingbackRequested(Z)V

    .line 461
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 462
    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1249
    const-string/jumbo v0, "setAddress %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    iput-object p1, p0, Landroid/telecom/Conference;->mAddress:Landroid/net/Uri;

    .line 1251
    iput p2, p0, Landroid/telecom/Conference;->mAddressPresentation:I

    .line 1252
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1253
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onAddressChanged(Landroid/telecom/Conference;Landroid/net/Uri;I)V

    .line 1254
    goto :goto_14

    .line 1255
    :cond_24
    return-void
.end method

.method final blacklist setAvailableCallEndpoints(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 885
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setAvailableCallEndpoints"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 887
    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4

    .line 860
    const-string/jumbo v0, "setCallAudioState %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    iput-object p1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 862
    invoke-virtual {p0}, Landroid/telecom/Conference;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 863
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 864
    return-void
.end method

.method public final blacklist setCallDirection(I)V
    .registers 4

    .line 1211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setDirection %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    iput p1, p0, Landroid/telecom/Conference;->mCallDirection:I

    .line 1213
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1214
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onCallDirectionChanged(Landroid/telecom/Conference;I)V

    .line 1215
    goto :goto_16

    .line 1216
    :cond_26
    return-void
.end method

.method final blacklist setCallEndpoint(Landroid/telecom/CallEndpoint;)V
    .registers 4

    .line 873
    const-string/jumbo v0, "setCallEndpoint %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    iput-object p1, p0, Landroid/telecom/Conference;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    .line 875
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 876
    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1335
    const-string/jumbo v0, "setCallerDisplayName %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1336
    iput-object p1, p0, Landroid/telecom/Conference;->mCallerDisplayName:Ljava/lang/String;

    .line 1337
    iput p2, p0, Landroid/telecom/Conference;->mCallerDisplayNamePresentation:I

    .line 1338
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1339
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Conference$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Conference;Ljava/lang/String;I)V

    .line 1340
    goto :goto_14

    .line 1341
    :cond_24
    return-void
.end method

.method public whitelist setConferenceState(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1194
    iput-boolean p1, p0, Landroid/telecom/Conference;->mIsMultiparty:Z

    .line 1195
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 1196
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConferenceStateChanged(Landroid/telecom/Conference;Z)V

    .line 1197
    goto :goto_8

    .line 1198
    :cond_18
    return-void
.end method

.method public final whitelist setConferenceableConnections(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    .line 564
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 567
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->multiPartyAnchorConf()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 568
    iget-object v1, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 569
    iget-object v1, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 570
    iget-object v1, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 573
    :cond_2c
    iget-object v1, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 574
    iget-object v1, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 575
    iget-object v1, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_3e
    :goto_3e
    goto :goto_7

    .line 580
    :cond_3f
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    .line 581
    return-void
.end method

.method public final blacklist setConferenceables(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 590
    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    .line 591
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 594
    iget-object v1, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 595
    instance-of v1, v0, Landroid/telecom/Connection;

    if-eqz v1, :cond_28

    .line 596
    move-object v1, v0

    check-cast v1, Landroid/telecom/Connection;

    .line 597
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_35

    .line 598
    :cond_28
    instance-of v1, v0, Landroid/telecom/Conference;

    if-eqz v1, :cond_35

    .line 599
    move-object v1, v0

    check-cast v1, Landroid/telecom/Conference;

    .line 600
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_36

    .line 598
    :cond_35
    :goto_35
    nop

    .line 602
    :goto_36
    iget-object v1, p0, Landroid/telecom/Conference;->mConferenceables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_3b
    goto :goto_7

    .line 605
    :cond_3c
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    .line 606
    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 758
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionTime(J)V

    .line 759
    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .registers 4

    .line 492
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    if-eq p1, v0, :cond_1e

    .line 493
    iput p1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 495
    iget-object p1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 496
    iget v1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    .line 497
    goto :goto_c

    .line 499
    :cond_1e
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .registers 4

    .line 508
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    if-eq p1, v0, :cond_1e

    .line 509
    iput p1, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    .line 511
    iget-object p1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 512
    iget v1, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Conference$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V

    .line 513
    goto :goto_c

    .line 515
    :cond_1e
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealTime(J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 793
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionStartElapsedRealtimeMillis(J)V

    .line 794
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .registers 3

    .line 811
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectionStartElapsedRealTime:J

    .line 812
    return-void
.end method

.method public final whitelist setConnectionTime(J)V
    .registers 3

    .line 774
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 775
    return-void
.end method

.method public final whitelist setDialing()V
    .registers 2

    .line 446
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 447
    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 4

    .line 471
    iput-object p1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 472
    const/4 p1, 0x6

    invoke-direct {p0, p1}, Landroid/telecom/Conference;->setState(I)V

    .line 473
    iget-object p1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 474
    iget-object v1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    .line 475
    goto :goto_c

    .line 476
    :cond_1e
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .registers 7

    .line 1010
    iget-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 1015
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v1, :cond_36

    .line 1016
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    iget-object v2, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1018
    if-eqz p1, :cond_29

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1019
    :cond_29
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_2c
    goto :goto_15

    .line 1023
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 1024
    invoke-virtual {p0, v1}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 1030
    :cond_36
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v1, :cond_41

    .line 1031
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    .line 1033
    :cond_41
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1034
    if-eqz p1, :cond_51

    .line 1035
    iget-object v1, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1037
    :cond_51
    monitor-exit v0

    .line 1038
    return-void

    .line 1037
    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p1
.end method

.method final blacklist setMuteState(Z)V
    .registers 4

    .line 896
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setMuteState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onMuteStateChanged(Z)V

    .line 898
    return-void
.end method

.method public final whitelist setOnHold()V
    .registers 2

    .line 439
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 440
    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .registers 4

    .line 615
    iget-boolean v0, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    if-eq v0, p1, :cond_1c

    .line 616
    iput-boolean p1, p0, Landroid/telecom/Conference;->mRingbackRequested:Z

    .line 617
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 618
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onRingbackRequested(Landroid/telecom/Conference;Z)V

    .line 619
    goto :goto_c

    .line 621
    :cond_1c
    return-void
.end method

.method public final whitelist setRinging()V
    .registers 2

    .line 453
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 454
    return-void
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 4

    .line 980
    iput-object p1, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    .line 981
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 982
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    .line 983
    goto :goto_8

    .line 984
    :cond_18
    return-void
.end method

.method public final greylist-max-o setTelecomCallId(Ljava/lang/String;)V
    .registers 2

    .line 174
    iput-object p1, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .registers 4

    .line 646
    const-string/jumbo v0, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    iget-object p1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 649
    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    .line 650
    goto :goto_10

    .line 651
    :cond_20
    return-void
.end method

.method public final whitelist setVideoState(Landroid/telecom/Connection;I)V
    .registers 4

    .line 633
    nop

    .line 634
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 633
    const-string/jumbo v0, "setVideoState Conference: %s Connection: %s VideoState: %s"

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    iget-object p1, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 636
    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    .line 637
    goto :goto_15

    .line 638
    :cond_25
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 963
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Landroid/telecom/Conference;->mState:I

    .line 966
    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    iget v1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 967
    invoke-static {v1}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    .line 968
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 969
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v5

    .line 970
    invoke-virtual {p0}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Y"

    goto :goto_25

    :cond_23
    const-string v1, "N"

    :goto_25
    move-object v6, v1

    .line 971
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 963
    const-string v2, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s,isRingbackRequested: %s, ThisObject %s]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
