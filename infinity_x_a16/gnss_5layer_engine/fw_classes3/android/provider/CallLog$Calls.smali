.class public Landroid/provider/CallLog$Calls;
.super Ljava/lang/Object;
.source "CallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$Calls$MissedReason;
    }
.end annotation


# static fields
.field public static final greylist-max-o ADD_FOR_ALL_USERS:Ljava/lang/String; = "add_for_all_users"

.field public static final greylist-max-o ALLOW_VOICEMAILS_PARAM_KEY:Ljava/lang/String; = "allow_voicemails"

.field public static final whitelist ANSWERED_EXTERNALLY_TYPE:I = 0x7

.field public static final whitelist ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "asserted_display_name"

.field public static final whitelist AUTO_MISSED_EMERGENCY_CALL:J = 0x1L

.field public static final whitelist AUTO_MISSED_MAXIMUM_DIALING:J = 0x4L

.field public static final whitelist AUTO_MISSED_MAXIMUM_RINGING:J = 0x2L

.field public static final whitelist BLOCKED_TYPE:I = 0x6

.field public static final whitelist BLOCK_REASON:Ljava/lang/String; = "block_reason"

.field public static final whitelist BLOCK_REASON_BLOCKED_NUMBER:I = 0x3

.field public static final whitelist BLOCK_REASON_CALL_SCREENING_SERVICE:I = 0x1

.field public static final whitelist BLOCK_REASON_DIRECT_TO_VOICEMAIL:I = 0x2

.field public static final whitelist BLOCK_REASON_NOT_BLOCKED:I = 0x0

.field public static final whitelist BLOCK_REASON_NOT_IN_CONTACTS:I = 0x7

.field public static final whitelist BLOCK_REASON_PAY_PHONE:I = 0x6

.field public static final whitelist BLOCK_REASON_RESTRICTED_NUMBER:I = 0x5

.field public static final whitelist BLOCK_REASON_UNKNOWN_NUMBER:I = 0x4

.field public static final whitelist CACHED_FORMATTED_NUMBER:Ljava/lang/String; = "formatted_number"

.field public static final whitelist CACHED_LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final whitelist CACHED_MATCHED_NUMBER:Ljava/lang/String; = "matched_number"

.field public static final whitelist CACHED_NAME:Ljava/lang/String; = "name"

.field public static final whitelist CACHED_NORMALIZED_NUMBER:Ljava/lang/String; = "normalized_number"

.field public static final whitelist CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final whitelist CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final whitelist CACHED_PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final whitelist CACHED_PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final whitelist CALL_SCREENING_APP_NAME:Ljava/lang/String; = "call_screening_app_name"

.field public static final whitelist CALL_SCREENING_COMPONENT_NAME:Ljava/lang/String; = "call_screening_component_name"

.field public static final whitelist COMPOSER_PHOTO_URI:Ljava/lang/String; = "composer_photo_uri"

.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist CONTENT_URI_LIMIT_1:Landroid/net/Uri;

.field public static final whitelist CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_WITH_VOIP_CALLS:Landroid/net/Uri;

.field public static final whitelist CONTENT_VOIP_URI:Landroid/net/Uri;

.field public static final whitelist COUNTRY_ISO:Ljava/lang/String; = "countryiso"

.field public static final whitelist DATA_USAGE:Ljava/lang/String; = "data_usage"

.field public static final whitelist DATE:Ljava/lang/String; = "date"

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final whitelist DURATION:Ljava/lang/String; = "duration"

.field public static final whitelist EXTRA_CALL_TYPE_FILTER:Ljava/lang/String; = "android.provider.extra.CALL_TYPE_FILTER"

.field public static final whitelist FEATURES:Ljava/lang/String; = "features"

.field public static final whitelist FEATURES_ASSISTED_DIALING_USED:I = 0x10

.field public static final whitelist FEATURES_HD_CALL:I = 0x4

.field public static final whitelist FEATURES_PULLED_EXTERNALLY:I = 0x2

.field public static final whitelist FEATURES_RTT:I = 0x20

.field public static final whitelist FEATURES_VIDEO:I = 0x1

.field public static final whitelist FEATURES_VOLTE:I = 0x40

.field public static final whitelist FEATURES_WIFI:I = 0x8

.field public static final whitelist GEOCODED_LOCATION:Ljava/lang/String; = "geocoded_location"

.field public static final blacklist INCLUDE_VOIP_CALLS_PARAM_KEY:Ljava/lang/String; = "include_voip_calls"

.field public static final whitelist INCOMING_TYPE:I = 0x1

.field public static final whitelist IS_BUSINESS_CALL:Ljava/lang/String; = "is_business_call"

.field public static final blacklist IS_PHONE_ACCOUNT_MIGRATION_PENDING:Ljava/lang/String; = "is_call_log_phone_account_migration_pending"

.field public static final whitelist IS_READ:Ljava/lang/String; = "is_read"

.field public static final whitelist LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final whitelist LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final whitelist LOCATION:Ljava/lang/String; = "location"

.field public static final blacklist LOW_RING_VOLUME:I = 0x0

.field public static final whitelist MISSED_REASON:Ljava/lang/String; = "missed_reason"

.field public static final whitelist MISSED_REASON_NOT_MISSED:J = 0x0L

.field public static final whitelist MISSED_TYPE:I = 0x3

.field public static final whitelist NEW:Ljava/lang/String; = "new"

.field public static final whitelist NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist NUMBER_PRESENTATION:Ljava/lang/String; = "presentation"

.field public static final whitelist OFFSET_PARAM_KEY:Ljava/lang/String; = "offset"

.field public static final whitelist OUTGOING_TYPE:I = 0x2

.field public static final greylist-max-o PHONE_ACCOUNT_ADDRESS:Ljava/lang/String; = "phone_account_address"

.field public static final whitelist PHONE_ACCOUNT_COMPONENT_NAME:Ljava/lang/String; = "subscription_component_name"

.field public static final greylist-max-o PHONE_ACCOUNT_HIDDEN:Ljava/lang/String; = "phone_account_hidden"

.field public static final whitelist PHONE_ACCOUNT_ID:Ljava/lang/String; = "subscription_id"

.field public static final whitelist POST_DIAL_DIGITS:Ljava/lang/String; = "post_dial_digits"

.field public static final blacklist PREFERRED_DISPLAY_NAME:Ljava/lang/String; = "preferred_display_name"

.field public static final whitelist PRESENTATION_ALLOWED:I = 0x1

.field public static final whitelist PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist PRESENTATION_RESTRICTED:I = 0x2

.field public static final whitelist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY:Ljava/lang/String; = "priority"

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final whitelist REJECTED_TYPE:I = 0x5

.field public static final greylist-max-o SHADOW_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SHORT_RING_THRESHOLD:J = 0x1388L

.field public static final whitelist SUBJECT:Ljava/lang/String; = "subject"

.field public static final greylist-max-o SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final whitelist TRANSCRIPTION:Ljava/lang/String; = "transcription"

.field public static final greylist-max-o TRANSCRIPTION_STATE:Ljava/lang/String; = "transcription_state"

.field public static final whitelist TYPE:Ljava/lang/String; = "type"

.field public static final whitelist USER_MISSED_CALL_FILTERS_TIMEOUT:J = 0x400000L

.field public static final whitelist USER_MISSED_CALL_SCREENING_SERVICE_SILENCED:J = 0x200000L

.field public static final whitelist USER_MISSED_DND_MODE:J = 0x40000L

.field public static final whitelist USER_MISSED_LOW_RING_VOLUME:J = 0x80000L

.field public static final blacklist USER_MISSED_NEVER_RANG:J = 0x800000L

.field public static final blacklist USER_MISSED_NOT_RUNNING:J = 0x1000000L

.field public static final whitelist USER_MISSED_NO_ANSWER:J = 0x10000L

.field public static final whitelist USER_MISSED_NO_VIBRATE:J = 0x100000L

.field public static final whitelist USER_MISSED_SHORT_RING:J = 0x20000L

.field public static final whitelist UUID:Ljava/lang/String; = "uuid"

.field public static final whitelist VIA_NUMBER:Ljava/lang/String; = "via_number"

.field public static final whitelist VOICEMAIL_TYPE:I = 0x4

.field public static final whitelist VOICEMAIL_URI:Ljava/lang/String; = "voicemail_uri"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 409
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 414
    const-string v0, "content://call_log_shadow/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    .line 419
    const-string v0, "content://call_log/calls/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/voip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_VOIP_URI:Landroid/net/Uri;

    .line 490
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 491
    const-string v1, "allow_voicemails"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    .line 499
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 500
    const-string v1, "include_voip_calls"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOIP_CALLS:Landroid/net/Uri;

    .line 1180
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1181
    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    .line 1180
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1205
    nop

    .line 1207
    const/4 p0, 0x0

    :try_start_6
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_LIMIT_1:Landroid/net/Uri;

    const-string/jumbo v2, "number"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "type = 2"

    const-string v5, "date DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1213
    if-eqz p0, :cond_2d

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_2d

    .line 1216
    :cond_22
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_35

    .line 1218
    if-eqz p0, :cond_2c

    .line 1219
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1216
    :cond_2c
    return-object v0

    .line 1214
    :cond_2d
    :goto_2d
    :try_start_2d
    const-string v0, ""
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_35

    .line 1218
    if-eqz p0, :cond_34

    .line 1219
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1214
    :cond_34
    return-object v0

    .line 1218
    :catchall_35
    move-exception v0

    if-eqz p0, :cond_3b

    .line 1219
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1221
    :cond_3b
    throw v0
.end method

.method public static blacklist isUserMissed(J)Z
    .registers 4

    .line 1233
    const-wide/32 v0, 0x10000

    cmp-long p0, p0, v0

    if-ltz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static greylist-max-o shouldHaveSharedCallLogEntries(Landroid/content/Context;Landroid/os/UserManager;I)Z
    .registers 4

    .line 1189
    nop

    .line 1190
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 1189
    const-string/jumbo v0, "no_outgoing_calls"

    invoke-virtual {p1, v0, p0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 1191
    return v0

    .line 1193
    :cond_10
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 1194
    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method
