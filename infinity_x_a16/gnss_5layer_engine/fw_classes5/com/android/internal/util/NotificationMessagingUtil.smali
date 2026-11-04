.class public Lcom/android/internal/util/NotificationMessagingUtil;
.super Ljava/lang/Object;
.source "NotificationMessagingUtil.java"


# static fields
.field private static final blacklist DEFAULT_SMS_APP_SETTING:Ljava/lang/String; = "sms_default_application"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDefaultSmsApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSmsContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mStateLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mcacheDefaultSmsApp(Lcom/android/internal/util/NotificationMessagingUtil;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->cacheDefaultSmsApp(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 6

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil$1;

    new-instance v1, Landroid/os/Handler;

    .line 86
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/NotificationMessagingUtil$1;-><init>(Lcom/android/internal/util/NotificationMessagingUtil;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mSmsContentObserver:Landroid/database/ContentObserver;

    .line 47
    iput-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    .line 48
    if-eqz p2, :cond_1f

    goto :goto_24

    :cond_1f
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :goto_24
    iput-object p2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mStateLock:Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 50
    const-string p2, "sms_default_application"

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mSmsContentObserver:Landroid/database/ContentObserver;

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    return-void
.end method

.method private blacklist cacheDefaultSmsApp(I)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_default_application"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_16
    move-exception p1

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p1
.end method

.method private blacklist hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 96
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    const-class v0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p1, v0}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method private blacklist isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 100
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v0, "msg"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private blacklist isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z
    .registers 5

    .line 67
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 68
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2d

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    goto :goto_2d

    .line 69
    :cond_c
    iget-object v1, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_f
    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 71
    invoke-direct {p0, v0}, Lcom/android/internal/util/NotificationMessagingUtil;->cacheDefaultSmsApp(I)V

    .line 73
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/util/NotificationMessagingUtil;->mDefaultSmsApp:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v1

    return p1

    .line 74
    :catchall_2a
    move-exception p1

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2a

    throw p1

    .line 68
    :cond_2d
    :goto_2d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public blacklist isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z
    .registers 5

    .line 54
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p2, v0, :cond_5

    .line 55
    return v1

    .line 58
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-nez p2, :cond_17

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_17
    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public blacklist isMessaging(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    .line 62
    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->hasMessagingStyle(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isDefaultMessagingApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isCategoryMessage(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method
