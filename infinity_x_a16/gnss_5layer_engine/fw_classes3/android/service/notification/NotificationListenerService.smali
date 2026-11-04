.class public abstract Landroid/service/notification/NotificationListenerService;
.super Landroid/app/Service;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;,
        Landroid/service/notification/NotificationListenerService$MyHandler;,
        Landroid/service/notification/NotificationListenerService$RankingMap;,
        Landroid/service/notification/NotificationListenerService$Ranking;,
        Landroid/service/notification/NotificationListenerService$ChannelOrGroupModificationTypes;,
        Landroid/service/notification/NotificationListenerService$NotificationFilterTypes;,
        Landroid/service/notification/NotificationListenerService$NotificationCancelReason;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SETTINGS_HOME:Ljava/lang/String; = "android.service.notification.action.SETTINGS_HOME"

.field public static final whitelist FLAG_FILTER_TYPE_ALERTING:I = 0x2

.field public static final whitelist FLAG_FILTER_TYPE_CONVERSATIONS:I = 0x1

.field public static final whitelist FLAG_FILTER_TYPE_ONGOING:I = 0x8

.field public static final whitelist FLAG_FILTER_TYPE_SILENT:I = 0x4

.field public static final whitelist HINT_HOST_DISABLE_CALL_EFFECTS:I = 0x4

.field public static final whitelist HINT_HOST_DISABLE_EFFECTS:I = 0x1

.field public static final whitelist HINT_HOST_DISABLE_NOTIFICATION_EFFECTS:I = 0x2

.field public static final whitelist INTERRUPTION_FILTER_ALARMS:I = 0x4

.field public static final whitelist INTERRUPTION_FILTER_ALL:I = 0x1

.field public static final whitelist INTERRUPTION_FILTER_NONE:I = 0x3

.field public static final whitelist INTERRUPTION_FILTER_PRIORITY:I = 0x2

.field public static final whitelist INTERRUPTION_FILTER_UNKNOWN:I = 0x0

.field public static final whitelist META_DATA_DEFAULT_AUTOBIND:Ljava/lang/String; = "android.service.notification.default_autobind_listenerservice"

.field public static final whitelist META_DATA_DEFAULT_FILTER_TYPES:Ljava/lang/String; = "android.service.notification.default_filter_types"

.field public static final whitelist META_DATA_DISABLED_FILTER_TYPES:Ljava/lang/String; = "android.service.notification.disabled_filter_types"

.field public static final whitelist NOTIFICATION_CHANNEL_OR_GROUP_ADDED:I = 0x1

.field public static final whitelist NOTIFICATION_CHANNEL_OR_GROUP_DELETED:I = 0x3

.field public static final whitelist NOTIFICATION_CHANNEL_OR_GROUP_UPDATED:I = 0x2

.field public static final whitelist REASON_APP_CANCEL:I = 0x8

.field public static final whitelist REASON_APP_CANCEL_ALL:I = 0x9

.field public static final whitelist REASON_ASSISTANT_CANCEL:I = 0x16

.field public static final whitelist REASON_BUNDLE_DISMISSED:I = 0x18

.field public static final whitelist REASON_CANCEL:I = 0x2

.field public static final whitelist REASON_CANCEL_ALL:I = 0x3

.field public static final whitelist REASON_CHANNEL_BANNED:I = 0x11

.field public static final whitelist REASON_CHANNEL_REMOVED:I = 0x14

.field public static final whitelist REASON_CLEAR_DATA:I = 0x15

.field public static final whitelist REASON_CLICK:I = 0x1

.field public static final whitelist REASON_ERROR:I = 0x4

.field public static final whitelist REASON_GROUP_OPTIMIZATION:I = 0xd

.field public static final whitelist REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field public static final whitelist REASON_LISTENER_CANCEL:I = 0xa

.field public static final whitelist REASON_LISTENER_CANCEL_ALL:I = 0xb

.field public static final whitelist REASON_LOCKDOWN:I = 0x17

.field public static final whitelist REASON_PACKAGE_BANNED:I = 0x7

.field public static final whitelist REASON_PACKAGE_CHANGED:I = 0x5

.field public static final whitelist REASON_PACKAGE_SUSPENDED:I = 0xe

.field public static final whitelist REASON_PROFILE_TURNED_OFF:I = 0xf

.field public static final whitelist REASON_SNOOZED:I = 0x12

.field public static final whitelist REASON_TIMEOUT:I = 0x13

.field public static final whitelist REASON_UNAUTOBUNDLED:I = 0x10

.field public static final whitelist REASON_USER_STOPPED:I = 0x6

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationListenerService"

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist TRIM_FULL:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist TRIM_LIGHT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final greylist-max-p TAG:Ljava/lang/String;

.field private greylist-max-o isConnected:Z

.field private blacklist mCompletionListener:Landroid/service/notification/IDispatchCompletionListener;

.field protected greylist-max-o mCurrentUser:I

.field private greylist-max-p mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field protected greylist-max-p mNoMan:Landroid/app/INotificationManager;

.field private greylist-max-o mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field protected greylist-max-o mSystemContext:Landroid/content/Context;

.field protected greylist-max-r mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetTAG(Landroid/service/notification/NotificationListenerService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetisConnected(Landroid/service/notification/NotificationListenerService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/notification/NotificationListenerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/service/notification/NotificationListenerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRankingMap(Landroid/service/notification/NotificationListenerService;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputisConnected(Landroid/service/notification/NotificationListenerService;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCompletionListener(Landroid/service/notification/NotificationListenerService;Landroid/service/notification/IDispatchCompletionListener;)V
    .registers 2

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mCompletionListener:Landroid/service/notification/IDispatchCompletionListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybePopulatePeople(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->maybePopulatePeople(Landroid/app/Notification;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybePopulateRemoteViews(Landroid/service/notification/NotificationListenerService;Landroid/app/Notification;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->maybePopulateRemoteViews(Landroid/app/Notification;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyDispatchCompletion(Landroid/service/notification/NotificationListenerService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->notifyDispatchCompletion(J)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 114
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    nop

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    .line 429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z

    return-void
.end method

.method private greylist-max-o cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)[",
            "Landroid/service/notification/StatusBarNotification;"
        }
    .end annotation

    .line 1134
    const/4 v0, 0x0

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_66

    .line 1137
    :cond_a
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 1138
    nop

    .line 1139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1140
    const/4 v2, 0x0

    :goto_14
    if-ge v0, v1, :cond_54

    .line 1141
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    .line 1142
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 1145
    :try_start_20
    invoke-virtual {p0, v4}, Landroid/service/notification/NotificationListenerService;->createLegacyIconExtras(Landroid/app/Notification;)V

    .line 1147
    invoke-direct {p0, v4}, Landroid/service/notification/NotificationListenerService;->maybePopulateRemoteViews(Landroid/app/Notification;)V

    .line 1149
    invoke-direct {p0, v4}, Landroid/service/notification/NotificationListenerService;->maybePopulatePeople(Landroid/app/Notification;)V
    :try_end_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_29} :catch_2a

    .line 1157
    goto :goto_51

    .line 1150
    :catch_2a
    move-exception v4

    .line 1151
    if-nez v2, :cond_32

    .line 1152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1154
    :cond_32
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    iget-object v4, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get(Active/Snoozed)Notifications: can\'t rebuild notification from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1156
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1155
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1159
    :cond_54
    if-eqz v2, :cond_59

    .line 1160
    invoke-interface {p1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1162
    :cond_59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/service/notification/StatusBarNotification;

    return-object p1

    .line 1135
    :cond_66
    :goto_66
    new-array p1, v0, [Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method private greylist-max-o maybePopulatePeople(Landroid/app/Notification;)V
    .registers 7

    .line 1486
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_3f

    .line 1487
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    const-class v2, Landroid/app/Person;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1489
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 1490
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1491
    new-array v2, v1, [Ljava/lang/String;

    .line 1492
    const/4 v3, 0x0

    :goto_27
    if-ge v3, v1, :cond_38

    .line 1493
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    .line 1494
    invoke-virtual {v4}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1492
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1496
    :cond_38
    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.people"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1499
    :cond_3f
    return-void
.end method

.method private greylist-max-o maybePopulateRemoteViews(Landroid/app/Notification;)V
    .registers 5

    .line 1467
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_28

    .line 1468
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1472
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 1473
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1474
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1476
    iput-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1477
    iput-object v2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1478
    iput-object v0, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1480
    :cond_28
    return-void
.end method

.method private blacklist notifyDispatchCompletion(J)V
    .registers 5

    .line 2528
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2529
    :try_start_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->reportNlsStartAndEnd()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mCompletionListener:Landroid/service/notification/IDispatchCompletionListener;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    if-nez v1, :cond_e

    goto :goto_1e

    .line 2534
    :cond_e
    :try_start_e
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mCompletionListener:Landroid/service/notification/IDispatchCompletionListener;

    invoke-interface {v1, p1, p2}, Landroid/service/notification/IDispatchCompletionListener;->notifyDispatchComplete(J)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14
    .catchall {:try_start_e .. :try_end_13} :catchall_20

    .line 2537
    goto :goto_1c

    .line 2535
    :catch_14
    move-exception p1

    .line 2536
    :try_start_15
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Cannot send dispatch completion to the system"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2538
    :goto_1c
    monitor-exit v0

    .line 2539
    return-void

    .line 2531
    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    .line 2538
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public static whitelist requestRebind(Landroid/content/ComponentName;)V
    .registers 2

    .line 1393
    nop

    .line 1394
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1393
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 1396
    :try_start_c
    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->requestBindListener(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 1399
    nop

    .line 1400
    return-void

    .line 1397
    :catch_11
    move-exception p0

    .line 1398
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static whitelist requestUnbind(Landroid/content/ComponentName;)V
    .registers 2

    .line 1408
    nop

    .line 1409
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1408
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 1411
    :try_start_c
    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->requestUnbindListenerComponent(Landroid/content/ComponentName;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    .line 1414
    nop

    .line 1415
    return-void

    .line 1412
    :catch_11
    move-exception p0

    .line 1413
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final greylist-max-o applyUpdateLocked(Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 2

    .line 1784
    invoke-virtual {p1}, Landroid/service/notification/NotificationRankingUpdate;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1785
    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .line 473
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 474
    new-instance p1, Landroid/service/notification/NotificationListenerService$MyHandler;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/service/notification/NotificationListenerService$MyHandler;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    .line 475
    return-void
.end method

.method public final whitelist cancelAllNotifications()V
    .registers 2

    .line 788
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->cancelNotifications([Ljava/lang/String;)V

    .line 789
    return-void
.end method

.method public final whitelist cancelNotification(Ljava/lang/String;)V
    .registers 4

    .line 764
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 766
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_14} :catch_15

    .line 770
    goto :goto_1d

    .line 768
    :catch_15
    move-exception p1

    .line 769
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to contact notification manager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    :goto_1d
    return-void
.end method

.method public final whitelist cancelNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 734
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 736
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 740
    goto :goto_19

    .line 738
    :catch_11
    move-exception p1

    .line 739
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string p3, "Unable to contact notification manager"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    :goto_19
    return-void
.end method

.method public final whitelist cancelNotifications([Ljava/lang/String;)V
    .registers 4

    .line 805
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 807
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 810
    goto :goto_19

    .line 808
    :catch_11
    move-exception p1

    .line 809
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to contact notification manager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 811
    :goto_19
    return-void
.end method

.method public final whitelist clearRequestedListenerHints()V
    .registers 4

    .line 1226
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1228
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1231
    goto :goto_19

    .line 1229
    :catch_11
    move-exception v0

    .line 1230
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1232
    :goto_19
    return-void
.end method

.method public final whitelist createConversationNotificationChannelForPackage(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 11

    .line 926
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 928
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 929
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->createConversationNotificationChannelForPackageFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    .line 928
    return-object p1

    .line 931
    :catch_17
    move-exception v0

    move-object p1, v0

    .line 932
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string p3, "Unable to contact notification manager"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final greylist-max-o createLegacyIconExtras(Landroid/app/Notification;)V
    .registers 7

    .line 1445
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_4f

    .line 1446
    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1447
    invoke-virtual {p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 1448
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 1449
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.icon"

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1450
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    iput v0, p1, Landroid/app/Notification;->icon:I

    .line 1452
    :cond_30
    if-eqz v1, :cond_4f

    .line 1453
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1454
    if-eqz v0, :cond_4f

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4f

    .line 1455
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1456
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.largeIcon"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1457
    iput-object v0, p1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1461
    :cond_4f
    return-void
.end method

.method public whitelist getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .registers 3

    .line 1048
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1049
    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    new-array v0, v1, [Landroid/service/notification/StatusBarNotification;

    :goto_b
    return-object v0
.end method

.method public greylist getActiveNotifications(I)[Landroid/service/notification/StatusBarNotification;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1084
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 1085
    if-eqz p1, :cond_8

    goto :goto_b

    :cond_8
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/service/notification/StatusBarNotification;

    :goto_b
    return-object p1
.end method

.method public whitelist getActiveNotifications([Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 3

    .line 1101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 1102
    if-eqz p1, :cond_8

    goto :goto_a

    :cond_8
    new-array p1, v0, [Landroid/service/notification/StatusBarNotification;

    :goto_a
    return-object p1
.end method

.method public greylist getActiveNotifications([Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1120
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1121
    return-object v1

    .line 1123
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1124
    invoke-interface {v0, v2, p1, p2}, Landroid/app/INotificationManager;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1125
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationListenerService;->cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17
    .catch Landroid/os/BadParcelableException; {:try_start_8 .. :try_end_16} :catch_17

    return-object p1

    .line 1126
    :catch_17
    move-exception p1

    .line 1127
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to contact notification manager"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1129
    return-object v1
.end method

.method protected greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 1789
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 1790
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    return-object v0

    .line 1792
    :cond_7
    return-object p0
.end method

.method public final whitelist getCurrentInterruptionFilter()I
    .registers 5

    .line 1210
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1212
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1213
    :catch_13
    move-exception v0

    .line 1214
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1215
    return v1
.end method

.method public final whitelist getCurrentListenerHints()I
    .registers 5

    .line 1179
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1181
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 1182
    :catch_13
    move-exception v0

    .line 1183
    iget-object v2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v3, "Unable to contact notification manager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1184
    return v1
.end method

.method public whitelist getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .registers 3

    .line 1306
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1307
    :try_start_3
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    monitor-exit v0

    return-object v1

    .line 1308
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 484
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final whitelist getNotificationChannelGroups(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 997
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 1000
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 1001
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    .line 1000
    return-object p1

    .line 1002
    :catch_17
    move-exception p1

    .line 1003
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to contact notification manager"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final whitelist getNotificationChannels(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 974
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 977
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 978
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    .line 977
    return-object p1

    .line 979
    :catch_17
    move-exception p1

    .line 980
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to contact notification manager"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method protected final greylist-max-p getNotificationInterface()Landroid/app/INotificationManager;
    .registers 2

    .line 697
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    if-nez v0, :cond_12

    .line 698
    nop

    .line 699
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 698
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    .line 701
    :cond_12
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mNoMan:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public final whitelist getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;
    .registers 4

    .line 1063
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1064
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1065
    invoke-direct {p0, v0}, Landroid/service/notification/NotificationListenerService;->cleanUpNotificationList(Landroid/content/pm/ParceledListSlice;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    .line 1066
    :catch_10
    move-exception v0

    .line 1067
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1069
    const/4 v0, 0x0

    return-object v0
.end method

.method protected greylist isBound()Z
    .registers 3

    .line 1328
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_d

    .line 1329
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Notification listener service not yet bound."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/4 v0, 0x0

    return v0

    .line 1332
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist migrateNotificationFilter(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 880
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 884
    goto :goto_19

    .line 882
    :catch_11
    move-exception p1

    .line 883
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to contact notification manager"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    :goto_19
    return-void
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 1319
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez p1, :cond_b

    .line 1320
    new-instance p1, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-direct {p1, p0}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1322
    :cond_b
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    return-object p1
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 1337
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/service/notification/NotificationListenerService;->mCompletionListener:Landroid/service/notification/IDispatchCompletionListener;

    .line 1339
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_e

    .line 1340
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 1341
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1342
    return-void

    .line 1339
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist onInterruptionFilterChanged(I)V
    .registers 2

    .line 692
    return-void
.end method

.method public whitelist onListenerConnected()V
    .registers 1

    .line 598
    return-void
.end method

.method public whitelist onListenerDisconnected()V
    .registers 1

    .line 608
    return-void
.end method

.method public whitelist onListenerHintsChanged(I)V
    .registers 2

    .line 630
    return-void
.end method

.method public whitelist onNotificationChannelGroupModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 5

    .line 680
    return-void
.end method

.method public whitelist onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 5

    .line 661
    return-void
.end method

.method public whitelist onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 497
    return-void
.end method

.method public whitelist onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3

    .line 510
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 511
    return-void
.end method

.method public whitelist onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2

    .line 619
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 530
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 3

    .line 551
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 552
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 4

    .line 574
    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 575
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/NotificationStats;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 587
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 588
    return-void
.end method

.method public whitelist onSilentStatusBarIconsVisibilityChanged(Z)V
    .registers 2

    .line 642
    return-void
.end method

.method public greylist registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_b

    .line 1361
    new-instance v0, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-direct {v0, p0}, Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;-><init>(Landroid/service/notification/NotificationListenerService;)V

    iput-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1363
    :cond_b
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService;->mSystemContext:Landroid/content/Context;

    .line 1364
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1365
    new-instance v1, Landroid/service/notification/NotificationListenerService$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Landroid/service/notification/NotificationListenerService$MyHandler;-><init>(Landroid/service/notification/NotificationListenerService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/service/notification/NotificationListenerService;->mHandler:Landroid/os/Handler;

    .line 1366
    iput p3, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    .line 1367
    iget-object p1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    .line 1368
    return-void
.end method

.method public final whitelist requestInterruptionFilter(I)V
    .registers 4

    .line 1277
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1279
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 1280
    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1283
    goto :goto_19

    .line 1281
    :catch_11
    move-exception p1

    .line 1282
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to contact notification manager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1284
    :goto_19
    return-void
.end method

.method public final whitelist requestListenerHints(I)V
    .registers 4

    .line 1249
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1251
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1254
    goto :goto_19

    .line 1252
    :catch_11
    move-exception p1

    .line 1253
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to contact notification manager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    :goto_19
    return-void
.end method

.method public final whitelist requestUnbind()V
    .registers 3

    .line 1428
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-eqz v0, :cond_17

    .line 1429
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1431
    :try_start_8
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    .line 1433
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService;->isConnected:Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 1436
    goto :goto_17

    .line 1434
    :catch_11
    move-exception v0

    .line 1435
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1438
    :cond_17
    :goto_17
    return-void
.end method

.method public final whitelist setNotificationsShown([Ljava/lang/String;)V
    .registers 4

    .line 899
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 901
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 904
    goto :goto_19

    .line 902
    :catch_11
    move-exception p1

    .line 903
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to contact notification manager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 905
    :goto_19
    return-void
.end method

.method public final greylist setOnNotificationPostedTrim(I)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1030
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1032
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 1035
    goto :goto_19

    .line 1033
    :catch_11
    move-exception p1

    .line 1034
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to contact notification manager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    :goto_19
    return-void
.end method

.method public final whitelist snoozeNotification(Ljava/lang/String;J)V
    .registers 6

    .line 854
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 856
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 860
    goto :goto_19

    .line 858
    :catch_11
    move-exception p1

    .line 859
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string p3, "Unable to contact notification manager"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    :goto_19
    return-void
.end method

.method public final greylist snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 831
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 833
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/INotificationManager;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 837
    goto :goto_19

    .line 835
    :catch_11
    move-exception p1

    .line 836
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to contact notification manager"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    :goto_19
    return-void
.end method

.method public greylist unregisterAsSystemService()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1380
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-eqz v0, :cond_f

    .line 1381
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    .line 1382
    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    iget v2, p0, Landroid/service/notification/NotificationListenerService;->mCurrentUser:I

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 1384
    :cond_f
    return-void
.end method

.method public final whitelist updateNotificationChannel(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .registers 6

    .line 952
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->isBound()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 954
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationListenerService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/INotificationManager;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_12

    .line 959
    nop

    .line 960
    return-void

    .line 956
    :catch_12
    move-exception p1

    .line 957
    iget-object p2, p0, Landroid/service/notification/NotificationListenerService;->TAG:Ljava/lang/String;

    const-string p3, "Unable to contact notification manager"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 958
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
