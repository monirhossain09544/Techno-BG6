.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$CallFilteringCompletionInfo;,
        Landroid/telecom/Connection$RttModifyStatus;,
        Landroid/telecom/Connection$RttTextStream;,
        Landroid/telecom/Connection$AudioCodec;,
        Landroid/telecom/Connection$VerificationStatus;,
        Landroid/telecom/Connection$ConnectionState;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CODEC_AMR:I = 0x1

.field public static final whitelist AUDIO_CODEC_AMR_WB:I = 0x2

.field public static final whitelist AUDIO_CODEC_EVRC:I = 0x4

.field public static final whitelist AUDIO_CODEC_EVRC_B:I = 0x5

.field public static final whitelist AUDIO_CODEC_EVRC_NW:I = 0x7

.field public static final whitelist AUDIO_CODEC_EVRC_WB:I = 0x6

.field public static final whitelist AUDIO_CODEC_EVS_FB:I = 0x14

.field public static final whitelist AUDIO_CODEC_EVS_NB:I = 0x11

.field public static final whitelist AUDIO_CODEC_EVS_SWB:I = 0x13

.field public static final whitelist AUDIO_CODEC_EVS_WB:I = 0x12

.field public static final whitelist AUDIO_CODEC_G711A:I = 0xd

.field public static final whitelist AUDIO_CODEC_G711AB:I = 0xf

.field public static final whitelist AUDIO_CODEC_G711U:I = 0xb

.field public static final whitelist AUDIO_CODEC_G722:I = 0xe

.field public static final whitelist AUDIO_CODEC_G723:I = 0xc

.field public static final whitelist AUDIO_CODEC_G729:I = 0x10

.field public static final whitelist AUDIO_CODEC_GSM_EFR:I = 0x8

.field public static final whitelist AUDIO_CODEC_GSM_FR:I = 0x9

.field public static final whitelist AUDIO_CODEC_GSM_HR:I = 0xa

.field public static final whitelist AUDIO_CODEC_NONE:I = 0x0

.field public static final whitelist AUDIO_CODEC_QCELP13K:I = 0x3

.field public static final whitelist CAPABILITY_ADD_PARTICIPANT:I = 0x4000000

.field public static final whitelist CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final whitelist CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final whitelist CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final whitelist CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final whitelist CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final whitelist CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final whitelist CAPABILITY_HOLD:I = 0x1

.field public static final whitelist CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final whitelist CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final whitelist CAPABILITY_MUTE:I = 0x40

.field public static final whitelist CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT:I = 0x20000000

.field public static final whitelist CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final whitelist CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final whitelist CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final whitelist CAPABILITY_SUPPORT_DEFLECT:I = 0x2000000

.field public static final whitelist CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final whitelist CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final blacklist CAPABILITY_TRANSFER:I = 0x8000000

.field public static final blacklist CAPABILITY_TRANSFER_CONSULTATIVE:I = 0x10000000

.field public static final greylist-max-o CAPABILITY_UNUSED:I = 0x10

.field public static final greylist-max-o CAPABILITY_UNUSED_2:I = 0x4000

.field public static final greylist-max-o CAPABILITY_UNUSED_3:I = 0x8000

.field public static final greylist-max-o CAPABILITY_UNUSED_4:I = 0x10000

.field public static final greylist-max-o CAPABILITY_UNUSED_5:I = 0x20000

.field public static final whitelist EVENT_CALL_HOLD_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_HOLD_FAILED"

.field public static final whitelist EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final whitelist EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final whitelist EVENT_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.event.CALL_QUALITY_REPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final whitelist EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final whitelist EVENT_CALL_RESUME_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_RESUME_FAILED"

.field public static final whitelist EVENT_CALL_SWITCH_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_SWITCH_FAILED"

.field public static final whitelist EVENT_DEVICE_TO_DEVICE_MESSAGE:Ljava/lang/String; = "android.telecom.event.DEVICE_TO_DEVICE_MESSAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_DISCONNECT_FAILED:Ljava/lang/String; = "android.telecom.event.DISCONNECT_FAILED"

.field public static final whitelist EVENT_MERGE_COMPLETE:Ljava/lang/String; = "android.telecom.event.MERGE_COMPLETE"

.field public static final whitelist EVENT_MERGE_START:Ljava/lang/String; = "android.telecom.event.MERGE_START"

.field public static final whitelist EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final whitelist EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final whitelist EVENT_RTT_AUDIO_INDICATION_CHANGED:Ljava/lang/String; = "android.telecom.event.RTT_AUDIO_INDICATION_CHANGED"

.field public static final blacklist EXTRA_ADD_TO_CONFERENCE_ID:Ljava/lang/String; = "android.telecom.extra.ADD_TO_CONFERENCE_ID"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL_APP_NAME:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL_APP_NAME"

.field public static final whitelist EXTRA_AUDIO_CODEC:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC"

.field public static final whitelist EXTRA_AUDIO_CODEC_BANDWIDTH_KHZ:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BANDWIDTH_KHZ"

.field public static final whitelist EXTRA_AUDIO_CODEC_BITRATE_KBPS:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BITRATE_KBPS"

.field public static final blacklist EXTRA_CALLER_NUMBER_VERIFICATION_STATUS:Ljava/lang/String; = "android.telecom.extra.CALLER_NUMBER_VERIFICATION_STATUS"

.field public static final whitelist EXTRA_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.extra.CALL_QUALITY_REPORT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_TYPE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_VALUE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_VALUE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE:Ljava/lang/String; = "android.telecom.extra.IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE"

.field public static final whitelist EXTRA_IS_RTT_AUDIO_PRESENT:Ljava/lang/String; = "android.telecom.extra.IS_RTT_AUDIO_PRESENT"

.field public static final blacklist EXTRA_KEY_QUERY_LOCATION:Ljava/lang/String; = "android.telecom.extra.KEY_QUERY_LOCATION"

.field public static final whitelist EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final whitelist EXTRA_LAST_KNOWN_CELL_IDENTITY:Ljava/lang/String; = "android.telecom.extra.LAST_KNOWN_CELL_IDENTITY"

.field public static final greylist-max-o EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field public static final blacklist EXTRA_REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

.field public static final blacklist EXTRA_REMOTE_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_SIP_INVITE:Ljava/lang/String; = "android.telecom.extra.SIP_INVITE"

.field private static final greylist-max-o PII_DEBUG:Z

.field public static final whitelist PROPERTY_ASSISTED_DIALING:I = 0x200

.field public static final whitelist PROPERTY_CROSS_SIM:I = 0x2000

.field public static final whitelist PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_GENERIC_CONFERENCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final whitelist PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final whitelist PROPERTY_IS_ADHOC_CONFERENCE:I = 0x1000

.field public static final whitelist PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final whitelist PROPERTY_IS_RTT:I = 0x100

.field public static final whitelist PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL:I = 0x400

.field public static final whitelist PROPERTY_REMOTELY_HOSTED:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_SELF_MANAGED:I = 0x80

.field public static final whitelist PROPERTY_WIFI:I = 0x8

.field public static final whitelist STATE_ACTIVE:I = 0x4

.field public static final blacklist STATE_AUDIO_PROCESSING:I = 0x8

.field public static final whitelist STATE_DIALING:I = 0x3

.field public static final whitelist STATE_DISCONNECTED:I = 0x6

.field public static final whitelist STATE_HOLDING:I = 0x5

.field public static final whitelist STATE_INITIALIZING:I = 0x0

.field public static final whitelist STATE_NEW:I = 0x1

.field public static final whitelist STATE_PULLING_CALL:I = 0x7

.field public static final whitelist STATE_RINGING:I = 0x2

.field public static final blacklist STATE_SIMULATED_RINGING:I = 0x9

.field public static final whitelist VERIFICATION_STATUS_FAILED:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_NOT_VERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATUS_PASSED:I = 0x1


# instance fields
.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mAddressPresentation:I

.field private greylist-max-o mAudioModeIsVoip:Z

.field private blacklist mAudioProcessingUseCase:I

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private blacklist mCallEndpoint:Landroid/telecom/CallEndpoint;

.field private greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private greylist-max-o mCallerDisplayNamePresentation:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private greylist-max-o mConference:Landroid/telecom/Conference;

.field private final greylist-max-o mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectElapsedTimeMillis:J

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionService:Landroid/telecom/ConnectionService;

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private greylist-max-o mVideoState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$JahkKOxFKkY-gacugt0mnHTRRBk(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRemoteRttRequest$3(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZnUXAsXgeKGu05i3oqkSpsFyedw(Landroid/telecom/Connection;ILandroid/telecom/Connection$Listener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telecom/Connection;->lambda$sendRttInitiationFailure$1(ILandroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_bl6hDpVI8EEHWuYBg2ktuMWrCQ(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/telecom/Connection;->lambda$queryLocationForEmergency$4(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oHNs3vcdZZ_zqap02juDe8xqVkY(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRttInitiationSuccess$0(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vj11ZMjrmOJeXCaLqOrL35Bzc-g(Landroid/telecom/Connection;Landroid/telecom/Connection$Listener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telecom/Connection;->lambda$sendRttSessionRemotelyTerminated$2(Landroid/telecom/Connection$Listener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConferenceables(Landroid/telecom/Connection;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Connection;)V
    .registers 1

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1083
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 2250
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 2171
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 2180
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 2194
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 2196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 2197
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 2198
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 2204
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 2205
    nop

    .line 2206
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->enableAudioProcessingUseCase()Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Connection;->mAudioProcessingUseCase:I

    .line 2210
    const/4 v1, 0x3

    iput v1, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 2213
    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2216
    const/16 v0, 0x1f

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2219
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2220
    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    .line 2227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    .line 2232
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    .line 2250
    return-void
.end method

.method public static whitelist capabilitiesToString(I)Ljava/lang/String;
    .registers 2

    .line 1092
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .registers 5

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1109
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    if-eqz p1, :cond_11

    .line 1111
    const-string v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :cond_11
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 1115
    if-eqz p1, :cond_1b

    const-string v1, " CAPABILITY_HOLD"

    goto :goto_1d

    :cond_1b
    const-string v1, " hld"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    :cond_20
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 1118
    if-eqz p1, :cond_2a

    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    goto :goto_2c

    :cond_2a
    const-string v1, " sup_hld"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    :cond_2f
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3e

    .line 1121
    if-eqz p1, :cond_39

    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    goto :goto_3b

    :cond_39
    const-string v1, " mrg_cnf"

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :cond_3e
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4e

    .line 1124
    if-eqz p1, :cond_49

    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    goto :goto_4b

    :cond_49
    const-string v1, " swp_cnf"

    :goto_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    :cond_4e
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5e

    .line 1127
    if-eqz p1, :cond_59

    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    goto :goto_5b

    :cond_59
    const-string v1, " txt"

    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :cond_5e
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6e

    .line 1130
    if-eqz p1, :cond_69

    const-string v1, " CAPABILITY_MUTE"

    goto :goto_6b

    :cond_69
    const-string v1, " mut"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :cond_6e
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7e

    .line 1133
    if-eqz p1, :cond_79

    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    goto :goto_7b

    :cond_79
    const-string v1, " mng_cnf"

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :cond_7e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8e

    .line 1136
    if-eqz p1, :cond_89

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    goto :goto_8b

    :cond_89
    const-string v1, " VTlrx"

    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    :cond_8e
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9e

    .line 1139
    if-eqz p1, :cond_99

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    goto :goto_9b

    :cond_99
    const-string v1, " VTltx"

    :goto_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_9e
    and-int/lit16 v1, p0, 0x300

    const/16 v2, 0x300

    if-ne v1, v2, :cond_ae

    .line 1143
    if-eqz p1, :cond_a9

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    goto :goto_ab

    :cond_a9
    const-string v1, " VTlbi"

    :goto_ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_ae
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_be

    .line 1146
    if-eqz p1, :cond_b9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    goto :goto_bb

    :cond_b9
    const-string v1, " VTrrx"

    :goto_bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    :cond_be
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_ce

    .line 1149
    if-eqz p1, :cond_c9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    goto :goto_cb

    :cond_c9
    const-string v1, " VTrtx"

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    :cond_ce
    and-int/lit16 v1, p0, 0xc00

    const/16 v2, 0xc00

    if-ne v1, v2, :cond_de

    .line 1153
    if-eqz p1, :cond_d9

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    goto :goto_db

    :cond_d9
    const-string v1, " VTrbi"

    :goto_db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    :cond_de
    const/high16 v1, 0x800000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_ee

    .line 1157
    if-eqz p1, :cond_e9

    const-string v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    goto :goto_eb

    :cond_e9
    const-string v1, " !v2a"

    :goto_eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    :cond_ee
    const/high16 v1, 0x40000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_fe

    .line 1160
    if-eqz p1, :cond_f9

    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    goto :goto_fb

    :cond_f9
    const-string v1, " spd_aud"

    :goto_fb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    :cond_fe
    const/high16 v1, 0x80000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_10e

    .line 1163
    if-eqz p1, :cond_109

    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    goto :goto_10b

    :cond_109
    const-string v1, " a2v"

    :goto_10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :cond_10e
    const/high16 v1, 0x100000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_11e

    .line 1166
    if-eqz p1, :cond_119

    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    goto :goto_11b

    :cond_119
    const-string v1, " paus_VT"

    :goto_11b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    :cond_11e
    const/high16 v1, 0x200000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_12e

    .line 1170
    if-eqz p1, :cond_129

    const-string v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    goto :goto_12b

    :cond_129
    const-string v1, " 1p_cnf"

    :goto_12b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    :cond_12e
    const/high16 v1, 0x400000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_13e

    .line 1174
    if-eqz p1, :cond_139

    const-string v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    goto :goto_13b

    :cond_139
    const-string v1, " rsp_by_con"

    :goto_13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    :cond_13e
    const/high16 v1, 0x1000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_14e

    .line 1177
    if-eqz p1, :cond_149

    const-string v1, " CAPABILITY_CAN_PULL_CALL"

    goto :goto_14b

    :cond_149
    const-string v1, " pull"

    :goto_14b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :cond_14e
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_15e

    .line 1180
    if-eqz p1, :cond_159

    const-string v1, " CAPABILITY_SUPPORT_DEFLECT"

    goto :goto_15b

    :cond_159
    const-string v1, " sup_def"

    :goto_15b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    :cond_15e
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_16e

    .line 1183
    if-eqz p1, :cond_169

    const-string v1, " CAPABILITY_ADD_PARTICIPANT"

    goto :goto_16b

    :cond_169
    const-string v1, " add_participant"

    :goto_16b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    :cond_16e
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    const/high16 v2, 0x8000000

    if-ne v1, v2, :cond_17f

    .line 1186
    if-eqz p1, :cond_17a

    const-string v1, " CAPABILITY_TRANSFER"

    goto :goto_17c

    :cond_17a
    const-string v1, " sup_trans"

    :goto_17c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    :cond_17f
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    const/high16 v2, 0x10000000

    if-ne v1, v2, :cond_190

    .line 1190
    if-eqz p1, :cond_18b

    const-string v1, " CAPABILITY_TRANSFER_CONSULTATIVE"

    goto :goto_18d

    :cond_18b
    const-string v1, " sup_cTrans"

    :goto_18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    :cond_190
    const/high16 v1, 0x20000000

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_19f

    .line 1194
    if-eqz p1, :cond_19a

    const-string p0, " CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT"

    goto :goto_19c

    :cond_19a
    const-string p0, " sup_rtt"

    :goto_19c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_19f
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o capabilitiesToStringShort(I)Ljava/lang/String;
    .registers 2

    .line 1104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final greylist-max-o clearConferenceableList()V
    .registers 4

    .line 3997
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 3998
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_1e

    .line 3999
    check-cast v1, Landroid/telecom/Connection;

    .line 4000
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_2a

    .line 4001
    :cond_1e
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_2a

    .line 4002
    check-cast v1, Landroid/telecom/Conference;

    .line 4003
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_2b

    .line 4001
    :cond_2a
    :goto_2a
    nop

    .line 4005
    :goto_2b
    goto :goto_6

    .line 4006
    :cond_2c
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4007
    return-void
.end method

.method public static whitelist createCanceledConnection()Landroid/telecom/Connection;
    .registers 3

    .line 3981
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static whitelist createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .registers 2

    .line 3957
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final greylist-max-o fireConferenceChanged()V
    .registers 4

    .line 3991
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3992
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    .line 3993
    goto :goto_6

    .line 3994
    :cond_18
    return-void
.end method

.method private final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .registers 4

    .line 3985
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3986
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    .line 3987
    goto :goto_6

    .line 3988
    :cond_1a
    return-void
.end method

.method private synthetic blacklist lambda$queryLocationForEmergency$4(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/Connection$Listener;)V
    .registers 14

    .line 3353
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v0, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telecom/Connection$Listener;->onQueryLocation(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRemoteRttRequest$3(Landroid/telecom/Connection$Listener;)V
    .registers 2

    .line 3323
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRemoteRttRequest(Landroid/telecom/Connection;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttInitiationFailure$1(ILandroid/telecom/Connection$Listener;)V
    .registers 3

    .line 3307
    invoke-virtual {p2, p0, p1}, Landroid/telecom/Connection$Listener;->onRttInitiationFailure(Landroid/telecom/Connection;I)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttInitiationSuccess$0(Landroid/telecom/Connection$Listener;)V
    .registers 2

    .line 3296
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttInitiationSuccess(Landroid/telecom/Connection;)V

    return-void
.end method

.method private synthetic blacklist lambda$sendRttSessionRemotelyTerminated$2(Landroid/telecom/Connection$Listener;)V
    .registers 2

    .line 3315
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V

    return-void
.end method

.method public static whitelist propertiesToString(I)Ljava/lang/String;
    .registers 2

    .line 1207
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o propertiesToStringInternal(IZ)Ljava/lang/String;
    .registers 5

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1223
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    if-eqz p1, :cond_11

    .line 1225
    const-string v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    :cond_11
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_21

    .line 1229
    if-eqz p1, :cond_1c

    const-string v1, " PROPERTY_SELF_MANAGED"

    goto :goto_1e

    :cond_1c
    const-string v1, " self_mng"

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    :cond_21
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    .line 1233
    if-eqz p1, :cond_2b

    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    goto :goto_2d

    :cond_2b
    const-string v1, " ecbm"

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    :cond_30
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3f

    .line 1237
    if-eqz p1, :cond_3a

    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    goto :goto_3c

    :cond_3a
    const-string v1, " HD"

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    :cond_3f
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4f

    .line 1241
    if-eqz p1, :cond_4a

    const-string v1, " PROPERTY_WIFI"

    goto :goto_4c

    :cond_4a
    const-string v1, " wifi"

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    :cond_4f
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5e

    .line 1245
    if-eqz p1, :cond_59

    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    goto :goto_5b

    :cond_59
    const-string v1, " gen_conf"

    :goto_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    :cond_5e
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6e

    .line 1249
    if-eqz p1, :cond_69

    const-string v1, " PROPERTY_IS_EXTERNAL_CALL"

    goto :goto_6b

    :cond_69
    const-string v1, " xtrnl"

    :goto_6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    :cond_6e
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7e

    .line 1253
    if-eqz p1, :cond_79

    const-string v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    goto :goto_7b

    :cond_79
    const-string v1, " priv"

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    :cond_7e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8e

    .line 1257
    if-eqz p1, :cond_89

    const-string v1, " PROPERTY_IS_RTT"

    goto :goto_8b

    :cond_89
    const-string v1, " rtt"

    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    :cond_8e
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9e

    .line 1262
    if-eqz p1, :cond_99

    const-string v1, " PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL"

    goto :goto_9b

    :cond_99
    const-string v1, " ecall"

    :goto_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    :cond_9e
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_ae

    .line 1266
    if-eqz p1, :cond_a9

    const-string v1, " PROPERTY_REMOTELY_HOSTED"

    goto :goto_ab

    :cond_a9
    const-string v1, " remote_hst"

    :goto_ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :cond_ae
    and-int/lit16 v1, p0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_be

    .line 1270
    if-eqz p1, :cond_b9

    const-string v1, " PROPERTY_IS_ADHOC_CONFERENCE"

    goto :goto_bb

    :cond_b9
    const-string v1, " adhoc_conf"

    :goto_bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    :cond_be
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_ce

    .line 1274
    if-eqz p1, :cond_c9

    const-string v1, " PROPERTY_IS_DOWNGRADED_CONFERENCE"

    goto :goto_cb

    :cond_c9
    const-string v1, " dngrd_conf"

    :goto_cb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_ce
    const/16 v1, 0x2000

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_dd

    .line 1278
    if-eqz p1, :cond_d8

    const-string p0, " PROPERTY_CROSS_SIM"

    goto :goto_da

    :cond_d8
    const-string p0, " xsim"

    :goto_da
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    :cond_dd
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o propertiesToStringShort(I)Ljava/lang/String;
    .registers 2

    .line 1218
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o setState(I)V
    .registers 4

    .line 3916
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3917
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_15

    iget v0, p0, Landroid/telecom/Connection;->mState:I

    if-eq v0, p1, :cond_15

    .line 3918
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Connection already DISCONNECTED; cannot transition out of this state."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3919
    return-void

    .line 3921
    :cond_15
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    if-eq v0, p1, :cond_42

    .line 3922
    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3923
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 3924
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 3925
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3926
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    .line 3927
    goto :goto_32

    .line 3929
    :cond_42
    return-void
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .registers 3

    .line 2549
    packed-switch p0, :pswitch_data_34

    .line 2571
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/telecom/Connection;

    const-string v1, "Unknown state %d"

    invoke-static {v0, v1, p0}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2572
    const-string p0, "UNKNOWN"

    return-object p0

    .line 2559
    :pswitch_15
    const-string p0, "SIMULATED_RINGING"

    return-object p0

    .line 2557
    :pswitch_18
    const-string p0, "AUDIO_PROCESSING"

    return-object p0

    .line 2563
    :pswitch_1b
    const-string p0, "PULLING_CALL"

    return-object p0

    .line 2569
    :pswitch_1e
    const-string p0, "DISCONNECTED"

    return-object p0

    .line 2567
    :pswitch_21
    const-string p0, "HOLDING"

    return-object p0

    .line 2565
    :pswitch_24
    const-string p0, "ACTIVE"

    return-object p0

    .line 2561
    :pswitch_27
    const-string p0, "DIALING"

    return-object p0

    .line 2555
    :pswitch_2a
    const-string p0, "RINGING"

    return-object p0

    .line 2553
    :pswitch_2d
    const-string p0, "NEW"

    return-object p0

    .line 2551
    :pswitch_30
    const-string p0, "INITIALIZING"

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method static greylist-max-o toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3892
    if-nez p0, :cond_5

    .line 3893
    const-string p0, ""

    return-object p0

    .line 3896
    :cond_5
    sget-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v0, :cond_a

    .line 3898
    return-object p0

    .line 3903
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3904
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 3905
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3906
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_27

    goto :goto_2d

    .line 3909
    :cond_27
    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_30

    .line 3907
    :cond_2d
    :goto_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3904
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3912
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final greylist-max-o addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .registers 3

    .line 2451
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2452
    return-object p0
.end method

.method public greylist-max-o checkImmutable()V
    .registers 1

    .line 3967
    return-void
.end method

.method public final whitelist destroy()V
    .registers 3

    .line 2903
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2904
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    .line 2905
    goto :goto_6

    .line 2906
    :cond_16
    return-void
.end method

.method public final whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 2271
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final whitelist getAddressPresentation()I
    .registers 2

    .line 2279
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioModeIsVoip()Z
    .registers 2

    .line 2366
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final blacklist getAudioProcessingUseCase()I
    .registers 2

    .line 2781
    iget v0, p0, Landroid/telecom/Connection;->mAudioProcessingUseCase:I

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2327
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_6

    .line 2328
    const/4 v0, 0x0

    return-object v0

    .line 2330
    :cond_6
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2343
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final whitelist getCallDirection()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4131
    iget v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    return v0
.end method

.method public final whitelist getCallerDisplayName()Ljava/lang/String;
    .registers 2

    .line 2286
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getCallerDisplayNamePresentation()I
    .registers 2

    .line 2294
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getCallerNumberVerificationStatus()I
    .registers 2

    .line 4154
    iget v0, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public final whitelist getConference()Landroid/telecom/Conference;
    .registers 2

    .line 2351
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final whitelist getConferenceables()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    .line 3044
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2384
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .registers 2

    .line 2580
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .registers 2

    .line 2587
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2408
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getCurrentCallEndpoint()Landroid/telecom/CallEndpoint;
    .registers 2

    .line 3287
    iget-object v0, p0, Landroid/telecom/Connection;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    return-object v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .line 2474
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .registers 4

    .line 2433
    nop

    .line 2434
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2435
    :try_start_4
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_10

    .line 2436
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_11

    .line 2435
    :cond_10
    const/4 v1, 0x0

    .line 2438
    :goto_11
    monitor-exit v0

    .line 2439
    return-object v1

    .line 2438
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4077
    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final whitelist getState()I
    .registers 2

    .line 2301
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .line 2415
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final greylist-max-o getSupportedAudioRoutes()I
    .registers 2

    .line 2596
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2264
    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 2

    .line 2737
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final whitelist getVideoState()I
    .registers 2

    .line 2314
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .registers 4

    .line 4016
    nop

    .line 4017
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4018
    :try_start_4
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 4019
    iget-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_12

    .line 4020
    new-instance p1, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_13

    .line 4019
    :cond_12
    const/4 p1, 0x0

    .line 4022
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 4023
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 4024
    return-void

    .line 4022
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public whitelist handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2

    .line 3757
    return-void
.end method

.method public final whitelist isRingbackRequested()Z
    .registers 2

    .line 2359
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method public final whitelist notifyConferenceMergeFailed()V
    .registers 3

    .line 4031
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 4032
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    .line 4033
    goto :goto_6

    .line 4034
    :cond_16
    return-void
.end method

.method public greylist-max-o notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V
    .registers 4

    .line 4043
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 4044
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V

    .line 4045
    goto :goto_6

    .line 4046
    :cond_16
    return-void
.end method

.method public whitelist onAbort()V
    .registers 1

    .line 3459
    return-void
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

    .line 3454
    return-void
.end method

.method public whitelist onAnswer()V
    .registers 2

    .line 3515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 3516
    return-void
.end method

.method public whitelist onAnswer(I)V
    .registers 2

    .line 3494
    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3365
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

    .line 3390
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3376
    return-void
.end method

.method public whitelist onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V
    .registers 2

    .line 3383
    return-void
.end method

.method public whitelist onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 3634
    return-void
.end method

.method public whitelist onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3888
    return-void
.end method

.method public whitelist onDeflect(Landroid/net/Uri;)V
    .registers 2

    .line 3522
    return-void
.end method

.method public whitelist onDisconnect()V
    .registers 1

    .line 3442
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .registers 2

    .line 3655
    return-void
.end method

.method public whitelist onHandoverComplete()V
    .registers 1

    .line 3643
    return-void
.end method

.method public whitelist onHold()V
    .registers 1

    .line 3468
    return-void
.end method

.method public whitelist onMuteStateChanged(Z)V
    .registers 2

    .line 3397
    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .registers 2

    .line 3432
    return-void
.end method

.method public whitelist onPostDialContinue(Z)V
    .registers 2

    .line 3603
    return-void
.end method

.method public whitelist onPullExternalCall()V
    .registers 1

    .line 3616
    return-void
.end method

.method public whitelist onReject()V
    .registers 1

    .line 3542
    return-void
.end method

.method public whitelist onReject(I)V
    .registers 2

    .line 3553
    return-void
.end method

.method public whitelist onReject(Ljava/lang/String;)V
    .registers 2

    .line 3559
    return-void
.end method

.method public whitelist onSeparate()V
    .registers 1

    .line 3447
    return-void
.end method

.method public whitelist onShowIncomingCallUi()V
    .registers 1

    .line 3731
    return-void
.end method

.method public whitelist onSilence()V
    .registers 1

    .line 3598
    return-void
.end method

.method public whitelist onStartRtt(Landroid/telecom/Connection$RttTextStream;)V
    .registers 2

    .line 3741
    return-void
.end method

.method public whitelist onStateChanged(I)V
    .registers 2

    .line 3425
    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .registers 1

    .line 3437
    return-void
.end method

.method public whitelist onStopRtt()V
    .registers 1

    .line 3747
    return-void
.end method

.method public whitelist onTrackedByNonUiService(Z)V
    .registers 2

    .line 3417
    return-void
.end method

.method public blacklist onTransfer(Landroid/net/Uri;Z)V
    .registers 3

    .line 3572
    return-void
.end method

.method public blacklist onTransfer(Landroid/telecom/Connection;)V
    .registers 2

    .line 3579
    return-void
.end method

.method public whitelist onUnhold()V
    .registers 1

    .line 3473
    return-void
.end method

.method public whitelist onUsingAlternativeUi(Z)V
    .registers 2

    .line 3408
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .registers 5

    .line 3161
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3162
    if-nez p1, :cond_6

    .line 3163
    return-void

    .line 3168
    :cond_6
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3169
    :try_start_9
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_14

    .line 3170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 3172
    :cond_14
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3173
    new-instance p1, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3174
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_3d

    .line 3175
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3178
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    .line 3179
    goto :goto_27

    .line 3180
    :cond_3c
    return-void

    .line 3174
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public final whitelist queryLocationForEmergency(JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/location/Location;",
            "Landroid/telecom/QueryLocationException;",
            ">;)V"
        }
    .end annotation

    .line 3346
    if-eqz p3, :cond_2a

    if-eqz p4, :cond_2a

    if-eqz p5, :cond_2a

    .line 3349
    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    if-ltz v0, :cond_22

    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-gtz v0, :cond_22

    .line 3352
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/telecom/Connection$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Connection;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3354
    return-void

    .line 3350
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The timeoutMillis should be min 100, max 5000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3347
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There are arguments that must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final greylist-max-o removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .registers 3

    .line 2464
    if-eqz p1, :cond_7

    .line 2465
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2467
    :cond_7
    return-object p0
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

    .line 3188
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3189
    :try_start_3
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1d

    .line 3190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3191
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3192
    goto :goto_b

    .line 3194
    :cond_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_39

    .line 3195
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 3196
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3197
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    .line 3198
    goto :goto_28

    .line 3199
    :cond_38
    return-void

    .line 3194
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .registers 2

    .line 3207
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 3208
    return-void
.end method

.method public whitelist requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3250
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3251
    nop

    .line 3252
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 3251
    const/4 v3, 0x2

    invoke-virtual {v1, p0, v3, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    .line 3253
    goto :goto_6

    .line 3254
    :cond_1c
    return-void
.end method

.method public final whitelist requestCallEndpointChange(Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallEndpoint;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/telecom/CallEndpointException;",
            ">;)V"
        }
    .end annotation

    .line 3275
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3276
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/telecom/Connection$Listener;->onEndpointChanged(Landroid/telecom/Connection;Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 3277
    goto :goto_6

    .line 3278
    :cond_16
    return-void
.end method

.method public final greylist-max-o resetConference()V
    .registers 3

    .line 3098
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_12

    .line 3099
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Conference reset"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 3101
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 3103
    :cond_12
    return-void
.end method

.method public final whitelist resetConnectionTime()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3035
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3036
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConnectionTimeReset(Landroid/telecom/Connection;)V

    .line 3037
    goto :goto_6

    .line 3038
    :cond_16
    return-void
.end method

.method public whitelist sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 4118
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 4119
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4120
    goto :goto_6

    .line 4121
    :cond_16
    return-void
.end method

.method public final whitelist sendRemoteRttRequest()V
    .registers 3

    .line 3323
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3324
    return-void
.end method

.method public final whitelist sendRttInitiationFailure(I)V
    .registers 4

    .line 3307
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/telecom/Connection$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/Connection;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3308
    return-void
.end method

.method public final whitelist sendRttInitiationSuccess()V
    .registers 3

    .line 3296
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3297
    return-void
.end method

.method public final whitelist sendRttSessionRemotelyTerminated()V
    .registers 3

    .line 3315
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3316
    return-void
.end method

.method public final whitelist setActive()V
    .registers 2

    .line 2665
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2666
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 2667
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2668
    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .registers 5

    .line 2607
    const-string/jumbo v0, "setAddress %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2608
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 2609
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 2610
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2611
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    .line 2612
    goto :goto_14

    .line 2613
    :cond_24
    return-void
.end method

.method public final whitelist setAudioModeIsVoip(Z)V
    .registers 4

    .line 2914
    if-nez p1, :cond_13

    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_13

    .line 2915
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v0, "setAudioModeIsVoip: Ignored request to set a self-managed connection\'s audioModeIsVoip to false. Doing so can cause unwanted behavior."

    invoke-static {p0, v0, p1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2918
    return-void

    .line 2920
    :cond_13
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2921
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 2922
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2923
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    .line 2924
    goto :goto_1e

    .line 2925
    :cond_2e
    return-void
.end method

.method public final blacklist setAudioProcessing(I)V
    .registers 4

    .line 2767
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2768
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    .line 2771
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2772
    iput p1, p0, Landroid/telecom/Connection;->mAudioProcessingUseCase:I

    .line 2773
    return-void

    .line 2769
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not an externall call."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist setAudioRoute(I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3227
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3228
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    .line 3229
    goto :goto_6

    .line 3230
    :cond_17
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

    .line 2527
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2528
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "setAvailableCallEndpoints"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2529
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onAvailableCallEndpointsChanged(Ljava/util/List;)V

    .line 2530
    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4

    .line 2500
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2501
    const-string/jumbo v0, "setAudioState %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2502
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 2503
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 2504
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 2505
    return-void
.end method

.method public whitelist setCallDirection(I)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4145
    iput p1, p0, Landroid/telecom/Connection;->mCallDirection:I

    .line 4146
    return-void
.end method

.method final blacklist setCallEndpoint(Landroid/telecom/CallEndpoint;)V
    .registers 4

    .line 2514
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2515
    const-string/jumbo v0, "setCallEndpoint %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2516
    iput-object p1, p0, Landroid/telecom/Connection;->mCallEndpoint:Landroid/telecom/CallEndpoint;

    .line 2517
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallEndpointChanged(Landroid/telecom/CallEndpoint;)V

    .line 2518
    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .registers 5

    .line 2623
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2624
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2625
    iget v1, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    if-eq v1, p2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 2626
    :goto_10
    if-nez v0, :cond_14

    .line 2629
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 2631
    :cond_14
    if-eqz v1, :cond_18

    .line 2632
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 2634
    :cond_18
    if-eqz v0, :cond_1c

    if-eqz v1, :cond_36

    .line 2635
    :cond_1c
    iget-object p1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telecom/Connection$Listener;

    .line 2636
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    iget v1, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    invoke-virtual {p2, p0, v0, v1}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    .line 2638
    goto :goto_22

    .line 2640
    :cond_36
    return-void
.end method

.method public final whitelist setCallerNumberVerificationStatus(I)V
    .registers 2

    .line 4167
    iput p1, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    .line 4168
    return-void
.end method

.method public final greylist-max-o setConference(Landroid/telecom/Conference;)Z
    .registers 3

    .line 3081
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3083
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1a

    .line 3084
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 3085
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 3086
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 3088
    :cond_18
    const/4 p1, 0x1

    return p1

    .line 3090
    :cond_1a
    const/4 p1, 0x0

    return p1
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

    .line 2989
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2990
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2991
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 2994
    iget-object v1, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2995
    iget-object v1, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2996
    iget-object v1, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2998
    :cond_28
    goto :goto_a

    .line 2999
    :cond_29
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 3000
    return-void
.end method

.method public final whitelist setConferenceables(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 3009
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 3010
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 3013
    iget-object v1, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 3014
    instance-of v1, v0, Landroid/telecom/Connection;

    if-eqz v1, :cond_28

    .line 3015
    move-object v1, v0

    check-cast v1, Landroid/telecom/Connection;

    .line 3016
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_35

    .line 3017
    :cond_28
    instance-of v1, v0, Landroid/telecom/Conference;

    if-eqz v1, :cond_35

    .line 3018
    move-object v1, v0

    check-cast v1, Landroid/telecom/Conference;

    .line 3019
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_36

    .line 3017
    :cond_35
    :goto_35
    nop

    .line 3021
    :goto_36
    iget-object v1, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3023
    :cond_3b
    goto :goto_7

    .line 3024
    :cond_3c
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 3025
    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2944
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2945
    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .registers 4

    .line 2853
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2854
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_21

    .line 2855
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 2856
    iget-object p1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2857
    iget v1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    .line 2858
    goto :goto_f

    .line 2860
    :cond_21
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .registers 4

    .line 2868
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2869
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v0, p1, :cond_21

    .line 2870
    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    .line 2871
    iget-object p1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2872
    iget v1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    .line 2873
    goto :goto_f

    .line 2875
    :cond_21
    return-void
.end method

.method public final greylist-max-o setConnectionService(Landroid/telecom/ConnectionService;)V
    .registers 4

    .line 3051
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3052
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_15

    .line 3053
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    invoke-static {p0, p1, v1, v0}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17

    .line 3056
    :cond_15
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    .line 3058
    :goto_17
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2967
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    .line 2968
    return-void
.end method

.method public final whitelist setDialing()V
    .registers 2

    .line 2702
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2703
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2704
    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 4

    .line 2747
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2748
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 2749
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2750
    const-string v0, "Disconnected with cause %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2751
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2752
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    .line 2753
    goto :goto_18

    .line 2754
    :cond_28
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .registers 7

    .line 3120
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3121
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3123
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 3127
    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v1, :cond_39

    .line 3128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3129
    iget-object v2, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3130
    if-eqz p1, :cond_2c

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 3131
    :cond_2c
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3133
    :cond_2f
    goto :goto_18

    .line 3134
    :cond_30
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_39

    .line 3135
    invoke-virtual {p0, v1}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 3141
    :cond_39
    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v1, :cond_44

    .line 3142
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    .line 3144
    :cond_44
    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 3145
    if-eqz p1, :cond_54

    .line 3146
    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3148
    :cond_54
    monitor-exit v0

    .line 3149
    return-void

    .line 3148
    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_56

    throw p1
.end method

.method public final whitelist setInitialized()V
    .registers 2

    .line 2692
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2693
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2694
    return-void
.end method

.method public final whitelist setInitializing()V
    .registers 2

    .line 2684
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2686
    return-void
.end method

.method final blacklist setMuteState(Z)V
    .registers 4

    .line 2539
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2540
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setMuteState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2541
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onMuteStateChanged(Z)V

    .line 2542
    return-void
.end method

.method public final whitelist setNextPostDialChar(C)V
    .registers 4

    .line 2825
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2826
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2827
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    .line 2828
    goto :goto_9

    .line 2829
    :cond_19
    return-void
.end method

.method public final whitelist setOnHold()V
    .registers 2

    .line 2720
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2721
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2722
    return-void
.end method

.method public whitelist setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4059
    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eq v0, p1, :cond_9

    .line 4060
    iput-object p1, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 4061
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V

    .line 4063
    :cond_9
    return-void
.end method

.method public final whitelist setPostDialWait(Ljava/lang/String;)V
    .registers 4

    .line 2811
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2812
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2813
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    .line 2814
    goto :goto_9

    .line 2815
    :cond_19
    return-void
.end method

.method public final whitelist setPulling()V
    .registers 2

    .line 2712
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2713
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2714
    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .registers 4

    .line 2838
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2839
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v0, p1, :cond_1f

    .line 2840
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2841
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2842
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    .line 2843
    goto :goto_f

    .line 2845
    :cond_1f
    return-void
.end method

.method public final whitelist setRinging()V
    .registers 2

    .line 2676
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2677
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2678
    return-void
.end method

.method public final blacklist setSimulatedRinging()V
    .registers 3

    .line 2793
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2794
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    .line 2797
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2798
    return-void

    .line 2795
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not an externall call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 4

    .line 2976
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2977
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 2978
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2979
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    .line 2980
    goto :goto_b

    .line 2981
    :cond_1b
    return-void
.end method

.method public final greylist-max-o setSupportedAudioRoutes(I)V
    .registers 4

    .line 2885
    and-int/lit8 v0, p1, 0x9

    if-eqz v0, :cond_23

    .line 2891
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v0, p1, :cond_22

    .line 2892
    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2893
    iget-object p1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2894
    iget v1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    .line 2895
    goto :goto_10

    .line 2897
    :cond_22
    return-void

    .line 2887
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "supported audio routes must include either speaker or earpiece"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setTelecomCallId(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2490
    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    .line 2491
    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .registers 4

    .line 2729
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2730
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 2731
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2732
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    .line 2733
    goto :goto_b

    .line 2734
    :cond_1b
    return-void
.end method

.method public final whitelist setVideoState(I)V
    .registers 4

    .line 2652
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2653
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setVideoState %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2654
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 2655
    iget-object p1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection$Listener;

    .line 2656
    iget v1, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v0, p0, v1}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    .line 2657
    goto :goto_19

    .line 2658
    :cond_2b
    return-void
.end method

.method public final greylist-max-o unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .registers 4

    .line 3064
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_12

    .line 3065
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    invoke-static {p0, p1, v1, v0}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 3068
    :cond_12
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    .line 3070
    :goto_15
    return-void
.end method
