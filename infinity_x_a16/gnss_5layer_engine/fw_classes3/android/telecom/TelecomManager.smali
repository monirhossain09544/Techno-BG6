.class public Landroid/telecom/TelecomManager;
.super Ljava/lang/Object;
.source "TelecomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomManager$DeathRecipient;,
        Landroid/telecom/TelecomManager$CallConnectedIndicator;,
        Landroid/telecom/TelecomManager$Presentation;,
        Landroid/telecom/TelecomManager$TtyMode;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CALL_BACK:Ljava/lang/String; = "android.telecom.action.CALL_BACK"

.field public static final whitelist ACTION_CHANGE_DEFAULT_DIALER:Ljava/lang/String; = "android.telecom.action.CHANGE_DEFAULT_DIALER"

.field public static final whitelist ACTION_CHANGE_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

.field public static final whitelist ACTION_CONFIGURE_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

.field public static final whitelist ACTION_CURRENT_TTY_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.CURRENT_TTY_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DEFAULT_CALL_SCREENING_APP_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_CALL_SCREENING_APP_CHANGED"

.field public static final whitelist ACTION_DEFAULT_DIALER_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_DIALER_CHANGED"

.field public static final whitelist ACTION_INCOMING_CALL:Ljava/lang/String; = "android.telecom.action.INCOMING_CALL"

.field public static final greylist-max-o ACTION_NEW_UNKNOWN_CALL:Ljava/lang/String; = "android.telecom.action.NEW_UNKNOWN_CALL"

.field public static final whitelist ACTION_PHONE_ACCOUNT_REGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

.field public static final whitelist ACTION_PHONE_ACCOUNT_UNREGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_UNREGISTERED"

.field public static final whitelist ACTION_POST_CALL:Ljava/lang/String; = "android.telecom.action.POST_CALL"

.field public static final whitelist ACTION_SHOW_CALL_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

.field public static final whitelist ACTION_SHOW_CALL_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_SETTINGS"

.field public static final whitelist ACTION_SHOW_MISSED_CALLS_NOTIFICATION:Ljava/lang/String; = "android.telecom.action.SHOW_MISSED_CALLS_NOTIFICATION"

.field public static final whitelist ACTION_SHOW_RESPOND_VIA_SMS_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

.field public static final blacklist ACTION_SHOW_SWITCH_TO_WORK_PROFILE_FOR_CALL_DIALOG:Ljava/lang/String; = "android.telecom.action.SHOW_SWITCH_TO_WORK_PROFILE_FOR_CALL_DIALOG"

.field public static final whitelist ACTION_TTY_PREFERRED_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist AUDIO_OUTPUT_DEFAULT:I = 0x0

.field public static final blacklist AUDIO_OUTPUT_DISABLE_SPEAKER:I = 0x1

.field public static final blacklist AUDIO_OUTPUT_ENABLE_SPEAKER:I = 0x0

.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CALL_AUTO_DISCONNECT_MESSAGE_STRING:Ljava/lang/String; = "Call dropped by lower layers"

.field public static final blacklist CALL_CONNECTED_INDICATOR_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CALL_CONNECTED_INDICATOR_TONE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CALL_CONNECTED_INDICATOR_VIBRATION:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_SOURCE_EMERGENCY_DIALPAD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_SOURCE_EMERGENCY_SHORTCUT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_SOURCE_UNSPECIFIED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DTMF_CHARACTER_PAUSE:C = ','

.field public static final whitelist DTMF_CHARACTER_WAIT:C = ';'

.field public static final whitelist DURATION_LONG:I = 0x3

.field public static final whitelist DURATION_MEDIUM:I = 0x2

.field public static final whitelist DURATION_SHORT:I = 0x1

.field public static final whitelist DURATION_VERY_SHORT:I = 0x0

.field public static final greylist-max-o EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

.field public static final blacklist ENABLE_GET_CALL_STATE_PERMISSION_PROTECTION:J = 0x95f3323L

.field public static final blacklist ENABLE_GET_PHONE_ACCOUNT_PERMISSION_PROTECTION:J = 0xaee9554L

.field public static final blacklist EXTRA_CALL_ANSWERED_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_ANSWERED_TIME_MILLIS"

.field public static final greylist-max-o EXTRA_CALL_AUDIO_STATE:Ljava/lang/String; = "android.telecom.extra.CALL_AUDIO_STATE"

.field public static final whitelist EXTRA_CALL_BACK_INTENT:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_BACK_NUMBER:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_NUMBER"

.field public static final blacklist EXTRA_CALL_CREATED_EPOCH_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_CREATED_EPOCH_TIME_MILLIS"

.field public static final greylist-max-o EXTRA_CALL_CREATED_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

.field public static final whitelist EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_CAUSE"

.field public static final whitelist EXTRA_CALL_DISCONNECT_MESSAGE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_MESSAGE"

.field public static final whitelist EXTRA_CALL_DURATION:Ljava/lang/String; = "android.telecom.extra.CALL_DURATION"

.field public static final whitelist EXTRA_CALL_HAS_IN_BAND_RINGTONE:Ljava/lang/String; = "android.telecom.extra.CALL_HAS_IN_BAND_RINGTONE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_LOG_URI:Ljava/lang/String; = "android.telecom.extra.CALL_LOG_URI"

.field public static final whitelist EXTRA_CALL_NETWORK_TYPE:Ljava/lang/String; = "android.telecom.extra.CALL_NETWORK_TYPE"

.field public static final whitelist EXTRA_CALL_SOURCE:Ljava/lang/String; = "android.telecom.extra.CALL_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CALL_TECHNOLOGY_TYPE:Ljava/lang/String; = "android.telecom.extra.CALL_TECHNOLOGY_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_CALL_TELECOM_ROUTING_END_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

.field public static final greylist-max-o EXTRA_CALL_TELECOM_ROUTING_START_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

.field public static final whitelist EXTRA_CHANGE_DEFAULT_DIALER_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

.field public static final whitelist EXTRA_CLEAR_MISSED_CALLS_INTENT:Ljava/lang/String; = "android.telecom.extra.CLEAR_MISSED_CALLS_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CONNECTION_SERVICE:Ljava/lang/String; = "android.telecom.extra.CONNECTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CURRENT_TTY_MODE:Ljava/lang/String; = "android.telecom.extra.CURRENT_TTY_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEFAULT_CALL_SCREENING_APP_COMPONENT_NAME:Ljava/lang/String; = "android.telecom.extra.DEFAULT_CALL_SCREENING_APP_COMPONENT_NAME"

.field public static final whitelist EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.DISCONNECT_CAUSE"

.field public static final blacklist EXTRA_DO_NOT_LOG_CALL:Ljava/lang/String; = "android.telecom.extra.DO_NOT_LOG_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_HANDLE:Ljava/lang/String; = "android.telecom.extra.HANDLE"

.field public static final greylist-max-o EXTRA_HANDOVER_FROM_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.extra.HANDOVER_FROM_PHONE_ACCOUNT"

.field public static final whitelist EXTRA_HAS_PICTURE:Ljava/lang/String; = "android.telecom.extra.HAS_PICTURE"

.field public static final whitelist EXTRA_INCOMING_CALL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_ADDRESS"

.field public static final whitelist EXTRA_INCOMING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_EXTRAS"

.field public static final whitelist EXTRA_INCOMING_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.INCOMING_VIDEO_STATE"

.field public static final whitelist EXTRA_IS_DEFAULT_CALL_SCREENING_APP:Ljava/lang/String; = "android.telecom.extra.IS_DEFAULT_CALL_SCREENING_APP"

.field public static final greylist-max-p EXTRA_IS_HANDOVER:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER"

.field public static final greylist-max-o EXTRA_IS_HANDOVER_CONNECTION:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER_CONNECTION"

.field public static final whitelist EXTRA_IS_USER_INTENT_EMERGENCY_CALL:Ljava/lang/String; = "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_LOCATION:Ljava/lang/String; = "android.telecom.extra.LOCATION"

.field public static final blacklist EXTRA_MANAGED_PROFILE_USER_ID:Ljava/lang/String; = "android.telecom.extra.MANAGED_PROFILE_USER_ID"

.field public static final greylist-max-o EXTRA_NEW_OUTGOING_CALL_CANCEL_TIMEOUT:Ljava/lang/String; = "android.telecom.extra.NEW_OUTGOING_CALL_CANCEL_TIMEOUT"

.field public static final whitelist EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_COUNT"

.field public static final whitelist EXTRA_NOTIFICATION_PHONE_NUMBER:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"

.field public static final whitelist EXTRA_OUTGOING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.OUTGOING_CALL_EXTRAS"

.field public static final whitelist EXTRA_OUTGOING_PICTURE:Ljava/lang/String; = "android.telecom.extra.OUTGOING_PICTURE"

.field public static final whitelist EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_PICTURE_URI:Ljava/lang/String; = "android.telecom.extra.PICTURE_URI"

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.telecom.extra.PRIORITY"

.field public static final whitelist EXTRA_START_CALL_WITH_RTT:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_RTT"

.field public static final whitelist EXTRA_START_CALL_WITH_SPEAKERPHONE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

.field public static final whitelist EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static final whitelist EXTRA_TTY_PREFERRED_MODE:Ljava/lang/String; = "android.telecom.extra.TTY_PREFERRED_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_UNKNOWN_CALL_HANDLE:Ljava/lang/String; = "android.telecom.extra.UNKNOWN_CALL_HANDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USE_ASSISTED_DIALING:Ljava/lang/String; = "android.telecom.extra.USE_ASSISTED_DIALING"

.field public static final whitelist EXTRA_UUID:Ljava/lang/String; = "android.telecom.extra.UUID"

.field public static final whitelist GATEWAY_ORIGINAL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS"

.field public static final whitelist GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

.field public static final blacklist MEDIUM_CALL_TIME_MS:J = 0x1d4c0L

.field public static final whitelist METADATA_INCLUDE_EXTERNAL_CALLS:Ljava/lang/String; = "android.telecom.INCLUDE_EXTERNAL_CALLS"

.field public static final whitelist METADATA_INCLUDE_SELF_MANAGED_CALLS:Ljava/lang/String; = "android.telecom.INCLUDE_SELF_MANAGED_CALLS"

.field public static final whitelist METADATA_IN_CALL_SERVICE_CAR_MODE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_CAR_MODE_UI"

.field public static final whitelist METADATA_IN_CALL_SERVICE_RINGING:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_RINGING"

.field public static final whitelist METADATA_IN_CALL_SERVICE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_UI"

.field public static final whitelist PRESENTATION_ALLOWED:I = 0x1

.field public static final whitelist PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist PRESENTATION_RESTRICTED:I = 0x2

.field public static final whitelist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final blacklist PROPERTY_VIDEOCALL_AUDIO_OUTPUT:Ljava/lang/String; = "persist.radio.call.audio.output"

.field private static final blacklist SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

.field public static final blacklist SHORT_CALL_TIME_MS:J = 0xea60L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TelecomManager"

.field public static final blacklist TELECOM_TRANSACTION_SUCCESS:I = 0x0

.field public static final blacklist TRANSACTION_CALL_ID_KEY:Ljava/lang/String; = "TelecomCallId"

.field public static final whitelist TTY_MODE_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_HCO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_VCO:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist VERY_SHORT_CALL_TIME_MS:J = 0xbb8L

.field private static blacklist sTelecomService:Lcom/android/internal/telecom/ITelecomService;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

.field private final blacklist mTransactionalServiceRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .registers 0

    invoke-static {}, Landroid/telecom/TelecomManager;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 986
    nop

    .line 987
    const-string v0, "com.android.phone"

    const-string v1, ".EmergencyDialer"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    .line 1146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    .line 1151
    new-instance v0, Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/TelecomManager$DeathRecipient;-><init>(Landroid/telecom/TelecomManager-IA;)V

    sput-object v0, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 1226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/TelecomManager;-><init>(Landroid/content/Context;Lcom/android/internal/telecom/ITelecomService;)V

    .line 1227
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/telecom/ITelecomService;)V
    .registers 6

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    new-instance v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    invoke-direct {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;-><init>()V

    iput-object v0, p0, Landroid/telecom/TelecomManager;->mTransactionalServiceRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    .line 1233
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1234
    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 1235
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1234
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1236
    iput-object v0, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    goto :goto_23

    .line 1238
    :cond_21
    iput-object p1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1240
    :goto_23
    iput-object p2, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    .line 1241
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .registers 2

    .line 1219
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method private greylist-max-o getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .registers 5

    .line 3172
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v0, :cond_7

    .line 3173
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    return-object v0

    .line 3175
    :cond_7
    sget-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-nez v0, :cond_37

    .line 3176
    const-string/jumbo v0, "telecom"

    .line 3177
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3176
    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 3178
    sget-object v1, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3179
    :try_start_19
    sget-object v2, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_34

    if-nez v2, :cond_32

    if-eqz v0, :cond_32

    .line 3181
    :try_start_1f
    sput-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 3182
    sget-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v2, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_2e
    .catchall {:try_start_1f .. :try_end_2d} :catchall_34

    .line 3185
    goto :goto_32

    .line 3183
    :catch_2e
    move-exception v0

    .line 3184
    const/4 v0, 0x0

    :try_start_30
    sput-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 3187
    :cond_32
    :goto_32
    monitor-exit v1

    goto :goto_37

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v0

    .line 3189
    :cond_37
    :goto_37
    sget-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    return-object v0
.end method

.method private blacklist isSystemProcess()Z
    .registers 3

    .line 3168
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist resetServiceCache()V
    .registers 4

    .line 3200
    sget-object v0, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3201
    :try_start_3
    sget-object v1, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_16

    .line 3202
    sget-object v1, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3203
    const/4 v1, 0x0

    sput-object v1, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 3205
    :cond_16
    monitor-exit v0

    .line 3206
    return-void

    .line 3205
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method public whitelist acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;)V
    .registers 6

    .line 2921
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2922
    if-eqz v0, :cond_29

    .line 2924
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telecom/ITelecomService;->acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2927
    goto :goto_29

    .line 2925
    :catch_10
    move-exception p1

    .line 2926
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException acceptHandover: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelecomManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    :cond_29
    :goto_29
    return-void
.end method

.method public whitelist acceptRingingCall()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2240
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2241
    if-eqz v0, :cond_18

    .line 2243
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2246
    goto :goto_18

    .line 2244
    :catch_10
    move-exception v0

    .line 2245
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2248
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist acceptRingingCall(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2262
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2263
    if-eqz v0, :cond_18

    .line 2265
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2266
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2265
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCallWithVideoState(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2269
    goto :goto_18

    .line 2267
    :catch_10
    move-exception p1

    .line 2268
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#acceptRingingCallWithVideoState"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2271
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist addCall(Landroid/telecom/CallAttributes;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/CallControlCallback;Landroid/telecom/CallEventCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallAttributes;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;",
            "Landroid/telecom/CallControlCallback;",
            "Landroid/telecom/CallEventCallback;",
            ")V"
        }
    .end annotation

    .line 3068
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3070
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3072
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 3075
    if-eqz v0, :cond_55

    .line 3078
    :try_start_15
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mTransactionalServiceRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    .line 3080
    invoke-virtual {p1}, Landroid/telecom/CallAttributes;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 3079
    invoke-virtual {v1, v2}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->addNewCallForTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    move-result-object v3

    .line 3083
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->trackCall(Landroid/telecom/CallAttributes;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/CallControlCallback;Landroid/telecom/CallEventCallback;)Ljava/lang/String;

    move-result-object p1

    .line 3087
    invoke-virtual {v3}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->getCallEventCallback()Lcom/android/internal/telecom/ICallEventCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 3088
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    .line 3087
    invoke-interface {v0, v4, p2, p1, p3}, Lcom/android/internal/telecom/ITelecomService;->addCall(Landroid/telecom/CallAttributes;Lcom/android/internal/telecom/ICallEventCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_35} :catch_36

    goto :goto_53

    .line 3089
    :catch_36
    move-exception v0

    move-object p1, v0

    .line 3090
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException addCall: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TelecomManager"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3092
    :goto_53
    nop

    .line 3096
    return-void

    .line 3094
    :cond_55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telecom service is not present"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 6

    .line 2390
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2391
    if-eqz v0, :cond_53

    .line 2393
    if-eqz p2, :cond_2a

    :try_start_8
    const-string v1, "android.telecom.extra.IS_HANDOVER"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2394
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_2a

    .line 2396
    const-string p2, "TAG"

    const-string v0, "addNewIncomingCall failed. Use public api acceptHandover for API > O-MR1"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    return-void

    .line 2402
    :catch_28
    move-exception p2

    goto :goto_3b

    .line 2400
    :cond_2a
    if-nez p2, :cond_31

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_31
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2401
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2400
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3a} :catch_28

    .line 2404
    goto :goto_53

    .line 2403
    :goto_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException adding a new incoming call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelecomManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2406
    :cond_53
    :goto_53
    return-void
.end method

.method public whitelist addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 5

    .line 2439
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2440
    if-eqz v0, :cond_33

    .line 2442
    nop

    .line 2443
    if-nez p2, :cond_11

    :try_start_9
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_11

    .line 2445
    :catch_f
    move-exception p2

    goto :goto_1b

    .line 2443
    :cond_11
    :goto_11
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2444
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2442
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_f

    .line 2447
    goto :goto_33

    .line 2446
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException adding a new incoming conference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelecomManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2449
    :cond_33
    :goto_33
    return-void
.end method

.method public whitelist addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2464
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2465
    if-eqz v0, :cond_2d

    .line 2467
    nop

    .line 2468
    if-nez p2, :cond_11

    :try_start_9
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_11

    .line 2469
    :catch_f
    move-exception p2

    goto :goto_15

    .line 2467
    :cond_11
    :goto_11
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_f

    .line 2471
    goto :goto_2d

    .line 2470
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException adding a new unknown call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TelecomManager"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2473
    :cond_2d
    :goto_2d
    return-void
.end method

.method public whitelist cancelMissedCallsNotification()V
    .registers 4

    .line 2558
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2559
    if-eqz v0, :cond_18

    .line 2561
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2564
    goto :goto_18

    .line 2562
    :catch_10
    move-exception v0

    .line 2563
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#cancelMissedCallsNotification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2566
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist clearAccounts()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1797
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1798
    if-eqz v0, :cond_18

    .line 1800
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1803
    goto :goto_18

    .line 1801
    :catch_10
    move-exception v0

    .line 1802
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#clearAccounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1805
    :cond_18
    :goto_18
    return-void
.end method

.method public greylist-max-o clearAccountsForPackage(Ljava/lang/String;)V
    .registers 4

    .line 1812
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1813
    if-eqz v0, :cond_18

    .line 1815
    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1816
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1820
    :cond_f
    goto :goto_18

    .line 1818
    :catch_10
    move-exception p1

    .line 1819
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#clearAccountsForPackage"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1822
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist clearPhoneAccounts()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1787
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->clearAccounts()V

    .line 1788
    return-void
.end method

.method public whitelist createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2781
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2782
    const-string v1, "TelecomManager"

    if-eqz v0, :cond_21

    .line 2784
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2785
    if-eqz v0, :cond_19

    .line 2786
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2787
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 2786
    const/16 v3, 0x20

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 2789
    :cond_19
    return-object v0

    .line 2790
    :catch_1a
    move-exception v0

    .line 2791
    const-string v2, "Error createLaunchEmergencyDialerIntent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2792
    goto :goto_26

    .line 2794
    :cond_21
    const-string v0, "createLaunchEmergencyDialerIntent - Telecom service not available."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    :goto_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL_EMERGENCY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2801
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2803
    :cond_44
    return-object v0
.end method

.method public whitelist createManageBlockedNumbersIntent()Landroid/content/Intent;
    .registers 5

    .line 2754
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2755
    nop

    .line 2756
    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 2758
    :try_start_8
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telecom/ITelecomService;->createManageBlockedNumbersIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2759
    if-eqz v1, :cond_1f

    .line 2760
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2761
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 2760
    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1f} :catch_20

    .line 2765
    :cond_1f
    goto :goto_28

    .line 2763
    :catch_20
    move-exception v0

    .line 2764
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#createManageBlockedNumbersIntent"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2767
    :cond_28
    :goto_28
    return-object v1
.end method

.method public whitelist dumpAnalytics()Landroid/telecom/TelecomAnalytics;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2734
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2735
    nop

    .line 2736
    if-eqz v0, :cond_14

    .line 2738
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    .line 2741
    goto :goto_15

    .line 2739
    :catch_c
    move-exception v0

    .line 2740
    const-string v1, "TelecomManager"

    const-string v2, "Error dumping call analytics"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2743
    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method public whitelist enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2715
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2716
    if-eqz v0, :cond_12

    .line 2718
    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2721
    goto :goto_12

    .line 2719
    :catch_a
    move-exception p1

    .line 2720
    const-string p2, "TelecomManager"

    const-string v0, "Error enablePhoneAbbount"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2723
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist endCall()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2210
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2211
    if-eqz v0, :cond_19

    .line 2213
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->endCall(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    .line 2214
    :catch_11
    move-exception v0

    .line 2215
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2218
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 4

    .line 2538
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2539
    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    .line 2541
    :try_start_8
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object p1

    .line 2542
    :catch_13
    move-exception p1

    .line 2543
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#getAdnUriForPhoneAccount"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2546
    :cond_1b
    const-string p1, "content://icc/adn"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getAllPhoneAccountHandles()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1703
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1704
    if-eqz v0, :cond_17

    .line 1706
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountHandles()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 1707
    :catch_f
    move-exception v0

    .line 1708
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccountHandles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1711
    :cond_17
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAllPhoneAccounts()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .line 1684
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1685
    if-eqz v0, :cond_17

    .line 1687
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccounts()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 1688
    :catch_f
    move-exception v0

    .line 1689
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccounts"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1692
    :cond_17
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAllPhoneAccountsCount()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1665
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1666
    if-eqz v0, :cond_13

    .line 1668
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountsCount()I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 1669
    :catch_b
    move-exception v0

    .line 1670
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getAllPhoneAccountsCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1673
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallCapablePhoneAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallCapablePhoneAccounts(Z)Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1568
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1569
    if-eqz v0, :cond_3b

    .line 1571
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1572
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1571
    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1572
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 1571
    return-object p1

    .line 1573
    :catch_1c
    move-exception v0

    .line 1574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling ITelecomService#getCallCapablePhoneAccounts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TelecomManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    :cond_3b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public blacklist getCallCapablePhoneAccountsAcrossProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccountsAcrossProfiles(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCallCapablePhoneAccountsAcrossProfiles(Z)Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1599
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1600
    if-eqz v0, :cond_22

    .line 1605
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1606
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1605
    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1606
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 1605
    return-object p1

    .line 1607
    :catch_1c
    move-exception p1

    .line 1608
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1601
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "telecom service is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getCallConnectedIndicatorPreference()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3126
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 3127
    if-eqz v0, :cond_2f

    .line 3129
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getCallConnectedIndicatorPreference(Ljava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    .line 3130
    :catch_11
    move-exception v0

    .line 3131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException getCallConnectedIndicatorPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelecomManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3135
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telecom is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCallState()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2153
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2154
    if-eqz v0, :cond_1f

    .line 2156
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2157
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2156
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCallStateUsingPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 2158
    :catch_17
    move-exception v0

    .line 2159
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling getCallState()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2162
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConnectionManager()Landroid/telecom/PhoneAccountHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1402
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentTtyMode()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2336
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2337
    if-eqz v0, :cond_1f

    .line 2339
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2340
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2339
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCurrentTtyMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 2341
    :catch_17
    move-exception v0

    .line 2342
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the current TTY mode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2345
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultDialerPackage()Ljava/lang/String;
    .registers 4

    .line 1851
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1852
    if-eqz v0, :cond_19

    .line 1854
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    .line 1855
    :catch_11
    move-exception v0

    .line 1856
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the default dialer package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1859
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1873
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1874
    if-eqz v0, :cond_18

    .line 1876
    nop

    .line 1877
    :try_start_7
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 1876
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackageForUser(I)Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-object p1

    .line 1878
    :catch_10
    move-exception p1

    .line 1879
    const-string v0, "TelecomManager"

    const-string v1, "RemoteException attempting to get the default dialer package name."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1882
    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .registers 5

    .line 1264
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1265
    if-eqz v0, :cond_1f

    .line 1267
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1268
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1267
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object p1

    .line 1269
    :catch_17
    move-exception p1

    .line 1270
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#getDefaultOutgoingPhoneAccount"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1273
    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getDefaultPhoneApp()Landroid/content/ComponentName;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1833
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1834
    if-eqz v0, :cond_13

    .line 1836
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 1837
    :catch_b
    move-exception v0

    .line 1838
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the default phone app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1841
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2029
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2030
    if-eqz v0, :cond_1f

    .line 2032
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2033
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2032
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object p1

    .line 2034
    :catch_17
    move-exception p1

    .line 2035
    const-string v0, "TelecomManager"

    const-string v1, "RemoteException calling ITelecomService#getLine1Number."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2038
    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getOwnSelfManagedPhoneAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1514
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1515
    if-eqz v0, :cond_21

    .line 1517
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1518
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1517
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getOwnSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1518
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1517
    return-object v0

    .line 1519
    :catch_1b
    move-exception v0

    .line 1520
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1523
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telecom is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .registers 4

    .line 1646
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1647
    if-eqz v0, :cond_19

    .line 1649
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/telecom/PhoneAccount;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object p1

    .line 1650
    :catch_11
    move-exception p1

    .line 1651
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#getPhoneAccount"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1654
    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getPhoneAccountsForPackage()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1624
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1625
    if-eqz v0, :cond_1d

    .line 1627
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsForPackage(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v0

    .line 1628
    :catch_15
    move-exception v0

    .line 1629
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getPhoneAccountsForPackage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1632
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1424
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_1d

    .line 1427
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1428
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1427
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1428
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    .line 1427
    return-object p1

    .line 1429
    :catch_15
    move-exception p1

    .line 1430
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#getPhoneAccountsSupportingScheme"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1433
    :cond_1d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public whitelist getRegisteredPhoneAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .line 1541
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1542
    if-eqz v0, :cond_21

    .line 1544
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1545
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1546
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getRegisteredPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1546
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1544
    return-object v0

    .line 1547
    :catch_1b
    move-exception v0

    .line 1548
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1551
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telecom is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSelfManagedPhoneAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1486
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1487
    if-eqz v0, :cond_23

    .line 1489
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1490
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1489
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1490
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1489
    return-object v0

    .line 1491
    :catch_1b
    move-exception v0

    .line 1492
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getSelfManagedPhoneAccounts()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1495
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .registers 4

    .line 1334
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1335
    if-eqz v0, :cond_1e

    .line 1337
    nop

    .line 1338
    :try_start_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1337
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    return-object v0

    .line 1339
    :catch_16
    move-exception v0

    .line 1340
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#getSimCallManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-p getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;
    .registers 4

    .line 1381
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1382
    if-eqz v0, :cond_19

    .line 1384
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManagerForUser(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object p1

    .line 1385
    :catch_11
    move-exception p1

    .line 1386
    const-string p1, "TelecomManager"

    const-string v0, "Error calling ITelecomService#getSimCallManagerForUser"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;
    .registers 4

    .line 1357
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1358
    if-eqz v0, :cond_19

    .line 1360
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object p1

    .line 1361
    :catch_11
    move-exception p1

    .line 1362
    const-string p1, "TelecomManager"

    const-string v0, "Error calling ITelecomService#getSimCallManager"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getSystemDialerPackage()Ljava/lang/String;
    .registers 4

    .line 1925
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1926
    if-eqz v0, :cond_19

    .line 1928
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    .line 1929
    :catch_11
    move-exception v0

    .line 1930
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get the system dialer package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1933
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 4

    .line 1291
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1292
    if-eqz v0, :cond_19

    .line 1294
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1295
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1294
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getUserSelectedOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v0

    .line 1296
    :catch_11
    move-exception v0

    .line 1297
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#getUserSelectedOutgoingPhoneAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1300
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 5

    .line 1966
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1967
    if-eqz v0, :cond_1f

    .line 1969
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1970
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1969
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object p1

    .line 1971
    :catch_17
    move-exception p1

    .line 1972
    const-string v0, "TelecomManager"

    const-string v1, "RemoteException calling ITelecomService#hasVoiceMailNumber."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1975
    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4

    .line 3105
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 3106
    if-eqz v0, :cond_23

    .line 3108
    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 3111
    goto :goto_23

    .line 3109
    :catch_a
    move-exception p1

    .line 3110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException handleCallIntent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TelecomManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist handleMmi(Ljava/lang/String;)Z
    .registers 4

    .line 2490
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2491
    if-eqz v0, :cond_19

    .line 2493
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 2494
    :catch_11
    move-exception p1

    .line 2495
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .registers 5

    .line 2516
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2517
    if-eqz v0, :cond_19

    .line 2519
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2520
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2519
    invoke-interface {v0, p2, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 2521
    :catch_11
    move-exception p1

    .line 2522
    const-string p2, "TelecomManager"

    const-string v0, "Error calling ITelecomService#handlePinMmi"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2525
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist hasForegroundServiceDelegation(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 4

    .line 1992
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1993
    if-eqz v0, :cond_19

    .line 1995
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->hasForegroundServiceDelegation(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 1996
    :catch_11
    move-exception p1

    .line 1997
    const-string v0, "TelecomManager"

    const-string v1, "RemoteException calling ITelecomService#hasForegroundServiceDelegation."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2002
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist hasManageOngoingCallsPermission()Z
    .registers 4

    .line 2094
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2095
    if-eqz v0, :cond_22

    .line 2097
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2098
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2097
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->hasManageOngoingCallsPermission(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    .line 2099
    :catch_11
    move-exception v0

    .line 2100
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling hasManageOngoingCallsPermission()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2101
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isSystemProcess()Z

    move-result v1

    if-nez v1, :cond_22

    .line 2102
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 2106
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInCall()Z
    .registers 4

    .line 2050
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2051
    if-eqz v0, :cond_1f

    .line 2053
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2054
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2053
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 2055
    :catch_17
    move-exception v0

    .line 2056
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling isInCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2059
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInEmergencyCall()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2941
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2942
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2944
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v0

    .line 2945
    :catch_c
    move-exception v0

    .line 2946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException isInEmergencyCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TelecomManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    return v1

    .line 2950
    :cond_26
    return v1
.end method

.method public blacklist isInExternalCall()Z
    .registers 4

    .line 2071
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2072
    if-eqz v0, :cond_22

    .line 2074
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2075
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2074
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInExternalCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 2076
    :catch_17
    move-exception v0

    .line 2077
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling isInCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2078
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2081
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInManagedCall()Z
    .registers 4

    .line 2122
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2123
    if-eqz v0, :cond_1f

    .line 2125
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2126
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2125
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInManagedCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 2127
    :catch_17
    move-exception v0

    .line 2128
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException calling isInManagedCall()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2131
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2972
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2973
    if-eqz v0, :cond_2f

    .line 2975
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2976
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2975
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/ITelecomService;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 2977
    :catch_11
    move-exception p1

    .line 2978
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException isInSelfManagedCall: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TelecomManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2980
    const/4 p1, 0x0

    return p1

    .line 2983
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telecom service is not present"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 5

    .line 2826
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2827
    return v0

    .line 2830
    :cond_4
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 2831
    if-eqz v1, :cond_1d

    .line 2833
    :try_start_a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2834
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2833
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return p1

    .line 2835
    :catch_15
    move-exception p1

    .line 2836
    const-string v1, "TelecomManager"

    const-string v2, "Error isIncomingCallPermitted"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2839
    :cond_1d
    return v0
.end method

.method public whitelist isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 4

    .line 2864
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2865
    if-eqz v0, :cond_19

    .line 2867
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2868
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2867
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result p1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return p1

    .line 2869
    :catch_11
    move-exception p1

    .line 2870
    const-string v0, "TelecomManager"

    const-string v1, "Error isOutgoingCallPermitted"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2873
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist isRinging()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2177
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2178
    if-eqz v0, :cond_19

    .line 2180
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v0

    .line 2181
    :catch_11
    move-exception v0

    .line 2182
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get ringing state of phone app."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2185
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isTtySupported()Z
    .registers 4

    .line 2311
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2312
    if-eqz v0, :cond_1f

    .line 2314
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2315
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2314
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isTtySupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v0

    .line 2316
    :catch_17
    move-exception v0

    .line 2317
    const-string v1, "TelecomManager"

    const-string v2, "RemoteException attempting to get TTY supported state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2320
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .registers 6

    .line 1945
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1946
    if-eqz v0, :cond_1f

    .line 1948
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1949
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1948
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return p1

    .line 1950
    :catch_17
    move-exception p1

    .line 1951
    const-string p2, "TelecomManager"

    const-string v0, "RemoteException calling ITelecomService#isVoiceMailNumber."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1954
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7

    .line 2655
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2656
    if-eqz v0, :cond_2e

    .line 2657
    const-string v1, "TelecomManager"

    if-nez p1, :cond_f

    .line 2658
    const-string v2, "Cannot place call to empty address."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    :cond_f
    if-nez p2, :cond_19

    :try_start_11
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto :goto_19

    .line 2663
    :catch_17
    move-exception p1

    goto :goto_29

    .line 2661
    :cond_19
    :goto_19
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2662
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2661
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/android/internal/telecom/ITelecomService;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_28} :catch_17

    .line 2665
    goto :goto_2e

    .line 2664
    :goto_29
    const-string p2, "Error calling ITelecomService#placeCall"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2667
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .registers 4

    .line 1754
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1755
    if-eqz v0, :cond_18

    .line 1757
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1760
    goto :goto_18

    .line 1758
    :catch_10
    move-exception p1

    .line 1759
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#registerPhoneAccount"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1762
    :cond_18
    :goto_18
    return-void
.end method

.method public blacklist setCallConnectedIndicatorPreference(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3152
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 3153
    if-eqz v0, :cond_2f

    .line 3155
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 3156
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3155
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/ITelecomService;->setCallConnectedIndicatorPreference(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_11

    .line 3160
    nop

    .line 3164
    return-void

    .line 3157
    :catch_11
    move-exception p1

    .line 3158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException setCallConnectedIndicatorPreference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelecomManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3162
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Telecom is not available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist setDefaultDialer(Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1907
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1908
    if-eqz v0, :cond_13

    .line 1910
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->setDefaultDialer(Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p1

    .line 1911
    :catch_b
    move-exception p1

    .line 1912
    const-string v0, "TelecomManager"

    const-string v1, "RemoteException attempting to set the default dialer."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1915
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1314
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1315
    if-eqz v0, :cond_12

    .line 1317
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1320
    goto :goto_12

    .line 1318
    :catch_a
    move-exception p1

    .line 1319
    const-string p1, "TelecomManager"

    const-string v0, "Error calling ITelecomService#setUserSelectedOutgoingPhoneAccount"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist showInCallScreen(Z)V
    .registers 5

    .line 2580
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2581
    if-eqz v0, :cond_1e

    .line 2583
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2584
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2583
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    .line 2587
    goto :goto_1e

    .line 2585
    :catch_16
    move-exception p1

    .line 2586
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#showCallScreen"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2589
    :cond_1e
    :goto_1e
    return-void
.end method

.method public whitelist silenceRinger()V
    .registers 4

    .line 2293
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2294
    if-eqz v0, :cond_18

    .line 2296
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2299
    goto :goto_18

    .line 2297
    :catch_10
    move-exception v0

    .line 2298
    const-string v1, "TelecomManager"

    const-string v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2301
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist startConference(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 2694
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2695
    if-eqz v0, :cond_18

    .line 2697
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2698
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2697
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/ITelecomService;->startConference(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2701
    goto :goto_18

    .line 2699
    :catch_10
    move-exception p1

    .line 2700
    const-string p2, "TelecomManager"

    const-string v0, "Error calling ITelecomService#placeCall"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2703
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .registers 4

    .line 1770
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1771
    if-eqz v0, :cond_18

    .line 1773
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1776
    goto :goto_18

    .line 1774
    :catch_10
    move-exception p1

    .line 1775
    const-string v0, "TelecomManager"

    const-string v1, "Error calling ITelecomService#unregisterPhoneAccount"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1778
    :cond_18
    :goto_18
    return-void
.end method
