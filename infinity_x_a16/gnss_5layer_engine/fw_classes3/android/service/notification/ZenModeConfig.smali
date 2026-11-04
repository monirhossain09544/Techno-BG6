.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ConfigOrigin;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALLOW_ATT_ALARMS:Ljava/lang/String; = "alarms"

.field private static final greylist-max-o ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final greylist-max-o ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final blacklist ALLOW_ATT_CHANNELS:Ljava/lang/String; = "priorityChannelsAllowed"

.field private static final blacklist ALLOW_ATT_CONV:Ljava/lang/String; = "convos"

.field private static final blacklist ALLOW_ATT_CONV_FROM:Ljava/lang/String; = "convosFrom"

.field private static final greylist-max-o ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final greylist-max-o ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final greylist-max-o ALLOW_ATT_MEDIA:Ljava/lang/String; = "media"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final greylist-max-o ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final greylist-max-o ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final greylist-max-o ALLOW_ATT_SYSTEM:Ljava/lang/String; = "system"

.field public static final greylist-max-o ALL_DAYS:[I

.field private static final blacklist AUTOMATIC_DELETED_TAG:Ljava/lang/String; = "deleted"

.field private static final greylist-max-o AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final greylist-max-o CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final greylist-max-o CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final greylist-max-o CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final blacklist CONDITION_ATT_SOURCE:Ljava/lang/String; = "source"

.field private static final greylist-max-o CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final greylist-max-o CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final greylist-max-o COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

.field public static final blacklist CUSTOM_MANUAL_PATH:Ljava/lang/String; = "custom_manual"

.field private static final greylist-max-o DAY_MINUTES:I = 0x5a0

.field private static final greylist-max-o DEFAULT_ALLOW_ALARMS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_CALLS:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV_FROM:I = 0x2

.field private static final greylist-max-o DEFAULT_ALLOW_EVENTS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_MEDIA:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_MESSAGES:Z = true

.field private static final blacklist DEFAULT_ALLOW_PRIORITY_CHANNELS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_REMINDERS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_REPEAT_CALLERS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_SYSTEM:Z = false

.field private static final greylist-max-o DEFAULT_CALLS_SOURCE:I = 0x2

.field private static final blacklist DEFAULT_HAS_PRIORITY_CHANNELS:Z = false

.field private static final greylist-max-o DEFAULT_SOURCE:I = 0x2

.field private static final greylist-max-o DEFAULT_SUPPRESSED_VISUAL_EFFECTS:I = 0x9d

.field private static final blacklist DEVICE_EFFECT_CAP_BRIGHTNESS:Ljava/lang/String; = "zdeCapBrightness"

.field private static final blacklist DEVICE_EFFECT_DIM_WALLPAPER:Ljava/lang/String; = "zdeDimWallpaper"

.field private static final blacklist DEVICE_EFFECT_DISABLE_AUTO_BRIGHTNESS:Ljava/lang/String; = "zdeDisableAutoBrightness"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TAP_TO_WAKE:Ljava/lang/String; = "zdeDisableTapToWake"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TILT_TO_WAKE:Ljava/lang/String; = "zdeDisableTiltToWake"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TOUCH:Ljava/lang/String; = "zdeDisableTouch"

.field private static final blacklist DEVICE_EFFECT_DISPLAY_GRAYSCALE:Ljava/lang/String; = "zdeDisplayGrayscale"

.field private static final blacklist DEVICE_EFFECT_EXTRAS:Ljava/lang/String; = "zdeExtraEffects"

.field private static final blacklist DEVICE_EFFECT_MAXIMIZE_DOZE:Ljava/lang/String; = "zdeMaximizeDoze"

.field private static final blacklist DEVICE_EFFECT_MINIMIZE_RADIO_USAGE:Ljava/lang/String; = "zdeMinimizeRadioUsage"

.field private static final blacklist DEVICE_EFFECT_SUPPRESS_AMBIENT_DISPLAY:Ljava/lang/String; = "zdeSuppressAmbientDisplay"

.field private static final blacklist DEVICE_EFFECT_USER_MODIFIED_FIELDS:Ljava/lang/String; = "zdeUserModifiedFields"

.field private static final blacklist DEVICE_EFFECT_USE_NIGHT_LIGHT:Ljava/lang/String; = "zdeUseNightLight"

.field private static final blacklist DEVICE_EFFECT_USE_NIGHT_MODE:Ljava/lang/String; = "zdeUseNightMode"

.field private static final greylist-max-o DISALLOW_ATT_VISUAL_EFFECTS:Ljava/lang/String; = "visualEffects"

.field public static final blacklist EVENTS_OBSOLETE_RULE_ID:Ljava/lang/String; = "EVENTS_DEFAULT_RULE"

.field public static final greylist-max-o EVENT_PATH:Ljava/lang/String; = "event"

.field public static final greylist-max-o EVERY_NIGHT_DEFAULT_RULE_ID:Ljava/lang/String; = "EVERY_NIGHT_DEFAULT_RULE"

.field private static final blacklist IMPLICIT_RULE_ID_PREFIX:Ljava/lang/String; = "implicit_"

.field public static final greylist-max-o IS_ALARM_PATH:Ljava/lang/String; = "alarm"

.field private static final blacklist ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist ITEM_SEPARATOR_ESCAPE:Ljava/lang/String; = "\\"

.field private static final blacklist ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

.field private static final blacklist LEGACY_SUPPRESSED_EFFECTS:I = 0x3

.field public static final blacklist MANUAL_RULE_ID:Ljava/lang/String; = "MANUAL_RULE"

.field private static final greylist-max-o MANUAL_TAG:Ljava/lang/String; = "manual"

.field private static final greylist-max-o MAX_SOURCE:I = 0x2

.field private static final greylist-max-o MINUTES_MS:I = 0xea60

.field public static final greylist-max-o MINUTE_BUCKETS:[I

.field private static final blacklist OLD_ALLOW_TAG:Ljava/lang/String; = "allow"

.field private static final blacklist OLD_DISALLOW_TAG:Ljava/lang/String; = "disallow"

.field public static final blacklist ORIGIN_APP:I = 0x4

.field public static final blacklist ORIGIN_INIT:I = 0x1

.field public static final blacklist ORIGIN_INIT_USER:I = 0x2

.field public static final blacklist ORIGIN_RESTORE_BACKUP:I = 0x6

.field public static final blacklist ORIGIN_SYSTEM:I = 0x5

.field public static final blacklist ORIGIN_UNKNOWN:I = 0x0

.field public static final blacklist ORIGIN_USER_IN_APP:I = 0x7

.field public static final blacklist ORIGIN_USER_IN_SYSTEMUI:I = 0x3

.field private static final blacklist POLICY_USER_MODIFIED_FIELDS:Ljava/lang/String; = "policyUserModifiedFields"

.field private static final blacklist RULE_ATT_ALLOW_MANUAL:Ljava/lang/String; = "userInvokable"

.field private static final greylist-max-o RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final greylist-max-o RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final blacklist RULE_ATT_CONDITION_OVERRIDE:Ljava/lang/String; = "conditionOverride"

.field private static final blacklist RULE_ATT_CONFIG_ACTIVITY:Ljava/lang/String; = "configActivity"

.field private static final greylist-max-o RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final blacklist RULE_ATT_DELETION_INSTANT:Ljava/lang/String; = "deletionInstant"

.field private static final blacklist RULE_ATT_DISABLED_ORIGIN:Ljava/lang/String; = "disabledOrigin"

.field private static final greylist-max-o RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final greylist-max-o RULE_ATT_ENABLER:Ljava/lang/String; = "enabler"

.field private static final blacklist RULE_ATT_ICON:Ljava/lang/String; = "rule_icon"

.field private static final greylist-max-o RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final blacklist RULE_ATT_LAST_ACTIVATION:Ljava/lang/String; = "lastActivation"

.field private static final blacklist RULE_ATT_LAST_DEACTIVATION:Ljava/lang/String; = "lastDeactivation"

.field private static final blacklist RULE_ATT_LAST_MANUAL_ACTIVATION:Ljava/lang/String; = "lastManualActivation"

.field private static final blacklist RULE_ATT_LAST_MANUAL_DEACTIVATION:Ljava/lang/String; = "lastManualDeactivation"

.field private static final blacklist RULE_ATT_LEGACY_SUPPRESSED_EFFECTS:Ljava/lang/String; = "legacySuppressedEffects"

.field private static final greylist-max-o RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist RULE_ATT_PKG:Ljava/lang/String; = "pkg"

.field private static final blacklist RULE_ATT_TRIGGER_DESC:Ljava/lang/String; = "triggerDesc"

.field private static final blacklist RULE_ATT_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist RULE_ATT_USER_MODIFIED_FIELDS:Ljava/lang/String; = "userModifiedFields"

.field private static final greylist-max-o RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final greylist-max-o SECONDS_MS:I = 0x3e8

.field private static final blacklist SHOW_ATT_AMBIENT:Ljava/lang/String; = "showAmbient"

.field private static final blacklist SHOW_ATT_BADGES:Ljava/lang/String; = "showBadges"

.field private static final blacklist SHOW_ATT_FULL_SCREEN_INTENT:Ljava/lang/String; = "showFullScreenIntent"

.field private static final blacklist SHOW_ATT_LIGHTS:Ljava/lang/String; = "showLights"

.field private static final blacklist SHOW_ATT_NOTIFICATION_LIST:Ljava/lang/String; = "showNotificationList"

.field private static final blacklist SHOW_ATT_PEEK:Ljava/lang/String; = "shoePeek"

.field private static final blacklist SHOW_ATT_STATUS_BAR_ICONS:Ljava/lang/String; = "showStatusBarIcons"

.field public static final greylist-max-o SOURCE_ANYONE:I = 0x0

.field public static final greylist-max-o SOURCE_CONTACT:I = 0x1

.field public static final greylist-max-o SOURCE_STAR:I = 0x2

.field private static final blacklist STATE_HAS_PRIORITY_CHANNELS:Ljava/lang/String; = "areChannelsBypassingDnd"

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "state"

.field public static final greylist-max-o SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ZenModeConfig"

.field public static final blacklist XML_VERSION_MODES_API:I = 0xb

.field public static final blacklist XML_VERSION_MODES_UI:I = 0xc

.field public static final blacklist XML_VERSION_ZEN_UPGRADE:I = 0x8

.field private static final greylist-max-o ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final greylist-max-o ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field public static final greylist-max-o ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final greylist-max-o ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public greylist automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist deletedRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist hasPriorityChannels:Z

.field public greylist-max-o manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public greylist-max-o user:I

.field public greylist-max-o version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoDayList([I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 203
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 206
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 333
    const-string v0, "(?<!\\\\),"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

    .line 1399
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2065
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 2066
    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2067
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2068
    const-string v1, "custom_manual"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2069
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    .line 2065
    return-void

    nop

    :array_3c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 340
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 344
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 349
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 353
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->ensureManualZenRule()V

    .line 354
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 340
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 344
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 349
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 358
    const/4 v1, 0x0

    const-class v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 359
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    .line 360
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_39

    move v0, v1

    :cond_39
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 362
    return-void
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .registers 10

    .line 2608
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 2610
    :goto_a
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 2612
    :goto_13
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    move v4, v2

    .line 2614
    :goto_1c
    iget v5, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_24

    move v5, v1

    goto :goto_25

    :cond_24
    move v5, v2

    .line 2616
    :goto_25
    iget v6, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2d

    move v6, v1

    goto :goto_2e

    :cond_2d
    move v6, v2

    .line 2618
    :goto_2e
    iget v7, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_36

    move v7, v1

    goto :goto_37

    :cond_36
    move v7, v2

    .line 2620
    :goto_37
    nop

    .line 2621
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v8

    if-eqz v8, :cond_46

    move v8, v1

    goto :goto_47

    :cond_46
    move v8, v2

    .line 2622
    :goto_47
    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_4f

    move p0, v1

    goto :goto_50

    :cond_4f
    move p0, v2

    .line 2623
    :goto_50
    if-nez v0, :cond_61

    if-nez v3, :cond_61

    if-nez v4, :cond_61

    if-nez v5, :cond_61

    if-nez v6, :cond_61

    if-nez v8, :cond_61

    if-nez p0, :cond_61

    if-nez v7, :cond_61

    goto :goto_62

    :cond_61
    move v1, v2

    :goto_62
    return v1
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .registers 5

    .line 2653
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 2654
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2655
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2656
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 2657
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2658
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2659
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-boolean p0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-eqz p0, :cond_38

    .line 2660
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p0

    if-eq p0, v2, :cond_3a

    :cond_38
    move v1, v2

    goto :goto_3b

    :cond_3a
    nop

    .line 2654
    :goto_3b
    return v1
.end method

.method public static blacklist areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .registers 5

    .line 2633
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 2634
    :goto_b
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 2635
    :goto_14
    if-nez v0, :cond_1f

    if-nez v3, :cond_1f

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    return v1
.end method

.method public static blacklist deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .registers 3

    .line 835
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_29

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 838
    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method private static greylist-max-o generateMinuteBuckets()[I
    .registers 4

    .line 530
    const/16 v0, 0x1b

    new-array v0, v0, [I

    .line 531
    const/4 v1, 0x0

    const/16 v2, 0xf

    aput v2, v0, v1

    .line 532
    const/16 v1, 0x1e

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 533
    const/4 v1, 0x2

    const/16 v3, 0x2d

    aput v3, v0, v1

    .line 534
    nop

    :goto_14
    const/16 v1, 0x18

    if-gt v2, v1, :cond_21

    .line 535
    add-int/lit8 v1, v2, 0x2

    mul-int/lit8 v3, v2, 0x3c

    aput v3, v0, v1

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 537
    :cond_21
    return-object v0
.end method

.method public static blacklist getCurrentXmlVersion()I
    .registers 1

    .line 623
    const/16 v0, 0xc

    return v0
.end method

.method public static blacklist getCustomManualConditionProvider()Landroid/content/ComponentName;
    .registers 3

    .line 2086
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "CustomManualConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist getDefaultConfig()Landroid/service/notification/ZenModeConfig;
    .registers 5

    .line 386
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 388
    new-instance v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 389
    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_42

    iput-object v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 390
    const/16 v3, 0x16

    iput v3, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 391
    iput v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 392
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 393
    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 394
    const-string v4, "EVERY_NIGHT_DEFAULT_RULE"

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 395
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 396
    const-string v1, "android/com.android.server.notification.ScheduleConditionProvider"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 398
    const/4 v1, 0x0

    iput-boolean v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 399
    iput v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 400
    const-string v1, "android"

    iput-object v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 401
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    return-object v0

    nop

    :array_42
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static blacklist getDefaultRuleIds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    const-string v0, "EVERY_NIGHT_DEFAULT_RULE"

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 4

    .line 365
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 368
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 369
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 374
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {v0, v2, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 379
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 382
    return-object v0
.end method

.method public static greylist-max-o getEventConditionProvider()Landroid/content/ComponentName;
    .registers 3

    .line 2020
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "EventConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;
    .registers 6

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_a

    const-string p3, "EEE "

    goto :goto_c

    :cond_a
    const-string p3, ""

    :goto_c
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 1772
    invoke-static {p0, p4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "Hm"

    goto :goto_1b

    :cond_19
    const-string p0, "hma"

    :goto_1b
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1773
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p3, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1774
    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getScheduleConditionProvider()Landroid/content/ComponentName;
    .registers 3

    .line 1909
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "ScheduleConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist implicitRuleId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "implicit_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist isImplicitRuleId(Ljava/lang/String;)Z
    .registers 2

    .line 2098
    if-eqz p0, :cond_c

    const-string v0, "implicit_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private blacklist isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z
    .registers 3

    .line 1547
    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public static greylist-max-o isToday(J)Z
    .registers 5

    .line 1781
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1782
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1783
    invoke-virtual {v1, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1784
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    invoke-virtual {v1, p0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_2f

    .line 1785
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    if-ne v2, p1, :cond_2f

    .line 1786
    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    if-ne v0, p1, :cond_2f

    .line 1787
    return p0

    .line 1789
    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-o isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2

    .line 515
    if-eqz p0, :cond_1e

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_1e

    .line 516
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 515
    :goto_1f
    return p0
.end method

.method public static greylist-max-o isValidCountdownConditionId(Landroid/net/Uri;)Z
    .registers 5

    .line 1831
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static greylist-max-o isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z
    .registers 5

    .line 1838
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    .line 1839
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_52

    .line 1840
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_52

    .line 1844
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_37} :catch_38

    return p0

    .line 1845
    :catch_38
    move-exception v0

    .line 1846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing countdown alarm condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ZenModeConfig"

    invoke-static {v2, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1847
    return v1

    .line 1841
    :cond_52
    :goto_52
    return v1

    .line 1850
    :cond_53
    return v1
.end method

.method public static blacklist isValidCustomManualConditionId(Landroid/net/Uri;)Z
    .registers 2

    .line 2081
    sget-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static greylist-max-o isValidEventConditionId(Landroid/net/Uri;)Z
    .registers 1

    .line 1993
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static greylist-max-o isValidHour(I)Z
    .registers 2

    .line 1292
    if-ltz p0, :cond_8

    const/16 v0, 0x18

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static greylist-max-o isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2

    .line 511
    if-eqz p0, :cond_13

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static greylist-max-o isValidMinute(I)Z
    .registers 2

    .line 1296
    if-ltz p0, :cond_8

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static greylist-max-o isValidScheduleConditionId(Landroid/net/Uri;)Z
    .registers 3

    .line 1871
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_5} :catch_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_5} :catch_15

    .line 1874
    nop

    .line 1876
    if-eqz p0, :cond_14

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_14

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length p0, p0

    if-nez p0, :cond_12

    goto :goto_14

    .line 1879
    :cond_12
    const/4 p0, 0x1

    return p0

    .line 1877
    :cond_14
    :goto_14
    return v0

    .line 1872
    :catch_15
    move-exception p0

    .line 1873
    return v0
.end method

.method private static greylist-max-o isValidSource(I)Z
    .registers 2

    .line 1300
    if-ltz p0, :cond_7

    const/4 v0, 0x2

    if-gt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private blacklist isVisualEffectAllowed(II)Z
    .registers 3

    .line 1555
    and-int/2addr p1, p2

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    return p1
.end method

.method private blacklist isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z
    .registers 3

    .line 1551
    iget p2, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr p1, p2

    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public static blacklist isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z
    .registers 4

    .line 2642
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    if-ne p0, v1, :cond_10

    .line 2645
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    nop

    .line 2642
    :goto_13
    return v1
.end method

.method private static blacklist migrateToManualRuleZenPolicy(ZZZZZZZZIIZIIZ)Landroid/service/notification/ZenPolicy;
    .registers 16

    .line 793
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 794
    const/4 v1, 0x4

    if-eqz p3, :cond_d

    .line 795
    invoke-static {p8}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result p3

    goto :goto_e

    .line 796
    :cond_d
    move p3, v1

    .line 794
    :goto_e
    invoke-virtual {v0, p3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p3

    .line 797
    invoke-virtual {p3, p4}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p3

    .line 798
    if-eqz p5, :cond_1d

    .line 799
    invoke-static {p9}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_1e

    .line 800
    :cond_1d
    nop

    .line 798
    :goto_1e
    invoke-virtual {p3, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p3

    .line 801
    invoke-virtual {p3, p6}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p3

    .line 802
    invoke-virtual {p3, p7}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p3

    .line 803
    invoke-virtual {p3, p0}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 804
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 805
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 806
    if-eqz p10, :cond_39

    goto :goto_3a

    .line 807
    :cond_39
    const/4 p11, 0x3

    .line 806
    :goto_3a
    invoke-virtual {p0, p11}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    .line 808
    if-nez p12, :cond_44

    .line 809
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    goto :goto_8b

    .line 812
    :cond_44
    and-int/lit8 p1, p12, 0x4

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_4c

    move p1, p2

    goto :goto_4d

    :cond_4c
    move p1, p3

    :goto_4d
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 814
    and-int/lit8 p1, p12, 0x8

    if-nez p1, :cond_56

    move p1, p2

    goto :goto_57

    :cond_56
    move p1, p3

    :goto_57
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 816
    and-int/lit8 p1, p12, 0x10

    if-nez p1, :cond_60

    move p1, p2

    goto :goto_61

    :cond_60
    move p1, p3

    :goto_61
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 818
    and-int/lit8 p1, p12, 0x20

    if-nez p1, :cond_6a

    move p1, p2

    goto :goto_6b

    :cond_6a
    move p1, p3

    :goto_6b
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 820
    and-int/lit8 p1, p12, 0x40

    if-nez p1, :cond_74

    move p1, p2

    goto :goto_75

    :cond_74
    move p1, p3

    :goto_75
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 822
    and-int/lit16 p1, p12, 0x80

    if-nez p1, :cond_7e

    move p1, p2

    goto :goto_7f

    :cond_7e
    move p1, p3

    :goto_7f
    invoke-virtual {p0, p1}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 824
    and-int/lit16 p1, p12, 0x100

    if-nez p1, :cond_87

    goto :goto_88

    :cond_87
    move p2, p3

    :goto_88
    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 828
    :goto_8b
    invoke-virtual {p0, p13}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 829
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o newRuleId()Ljava/lang/String;
    .registers 3

    .line 2116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist readConditionXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/Condition;
    .registers 12

    .line 1012
    const-string v0, "id"

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1013
    const/4 v10, 0x0

    if-nez v2, :cond_a

    return-object v10

    .line 1014
    :cond_a
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    const-string v0, "line1"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1016
    const-string v0, "line2"

    invoke-interface {p0, v10, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1017
    const-string v0, "icon"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1018
    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1019
    const-string v0, "flags"

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1021
    :try_start_31
    const-string/jumbo v0, "source"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1022
    new-instance v1, Landroid/service/notification/Condition;

    invoke-direct/range {v1 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_3e} :catch_3f

    return-object v1

    .line 1023
    :catch_3f
    move-exception v0

    move-object p0, v0

    .line 1024
    const-string v0, "ZenModeConfig"

    const-string v1, "Unable to read condition xml"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    return-object v10
.end method

.method public static blacklist readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 7

    .line 896
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 897
    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 898
    const-string v1, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 899
    const-string/jumbo v1, "zen"

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 901
    const-string v1, "conditionId"

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 902
    const-string v1, "component"

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 903
    const-string v1, "configActivity"

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 904
    const-string/jumbo v1, "pkg"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 905
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-nez v1, :cond_57

    .line 907
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_54

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    :cond_54
    move-object v1, v3

    :goto_55
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 909
    :cond_57
    const-string v1, "creationTime"

    const-wide/16 v4, 0x0

    invoke-static {p0, v1, v4, v5}, Landroid/service/notification/ZenModeConfig;->safeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 910
    const-string v1, "enabler"

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    .line 911
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 912
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenPolicyXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 913
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenDeviceEffectsXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenDeviceEffects;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 914
    const-string/jumbo v1, "userInvokable"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 915
    const-string/jumbo v1, "rule_icon"

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    .line 916
    const-string/jumbo v1, "triggerDesc"

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    .line 917
    const-string/jumbo v1, "type"

    const/4 v4, -0x1

    invoke-static {p0, v1, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 918
    const-string/jumbo v1, "userModifiedFields"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    .line 919
    const-string/jumbo v1, "policyUserModifiedFields"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    .line 920
    const-string/jumbo v1, "zdeUserModifiedFields"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    .line 922
    const-string v1, "deletionInstant"

    invoke-static {p0, v1, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    .line 923
    const-string v1, "disabledOrigin"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    .line 925
    const-string v1, "legacySuppressedEffects"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 927
    const-string v1, "conditionOverride"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    .line 929
    const-string v1, "lastActivation"

    invoke-static {p0, v1, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    .line 930
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->modesUiTileReactivatesLast()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 931
    const-string v1, "lastManualActivation"

    invoke-static {p0, v1, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    .line 933
    const-string v1, "lastDeactivation"

    invoke-static {p0, v1, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    .line 934
    const-string v1, "lastManualDeactivation"

    invoke-static {p0, v1, v3}, Landroid/service/notification/ZenModeConfig;->safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;

    move-result-object p0

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    .line 938
    :cond_102
    return-object v0
.end method

.method private static blacklist readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 425
    if-lez v0, :cond_5a

    .line 426
    new-array v1, v0, [Ljava/lang/String;

    .line 427
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readString8Array([Ljava/lang/String;)V

    .line 428
    const-class v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 429
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/content/pm/ParceledListSlice;

    .line 428
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ParceledListSlice;

    .line 430
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    goto :goto_25

    :cond_20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    :goto_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_49

    .line 432
    nop

    .line 434
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 432
    const-string v2, "Unexpected parceled rules count (%s != %s), throwing them out"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZenModeConfig"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    move v0, v3

    .line 437
    :cond_49
    nop

    :goto_4a
    if-ge v3, v0, :cond_5a

    .line 438
    aget-object v2, v1, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 441
    :cond_5a
    return-void
.end method

.method public static blacklist readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 629
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    .line 630
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_d

    return-object v3

    .line 631
    :cond_d
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 632
    const-string/jumbo v5, "zen"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return-object v3

    .line 633
    :cond_1b
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 634
    const-string/jumbo v6, "version"

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getCurrentXmlVersion()I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v2, Landroid/service/notification/ZenModeConfig;->version:I

    .line 635
    const-string/jumbo v6, "user"

    iget v7, v2, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v0, v6, v7}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v2, Landroid/service/notification/ZenModeConfig;->user:I

    .line 636
    nop

    .line 637
    nop

    .line 638
    nop

    .line 640
    nop

    .line 641
    nop

    .line 642
    nop

    .line 643
    nop

    .line 644
    nop

    .line 645
    nop

    .line 646
    nop

    .line 647
    nop

    .line 648
    nop

    .line 649
    nop

    .line 650
    nop

    .line 651
    nop

    .line 652
    nop

    .line 653
    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v22, v4

    move/from16 v23, v22

    move/from16 v25, v23

    move v14, v7

    move v15, v14

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v24, v19

    move/from16 v26, v24

    move v9, v8

    move v10, v9

    move v12, v10

    move v13, v12

    move/from16 v16, v13

    move/from16 v20, v16

    move/from16 v21, v20

    const/16 v11, 0x9d

    .line 655
    :goto_68
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    if-eq v3, v7, :cond_2dc

    .line 656
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 657
    if-ne v3, v4, :cond_258

    .line 658
    const-string v4, "allow"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_170

    .line 659
    const-string v4, "calls"

    invoke-static {v0, v4, v7}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v17

    .line 661
    const-string/jumbo v4, "repeatCallers"

    invoke-static {v0, v4, v7}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v18

    .line 663
    const-string v4, "messages"

    invoke-static {v0, v4, v7}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v19

    .line 665
    const-string/jumbo v4, "reminders"

    invoke-static {v0, v4, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v20

    .line 667
    const-string v4, "convos"

    invoke-static {v0, v4, v7}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v24

    .line 668
    const-string v4, "events"

    invoke-static {v0, v4, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v21

    .line 669
    const-string v4, "from"

    const/4 v14, -0x1

    invoke-static {v0, v4, v14}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 670
    const-string v15, "callsFrom"

    invoke-static {v0, v15, v14}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 671
    const-string v8, "messagesFrom"

    invoke-static {v0, v8, v14}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 672
    const-string v14, "convosFrom"

    const/4 v7, 0x2

    invoke-static {v0, v14, v7}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v25

    .line 674
    invoke-static {v15}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v14

    const-string v7, "ZenModeConfig"

    if-eqz v14, :cond_d0

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v14

    if-eqz v14, :cond_d0

    .line 675
    nop

    .line 676
    move/from16 v23, v8

    move/from16 v22, v15

    goto :goto_fb

    .line 677
    :cond_d0
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 678
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Migrating existing shared \'from\': "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    nop

    .line 680
    move/from16 v22, v4

    move/from16 v23, v22

    goto :goto_fb

    .line 682
    :cond_f6
    nop

    .line 683
    const/16 v22, 0x2

    const/16 v23, 0x2

    .line 685
    :goto_fb
    const-string v4, "alarms"

    const/4 v8, 0x1

    invoke-static {v0, v4, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    .line 686
    const-string v4, "media"

    invoke-static {v0, v4, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v15

    .line 688
    const-string/jumbo v4, "system"

    const/4 v8, 0x0

    invoke-static {v0, v4, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v16

    .line 689
    const-string/jumbo v4, "priorityChannelsAllowed"

    const/4 v8, 0x1

    invoke-static {v0, v4, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v26

    .line 693
    const-string/jumbo v4, "visualScreenOff"

    invoke-static {v0, v4}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 694
    const-string/jumbo v8, "visualScreenOn"

    invoke-static {v0, v8}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 695
    if-nez v4, :cond_12a

    if-eqz v8, :cond_12d

    .line 699
    :cond_12a
    nop

    .line 700
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 702
    :cond_12d
    if-eqz v4, :cond_137

    .line 703
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_137

    .line 704
    or-int/lit16 v11, v11, 0x8c

    .line 709
    :cond_137
    if-eqz v8, :cond_142

    .line 710
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_142

    .line 711
    or-int/lit8 v4, v11, 0x10

    move v11, v4

    .line 714
    :cond_142
    if-eqz v9, :cond_15a

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Migrated visual effects to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_15a
    move/from16 v4, v23

    move/from16 v23, v11

    move v11, v14

    move/from16 v14, v17

    move/from16 v17, v20

    move/from16 v20, v4

    move v4, v13

    move/from16 v13, v16

    move/from16 v16, v19

    move/from16 v19, v22

    move/from16 v22, v25

    goto/16 :goto_270

    :cond_170
    const-string v4, "disallow"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_199

    if-nez v9, :cond_199

    .line 720
    const-string/jumbo v4, "visualEffects"

    const/16 v7, 0x9d

    invoke-static {v0, v4, v7}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    move/from16 v4, v23

    move/from16 v23, v11

    move v11, v14

    move/from16 v14, v17

    move/from16 v17, v20

    move/from16 v20, v4

    move v4, v13

    move/from16 v13, v16

    move/from16 v16, v19

    move/from16 v19, v22

    move/from16 v22, v25

    goto/16 :goto_270

    .line 717
    :cond_199
    const/16 v7, 0x9d

    .line 722
    const-string v4, "manual"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e5

    .line 723
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v4

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 725
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 729
    nop

    .line 730
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v4, :cond_1cc

    .line 731
    move/from16 v4, v23

    move/from16 v23, v11

    move v11, v14

    move/from16 v14, v17

    move/from16 v17, v20

    move/from16 v20, v4

    move/from16 v13, v16

    move/from16 v16, v19

    move/from16 v19, v22

    move/from16 v22, v25

    const/4 v4, 0x1

    const/4 v12, 0x1

    goto/16 :goto_270

    .line 733
    :cond_1cc
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v23

    move/from16 v23, v11

    move v11, v14

    move/from16 v14, v17

    move/from16 v17, v20

    move/from16 v20, v4

    move v4, v13

    move/from16 v13, v16

    move/from16 v16, v19

    move/from16 v19, v22

    move/from16 v22, v25

    const/4 v12, 0x1

    goto/16 :goto_270

    .line 735
    :cond_1e5
    const-string v4, "automatic"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v7, "deleted"

    if-nez v8, :cond_20e

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f6

    goto :goto_20e

    .line 750
    :cond_1f6
    const-string/jumbo v4, "state"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20b

    .line 751
    const-string v4, "areChannelsBypassingDnd"

    const/4 v8, 0x0

    invoke-static {v0, v4, v8}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    move/from16 v27, v9

    goto :goto_25a

    .line 750
    :cond_20b
    move/from16 v27, v9

    goto :goto_25a

    .line 736
    :cond_20e
    :goto_20e
    const-string/jumbo v8, "ruleId"

    move/from16 v27, v9

    const/4 v9, 0x0

    invoke-interface {v0, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 737
    if-eqz v8, :cond_241

    .line 738
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v9

    .line 739
    iput-object v8, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    .line 740
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_232

    .line 741
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v4

    .line 742
    if-eqz v4, :cond_240

    .line 743
    iget-object v7, v2, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_240

    .line 745
    :cond_232
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_240

    .line 746
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    add-int/lit8 v10, v10, 0x1

    goto :goto_241

    .line 745
    :cond_240
    :goto_240
    nop

    .line 750
    :cond_241
    :goto_241
    move/from16 v4, v23

    move/from16 v23, v11

    move v11, v14

    move/from16 v14, v17

    move/from16 v17, v20

    move/from16 v20, v4

    move v4, v13

    move/from16 v13, v16

    move/from16 v16, v19

    move/from16 v19, v22

    move/from16 v22, v25

    move/from16 v9, v27

    goto :goto_270

    .line 657
    :cond_258
    move/from16 v27, v9

    .line 755
    :goto_25a
    move/from16 v4, v23

    move/from16 v23, v11

    move v11, v14

    move/from16 v14, v17

    move/from16 v17, v20

    move/from16 v20, v4

    move v4, v13

    move/from16 v13, v16

    move/from16 v16, v19

    move/from16 v19, v22

    move/from16 v22, v25

    move/from16 v9, v27

    :goto_270
    const/4 v7, 0x3

    if-ne v3, v7, :cond_2c2

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c2

    .line 756
    if-eqz v12, :cond_27d

    if-eqz v4, :cond_2b9

    .line 758
    :cond_27d
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    move v12, v15

    move/from16 v15, v18

    move/from16 v18, v21

    move/from16 v21, v24

    move/from16 v24, v26

    invoke-static/range {v11 .. v24}, Landroid/service/notification/ZenModeConfig;->migrateToManualRuleZenPolicy(ZZZZZZZZIIZIIZ)Landroid/service/notification/ZenPolicy;

    move-result-object v3

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 763
    if-eqz v4, :cond_2b9

    .line 767
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v3, "android"

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 768
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v8, 0x0

    iput v8, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 770
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v0, :cond_2a7

    .line 771
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 773
    :cond_2a7
    iget-object v0, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    new-instance v3, Landroid/service/notification/Condition;

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v5, ""

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 775
    add-int/lit8 v10, v10, 0x1

    .line 779
    :cond_2b9
    if-eqz v1, :cond_2c1

    .line 780
    const-string/jumbo v0, "notifications:zen_rules"

    invoke-virtual {v1, v0, v10}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsRestored(Ljava/lang/String;I)V

    .line 782
    :cond_2c1
    return-object v2

    .line 755
    :cond_2c2
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 655
    move v3, v14

    move v14, v11

    move/from16 v11, v23

    move/from16 v23, v20

    move/from16 v20, v17

    move/from16 v17, v3

    move v7, v6

    move/from16 v25, v22

    const/4 v3, 0x0

    move/from16 v22, v19

    move/from16 v19, v16

    move/from16 v16, v13

    move v13, v4

    const/4 v4, 0x2

    goto/16 :goto_68

    .line 785
    :cond_2dc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist readZenDeviceEffectsXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenDeviceEffects;
    .registers 4

    .line 1199
    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    .line 1202
    const-string/jumbo v1, "zdeDisplayGrayscale"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1201
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1204
    const-string/jumbo v1, "zdeSuppressAmbientDisplay"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1203
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1206
    const-string/jumbo v1, "zdeDimWallpaper"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1205
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1208
    const-string/jumbo v1, "zdeUseNightMode"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1207
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1210
    const-string/jumbo v1, "zdeDisableAutoBrightness"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1209
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1212
    const-string/jumbo v1, "zdeDisableTapToWake"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1211
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1214
    const-string/jumbo v1, "zdeDisableTiltToWake"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1213
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1216
    const-string/jumbo v1, "zdeDisableTouch"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1215
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1218
    const-string/jumbo v1, "zdeMinimizeRadioUsage"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1217
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1220
    const-string/jumbo v1, "zdeMaximizeDoze"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1219
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1222
    const-string/jumbo v1, "zdeUseNightLight"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 1221
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1223
    const-string/jumbo v1, "zdeExtraEffects"

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->safeStringSet(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    .line 1224
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->applyBrightnessClampingForModes()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 1225
    const-string/jumbo v1, "zdeCapBrightness"

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->unsafeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/service/notification/ZenDeviceEffects$Builder;->setBrightnessCap(Ljava/lang/Float;)Landroid/service/notification/ZenDeviceEffects$Builder;

    .line 1227
    :cond_9a
    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p0

    .line 1228
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->hasEffects()Z

    move-result v0

    if-eqz v0, :cond_a5

    goto :goto_a6

    :cond_a5
    const/4 p0, 0x0

    :goto_a6
    return-object p0
.end method

.method public static blacklist readZenPolicyXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;
    .registers 14

    .line 1045
    nop

    .line 1047
    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    .line 1048
    const-string v1, "callsFrom"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1049
    const-string v3, "messagesFrom"

    invoke-static {p0, v3, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 1050
    const-string/jumbo v4, "repeatCallers"

    invoke-static {p0, v4, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 1051
    const-string v5, "convosFrom"

    invoke-static {p0, v5, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 1053
    const-string v6, "alarms"

    invoke-static {p0, v6, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1054
    const-string v7, "media"

    invoke-static {p0, v7, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1055
    const-string/jumbo v8, "system"

    invoke-static {p0, v8, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 1056
    const-string v9, "events"

    invoke-static {p0, v9, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1057
    const-string/jumbo v10, "reminders"

    invoke-static {p0, v10, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1058
    const-string/jumbo v11, "priorityChannelsAllowed"

    invoke-static {p0, v11, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 1060
    const/4 v12, 0x1

    if-eqz v11, :cond_54

    .line 1061
    if-ne v11, v12, :cond_4e

    move v11, v12

    goto :goto_4f

    :cond_4e
    move v11, v2

    :goto_4f
    invoke-virtual {v0, v11}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1062
    move v11, v12

    goto :goto_55

    .line 1060
    :cond_54
    move v11, v2

    .line 1065
    :goto_55
    if-eqz v1, :cond_5b

    .line 1066
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1067
    move v11, v12

    .line 1069
    :cond_5b
    if-eqz v3, :cond_61

    .line 1070
    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1071
    move v11, v12

    .line 1073
    :cond_61
    if-eqz v4, :cond_6c

    .line 1074
    if-ne v4, v12, :cond_67

    move v1, v12

    goto :goto_68

    :cond_67
    move v1, v2

    :goto_68
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1075
    move v11, v12

    .line 1077
    :cond_6c
    if-eqz v5, :cond_72

    .line 1078
    invoke-virtual {v0, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    .line 1079
    move v11, v12

    .line 1081
    :cond_72
    if-eqz v6, :cond_7d

    .line 1082
    if-ne v6, v12, :cond_78

    move v1, v12

    goto :goto_79

    :cond_78
    move v1, v2

    :goto_79
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1083
    move v11, v12

    .line 1085
    :cond_7d
    if-eqz v7, :cond_88

    .line 1086
    if-ne v7, v12, :cond_83

    move v1, v12

    goto :goto_84

    :cond_83
    move v1, v2

    :goto_84
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1087
    move v11, v12

    .line 1089
    :cond_88
    if-eqz v8, :cond_93

    .line 1090
    if-ne v8, v12, :cond_8e

    move v1, v12

    goto :goto_8f

    :cond_8e
    move v1, v2

    :goto_8f
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1091
    move v11, v12

    .line 1093
    :cond_93
    if-eqz v9, :cond_9e

    .line 1094
    if-ne v9, v12, :cond_99

    move v1, v12

    goto :goto_9a

    :cond_99
    move v1, v2

    :goto_9a
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1095
    move v11, v12

    .line 1097
    :cond_9e
    if-eqz v10, :cond_a9

    .line 1098
    if-ne v10, v12, :cond_a4

    move v1, v12

    goto :goto_a5

    :cond_a4
    move v1, v2

    :goto_a5
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1099
    move v11, v12

    .line 1102
    :cond_a9
    const-string/jumbo v1, "showFullScreenIntent"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 1104
    const-string/jumbo v3, "showLights"

    invoke-static {p0, v3, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 1105
    const-string/jumbo v4, "shoePeek"

    invoke-static {p0, v4, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 1106
    const-string/jumbo v5, "showStatusBarIcons"

    invoke-static {p0, v5, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 1107
    const-string/jumbo v6, "showBadges"

    invoke-static {p0, v6, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 1108
    const-string/jumbo v7, "showAmbient"

    invoke-static {p0, v7, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 1109
    const-string/jumbo v8, "showNotificationList"

    invoke-static {p0, v8, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result p0

    .line 1112
    if-eqz v1, :cond_e5

    .line 1113
    if-ne v1, v12, :cond_e0

    move v1, v12

    goto :goto_e1

    :cond_e0
    move v1, v2

    :goto_e1
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1114
    move v11, v12

    .line 1116
    :cond_e5
    if-eqz v3, :cond_f0

    .line 1117
    if-ne v3, v12, :cond_eb

    move v1, v12

    goto :goto_ec

    :cond_eb
    move v1, v2

    :goto_ec
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1118
    move v11, v12

    .line 1120
    :cond_f0
    if-eqz v4, :cond_fb

    .line 1121
    if-ne v4, v12, :cond_f6

    move v1, v12

    goto :goto_f7

    :cond_f6
    move v1, v2

    :goto_f7
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1122
    move v11, v12

    .line 1124
    :cond_fb
    if-eqz v5, :cond_106

    .line 1125
    if-ne v5, v12, :cond_101

    move v1, v12

    goto :goto_102

    :cond_101
    move v1, v2

    :goto_102
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1126
    move v11, v12

    .line 1128
    :cond_106
    if-eqz v6, :cond_111

    .line 1129
    if-ne v6, v12, :cond_10c

    move v1, v12

    goto :goto_10d

    :cond_10c
    move v1, v2

    :goto_10d
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1130
    move v11, v12

    .line 1132
    :cond_111
    if-eqz v7, :cond_11c

    .line 1133
    if-ne v7, v12, :cond_117

    move v1, v12

    goto :goto_118

    :cond_117
    move v1, v2

    :goto_118
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1134
    move v11, v12

    .line 1136
    :cond_11c
    if-eqz p0, :cond_125

    .line 1137
    if-ne p0, v12, :cond_121

    move v2, v12

    :cond_121
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    .line 1138
    goto :goto_126

    .line 1136
    :cond_125
    move v12, v11

    .line 1141
    :goto_126
    if-eqz v12, :cond_12d

    .line 1142
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0

    .line 1144
    :cond_12d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 485
    const-string/jumbo p0, "{}"

    return-object p0

    .line 488
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 491
    if-lez v1, :cond_29

    .line 492
    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_29
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 495
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 497
    :cond_33
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .registers 4

    .line 1312
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static greylist-max-o safeBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 1316
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 1317
    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3

    .line 1334
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1335
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v0

    .line 1336
    :cond_c
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist safeInstant(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/time/Instant;)Ljava/time/Instant;
    .registers 4

    .line 1373
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1374
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1375
    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    .line 1376
    if-eqz p0, :cond_1a

    .line 1377
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 1380
    :cond_1a
    return-object p2
.end method

.method private static blacklist safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 4

    .line 1321
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static blacklist safeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J
    .registers 5

    .line 1346
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1347
    invoke-static {p0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static blacklist safeStringSet(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1352
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1354
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1355
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_33

    .line 1358
    sget-object p1, Landroid/service/notification/ZenModeConfig;->ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    .line 1359
    array-length p1, p0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, p1, :cond_33

    aget-object v2, p0, v1

    .line 1360
    nop

    .line 1361
    const-string v3, "\\\\"

    const-string v4, "\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1363
    const-string v3, "\\,"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1360
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1359
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1367
    :cond_33
    return-object v0
.end method

.method private static blacklist safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    .line 1340
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1341
    if-nez p0, :cond_8

    return-object v0

    .line 1342
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 4

    .line 520
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 521
    :cond_4
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_f

    .line 522
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez p0, :cond_e

    move v0, v2

    :cond_e
    return v0

    .line 524
    :cond_f
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1f
    move v0, v2

    :cond_20
    return v0
.end method

.method public static greylist-max-o sourceToString(I)Ljava/lang/String;
    .registers 1

    .line 541
    packed-switch p0, :pswitch_data_10

    .line 549
    const-string p0, "UNKNOWN"

    return-object p0

    .line 547
    :pswitch_6
    const-string/jumbo p0, "stars"

    return-object p0

    .line 545
    :pswitch_a
    const-string p0, "contacts"

    return-object p0

    .line 543
    :pswitch_d
    const-string p0, "anyone"

    return-object p0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o toCountdownConditionId(JZ)Landroid/net/Uri;
    .registers 5

    .line 1806
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1807
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1808
    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1809
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1810
    const-string p1, "alarm"

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1811
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1812
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 1806
    return-object p0
.end method

.method public static blacklist toCustomManualConditionId()Landroid/net/Uri;
    .registers 1

    .line 2073
    sget-object v0, Landroid/service/notification/ZenModeConfig;->CUSTOM_MANUAL_CONDITION_ID:Landroid/net/Uri;

    return-object v0
.end method

.method private static greylist-max-o toDayList([I)Ljava/lang/String;
    .registers 4

    .line 573
    if-eqz p0, :cond_23

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_23

    .line 574
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    .line 576
    if-lez v1, :cond_16

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 577
    :cond_16
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 579
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 573
    :cond_23
    :goto_23
    const-string p0, ""

    return-object p0
.end method

.method public static greylist-max-o toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .registers 5

    .line 1981
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1982
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1983
    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v1, v1

    .line 1984
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1985
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    goto :goto_2f

    :cond_2e
    move-object v1, v2

    :goto_2f
    const-string v3, "calendar"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1986
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v1, :cond_40

    .line 1987
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_40
    nop

    .line 1986
    :goto_41
    const-string v1, "calendarId"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget p0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 1988
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "reply"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1989
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 1981
    return-object p0
.end method

.method public static greylist-max-o toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;
    .registers 13

    .line 1757
    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v0

    .line 1758
    invoke-static {p0, p1, p2, v0, p3}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object p3

    .line 1759
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1760
    const v0, 0x1040b63

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1761
    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 1762
    new-instance v1, Landroid/service/notification/Condition;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v3, ""

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v1
.end method

.method public static greylist-max-o toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;
    .registers 2

    .line 1681
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p0

    .line 1682
    if-eqz p0, :cond_20

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v0, v0

    if-nez v0, :cond_10

    goto :goto_20

    .line 1683
    :cond_10
    new-instance v0, Landroid/service/notification/ScheduleCalendar;

    invoke-direct {v0}, Landroid/service/notification/ScheduleCalendar;-><init>()V

    .line 1684
    invoke-virtual {v0, p0}, Landroid/service/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    .line 1685
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1686
    return-object v0

    .line 1682
    :cond_20
    :goto_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static greylist-max-o toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .registers 5

    .line 1858
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1859
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1860
    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 1861
    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "days"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1862
    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1863
    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-boolean p0, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 1864
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "exitAtAlarm"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1865
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 1858
    return-object p0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .registers 4

    .line 1700
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .registers 14

    .line 1705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1706
    if-nez p1, :cond_9

    const-wide/16 v2, 0x2710

    goto :goto_e

    :cond_9
    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    .line 1707
    :goto_e
    add-long v5, v0, v2

    move-object v4, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .registers 14

    .line 1714
    nop

    .line 1715
    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v0

    invoke-static {p0, p1, p2, v0, p4}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object p4

    .line 1716
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1717
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1718
    const/16 v1, 0x3c

    const v2, 0x1040b63

    const-string v3, "formattedTime"

    const-string v4, "count"

    if-ge p3, v1, :cond_4e

    .line 1720
    nop

    .line 1721
    if-eqz p5, :cond_24

    const v1, 0x1040b55

    goto :goto_27

    .line 1722
    :cond_24
    const v1, 0x1040b54

    .line 1723
    :goto_27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    invoke-interface {v0, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    invoke-static {p0, v0, v1}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p3

    .line 1726
    if-eqz p5, :cond_3b

    const p5, 0x1040b53

    goto :goto_3e

    .line 1727
    :cond_3b
    const p5, 0x1040b52

    .line 1728
    :goto_3e
    invoke-static {p0, v0, p5}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p5

    .line 1729
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, v2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1730
    move-object v4, p0

    move-object v2, p3

    move-object v3, p5

    goto :goto_98

    :cond_4e
    const/16 v1, 0x5a0

    if-ge p3, v1, :cond_8a

    .line 1732
    int-to-float p3, p3

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    .line 1733
    if-eqz p5, :cond_60

    const v1, 0x1040b51

    goto :goto_63

    .line 1734
    :cond_60
    const v1, 0x1040b50

    .line 1735
    :goto_63
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    invoke-interface {v0, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    invoke-static {p0, v0, v1}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p3

    .line 1738
    if-eqz p5, :cond_77

    const p5, 0x1040b4f

    goto :goto_7a

    .line 1739
    :cond_77
    const p5, 0x1040b4e

    .line 1740
    :goto_7a
    invoke-static {p0, v0, p5}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object p5

    .line 1741
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, v2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1742
    move-object v4, p0

    move-object v2, p3

    move-object v3, p5

    goto :goto_98

    .line 1744
    :cond_8a
    const p3, 0x1040b64

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    move-object v2, p3

    move-object v3, v2

    move-object v4, v3

    .line 1747
    :goto_98
    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 1748
    new-instance v0, Landroid/service/notification/Condition;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public static greylist-max-o tryParseCountdownConditionId(Landroid/net/Uri;)J
    .registers 6

    .line 1816
    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    .line 1817
    :cond_b
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_52

    .line 1818
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "countdown"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_52

    .line 1820
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_37} :catch_38

    return-wide v0

    .line 1821
    :catch_38
    move-exception v0

    .line 1822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing countdown condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "ZenModeConfig"

    invoke-static {v3, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1823
    return-wide v1

    .line 1818
    :cond_52
    :goto_52
    return-wide v1
.end method

.method private static greylist-max-o tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 6

    .line 583
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 584
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 585
    array-length p1, p0

    if-nez p1, :cond_c

    return-object v0

    .line 586
    :cond_c
    array-length p1, p0

    new-array p1, p1, [I

    .line 587
    const/4 v1, 0x0

    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 588
    aget-object v2, p0, v1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    .line 589
    if-ne v2, v3, :cond_1d

    return-object v0

    .line 590
    :cond_1d
    aput v2, p1, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 592
    :cond_22
    return-object p1
.end method

.method public static greylist-max-o tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .registers 6

    .line 2002
    const/4 v0, 0x0

    if-eqz p0, :cond_37

    .line 2003
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "condition"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2004
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2005
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 2006
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "event"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_38

    :cond_37
    move v2, v0

    .line 2007
    :goto_38
    const/4 v1, 0x0

    if-nez v2, :cond_3c

    return-object v1

    .line 2008
    :cond_3c
    new-instance v2, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 2009
    const-string/jumbo v3, "userId"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x2710

    invoke-static {v3, v4}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 2010
    const-string v3, "calendar"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2011
    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 2012
    iput-object v1, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 2014
    :cond_62
    const-string v3, "calendarId"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 2015
    const-string/jumbo v1, "reply"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v2, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 2016
    return-object v2
.end method

.method private static greylist-max-o tryParseHourAndMinute(Ljava/lang/String;)[I
    .registers 7

    .line 2102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 2103
    :cond_8
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2104
    const/4 v2, 0x1

    if-lt v0, v2, :cond_40

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_19

    goto :goto_40

    .line 2105
    :cond_19
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    .line 2106
    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result p0

    .line 2107
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x2

    new-array v1, v0, [I

    aput v4, v1, v3

    aput p0, v1, v2

    :cond_3f
    return-object v1

    .line 2104
    :cond_40
    :goto_40
    return-object v1
.end method

.method private static greylist-max-o tryParseInt(Ljava/lang/String;I)I
    .registers 3

    .line 596
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return p1

    .line 598
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    .line 599
    :catch_c
    move-exception p0

    .line 600
    return p1
.end method

.method private static greylist-max-o tryParseLong(Ljava/lang/String;J)J
    .registers 4

    .line 605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide p1

    .line 607
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_c

    return-wide p0

    .line 608
    :catch_c
    move-exception p0

    .line 609
    return-wide p1
.end method

.method private static blacklist tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 4

    .line 614
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 616
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    .line 617
    :catch_10
    move-exception p0

    .line 618
    return-object p1
.end method

.method public static greylist tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 8

    .line 1889
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_39

    .line 1890
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "condition"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1891
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1892
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_39

    .line 1893
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "schedule"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move v2, v0

    goto :goto_3a

    :cond_39
    move v2, v1

    .line 1894
    :goto_3a
    const/4 v3, 0x0

    if-nez v2, :cond_3e

    return-object v3

    .line 1895
    :cond_3e
    const-string/jumbo v2, "start"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v2

    .line 1896
    const-string v4, "end"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v4

    .line 1897
    if-eqz v2, :cond_88

    if-nez v4, :cond_58

    goto :goto_88

    .line 1898
    :cond_58
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 1899
    const-string v5, "days"

    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-static {v5, v6}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 1900
    aget v5, v2, v1

    iput v5, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 1901
    aget v2, v2, v0

    iput v2, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 1902
    aget v2, v4, v1

    iput v2, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 1903
    aget v0, v4, v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 1904
    const-string v0, "exitAtAlarm"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 1905
    return-object v3

    .line 1897
    :cond_88
    :goto_88
    return-object v3
.end method

.method private static greylist-max-o tryParseZenMode(Ljava/lang/String;I)I
    .registers 3

    .line 2111
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result p0

    .line 2112
    invoke-static {p0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move p1, p0

    :cond_b
    return p1
.end method

.method private static blacklist unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 1305
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    .line 1306
    :catch_a
    move-exception p0

    .line 1307
    return-object v0
.end method

.method private static blacklist unsafeFloat(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Float;
    .registers 3

    .line 1327
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object p0

    .line 1328
    :catch_a
    move-exception p0

    .line 1329
    return-object v0
.end method

.method private static blacklist writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    if-eqz p2, :cond_7

    .line 1260
    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 1262
    :cond_7
    return-void
.end method

.method public static blacklist writeConditionXml(Landroid/service/notification/Condition;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1031
    const-string/jumbo v0, "summary"

    iget-object v2, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1032
    const-string v0, "line1"

    iget-object v2, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1033
    const-string v0, "line2"

    iget-object v2, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1034
    const-string v0, "icon"

    iget v2, p0, Landroid/service/notification/Condition;->icon:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1035
    const-string/jumbo v0, "state"

    iget v2, p0, Landroid/service/notification/Condition;->state:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1036
    const-string/jumbo v0, "source"

    iget v2, p0, Landroid/service/notification/Condition;->source:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    const-string v0, "flags"

    iget p0, p0, Landroid/service/notification/Condition;->flags:I

    invoke-interface {p1, v1, v0, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    return-void
.end method

.method private static blacklist writeFloatIfNotNull(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/Float;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1266
    if-eqz p2, :cond_a

    .line 1267
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 1269
    :cond_a
    return-void
.end method

.method public static blacklist writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    const-string v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 944
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 945
    const-string v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 947
    :cond_13
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 948
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 949
    const-string/jumbo v0, "pkg"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 951
    :cond_27
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_36

    .line 952
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "component"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 954
    :cond_36
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_45

    .line 955
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    .line 956
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 955
    const-string v1, "configActivity"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 958
    :cond_45
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_54

    .line 959
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conditionId"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 961
    :cond_54
    const-string v0, "creationTime"

    iget-wide v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-interface {p1, v2, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 962
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 963
    const-string v0, "enabler"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 965
    :cond_66
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_6f

    .line 966
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 968
    :cond_6f
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_78

    .line 969
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 971
    :cond_78
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_81

    .line 972
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenDeviceEffectsXml(Landroid/service/notification/ZenDeviceEffects;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 974
    :cond_81
    const-string/jumbo v0, "userInvokable"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 975
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    if-eqz v0, :cond_95

    .line 976
    const-string/jumbo v0, "rule_icon"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    :cond_95
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    if-eqz v0, :cond_a1

    .line 979
    const-string/jumbo v0, "triggerDesc"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 981
    :cond_a1
    const-string/jumbo v0, "type"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 982
    const-string/jumbo v0, "userModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 983
    const-string/jumbo v0, "policyUserModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 984
    const-string/jumbo v0, "zdeUserModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 986
    const-string v0, "deletionInstant"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 987
    const-string v0, "disabledOrigin"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->disabledOrigin:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    const-string v0, "legacySuppressedEffects"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 990
    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e4

    if-nez p2, :cond_e4

    .line 991
    const-string p2, "conditionOverride"

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionOverride:I

    invoke-interface {p1, v2, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    :cond_e4
    const-string p2, "lastActivation"

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastActivation:Ljava/time/Instant;

    invoke-static {p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 994
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->modesUiTileReactivatesLast()Z

    move-result p2

    if-eqz p2, :cond_106

    .line 995
    const-string p2, "lastManualActivation"

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualActivation:Ljava/time/Instant;

    invoke-static {p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 997
    const-string p2, "lastDeactivation"

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastDeactivation:Ljava/time/Instant;

    invoke-static {p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 999
    const-string p2, "lastManualDeactivation"

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->lastManualDeactivation:Ljava/time/Instant;

    invoke-static {p1, p2, p0}, Landroid/service/notification/ZenModeConfig;->writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V

    .line 1002
    :cond_106
    return-void
.end method

.method private static blacklist writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_38

    .line 455
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 456
    new-array v2, v0, [Ljava/lang/String;

    .line 457
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    nop

    :goto_13
    if-ge v1, v0, :cond_29

    .line 459
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v1

    .line 460
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 462
    :cond_29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 464
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 465
    goto :goto_3b

    .line 466
    :cond_38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    :goto_3b
    return-void
.end method

.method private static blacklist writeStringSet(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1273
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1274
    return-void

    .line 1278
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1279
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1280
    nop

    .line 1282
    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1284
    const-string v3, "\\,"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1280
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1286
    goto :goto_10

    .line 1287
    :cond_31
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    .line 1288
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1289
    return-void
.end method

.method private static blacklist writeXmlAttributeInstant(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/time/Instant;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    if-eqz p2, :cond_a

    .line 1007
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-interface {p0, v0, p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1009
    :cond_a
    return-void
.end method

.method private static blacklist writeZenDeviceEffectsXml(Landroid/service/notification/ZenDeviceEffects;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1233
    nop

    .line 1234
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    .line 1233
    const-string/jumbo v1, "zdeDisplayGrayscale"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1235
    nop

    .line 1236
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    .line 1235
    const-string/jumbo v1, "zdeSuppressAmbientDisplay"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1237
    const-string/jumbo v0, "zdeDimWallpaper"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1238
    const-string/jumbo v0, "zdeUseNightMode"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1239
    nop

    .line 1240
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    .line 1239
    const-string/jumbo v1, "zdeDisableAutoBrightness"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1241
    nop

    .line 1242
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    .line 1241
    const-string/jumbo v1, "zdeDisableTapToWake"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1243
    nop

    .line 1244
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    .line 1243
    const-string/jumbo v1, "zdeDisableTiltToWake"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1245
    const-string/jumbo v0, "zdeDisableTouch"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1246
    nop

    .line 1247
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    .line 1246
    const-string/jumbo v1, "zdeMinimizeRadioUsage"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1248
    const-string/jumbo v0, "zdeMaximizeDoze"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1249
    const-string/jumbo v0, "zdeUseNightLight"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    .line 1250
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->applyBrightnessClampingForModes()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1251
    nop

    .line 1252
    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->getBrightnessCap()Ljava/lang/Float;

    move-result-object v0

    .line 1251
    const-string/jumbo v1, "zdeCapBrightness"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeFloatIfNotNull(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/Float;)V

    .line 1254
    :cond_85
    const-string/jumbo v0, "zdeExtraEffects"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroid/service/notification/ZenModeConfig;->writeStringSet(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/Set;)V

    .line 1255
    return-void
.end method

.method private static blacklist writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    const-string v0, "callsFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 1178
    const-string v0, "messagesFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_35

    .line 1182
    :cond_12
    const-string v0, "convosFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1183
    if-eqz p1, :cond_3a

    .line 1184
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3a

    .line 1186
    :cond_20
    const-string/jumbo v0, "priorityChannelsAllowed"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1187
    if-eqz p1, :cond_3a

    .line 1188
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3a

    .line 1191
    :cond_2f
    if-eqz p1, :cond_3a

    .line 1192
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3a

    .line 1179
    :cond_35
    :goto_35
    if-eqz p1, :cond_3a

    .line 1180
    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1195
    :cond_3a
    :goto_3a
    return-void
.end method

.method public static blacklist writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1152
    const-string v0, "callsFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1153
    const-string v0, "messagesFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1154
    const-string/jumbo v0, "repeatCallers"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1156
    const-string v0, "convosFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1157
    const-string v0, "alarms"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1158
    const-string v0, "media"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1159
    const-string/jumbo v0, "system"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1160
    const-string/jumbo v0, "reminders"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1161
    const-string v0, "events"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1163
    const-string/jumbo v0, "showFullScreenIntent"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1165
    const-string/jumbo v0, "showLights"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1166
    const-string/jumbo v0, "shoePeek"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1167
    const-string/jumbo v0, "showStatusBarIcons"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1168
    const-string/jumbo v0, "showBadges"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1169
    const-string/jumbo v0, "showAmbient"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1170
    const-string/jumbo v0, "showNotificationList"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1172
    const-string/jumbo v0, "priorityChannelsAllowed"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    .line 1173
    return-void
.end method


# virtual methods
.method public greylist-max-o applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 4

    .line 1690
    if-nez p1, :cond_3

    return-void

    .line 1691
    :cond_3
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1692
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    .line 1694
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 1695
    iget p1, p1, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    .line 1697
    :cond_22
    return-void
.end method

.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig;
    .registers 3

    .line 1389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1391
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1392
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1393
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 1395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1393
    return-object v1

    .line 1395
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1396
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1385
    const/4 v0, 0x0

    return v0
.end method

.method blacklist ensureManualZenRule()V
    .registers 4

    .line 411
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v0, :cond_21

    .line 412
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 413
    const/4 v1, 0x0

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 414
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 415
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 416
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    .line 417
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 418
    const-string v1, "android"

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    .line 419
    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 421
    :cond_21
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 555
    instance-of v0, p1, Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 556
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 557
    :cond_a
    check-cast p1, Landroid/service/notification/ZenModeConfig;

    .line 558
    iget v2, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v3, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v2, v3, :cond_38

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 559
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 560
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-boolean v2, p1, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    if-ne v2, v3, :cond_38

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    .line 562
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    move v1, v0

    goto :goto_39

    :cond_38
    nop

    .line 558
    :goto_39
    return v1
.end method

.method public blacklist getZenPolicy()Landroid/service/notification/ZenPolicy;
    .registers 2

    .line 1413
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 569
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isManualActive()Z
    .registers 2

    .line 2120
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o isValid()Z
    .registers 5

    .line 502
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 503
    :cond_a
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 504
    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_25

    .line 505
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-nez v3, :cond_22

    return v1

    .line 504
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 507
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 19

    .line 1559
    move-object/from16 v0, p0

    .line 1560
    nop

    .line 1561
    nop

    .line 1562
    nop

    .line 1563
    nop

    .line 1564
    nop

    .line 1566
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_16

    .line 1567
    move v1, v4

    goto :goto_17

    .line 1566
    :cond_16
    move v1, v3

    .line 1569
    :goto_17
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v5, v3, v3}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1571
    or-int/lit8 v1, v1, 0x1

    .line 1573
    :cond_23
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v3}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1575
    or-int/lit8 v1, v1, 0x10

    .line 1577
    :cond_30
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v3}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1578
    or-int/lit8 v1, v1, 0x20

    .line 1580
    :cond_3d
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v8, 0x6

    invoke-virtual {v5, v8, v3}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 1581
    or-int/lit8 v1, v1, 0x40

    .line 1583
    :cond_4a
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v9, 0x7

    invoke-virtual {v5, v9, v3}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1584
    or-int/lit16 v1, v1, 0x80

    .line 1587
    :cond_57
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v5

    if-ne v5, v2, :cond_63

    .line 1588
    or-int/lit16 v1, v1, 0x100

    .line 1590
    :cond_63
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1591
    invoke-virtual {v5}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v5

    .line 1590
    const/4 v9, 0x3

    invoke-static {v5, v9}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v16

    .line 1593
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v5

    if-ne v5, v2, :cond_7c

    .line 1594
    or-int/lit8 v1, v1, 0x8

    .line 1596
    :cond_7c
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1597
    invoke-virtual {v5}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v5

    .line 1596
    invoke-static {v5, v4}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v12

    .line 1598
    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v5}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v5

    if-ne v5, v2, :cond_96

    .line 1599
    or-int/lit8 v1, v1, 0x4

    move v11, v1

    goto :goto_97

    .line 1598
    :cond_96
    move v11, v1

    .line 1601
    :goto_97
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1602
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    .line 1601
    invoke-static {v1, v4}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v13

    .line 1604
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1605
    invoke-virtual {v5}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v5

    if-eq v5, v4, :cond_b1

    move v5, v2

    goto :goto_b2

    :cond_b1
    move v5, v3

    .line 1604
    :goto_b2
    invoke-static {v1, v5}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v15

    .line 1607
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1609
    const/16 v5, 0x9d

    invoke-direct {v0, v5, v3}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v10

    .line 1607
    invoke-virtual {v1, v3, v10}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v1

    .line 1612
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1614
    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v14

    .line 1612
    invoke-virtual {v10, v2, v14}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    .line 1617
    iget-object v14, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v14, v14, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1619
    invoke-direct {v0, v5, v7}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v2

    .line 1617
    invoke-virtual {v14, v7, v2}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v2

    .line 1622
    if-nez v1, :cond_e5

    if-nez v10, :cond_e5

    if-nez v2, :cond_e5

    .line 1623
    const/16 v17, 0x1

    goto :goto_e7

    .line 1626
    :cond_e5
    move/from16 v17, v3

    :goto_e7
    if-nez v1, :cond_eb

    .line 1627
    or-int/lit8 v17, v17, 0x4

    .line 1630
    :cond_eb
    if-nez v10, :cond_ef

    .line 1631
    or-int/lit8 v17, v17, 0x8

    .line 1634
    :cond_ef
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1635
    invoke-direct {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v3

    .line 1634
    invoke-virtual {v1, v4, v3}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v1

    if-nez v1, :cond_101

    .line 1637
    or-int/lit8 v1, v17, 0x10

    .line 1638
    or-int/lit8 v17, v1, 0x2

    .line 1641
    :cond_101
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1642
    invoke-direct {v0, v5, v9}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v3

    .line 1641
    invoke-virtual {v1, v9, v3}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v1

    if-nez v1, :cond_111

    .line 1644
    or-int/lit8 v17, v17, 0x20

    .line 1647
    :cond_111
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1648
    invoke-direct {v0, v5, v6}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v3

    .line 1647
    invoke-virtual {v1, v6, v3}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v1

    if-nez v1, :cond_124

    .line 1650
    or-int/lit8 v17, v17, 0x40

    move/from16 v1, v17

    goto :goto_126

    .line 1647
    :cond_124
    move/from16 v1, v17

    .line 1653
    :goto_126
    if-nez v2, :cond_12a

    .line 1654
    or-int/lit16 v1, v1, 0x80

    .line 1657
    :cond_12a
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    .line 1659
    invoke-direct {v0, v5, v8}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v3

    .line 1657
    invoke-virtual {v2, v8, v3}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v2

    if-nez v2, :cond_13a

    .line 1661
    or-int/lit16 v1, v1, 0x100

    .line 1667
    :cond_13a
    and-int/lit8 v1, v1, -0x4

    .line 1668
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->legacySuppressedEffects:I

    and-int/2addr v0, v9

    or-int v14, v1, v0

    .line 1671
    new-instance v10, Landroid/app/NotificationManager$Policy;

    invoke-direct/range {v10 .. v16}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-object v10
.end method

.method public blacklist toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;
    .registers 20

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    .line 1422
    nop

    .line 1423
    nop

    .line 1424
    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 1425
    iget v4, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 1426
    iget v5, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 1428
    nop

    .line 1429
    const/4 v6, 0x1

    invoke-direct {v0, v6, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v7

    .line 1428
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v7}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1430
    move v7, v6

    goto :goto_20

    .line 1428
    :cond_1f
    move v7, v8

    .line 1433
    :goto_20
    nop

    .line 1434
    const/4 v9, 0x2

    invoke-direct {v0, v9, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v10

    .line 1433
    invoke-virtual {v1, v6, v10}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 1435
    or-int/lit8 v7, v7, 0x2

    .line 1438
    :cond_2e
    nop

    .line 1439
    const/4 v10, 0x4

    invoke-direct {v0, v10, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    .line 1438
    invoke-virtual {v1, v9, v11}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 1440
    or-int/lit8 v7, v7, 0x4

    .line 1441
    nop

    .line 1442
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v11

    .line 1441
    invoke-static {v11, v4}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v4

    move v14, v4

    goto :goto_48

    .line 1438
    :cond_47
    move v14, v4

    .line 1445
    :goto_48
    nop

    .line 1446
    const/16 v4, 0x100

    invoke-direct {v0, v4, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    .line 1445
    const/16 v12, 0x8

    invoke-virtual {v1, v12, v11}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v11

    const/4 v13, 0x3

    if-eqz v11, :cond_66

    .line 1447
    or-int/lit16 v7, v7, 0x100

    .line 1448
    nop

    .line 1449
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v11

    .line 1448
    invoke-static {v11, v5}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v5

    move/from16 v17, v5

    goto :goto_68

    .line 1451
    :cond_66
    move/from16 v17, v13

    .line 1454
    :goto_68
    nop

    .line 1455
    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1454
    invoke-virtual {v1, v13, v5}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 1456
    or-int/lit8 v7, v7, 0x8

    .line 1457
    nop

    .line 1458
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v5

    .line 1457
    invoke-static {v5, v3}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v3

    .line 1461
    :cond_7e
    nop

    .line 1462
    const/16 v5, 0x10

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    .line 1461
    invoke-virtual {v1, v10, v11}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 1464
    or-int/lit8 v7, v7, 0x10

    .line 1467
    :cond_8d
    nop

    .line 1468
    const/16 v11, 0x20

    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v15

    .line 1467
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v15}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v15

    if-eqz v15, :cond_9d

    .line 1469
    or-int/lit8 v7, v7, 0x20

    .line 1472
    :cond_9d
    nop

    .line 1473
    const/16 v15, 0x40

    invoke-direct {v0, v15, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    .line 1472
    const/4 v15, 0x6

    invoke-virtual {v1, v15, v13}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v13

    if-eqz v13, :cond_ad

    .line 1474
    or-int/lit8 v7, v7, 0x40

    .line 1477
    :cond_ad
    nop

    .line 1478
    const/16 v13, 0x80

    invoke-direct {v0, v13, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v15

    .line 1477
    const/4 v11, 0x7

    invoke-virtual {v1, v11, v15}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v11

    if-eqz v11, :cond_bd

    .line 1479
    or-int/lit16 v7, v7, 0x80

    .line 1482
    :cond_bd
    nop

    .line 1484
    invoke-direct {v0, v10, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    .line 1482
    invoke-virtual {v1, v8, v11}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    .line 1487
    nop

    .line 1489
    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    .line 1487
    invoke-virtual {v1, v6, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v12

    .line 1492
    nop

    .line 1494
    invoke-direct {v0, v13, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    .line 1492
    invoke-virtual {v1, v4, v13}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v4

    .line 1497
    if-nez v11, :cond_df

    if-nez v12, :cond_df

    if-nez v4, :cond_df

    .line 1498
    move v8, v6

    .line 1501
    :cond_df
    if-nez v11, :cond_e3

    .line 1502
    or-int/lit8 v8, v8, 0x4

    .line 1505
    :cond_e3
    if-nez v12, :cond_e7

    .line 1506
    or-int/lit8 v8, v8, 0x8

    .line 1509
    :cond_e7
    nop

    .line 1510
    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1509
    invoke-virtual {v1, v9, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_f6

    .line 1512
    or-int/lit8 v5, v8, 0x10

    .line 1513
    or-int/lit8 v8, v5, 0x2

    .line 1516
    :cond_f6
    nop

    .line 1517
    const/16 v5, 0x20

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1516
    const/4 v9, 0x3

    invoke-virtual {v1, v9, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_106

    .line 1519
    or-int/lit8 v8, v8, 0x20

    .line 1522
    :cond_106
    nop

    .line 1523
    const/16 v5, 0x40

    invoke-direct {v0, v5, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v5

    .line 1522
    invoke-virtual {v1, v10, v5}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v5

    if-nez v5, :cond_115

    .line 1525
    or-int/lit8 v8, v8, 0x40

    .line 1528
    :cond_115
    if-nez v4, :cond_119

    .line 1529
    or-int/lit16 v8, v8, 0x80

    .line 1532
    :cond_119
    nop

    .line 1533
    const/16 v4, 0x100

    invoke-direct {v0, v4, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v0

    .line 1532
    const/4 v4, 0x6

    invoke-virtual {v1, v4, v0}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v0

    if-nez v0, :cond_12b

    .line 1535
    or-int/lit16 v8, v8, 0x100

    move v15, v8

    goto :goto_12c

    .line 1532
    :cond_12b
    move v15, v8

    .line 1538
    :goto_12c
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v0

    .line 1539
    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    invoke-static {v1, v6}, Landroid/service/notification/ZenPolicy;->stateToBoolean(IZ)Z

    move-result v1

    .line 1538
    invoke-static {v0, v1}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v16

    .line 1542
    new-instance v11, Landroid/app/NotificationManager$Policy;

    move v13, v3

    move v12, v7

    invoke-direct/range {v11 .. v17}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    return-object v11
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 473
    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 475
    const-string v1, "\nhasPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 476
    const-string v1, ",\nautomaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, ",\nmanualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    const-string v1, ",\ndeletedRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 445
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 447
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p2}, Landroid/service/notification/ZenModeConfig;->writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V

    .line 448
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p2}, Landroid/service/notification/ZenModeConfig;->writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V

    .line 449
    iget-boolean p2, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    return-void
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;ZLandroid/app/backup/BackupRestoreEventLogger;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    nop

    .line 852
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getCurrentXmlVersion()I

    move-result v0

    .line 853
    const/4 v1, 0x0

    const-string/jumbo v2, "zen"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 854
    if-nez p2, :cond_13

    .line 855
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1b

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 854
    :goto_1b
    const-string/jumbo v0, "version"

    invoke-interface {p1, v1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 856
    const-string/jumbo p2, "user"

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-interface {p1, v1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 858
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p2, :cond_3a

    .line 859
    const-string p2, "manual"

    invoke-interface {p1, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 861
    invoke-interface {p1, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 863
    :cond_3a
    nop

    .line 864
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 865
    const/4 v0, 0x0

    const/4 v3, 0x1

    move v4, v0

    :goto_44
    const-string/jumbo v5, "ruleId"

    if-ge v4, p2, :cond_6c

    .line 866
    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 867
    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 868
    const-string v8, "automatic"

    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    invoke-interface {p1, v1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 870
    invoke-static {v7, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 871
    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 872
    add-int/lit8 v3, v3, 0x1

    .line 865
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 874
    :cond_6c
    if-nez p3, :cond_92

    .line 875
    nop

    :goto_6f
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge v0, p2, :cond_92

    .line 876
    iget-object p2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 877
    const-string v4, "deleted"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    iget-object v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-interface {p1, v1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    invoke-static {p2, p1, p3}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 880
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 884
    :cond_92
    const-string/jumbo p2, "state"

    invoke-interface {p1, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    const-string p3, "areChannelsBypassingDnd"

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->hasPriorityChannels:Z

    invoke-interface {p1, v1, p3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    invoke-interface {p1, v1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 889
    if-eqz p4, :cond_ad

    .line 890
    const-string/jumbo p1, "notifications:zen_rules"

    invoke-virtual {p4, p1, v3}, Landroid/app/backup/BackupRestoreEventLogger;->logItemsBackedUp(Ljava/lang/String;I)V

    .line 892
    :cond_ad
    return-void
.end method
