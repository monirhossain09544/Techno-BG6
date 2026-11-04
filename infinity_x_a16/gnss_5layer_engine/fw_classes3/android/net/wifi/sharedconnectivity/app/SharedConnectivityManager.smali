.class public Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
.super Ljava/lang/Object;
.source "SharedConnectivityManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mCallbackProxyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntentAction:Ljava/lang/String;

.field private final blacklist mProxyDataLock:Ljava/lang/Object;

.field private final blacklist mProxyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private final blacklist mServicePackageName:Ljava/lang/String;

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBroadcastReceiver(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxyDataLock(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxyMap(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbind(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->bind()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->registerCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    const-class v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    .line 299
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$2;

    invoke-direct {v0, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$2;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 234
    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    .line 235
    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServicePackageName:Ljava/lang/String;

    .line 236
    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mIntentAction:Ljava/lang/String;

    .line 237
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mUserManager:Landroid/os/UserManager;

    .line 238
    return-void
.end method

.method private blacklist bind()V
    .registers 5

    .line 241
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 275
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServicePackageName:Ljava/lang/String;

    .line 276
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 275
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 278
    if-nez v0, :cond_67

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 281
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_44

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 283
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    goto :goto_67

    .line 286
    :cond_44
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_47
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    .line 288
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 292
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 294
    :cond_62
    monitor-exit v0

    goto :goto_67

    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_47 .. :try_end_66} :catchall_64

    throw v1

    .line 297
    :cond_67
    :goto_67
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
    .registers 5

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    const v1, 0x10402f0

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    const v3, 0x10402ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_26

    .line 213
    :cond_20
    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-direct {v3, p0, v1, v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 209
    :cond_26
    :goto_26
    sget-object p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v0, "To support shared connectivity service on this device, the service\'s package name and intent action strings must not be empty"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_2d} :catch_2e

    .line 211
    return-object v2

    .line 214
    :catch_2e
    move-exception p0

    .line 215
    sget-object p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v0, "To support shared connectivity service on this device, the service\'s package name and intent action strings must be defined"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-object v2
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
    .registers 4

    .line 229
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$bind$0(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V
    .registers 3

    .line 289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to bind after user unlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onRegisterCallbackFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method private blacklist registerCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V
    .registers 5

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->registerCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    .line 321
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_12

    .line 322
    :try_start_8
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    monitor-exit v0

    .line 327
    goto :goto_1d

    .line 323
    :catchall_f
    move-exception p2

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    :try_start_11
    throw p2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_12

    .line 324
    :catch_12
    move-exception p2

    .line 325
    sget-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Exception in registerCallback"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    invoke-interface {p1, p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onRegisterCallbackFailed(Ljava/lang/Exception;)V

    .line 328
    :goto_1d
    return-void
.end method

.method private blacklist unbind()V
    .registers 3

    .line 348
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_10

    .line 349
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 351
    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    .line 353
    :cond_10
    return-void
.end method


# virtual methods
.method public whitelist connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Z
    .registers 5

    .line 466
    const-string v0, "Hotspot network cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 469
    return v1

    .line 473
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    .line 477
    nop

    .line 478
    const/4 p1, 0x1

    return p1

    .line 474
    :catch_13
    move-exception p1

    .line 475
    sget-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in connectHotspotNetwork"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    return v1
.end method

.method public whitelist connectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Z
    .registers 5

    .line 518
    const-string v0, "Known network cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 520
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 521
    return v1

    .line 525
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->connectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    .line 529
    nop

    .line 530
    const/4 p1, 0x1

    return p1

    .line 526
    :catch_13
    move-exception p1

    .line 527
    sget-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in connectKnownNetwork"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    return v1
.end method

.method public whitelist disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Z
    .registers 5

    .line 493
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 494
    return v1

    .line 498
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_e

    .line 502
    nop

    .line 503
    const/4 p1, 0x1

    return p1

    .line 499
    :catch_e
    move-exception p1

    .line 500
    sget-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in disconnectHotspotNetwork"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    return v1
.end method

.method public whitelist forgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Z
    .registers 5

    .line 543
    const-string v0, "Known network cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 546
    return v1

    .line 550
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->forgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_13

    .line 554
    nop

    .line 555
    const/4 p1, 0x1

    return p1

    .line 551
    :catch_13
    move-exception p1

    .line 552
    sget-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in forgetKnownNetwork"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    return v1
.end method

.method public blacklist getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public whitelist getHotspotNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .registers 5

    .line 635
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 636
    return-object v1

    .line 640
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getHotspotNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 641
    :catch_d
    move-exception v0

    .line 642
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getHotspotNetworkConnectionStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    return-object v1
.end method

.method public whitelist getHotspotNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 569
    return-object v1

    .line 573
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getHotspotNetworks()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 574
    :catch_d
    move-exception v0

    .line 575
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getHotspotNetworks"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    return-object v1
.end method

.method public whitelist getKnownNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .registers 5

    .line 658
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 659
    return-object v1

    .line 663
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getKnownNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 664
    :catch_d
    move-exception v0

    .line 665
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getKnownNetworkConnectionStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    return-object v1
.end method

.method public whitelist getKnownNetworks()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 591
    return-object v1

    .line 595
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getKnownNetworks()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 596
    :catch_d
    move-exception v0

    .line 597
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getKnownNetworks"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    return-object v1
.end method

.method public blacklist getServiceConnection()Landroid/content/ServiceConnection;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public whitelist getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .registers 5

    .line 612
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 613
    return-object v1

    .line 617
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return-object v0

    .line 618
    :catch_d
    move-exception v0

    .line 619
    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getSettingsState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 621
    return-object v1
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V
    .registers 6

    .line 372
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_45

    .line 382
    :cond_1b
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

    invoke-direct {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V

    .line 384
    iget-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    if-nez p1, :cond_41

    .line 386
    iget-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter p1

    .line 389
    :try_start_27
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    .line 390
    :goto_32
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3e

    .line 392
    if-eqz v1, :cond_3d

    .line 393
    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->bind()V

    .line 395
    :cond_3d
    return-void

    .line 391
    :catchall_3e
    move-exception p2

    :try_start_3f
    monitor-exit p1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p2

    .line 397
    :cond_41
    invoke-direct {p0, p2, v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->registerCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V

    .line 398
    return-void

    .line 376
    :cond_45
    :goto_45
    sget-object p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v0, "Callback already registered"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Callback already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onRegisterCallbackFailed(Ljava/lang/Exception;)V

    .line 379
    return-void
.end method

.method public blacklist setService(Landroid/os/IInterface;)V
    .registers 2

    .line 335
    check-cast p1, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    .line 336
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)Z
    .registers 7

    .line 410
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 413
    sget-object p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v0, "Callback not found, cannot unregister"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return v1

    .line 419
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_25} :catch_26

    .line 422
    goto :goto_27

    .line 420
    :catch_26
    move-exception v0

    .line 424
    :goto_27
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v2, 0x1

    if-nez v0, :cond_44

    .line 426
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_2f
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    .line 430
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_41

    .line 431
    if-eqz p1, :cond_40

    .line 432
    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->unbind()V

    .line 434
    :cond_40
    return v2

    .line 430
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1

    .line 439
    :cond_44
    :try_start_44
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_6a

    .line 440
    :try_start_47
    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    iget-object v4, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    invoke-interface {v3, v4}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->unregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    .line 441
    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    .line 443
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_67

    .line 444
    if-eqz p1, :cond_65

    .line 445
    :try_start_62
    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->unbind()V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_65} :catch_6a

    .line 450
    :cond_65
    nop

    .line 451
    return v2

    .line 443
    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw p1
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6a} :catch_6a

    .line 447
    :catch_6a
    move-exception p1

    .line 448
    sget-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in unregisterCallback"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    return v1
.end method
