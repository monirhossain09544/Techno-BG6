.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# static fields
.field public static final greylist-max-o EXTRA_IS_HANDOVER:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER"

.field private static final greylist-max-o MSG_ABORT:I = 0x3

.field private static final greylist-max-o MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final blacklist MSG_ADD_PARTICIPANT:I = 0x27

.field private static final greylist-max-o MSG_ANSWER:I = 0x4

.field private static final greylist-max-o MSG_ANSWER_VIDEO:I = 0x11

.field private static final greylist-max-o MSG_CONFERENCE:I = 0xc

.field private static final greylist-max-o MSG_CONNECTION_SERVICE_FOCUS_GAINED:I = 0x1f

.field private static final greylist-max-o MSG_CONNECTION_SERVICE_FOCUS_LOST:I = 0x1e

.field private static final blacklist MSG_CREATE_CONFERENCE:I = 0x23

.field private static final blacklist MSG_CREATE_CONFERENCE_COMPLETE:I = 0x24

.field private static final blacklist MSG_CREATE_CONFERENCE_FAILED:I = 0x25

.field private static final greylist-max-o MSG_CREATE_CONNECTION:I = 0x2

.field private static final greylist-max-o MSG_CREATE_CONNECTION_COMPLETE:I = 0x1d

.field private static final greylist-max-o MSG_CREATE_CONNECTION_FAILED:I = 0x19

.field private static final greylist-max-o MSG_DEFLECT:I = 0x22

.field private static final greylist-max-o MSG_DISCONNECT:I = 0x6

.field private static final blacklist MSG_EXPLICIT_CALL_TRANSFER:I = 0x28

.field private static final blacklist MSG_EXPLICIT_CALL_TRANSFER_CONSULTATIVE:I = 0x29

.field private static final greylist-max-o MSG_HANDOVER_COMPLETE:I = 0x21

.field private static final greylist-max-o MSG_HANDOVER_FAILED:I = 0x20

.field private static final greylist-max-o MSG_HOLD:I = 0x7

.field private static final greylist-max-o MSG_MERGE_CONFERENCE:I = 0x12

.field private static final blacklist MSG_ON_AVAILABLE_CALL_ENDPOINTS_CHANGED:I = 0x2e

.field private static final greylist-max-o MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final blacklist MSG_ON_CALL_ENDPOINT_CHANGED:I = 0x2d

.field private static final blacklist MSG_ON_CALL_FILTERING_COMPLETED:I = 0x2a

.field private static final greylist-max-o MSG_ON_EXTRAS_CHANGED:I = 0x18

.field private static final blacklist MSG_ON_MUTE_STATE_CHANGED:I = 0x2f

.field private static final greylist-max-o MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final greylist-max-o MSG_ON_START_RTT:I = 0x1a

.field private static final greylist-max-o MSG_ON_STOP_RTT:I = 0x1b

.field private static final blacklist MSG_ON_TRACKED_BY_NON_UI_SERVICE:I = 0x2c

.field private static final blacklist MSG_ON_USING_ALTERNATIVE_UI:I = 0x2b

.field private static final greylist-max-o MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final greylist-max-o MSG_PULL_EXTERNAL_CALL:I = 0x16

.field private static final greylist-max-o MSG_REJECT:I = 0x5

.field private static final greylist-max-o MSG_REJECT_WITH_MESSAGE:I = 0x14

.field private static final blacklist MSG_REJECT_WITH_REASON:I = 0x26

.field private static final greylist-max-o MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final greylist-max-o MSG_RTT_UPGRADE_RESPONSE:I = 0x1c

.field private static final greylist-max-o MSG_SEND_CALL_EVENT:I = 0x17

.field private static final greylist-max-o MSG_SILENCE:I = 0x15

.field private static final greylist-max-o MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final greylist-max-o MSG_STOP_DTMF_TONE:I = 0xb

.field private static final greylist-max-o MSG_SWAP_CONFERENCE:I = 0x13

.field private static final greylist-max-o MSG_UNHOLD:I = 0x8

.field private static final greylist-max-o PII_DEBUG:Z

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static final greylist-max-o SESSION_ABORT:Ljava/lang/String; = "CS.ab"

.field private static final greylist-max-o SESSION_ADD_CS_ADAPTER:Ljava/lang/String; = "CS.aCSA"

.field private static final blacklist SESSION_ADD_PARTICIPANT:Ljava/lang/String; = "CS.aP"

.field private static final greylist-max-o SESSION_ANSWER:Ljava/lang/String; = "CS.an"

.field private static final greylist-max-o SESSION_ANSWER_VIDEO:Ljava/lang/String; = "CS.anV"

.field private static final blacklist SESSION_AVAILABLE_CALL_ENDPOINTS_CHANGED:Ljava/lang/String; = "CS.oACEC"

.field private static final greylist-max-o SESSION_CALL_AUDIO_SC:Ljava/lang/String; = "CS.cASC"

.field private static final blacklist SESSION_CALL_ENDPOINT_CHANGED:Ljava/lang/String; = "CS.oCEC"

.field private static final blacklist SESSION_CALL_FILTERING_COMPLETED:Ljava/lang/String; = "CS.oCFC"

.field private static final greylist-max-o SESSION_CONFERENCE:Ljava/lang/String; = "CS.c"

.field private static final greylist-max-o SESSION_CONNECTION_SERVICE_FOCUS_GAINED:Ljava/lang/String; = "CS.cSFG"

.field private static final greylist-max-o SESSION_CONNECTION_SERVICE_FOCUS_LOST:Ljava/lang/String; = "CS.cSFL"

.field private static final blacklist SESSION_CONSULTATIVE_TRANSFER:Ljava/lang/String; = "CS.cTrans"

.field private static final blacklist SESSION_CREATE_CONF:Ljava/lang/String; = "CS.crConf"

.field private static final blacklist SESSION_CREATE_CONF_COMPLETE:Ljava/lang/String; = "CS.crConfC"

.field private static final blacklist SESSION_CREATE_CONF_FAILED:Ljava/lang/String; = "CS.crConfF"

.field private static final greylist-max-o SESSION_CREATE_CONN:Ljava/lang/String; = "CS.crCo"

.field private static final greylist-max-o SESSION_CREATE_CONN_COMPLETE:Ljava/lang/String; = "CS.crCoC"

.field private static final greylist-max-o SESSION_CREATE_CONN_FAILED:Ljava/lang/String; = "CS.crCoF"

.field private static final greylist-max-o SESSION_DEFLECT:Ljava/lang/String; = "CS.def"

.field private static final greylist-max-o SESSION_DISCONNECT:Ljava/lang/String; = "CS.d"

.field private static final greylist-max-o SESSION_EXTRAS_CHANGED:Ljava/lang/String; = "CS.oEC"

.field private static final greylist-max-o SESSION_HANDLER:Ljava/lang/String; = "H."

.field private static final greylist-max-o SESSION_HANDOVER_COMPLETE:Ljava/lang/String; = "CS.hC"

.field private static final greylist-max-o SESSION_HANDOVER_FAILED:Ljava/lang/String; = "CS.haF"

.field private static final greylist-max-o SESSION_HOLD:Ljava/lang/String; = "CS.h"

.field private static final greylist-max-o SESSION_MERGE_CONFERENCE:Ljava/lang/String; = "CS.mC"

.field private static final blacklist SESSION_MUTE_STATE_CHANGED:Ljava/lang/String; = "CS.oMSC"

.field private static final greylist-max-o SESSION_PLAY_DTMF:Ljava/lang/String; = "CS.pDT"

.field private static final greylist-max-o SESSION_POST_DIAL_CONT:Ljava/lang/String; = "CS.oPDC"

.field private static final greylist-max-o SESSION_PULL_EXTERNAL_CALL:Ljava/lang/String; = "CS.pEC"

.field private static final greylist-max-o SESSION_REJECT:Ljava/lang/String; = "CS.r"

.field private static final greylist-max-o SESSION_REJECT_MESSAGE:Ljava/lang/String; = "CS.rWM"

.field private static final greylist-max-o SESSION_REMOVE_CS_ADAPTER:Ljava/lang/String; = "CS.rCSA"

.field private static final greylist-max-o SESSION_RTT_UPGRADE_RESPONSE:Ljava/lang/String; = "CS.rTRUR"

.field private static final greylist-max-o SESSION_SEND_CALL_EVENT:Ljava/lang/String; = "CS.sCE"

.field private static final greylist-max-o SESSION_SILENCE:Ljava/lang/String; = "CS.s"

.field private static final greylist-max-o SESSION_SPLIT_CONFERENCE:Ljava/lang/String; = "CS.sFC"

.field private static final greylist-max-o SESSION_START_RTT:Ljava/lang/String; = "CS.+RTT"

.field private static final greylist-max-o SESSION_STOP_DTMF:Ljava/lang/String; = "CS.sDT"

.field private static final greylist-max-o SESSION_STOP_RTT:Ljava/lang/String; = "CS.-RTT"

.field private static final greylist-max-o SESSION_SWAP_CONFERENCE:Ljava/lang/String; = "CS.sC"

.field private static final blacklist SESSION_TRACKED_BY_NON_UI_SERVICE:Ljava/lang/String; = "CS.tBNUS"

.field private static final blacklist SESSION_TRANSFER:Ljava/lang/String; = "CS.trans"

.field private static final greylist-max-o SESSION_UNHOLD:Ljava/lang/String; = "CS.u"

.field private static final greylist-max-o SESSION_UPDATE_RTT_PIPES:Ljava/lang/String; = "CS.uRTT"

.field private static final blacklist SESSION_USING_ALTERNATIVE_UI:Ljava/lang/String; = "CS.uAU"

.field private static greylist-max-o sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final greylist-max-o mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private greylist-max-o mAreAccountsInitialized:Z

.field private final greylist-max-o mBinder:Landroid/os/IBinder;

.field private final greylist-max-o mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mId:I

.field private final greylist-max-o mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mIdSyncRoot:Ljava/lang/Object;

.field private final greylist-max-o mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private greylist-max-o sNullConference:Landroid/telecom/Conference;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAreAccountsInitialized(Landroid/telecom/ConnectionService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdByConference(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdByConnection(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreInitializationConnectionRequests(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteConnectionManager(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .registers 1

    iget-object p0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAreAccountsInitialized(Landroid/telecom/ConnectionService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mabort(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddConferenceParticipants(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manswer(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$manswerVideo(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconference(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mconsultativeTransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConference(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConferenceFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/ConnectionService;->createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnection(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnectionFailed(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/ConnectionService;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateConnectionIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateIdList(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeflect(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->deflect(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdisconnect(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleExtrasChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRttUpgradeResponse(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleRttUpgradeResponse(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandoverFailed(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmergeConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCreateConferenceComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyCreateConferenceComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCreateConnectionComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyCreateConnectionComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyHandoverComplete(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->notifyHandoverComplete(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAccountsInitialized(Landroid/telecom/ConnectionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAdapterAttached(Landroid/telecom/ConnectionService;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAvailableCallEndpointsChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCallAudioStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCallEndpointChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCallFilteringCompleted(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monMuteStateChanged(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onMuteStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monPostDialContinue(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTrackedByNonUiService(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onTrackedByNonUiService(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUsingAlternativeUi(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onUsingAlternativeUi(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mplayDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpullExternalCall(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->pullExternalCall(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreject(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveConference(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendCallEvent(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msilence(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->silence(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msplitFromConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->startRtt(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopDtmfTone(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstopRtt(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopRtt(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mswapConference(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransfer(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->transfer(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munhold(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 347
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 321
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 447
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 448
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 449
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 450
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 451
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 454
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 458
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    .line 459
    iput v0, p0, Landroid/telecom/ConnectionService;->mId:I

    .line 461
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 1138
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 1856
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 2022
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    return-void
.end method

.method private greylist-max-o abort(Ljava/lang/String;)V
    .registers 4

    .line 2568
    const-string v0, "abort %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2569
    const-string v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onAbort()V

    .line 2570
    return-void
.end method

.method private greylist-max-o addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .registers 6

    .line 3809
    nop

    .line 3810
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3811
    const-string v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3812
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3813
    nop

    .line 3814
    invoke-virtual {p1}, Landroid/telecom/Conference;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 3813
    const-string v3, "addConferenceInternal: conf %s reusing original id %s"

    invoke-static {p0, v3, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    .line 3817
    :cond_2b
    move-object v0, v1

    :goto_2c
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3818
    const-string v0, "Re-adding an existing conference: %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5a

    .line 3819
    :cond_3e
    if-eqz p1, :cond_5a

    .line 3823
    if-nez v0, :cond_4a

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3824
    :cond_4a
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3825
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3826
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 3827
    return-object v0

    .line 3830
    :cond_5a
    :goto_5a
    return-object v1
.end method

.method private blacklist addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2819
    const-string v0, "addConferenceParticipants(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2820
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "addConferenceParticipants"

    if-eqz v0, :cond_1b

    .line 2821
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2822
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onAddConferenceParticipants(Ljava/util/List;)V

    goto :goto_22

    .line 2824
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    .line 2825
    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->onAddConferenceParticipants(Ljava/util/List;)V

    .line 2827
    :goto_22
    return-void
.end method

.method private greylist-max-o addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V
    .registers 5

    .line 3786
    invoke-virtual {p3, p2}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 3787
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3788
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3789
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p3, p2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 3790
    invoke-virtual {p3, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 3791
    invoke-virtual {p3, p1}, Landroid/telecom/Connection;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V

    .line 3792
    invoke-virtual {p0, p3}, Landroid/telecom/ConnectionService;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 3793
    return-void
.end method

.method private greylist-max-o addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;
    .registers 6

    .line 3767
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3768
    const-string v1, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3769
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3770
    nop

    .line 3771
    invoke-virtual {p2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 3770
    const-string v2, "addExistingConnectionInternal - conn %s reusing original id %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_57

    .line 3772
    :cond_29
    if-nez p1, :cond_34

    .line 3775
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_57

    .line 3779
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNextCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3781
    :goto_57
    invoke-direct {p0, p1, v0, p2}, Landroid/telecom/ConnectionService;->addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 3782
    return-object v0
.end method

.method private greylist-max-o answer(Ljava/lang/String;)V
    .registers 4

    .line 2582
    const-string v0, "answer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2583
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "answer"

    if-eqz v0, :cond_1b

    .line 2584
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onAnswer()V

    goto :goto_22

    .line 2586
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Conference;->onAnswer()V

    .line 2588
    :goto_22
    return-void
.end method

.method private greylist-max-o answerVideo(Ljava/lang/String;I)V
    .registers 5

    .line 2573
    const-string v0, "answerVideo %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2574
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "answer"

    if-eqz v0, :cond_1b

    .line 2575
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    goto :goto_22

    .line 2577
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->onAnswer(I)V

    .line 2579
    :goto_22
    return-void
.end method

.method private greylist-max-o conference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2734
    const-string v0, "conference %s, %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2737
    const-string v0, "conference"

    invoke-direct {p0, p2, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 2738
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v2

    .line 2739
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v3

    if-ne v1, v3, :cond_2d

    .line 2740
    invoke-direct {p0, p2, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v2

    .line 2741
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v3

    if-ne v2, v3, :cond_2d

    .line 2742
    const-string p1, "Connection2 or Conference2 missing in conference request %s."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2744
    return-void

    .line 2749
    :cond_2d
    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p2

    .line 2750
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    if-ne p2, v0, :cond_71

    .line 2751
    const-string p2, "addConnection"

    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p2

    .line 2752
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    if-ne p2, v0, :cond_4d

    .line 2753
    const-string p2, "Connection1 or Conference1 missing in conference request %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_68

    .line 2758
    :cond_4d
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object p1

    if-eq v1, p1, :cond_57

    .line 2760
    invoke-virtual {p2, v1}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_68

    .line 2762
    :cond_57
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->multiPartyAnchorConf()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    .line 2764
    const-string p1, "conference: merging 2 conferences into a multi-party anchor conference call. conference1 = [%s] conference2 = [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2767
    invoke-virtual {p2, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Conference;)V

    .line 2775
    :goto_68
    goto :goto_7e

    .line 2769
    :cond_69
    const-string p1, "There can only be one conference and an attempt was made to merge two conferences."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2771
    return-void

    .line 2777
    :cond_71
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object p1

    if-eq v2, p1, :cond_7b

    .line 2779
    invoke-virtual {v2, p2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_7e

    .line 2782
    :cond_7b
    invoke-virtual {p0, p2, v1}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    .line 2785
    :goto_7e
    return-void
.end method

.method private blacklist consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2620
    const-string v0, "consultativeTransfer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2621
    const-string v0, "consultativeTransfer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2622
    const-string v0, " consultativeTransfer"

    invoke-direct {p0, p2, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p2

    .line 2623
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onTransfer(Landroid/telecom/Connection;)V

    .line 2624
    return-void
.end method

.method private blacklist createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 10

    .line 2309
    nop

    .line 2310
    if-eqz p4, :cond_8

    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;

    move-result-object p1

    goto :goto_c

    .line 2311
    :cond_8
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;

    move-result-object p1

    .line 2313
    :goto_c
    const-string p4, "createConference, conference: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p0, p4, p5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2314
    if-nez p1, :cond_2f

    .line 2315
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p4, "createConference, implementation returned null conference."

    invoke-static {p0, p4, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2316
    new-instance p1, Landroid/telecom/DisconnectCause;

    const/4 p4, 0x1

    const-string p5, "IMPL_RETURNED_NULL_CONFERENCE"

    invoke-direct {p1, p4, p5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    .line 2318
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p4

    .line 2316
    invoke-static {p1, p4}, Landroid/telecom/Conference;->createFailedConference(Landroid/telecom/DisconnectCause;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Conference;

    move-result-object p1

    .line 2321
    :cond_2f
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p4

    .line 2322
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 2323
    const-string v0, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {p5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    if-eqz p4, :cond_59

    .line 2328
    const-string v0, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2329
    nop

    .line 2331
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2329
    invoke-virtual {p5, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    nop

    .line 2334
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p4

    .line 2333
    const-string v0, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p5, v0, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2337
    :cond_59
    invoke-virtual {p1, p5}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 2339
    iget-object p4, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2340
    iget-object p4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    iget-object p4, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, p4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 2343
    new-instance p4, Landroid/telecom/ParcelableConference$Builder;

    .line 2344
    invoke-virtual {p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object p5

    invoke-virtual {p1}, Landroid/telecom/Conference;->getState()I

    move-result v0

    invoke-direct {p4, p5, v0}, Landroid/telecom/ParcelableConference$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;I)V

    .line 2345
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/telecom/ParcelableConference$Builder;->setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2346
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/telecom/ParcelableConference$Builder;->setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2347
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object p5

    if-nez p5, :cond_90

    .line 2348
    const/4 p5, 0x0

    goto :goto_98

    :cond_90
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object p5

    invoke-virtual {p5}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object p5

    .line 2349
    :goto_98
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v0

    .line 2347
    invoke-virtual {p4, p5, v0}, Landroid/telecom/ParcelableConference$Builder;->setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2350
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v0

    .line 2351
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v2

    .line 2350
    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2352
    invoke-virtual {p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/telecom/ParcelableConference$Builder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2353
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/telecom/ParcelableConference$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2354
    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddress()Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddressPresentation()I

    move-result v0

    invoke-virtual {p4, p5, v0}, Landroid/telecom/ParcelableConference$Builder;->setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2355
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayName()Ljava/lang/String;

    move-result-object p5

    .line 2356
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayNamePresentation()I

    move-result v0

    .line 2355
    invoke-virtual {p4, p5, v0}, Landroid/telecom/ParcelableConference$Builder;->setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2357
    invoke-virtual {p1}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/telecom/ParcelableConference$Builder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2358
    invoke-virtual {p1}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result p5

    invoke-virtual {p4, p5}, Landroid/telecom/ParcelableConference$Builder;->setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p4

    .line 2359
    invoke-virtual {p4}, Landroid/telecom/ParcelableConference$Builder;->build()Landroid/telecom/ParcelableConference;

    move-result-object p4

    .line 2360
    invoke-virtual {p1}, Landroid/telecom/Conference;->getState()I

    move-result p5

    const/4 v0, 0x6

    if-eq p5, v0, :cond_107

    .line 2361
    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 2362
    iget-object p5, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    invoke-virtual {p5, p2, v0}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 2363
    iget-object p5, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v0

    invoke-virtual {p5, p2, v0}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 2364
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceAdded(Landroid/telecom/Conference;)V

    .line 2367
    :cond_107
    const-string p1, "createConference, calling handleCreateConferenceSuccessful %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p5

    invoke-static {p0, p1, p5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2368
    iget-object p1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1, p2, p3, p4}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V

    .line 2372
    return-void
.end method

.method private blacklist createConferenceFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .registers 6

    .line 2517
    const-string v0, "createConferenceFailed %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2518
    if-eqz p4, :cond_f

    .line 2519
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    goto :goto_12

    .line 2521
    :cond_f
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    .line 2523
    :goto_12
    return-void
.end method

.method private greylist-max-o createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .registers 41

    .line 2385
    move-object/from16 v1, p0

    const-string v0, "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1a

    .line 2386
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.telecom.extra.IS_HANDOVER"

    invoke-virtual {v2, v3, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v2, v10

    goto :goto_1b

    :cond_1a
    move v2, v11

    .line 2387
    :goto_1b
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.telecom.extra.IS_HANDOVER_CONNECTION"

    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v12, v10

    goto :goto_30

    :cond_2f
    move v12, v11

    .line 2389
    :goto_30
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.telecom.extra.ADD_SELF_MANAGED_CALLS_TO_INCALLSERVICE"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_44

    move v3, v10

    goto :goto_45

    :cond_44
    move v3, v11

    .line 2391
    :goto_45
    nop

    .line 2393
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2394
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object v5

    .line 2391
    const-string v6, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b, isLegacyHandover: %b, isHandover: %b,  addSelfManaged: %b"

    invoke-static {v1, v6, v5}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2396
    nop

    .line 2397
    const/4 v5, 0x0

    if-eqz v12, :cond_8f

    .line 2398
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 2399
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "android.telecom.extra.HANDOVER_FROM_PHONE_ACCOUNT"

    const-class v7, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    goto :goto_83

    .line 2400
    :cond_82
    move-object v2, v5

    .line 2401
    :goto_83
    if-nez p4, :cond_8a

    .line 2402
    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateOutgoingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_8e

    .line 2404
    :cond_8a
    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateIncomingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v2

    .line 2406
    :goto_8e
    goto :goto_a2

    .line 2407
    :cond_8f
    if-eqz p5, :cond_96

    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_a1

    .line 2408
    :cond_96
    if-eqz p4, :cond_9d

    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_a1

    .line 2409
    :cond_9d
    invoke-virtual {v1, v2, v4}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v2

    :goto_a1
    nop

    .line 2411
    :goto_a2
    const-string v6, "createConnection, connection: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2412
    if-nez v2, :cond_c0

    .line 2413
    const-string v0, "createConnection, implementation returned null connection."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2414
    new-instance v0, Landroid/telecom/DisconnectCause;

    const-string v2, "IMPL_RETURNED_NULL_CONNECTION"

    invoke-direct {v0, v10, v2}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    goto :goto_e7

    .line 2418
    :cond_c0
    :try_start_c0
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2419
    if-eqz v6, :cond_e5

    .line 2423
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 2425
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2426
    nop

    .line 2428
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2426
    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    const-string v0, "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

    .line 2432
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    .line 2431
    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2433
    invoke-virtual {v2, v7}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V
    :try_end_e5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c0 .. :try_end_e5} :catch_e6

    .line 2439
    :cond_e5
    goto :goto_e7

    .line 2436
    :catch_e6
    move-exception v0

    .line 2442
    :goto_e7
    nop

    .line 2443
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v0

    const/16 v6, 0x80

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_f2

    move v11, v10

    .line 2447
    :cond_f2
    if-eqz v11, :cond_f7

    .line 2448
    invoke-virtual {v2, v10}, Landroid/telecom/Connection;->setAudioModeIsVoip(Z)V

    .line 2450
    :cond_f7
    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v2}, Landroid/telecom/Connection;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_105

    .line 2452
    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    goto :goto_109

    :cond_105
    invoke-virtual {v2}, Landroid/telecom/Connection;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    :goto_109
    move-object v13, v0

    .line 2453
    invoke-virtual {v2}, Landroid/telecom/Connection;->getState()I

    move-result v0

    const/4 v6, 0x6

    if-eq v0, v6, :cond_114

    .line 2454
    invoke-direct {v1, v13, v3, v2}, Landroid/telecom/ConnectionService;->addConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 2457
    :cond_114
    invoke-virtual {v2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v0

    .line 2458
    if-nez v0, :cond_11e

    const-string/jumbo v0, "null"

    goto :goto_122

    :cond_11e
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 2459
    :goto_122
    nop

    .line 2460
    invoke-static {v0}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2461
    invoke-virtual {v2}, Landroid/telecom/Connection;->getState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    .line 2462
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2463
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v8

    invoke-static {v8}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v0, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 2459
    const-string v6, "createConnection, number: %s, state: %s, capabilities: %s, properties: %s"

    invoke-static {v1, v6, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2465
    const-string v0, "createConnection, calling handleCreateConnectionSuccessful %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v0, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2466
    iget-object v0, v1, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v12, Landroid/telecom/ParcelableConnection;

    .line 2471
    invoke-virtual {v2}, Landroid/telecom/Connection;->getState()I

    move-result v14

    .line 2472
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v15

    .line 2473
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v16

    .line 2474
    invoke-virtual {v2}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v17

    .line 2475
    invoke-virtual {v2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v18

    .line 2476
    invoke-virtual {v2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v19

    .line 2477
    invoke-virtual {v2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v20

    .line 2478
    invoke-virtual {v2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v21

    .line 2479
    invoke-virtual {v2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    if-nez v6, :cond_17c

    .line 2480
    goto :goto_184

    :cond_17c
    invoke-virtual {v2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v5

    :goto_184
    move-object/from16 v22, v5

    .line 2481
    invoke-virtual {v2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v23

    .line 2482
    invoke-virtual {v2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v24

    .line 2483
    invoke-virtual {v2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v25

    .line 2484
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v26

    .line 2485
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v28

    .line 2486
    invoke-virtual {v2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v30

    .line 2487
    invoke-virtual {v2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v31

    .line 2488
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v32

    .line 2489
    invoke-virtual {v2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v33

    .line 2490
    invoke-virtual {v2}, Landroid/telecom/Connection;->getCallerNumberVerificationStatus()I

    move-result v34

    invoke-direct/range {v12 .. v34}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;I)V

    .line 2466
    invoke-virtual {v0, v3, v4, v12}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 2492
    if-eqz p4, :cond_1c5

    invoke-virtual {v4}, Landroid/telecom/ConnectionRequest;->shouldShowIncomingCallUi()Z

    move-result v0

    if-eqz v0, :cond_1c5

    if-eqz v11, :cond_1c5

    .line 2494
    invoke-virtual {v2}, Landroid/telecom/Connection;->onShowIncomingCallUi()V

    .line 2496
    :cond_1c5
    if-eqz p5, :cond_1ca

    .line 2497
    invoke-virtual {v1}, Landroid/telecom/ConnectionService;->triggerConferenceRecalculate()V

    .line 2499
    :cond_1ca
    return-void
.end method

.method private greylist-max-o createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    .registers 6

    .line 2505
    const-string v0, "createConnectionFailed %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2506
    if-eqz p4, :cond_f

    .line 2507
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    goto :goto_12

    .line 2509
    :cond_f
    invoke-virtual {p0, p1, p3}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V

    .line 2511
    :goto_12
    return-void
.end method

.method private greylist-max-o createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3871
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 3872
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3873
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3875
    :cond_28
    goto :goto_9

    .line 3876
    :cond_29
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3877
    return-object v0
.end method

.method private greylist-max-o createIdList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3889
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 3891
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_2f

    .line 3892
    check-cast v1, Landroid/telecom/Connection;

    .line 3893
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 3894
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 3896
    :cond_2f
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_49

    .line 3897
    check-cast v1, Landroid/telecom/Conference;

    .line 3898
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3899
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 3896
    :cond_49
    :goto_49
    nop

    .line 3902
    :cond_4a
    :goto_4a
    goto :goto_9

    .line 3903
    :cond_4b
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3904
    return-object v0
.end method

.method private greylist-max-o deflect(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    .line 2591
    const-string v0, "deflect %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2592
    const-string v0, "deflect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onDeflect(Landroid/net/Uri;)V

    .line 2593
    return-void
.end method

.method private greylist-max-o disconnect(Ljava/lang/String;)V
    .registers 4

    .line 2632
    const-string v0, "disconnect %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2633
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "disconnect"

    if-eqz v0, :cond_1b

    .line 2634
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_22

    .line 2636
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Conference;->onDisconnect()V

    .line 2638
    :goto_22
    return-void
.end method

.method private greylist-max-o endAllConnections()V
    .registers 4

    .line 3916
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 3918
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 3919
    invoke-virtual {v1}, Landroid/telecom/Connection;->onDisconnect()V

    .line 3921
    :cond_1f
    goto :goto_a

    .line 3922
    :cond_20
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference;

    .line 3923
    invoke-virtual {v1}, Landroid/telecom/Conference;->onDisconnect()V

    .line 3924
    goto :goto_2a

    .line 3925
    :cond_3a
    return-void
.end method

.method private greylist-max-o findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .registers 4

    .line 3862
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3863
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Conference;

    return-object p1

    .line 3865
    :cond_11
    const-string v0, "%s - Cannot find conference %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3866
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .registers 4

    .line 3847
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3848
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Connection;

    return-object p1

    .line 3850
    :cond_13
    const-string v0, "%s - Cannot find Connection %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3851
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o getNextCallId()I
    .registers 3

    .line 3933
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 3934
    :try_start_3
    iget v1, p0, Landroid/telecom/ConnectionService;->mId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/telecom/ConnectionService;->mId:I

    monitor-exit v0

    return v1

    .line 3935
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private greylist-max-o getNullConference()Landroid/telecom/Conference;
    .registers 3

    .line 3908
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_c

    .line 3909
    new-instance v0, Landroid/telecom/ConnectionService$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 3911
    :cond_c
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized greylist-max-o getNullConnection()Landroid/telecom/Connection;
    .registers 2

    const-class v0, Landroid/telecom/ConnectionService;

    monitor-enter v0

    .line 3855
    :try_start_3
    sget-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v1, :cond_e

    .line 3856
    new-instance v1, Landroid/telecom/ConnectionService$6;

    invoke-direct {v1}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 3858
    :cond_e
    sget-object v1, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 3854
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private greylist-max-o handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 2896
    const-string v0, "handleExtrasChanged(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2897
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "handleExtrasChanged"

    if-eqz v0, :cond_1b

    .line 2898
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->handleExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_2a

    .line 2899
    :cond_1b
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2900
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->handleExtrasChanged(Landroid/os/Bundle;)V

    .line 2902
    :cond_2a
    :goto_2a
    return-void
.end method

.method private greylist-max-o handleRttUpgradeResponse(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .registers 6

    .line 2923
    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "handleRttUpgradeResponse(%s, %s)"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2924
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2925
    const-string v0, "handleRttUpgradeResponse"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2926
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_34

    .line 2927
    :cond_25
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 2928
    const-string p1, "handleRttUpgradeResponse called on a conference."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2930
    :cond_34
    :goto_34
    return-void
.end method

.method private greylist-max-o handoverFailed(Ljava/lang/String;Landroid/telecom/ConnectionRequest;I)V
    .registers 5

    .line 2528
    const-string v0, "handoverFailed %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2529
    invoke-virtual {p0, p2, p3}, Landroid/telecom/ConnectionService;->onHandoverFailed(Landroid/telecom/ConnectionRequest;I)V

    .line 2530
    return-void
.end method

.method private greylist-max-o hold(Ljava/lang/String;)V
    .registers 4

    .line 2641
    const-string v0, "hold %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2642
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "hold"

    if-eqz v0, :cond_1b

    .line 2643
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onHold()V

    goto :goto_22

    .line 2645
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Conference;->onHold()V

    .line 2647
    :goto_22
    return-void
.end method

.method private greylist-max-o mergeConference(Ljava/lang/String;)V
    .registers 4

    .line 2803
    const-string v0, "mergeConference(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2804
    const-string v0, "mergeConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    .line 2805
    if-eqz p1, :cond_14

    .line 2806
    invoke-virtual {p1}, Landroid/telecom/Conference;->onMerge()V

    .line 2808
    :cond_14
    return-void
.end method

.method private blacklist notifyCreateConferenceComplete(Ljava/lang/String;)V
    .registers 4

    .line 2555
    const-string/jumbo v0, "notifyCreateConferenceComplete %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2556
    if-nez p1, :cond_16

    .line 2559
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "notifyCreateConferenceComplete: callId is null."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2560
    return-void

    .line 2562
    :cond_16
    const-string/jumbo v0, "notifyCreateConferenceComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onCreateConferenceComplete(Landroid/telecom/Conference;)V

    .line 2564
    return-void
.end method

.method private greylist-max-o notifyCreateConnectionComplete(Ljava/lang/String;)V
    .registers 4

    .line 2538
    const-string/jumbo v0, "notifyCreateConnectionComplete %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2539
    if-nez p1, :cond_16

    .line 2542
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "notifyCreateConnectionComplete: callId is null."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2543
    return-void

    .line 2545
    :cond_16
    const-string/jumbo v0, "notifyCreateConnectionComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onCreateConnectionComplete(Landroid/telecom/Connection;)V

    .line 2547
    return-void
.end method

.method private greylist-max-o notifyHandoverComplete(Ljava/lang/String;)V
    .registers 4

    .line 2876
    const-string/jumbo v0, "notifyHandoverComplete(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2877
    const-string/jumbo v0, "notifyHandoverComplete"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2878
    if-eqz p1, :cond_16

    .line 2879
    invoke-virtual {p1}, Landroid/telecom/Connection;->onHandoverComplete()V

    .line 2881
    :cond_16
    return-void
.end method

.method private greylist-max-o onAccountsInitialized()V
    .registers 3

    .line 3750
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 3751
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3752
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3753
    goto :goto_9

    .line 3754
    :cond_19
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3755
    return-void
.end method

.method private greylist-max-o onAdapterAttached()V
    .registers 4

    .line 2938
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_5

    .line 2940
    return-void

    .line 2943
    :cond_5
    invoke-virtual {p0}, Landroid/telecom/ConnectionService;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2945
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v2, Landroid/telecom/ConnectionService$5;

    invoke-direct {v2, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v1, v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/lang/String;)V

    .line 2974
    return-void
.end method

.method private blacklist onAvailableCallEndpointsChanged(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/telecom/CallEndpoint;",
            ">;)V"
        }
    .end annotation

    .line 2680
    const-string/jumbo v0, "onAvailableCallEndpointsChanged %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2681
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onAvailableCallEndpointsChanged"

    if-eqz v0, :cond_1d

    .line 2682
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2683
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->setAvailableCallEndpoints(Ljava/util/List;)V

    goto :goto_24

    .line 2685
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    .line 2686
    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->setAvailableCallEndpoints(Ljava/util/List;)V

    .line 2688
    :goto_24
    return-void
.end method

.method private greylist-max-o onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .registers 5

    .line 2659
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2660
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onCallAudioStateChanged"

    if-eqz v0, :cond_1d

    .line 2661
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_24

    .line 2664
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 2667
    :goto_24
    return-void
.end method

.method private blacklist onCallEndpointChanged(Ljava/lang/String;Landroid/telecom/CallEndpoint;)V
    .registers 5

    .line 2670
    const-string/jumbo v0, "onCallEndpointChanged %s %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2671
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onCallEndpointChanged"

    if-eqz v0, :cond_1d

    .line 2672
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->setCallEndpoint(Landroid/telecom/CallEndpoint;)V

    goto :goto_24

    .line 2674
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->setCallEndpoint(Landroid/telecom/CallEndpoint;)V

    .line 2676
    :goto_24
    return-void
.end method

.method private blacklist onCallFilteringCompleted(Ljava/lang/String;Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .registers 5

    .line 2863
    const-string/jumbo v0, "onCallFilteringCompleted(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2864
    const-string/jumbo v0, "onCallFilteringCompleted"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2865
    if-eqz p1, :cond_16

    .line 2866
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V

    .line 2868
    :cond_16
    return-void
.end method

.method private blacklist onMuteStateChanged(Ljava/lang/String;Z)V
    .registers 5

    .line 2691
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onMuteStateChanged %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2692
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "onMuteStateChanged"

    if-eqz v0, :cond_21

    .line 2693
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->setMuteState(Z)V

    goto :goto_28

    .line 2695
    :cond_21
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->setMuteState(Z)V

    .line 2697
    :goto_28
    return-void
.end method

.method private greylist-max-o onPostDialContinue(Ljava/lang/String;Z)V
    .registers 5

    .line 2933
    const-string/jumbo v0, "onPostDialContinue(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2934
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 2935
    return-void
.end method

.method private blacklist onTrackedByNonUiService(Ljava/lang/String;Z)V
    .registers 5

    .line 2708
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onTrackedByNonUiService %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2709
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2710
    const-string/jumbo v0, "onTrackedByNonUiService"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2711
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onTrackedByNonUiService(Z)V

    .line 2713
    :cond_20
    return-void
.end method

.method private blacklist onUsingAlternativeUi(Ljava/lang/String;Z)V
    .registers 5

    .line 2700
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "onUsingAlternativeUi %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2701
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2702
    const-string/jumbo v0, "onUsingAlternativeUi"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2703
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onUsingAlternativeUi(Z)V

    .line 2705
    :cond_20
    return-void
.end method

.method private greylist-max-o playDtmfTone(Ljava/lang/String;C)V
    .registers 5

    .line 2716
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "playDtmfTone %s %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2717
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "playDtmfTone"

    if-eqz v0, :cond_25

    .line 2718
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    goto :goto_2c

    .line 2720
    :cond_25
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    .line 2722
    :goto_2c
    return-void
.end method

.method private greylist-max-o pullExternalCall(Ljava/lang/String;)V
    .registers 4

    .line 2837
    const-string/jumbo v0, "pullExternalCall(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2838
    const-string/jumbo v0, "pullExternalCall"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2839
    if-eqz p1, :cond_16

    .line 2840
    invoke-virtual {p1}, Landroid/telecom/Connection;->onPullExternalCall()V

    .line 2842
    :cond_16
    return-void
.end method

.method private greylist-max-o reject(Ljava/lang/String;)V
    .registers 4

    .line 2596
    const-string/jumbo v0, "reject %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2597
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "reject"

    if-eqz v0, :cond_1d

    .line 2598
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onReject()V

    goto :goto_24

    .line 2600
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Conference;->onReject()V

    .line 2602
    :goto_24
    return-void
.end method

.method private blacklist reject(Ljava/lang/String;I)V
    .registers 5

    .line 2610
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "reject %s with reason %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2611
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onReject(I)V

    .line 2612
    return-void
.end method

.method private greylist-max-o reject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2605
    const-string/jumbo v0, "reject %s with message"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2606
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onReject(Ljava/lang/String;)V

    .line 2607
    return-void
.end method

.method private greylist-max-o removeConference(Landroid/telecom/Conference;)V
    .registers 4

    .line 3834
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3835
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 3837
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3838
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3839
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3840
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 3842
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceRemoved(Landroid/telecom/Conference;)V

    .line 3844
    :cond_27
    return-void
.end method

.method private greylist-max-o sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 2854
    const-string/jumbo v0, "sendCallEvent(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2855
    const-string/jumbo v0, "sendCallEvent"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    .line 2856
    if-eqz p1, :cond_16

    .line 2857
    invoke-virtual {p1, p2, p3}, Landroid/telecom/Connection;->onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2859
    :cond_16
    return-void
.end method

.method private greylist-max-o silence(Ljava/lang/String;)V
    .registers 4

    .line 2627
    const-string/jumbo v0, "silence %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2628
    const-string/jumbo v0, "silence"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onSilence()V

    .line 2629
    return-void
.end method

.method private greylist-max-o splitFromConference(Ljava/lang/String;)V
    .registers 4

    .line 2788
    const-string/jumbo v0, "splitFromConference(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2790
    const-string/jumbo v0, "splitFromConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 2791
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v1

    if-ne v0, v1, :cond_21

    .line 2792
    const-string v0, "Connection missing in conference request %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2793
    return-void

    .line 2796
    :cond_21
    invoke-virtual {v0}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object p1

    .line 2797
    if-eqz p1, :cond_2a

    .line 2798
    invoke-virtual {p1, v0}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    .line 2800
    :cond_2a
    return-void
.end method

.method private greylist-max-o startRtt(Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    .registers 5

    .line 2905
    const-string/jumbo v0, "startRtt(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2906
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2907
    const-string/jumbo v0, "startRtt"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->onStartRtt(Landroid/telecom/Connection$RttTextStream;)V

    goto :goto_2e

    .line 2908
    :cond_1d
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 2909
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "startRtt called on a conference."

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2911
    :cond_2e
    :goto_2e
    return-void
.end method

.method private greylist-max-o stopDtmfTone(Ljava/lang/String;)V
    .registers 4

    .line 2725
    const-string/jumbo v0, "stopDtmfTone %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2726
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "stopDtmfTone"

    if-eqz v0, :cond_1d

    .line 2727
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onStopDtmfTone()V

    goto :goto_24

    .line 2729
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Conference;->onStopDtmfTone()V

    .line 2731
    :goto_24
    return-void
.end method

.method private greylist-max-o stopRtt(Ljava/lang/String;)V
    .registers 4

    .line 2914
    const-string/jumbo v0, "stopRtt(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2915
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2916
    const-string/jumbo v0, "stopRtt"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onStopRtt()V

    goto :goto_2e

    .line 2917
    :cond_1d
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 2918
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "stopRtt called on a conference."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2920
    :cond_2e
    :goto_2e
    return-void
.end method

.method private greylist-max-o swapConference(Ljava/lang/String;)V
    .registers 4

    .line 2811
    const-string/jumbo v0, "swapConference(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2812
    const-string/jumbo v0, "swapConference"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    .line 2813
    if-eqz p1, :cond_16

    .line 2814
    invoke-virtual {p1}, Landroid/telecom/Conference;->onSwap()V

    .line 2816
    :cond_16
    return-void
.end method

.method private blacklist transfer(Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 6

    .line 2615
    const-string/jumbo v0, "transfer %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2616
    const-string/jumbo v0, "transfer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/telecom/Connection;->onTransfer(Landroid/net/Uri;Z)V

    .line 2617
    return-void
.end method

.method private greylist-max-o unhold(Ljava/lang/String;)V
    .registers 4

    .line 2650
    const-string/jumbo v0, "unhold %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2651
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "unhold"

    if-eqz v0, :cond_1d

    .line 2652
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onUnhold()V

    goto :goto_24

    .line 2654
    :cond_1d
    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Conference;->onUnhold()V

    .line 2656
    :goto_24
    return-void
.end method


# virtual methods
.method public final whitelist addConference(Landroid/telecom/Conference;)V
    .registers 8

    .line 3162
    const-string v0, "addConference: conference=%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3164
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v0

    .line 3165
    if-eqz v0, :cond_116

    .line 3166
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3167
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 3168
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3169
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3171
    :cond_3c
    goto :goto_1d

    .line 3172
    :cond_3d
    invoke-virtual {p1, v0}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 3173
    new-instance v2, Landroid/telecom/ParcelableConference$Builder;

    .line 3174
    invoke-virtual {p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telecom/Conference;->getState()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/telecom/ParcelableConference$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;I)V

    .line 3175
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3176
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v2

    .line 3177
    invoke-virtual {v2, v1}, Landroid/telecom/ParcelableConference$Builder;->setConnectionIds(Ljava/util/List;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3178
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    if-nez v2, :cond_69

    .line 3179
    const/4 v2, 0x0

    goto :goto_71

    :cond_69
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v2

    .line 3180
    :goto_71
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v3

    .line 3178
    invoke-virtual {v1, v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3181
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v2

    .line 3182
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v4

    .line 3181
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/telecom/ParcelableConference$Builder;->setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3183
    invoke-virtual {p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableConference$Builder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3184
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableConference$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3185
    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddressPresentation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3186
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 3187
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayNamePresentation()I

    move-result v3

    .line 3186
    invoke-virtual {v1, v2, v3}, Landroid/telecom/ParcelableConference$Builder;->setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3188
    invoke-virtual {p1}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableConference$Builder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3189
    invoke-virtual {p1}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableConference$Builder;->setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3190
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telecom/ParcelableConference$Builder;->setCallDirection(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v1

    .line 3191
    invoke-virtual {v1}, Landroid/telecom/ParcelableConference$Builder;->build()Landroid/telecom/ParcelableConference;

    move-result-object v1

    .line 3193
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 3194
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 3195
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 3198
    invoke-virtual {p1}, Landroid/telecom/Conference;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 3199
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->isMultiparty()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;Z)V

    .line 3203
    :cond_ef
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_113

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 3204
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3205
    if-eqz v2, :cond_112

    .line 3206
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v3, v2, v0}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    :cond_112
    goto :goto_f7

    .line 3209
    :cond_113
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceAdded(Landroid/telecom/Conference;)V

    .line 3211
    :cond_116
    return-void
.end method

.method public final whitelist addConferenceFromConnection(Landroid/telecom/Conference;Landroid/telecom/Connection;)V
    .registers 9

    .line 3078
    const-string v0, "addConferenceFromConnection: conference=%s originalConnection=%s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3081
    const/4 v0, 0x0

    if-eqz p2, :cond_152

    if-eqz p1, :cond_152

    .line 3086
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3088
    if-eqz v1, :cond_143

    .line 3090
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3091
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    invoke-virtual {p0, p2}, Landroid/telecom/ConnectionService;->onConnectionRemoved(Landroid/telecom/Connection;)V

    .line 3099
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_132

    .line 3103
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3104
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, p2}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 3108
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3109
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 3110
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 3111
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3113
    :cond_69
    goto :goto_4a

    .line 3115
    :cond_6a
    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 3116
    new-instance v0, Landroid/telecom/ParcelableConference$Builder;

    .line 3117
    invoke-virtual {p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/Conference;->getState()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/telecom/ParcelableConference$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;I)V

    .line 3118
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telecom/ParcelableConference$Builder;->setConnectionCapabilities(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v0

    .line 3119
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telecom/ParcelableConference$Builder;->setConnectionProperties(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object v0

    .line 3120
    invoke-virtual {v0, p2}, Landroid/telecom/ParcelableConference$Builder;->setConnectionIds(Ljava/util/List;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3121
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    if-nez v0, :cond_96

    .line 3122
    const/4 v0, 0x0

    goto :goto_9e

    :cond_96
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v0

    .line 3123
    :goto_9e
    invoke-virtual {p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v2

    .line 3121
    invoke-virtual {p2, v0, v2}, Landroid/telecom/ParcelableConference$Builder;->setVideoAttributes(Lcom/android/internal/telecom/IVideoProvider;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3124
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v2

    .line 3125
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v4

    .line 3124
    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/telecom/ParcelableConference$Builder;->setConnectTimeMillis(JJ)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3126
    invoke-virtual {p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telecom/ParcelableConference$Builder;->setStatusHints(Landroid/telecom/StatusHints;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3127
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telecom/ParcelableConference$Builder;->setExtras(Landroid/os/Bundle;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3128
    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/Conference;->getAddressPresentation()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/telecom/ParcelableConference$Builder;->setAddress(Landroid/net/Uri;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3129
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 3130
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallerDisplayNamePresentation()I

    move-result v2

    .line 3129
    invoke-virtual {p2, v0, v2}, Landroid/telecom/ParcelableConference$Builder;->setCallerDisplayName(Ljava/lang/String;I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3131
    invoke-virtual {p1}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telecom/ParcelableConference$Builder;->setDisconnectCause(Landroid/telecom/DisconnectCause;)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3132
    invoke-virtual {p1}, Landroid/telecom/Conference;->isRingbackRequested()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telecom/ParcelableConference$Builder;->setRingbackRequested(Z)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3133
    invoke-virtual {p1}, Landroid/telecom/Conference;->getCallDirection()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telecom/ParcelableConference$Builder;->setCallDirection(I)Landroid/telecom/ParcelableConference$Builder;

    move-result-object p2

    .line 3134
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference$Builder;->build()Landroid/telecom/ParcelableConference;

    move-result-object p2

    .line 3136
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v0, v1, p2}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCallFromConnection(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 3139
    invoke-virtual {p1}, Landroid/telecom/Conference;->isMultiparty()Z

    move-result p2

    if-nez p2, :cond_10a

    .line 3140
    iget-object p2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {p1}, Landroid/telecom/Conference;->isMultiparty()Z

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->setConferenceState(Ljava/lang/String;Z)V

    .line 3144
    :cond_10a
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_112
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 3145
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3146
    if-eqz v0, :cond_12d

    .line 3147
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    :cond_12d
    goto :goto_112

    .line 3150
    :cond_12e
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConferenceAdded(Landroid/telecom/Conference;)V

    .line 3151
    return-void

    .line 3100
    :cond_132
    const-string p2, "Re-adding an existing conference: %s."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p2, p1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3101
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This conference has already been added"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3094
    :cond_143
    const-string p1, "addConferenceFromConnection: Original connection not found in CS."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3096
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Original connection not found in CS"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3082
    :cond_152
    const-string p1, "addConferenceFromConnection: parameter is null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3083
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A NonNull parameter is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .registers 4

    .line 3222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/telecom/ConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    .line 3223
    return-void
.end method

.method public final whitelist addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .registers 32
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3257
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {p0 .. p2}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 3258
    if-eqz v2, :cond_85

    .line 3259
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3260
    nop

    .line 3261
    const/4 v4, 0x0

    if-eqz v1, :cond_1f

    .line 3262
    iget-object v5, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v25, v1

    goto :goto_21

    .line 3261
    :cond_1f
    move-object/from16 v25, v4

    .line 3265
    :goto_21
    move-object/from16 v23, v3

    new-instance v3, Landroid/telecom/ParcelableConnection;

    .line 3267
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v5

    .line 3268
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v6

    .line 3269
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v7

    .line 3270
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v8

    .line 3271
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v9

    .line 3272
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v10

    .line 3273
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v11

    .line 3274
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v12

    .line 3275
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 3276
    goto :goto_54

    :cond_4c
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v4

    :goto_54
    move-object v13, v4

    .line 3277
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v14

    .line 3278
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v15

    .line 3279
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v16

    .line 3280
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v17

    .line 3281
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionStartElapsedRealtimeMillis()J

    move-result-wide v19

    .line 3282
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v21

    .line 3283
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v22

    .line 3285
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    .line 3287
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallDirection()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v27}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;II)V

    .line 3289
    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v0, v2, v3}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 3291
    :cond_85
    return-void
.end method

.method greylist-max-o addRemoteConference(Landroid/telecom/RemoteConference;)V
    .registers 2

    .line 3741
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 3742
    return-void
.end method

.method greylist-max-o addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .registers 2

    .line 3746
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 3747
    return-void
.end method

.method public final whitelist conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .registers 4

    .line 3063
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 3064
    return-void
.end method

.method public final whitelist connectionServiceFocusReleased()V
    .registers 2

    .line 3236
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v0}, Landroid/telecom/ConnectionServiceAdapter;->onConnectionServiceFocusReleased()V

    .line 3237
    return-void
.end method

.method public greylist-max-o containsConference(Landroid/telecom/Conference;)Z
    .registers 3

    .line 3736
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist createRemoteIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConference;
    .registers 5

    .line 3028
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .registers 5

    .line 2991
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createRemoteOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConference;
    .registers 5

    .line 3046
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConference;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .registers 5

    .line 3010
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist getAllConferences()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation

    .line 3310
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getAllConnections()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .line 3300
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 3944
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 2277
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onBindClient(Landroid/content/Intent;)V

    .line 2278
    iget-object p1, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public blacklist onBindClient(Landroid/content/Intent;)V
    .registers 2

    .line 2294
    return-void
.end method

.method public whitelist onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .registers 3

    .line 3674
    return-void
.end method

.method public greylist-max-o onConferenceAdded(Landroid/telecom/Conference;)V
    .registers 2

    .line 3692
    return-void
.end method

.method public greylist-max-o onConferenceRemoved(Landroid/telecom/Conference;)V
    .registers 2

    .line 3698
    return-void
.end method

.method public greylist-max-o onConnectionAdded(Landroid/telecom/Connection;)V
    .registers 2

    .line 3680
    return-void
.end method

.method public greylist-max-o onConnectionRemoved(Landroid/telecom/Connection;)V
    .registers 2

    .line 3686
    return-void
.end method

.method public whitelist onConnectionServiceFocusGained()V
    .registers 1

    .line 3730
    return-void
.end method

.method public whitelist onConnectionServiceFocusLost()V
    .registers 1

    .line 3724
    return-void
.end method

.method public whitelist onCreateConferenceComplete(Landroid/telecom/Conference;)V
    .registers 2

    .line 3369
    return-void
.end method

.method public whitelist onCreateConnectionComplete(Landroid/telecom/Connection;)V
    .registers 2

    .line 3357
    return-void
.end method

.method public whitelist onCreateIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;
    .registers 3

    .line 3344
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreateIncomingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .registers 3

    .line 3428
    return-void
.end method

.method public whitelist onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 3

    .line 3326
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreateIncomingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .registers 3

    .line 3389
    return-void
.end method

.method public whitelist onCreateIncomingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 3

    .line 3618
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreateOutgoingConference(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Conference;
    .registers 3

    .line 3519
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreateOutgoingConferenceFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .registers 3

    .line 3448
    return-void
.end method

.method public whitelist onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 3

    .line 3487
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onCreateOutgoingConnectionFailed(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)V
    .registers 3

    .line 3408
    return-void
.end method

.method public whitelist onCreateOutgoingHandoverConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 3

    .line 3571
    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist-max-o onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3663
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist onHandoverFailed(Landroid/telecom/ConnectionRequest;I)V
    .registers 3

    .line 3633
    return-void
.end method

.method public whitelist onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .registers 2

    .line 3710
    return-void
.end method

.method public whitelist onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .registers 2

    .line 3716
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 2

    .line 2284
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 2285
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected greylist-max-o removeConnection(Landroid/telecom/Connection;)V
    .registers 4

    .line 3797
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 3798
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 3799
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3800
    if-eqz v0, :cond_24

    .line 3801
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3802
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3803
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 3804
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onConnectionRemoved(Landroid/telecom/Connection;)V

    .line 3806
    :cond_24
    return-void
.end method

.method public blacklist setReadyForTest()V
    .registers 2

    .line 3953
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 3954
    return-void
.end method

.method public greylist-max-o triggerConferenceRecalculate()V
    .registers 1

    .line 3459
    return-void
.end method
