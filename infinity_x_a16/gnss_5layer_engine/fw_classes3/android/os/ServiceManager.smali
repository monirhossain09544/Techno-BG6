.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ServiceManager$ServiceNotFoundException;,
        Landroid/os/ServiceManager$Stats;
    }
.end annotation


# static fields
.field private static final greylist-max-o GET_SERVICE_LOG_EVERY_CALLS_CORE:I

.field private static final greylist-max-o GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

.field private static final greylist-max-o GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

.field private static final greylist-max-o GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

.field private static final greylist-max-o SLOW_LOG_INTERVAL_MS:I = 0x1388

.field private static final greylist-max-o STATS_LOG_INTERVAL_MS:I = 0x1388

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ServiceManager"

.field private static greylist sCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCache$ravenwood:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sGetServiceAccumulatedCallCount:I

.field private static greylist-max-o sGetServiceAccumulatedUs:I

.field private static greylist-max-o sLastSlowLogActualTime:J

.field private static greylist-max-o sLastSlowLogUptime:J

.field private static greylist-max-o sLastStatsLogUptime:J

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist sServiceManager:Landroid/os/IServiceManager;

.field public static final greylist-max-o sStatLogger:Lcom/android/internal/util/StatLogger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    .line 77
    nop

    .line 78
    const-string v0, "debug.servicemanager.slow_call_core_ms"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    .line 84
    nop

    .line 85
    const-string v0, "debug.servicemanager.slow_call_ms"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    .line 90
    nop

    .line 91
    const-string v0, "debug.servicemanager.log_calls_core"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    .line 96
    nop

    .line 97
    const-string v0, "debug.servicemanager.log_calls"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 121
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "getService()"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static greylist addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    .line 218
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, p1, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 219
    return-void
.end method

.method public static greylist addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .registers 4

    .line 234
    const/16 v0, 0x8

    invoke-static {p0, p1, p2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 235
    return-void
.end method

.method public static greylist-max-r addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .registers 5

    .line 253
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 256
    goto :goto_10

    .line 254
    :catch_8
    move-exception p0

    .line 255
    const-string p1, "ServiceManager"

    const-string p2, "error in addService"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    :goto_10
    return-void
.end method

.method public static blacklist addService$ravenwood(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .registers 4

    .line 262
    const-class p2, Landroid/os/ServiceManager;

    monitor-enter p2

    .line 264
    :try_start_3
    sget-object p3, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    monitor-exit p2

    .line 266
    return-void

    .line 265
    :catchall_10
    move-exception p0

    monitor-exit p2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public static greylist checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3

    .line 276
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 277
    if-eqz v0, :cond_b

    .line 278
    return-object v0

    .line 281
    :cond_b
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->checkService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object p0

    iget-object p0, p0, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    .line 280
    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    .line 283
    :catch_1e
    move-exception p0

    .line 284
    const-string v0, "ServiceManager"

    const-string v1, "error in checkService"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 317
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 318
    :catch_9
    move-exception p0

    .line 319
    const-string v0, "ServiceManager"

    const-string v1, "error in getDeclaredInstances"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static greylist getIServiceManager()Landroid/os/IServiceManager;
    .registers 1

    .line 150
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_7

    .line 151
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0

    .line 156
    :cond_7
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 157
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    return-object v0
.end method

.method public static greylist getService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3

    .line 171
    :try_start_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 172
    if-eqz v0, :cond_b

    .line 173
    return-object v0

    .line 175
    :cond_b
    invoke-static {p0}, Landroid/os/ServiceManager;->rawGetService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    .line 177
    :catch_14
    move-exception p0

    .line 178
    const-string v0, "ServiceManager"

    const-string v1, "error in getService"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getService$ravenwood(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3

    .line 185
    const-class v0, Landroid/os/ServiceManager;

    monitor-enter v0

    .line 187
    :try_start_3
    sget-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    monitor-exit v0

    return-object p0

    .line 188
    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public static blacklist getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .registers 3

    .line 395
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 396
    :catch_9
    move-exception v0

    .line 397
    const-string v1, "ServiceManager"

    const-string v2, "error in getServiceDebugInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 199
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_7

    .line 201
    return-object v0

    .line 203
    :cond_7
    new-instance v0, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {v0, p0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist init$ravenwood()V
    .registers 2

    .line 134
    const-class v0, Landroid/os/ServiceManager;

    monitor-enter v0

    .line 135
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static greylist-max-o initServiceCache(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 411
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 414
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 415
    return-void

    .line 412
    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setServiceCache may only be called once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist isDeclared(Ljava/lang/String;)Z
    .registers 3

    .line 297
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    .line 298
    :catch_9
    move-exception p0

    .line 299
    const-string v0, "ServiceManager"

    const-string v1, "error in isDeclared"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist listServices()[Ljava/lang/String;
    .registers 3

    .line 381
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 382
    :catch_b
    move-exception v0

    .line 383
    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o rawGetService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    sget-object v0, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 435
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IServiceManager;->getService2(Ljava/lang/String;)Landroid/os/Service;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object v2

    iget-object v2, v2, Landroid/os/ServiceWithMetadata;->service:Landroid/os/IBinder;

    .line 437
    sget-object v3, Landroid/os/ServiceManager;->sStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 439
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 440
    invoke-static {v1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    .line 442
    if-eqz v1, :cond_29

    .line 443
    sget-wide v5, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_CORE:J

    goto :goto_2b

    .line 444
    :cond_29
    sget-wide v5, Landroid/os/ServiceManager;->GET_SERVICE_SLOW_THRESHOLD_US_NON_CORE:J

    .line 446
    :goto_2b
    sget-object v3, Landroid/os/ServiceManager;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 447
    :try_start_2e
    sget v7, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    add-int/2addr v7, v0

    sput v7, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 448
    sget v7, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 453
    int-to-long v9, v0

    cmp-long v5, v9, v5

    const-wide/16 v11, 0x1388

    if-ltz v5, :cond_5a

    .line 457
    sget-wide v5, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    add-long/2addr v5, v11

    cmp-long v5, v7, v5

    if-gtz v5, :cond_51

    sget-wide v5, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_5a

    .line 459
    :cond_51
    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0, p0}, Landroid/os/EventLogTags;->writeServiceManagerSlow(ILjava/lang/String;)V

    .line 461
    sput-wide v7, Landroid/os/ServiceManager;->sLastSlowLogUptime:J

    .line 462
    sput-wide v9, Landroid/os/ServiceManager;->sLastSlowLogActualTime:J

    .line 468
    :cond_5a
    if-eqz v1, :cond_5f

    .line 469
    sget p0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_CORE:I

    goto :goto_61

    .line 470
    :cond_5f
    sget p0, Landroid/os/ServiceManager;->GET_SERVICE_LOG_EVERY_CALLS_NON_CORE:I

    .line 472
    :goto_61
    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    if-lt v0, p0, :cond_80

    sget-wide v0, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    add-long/2addr v0, v11

    cmp-long p0, v7, v0

    if-ltz p0, :cond_80

    .line 475
    sget p0, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    sget v0, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    div-int/lit16 v0, v0, 0x3e8

    sget-wide v5, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    sub-long v5, v7, v5

    long-to-int v1, v5

    invoke-static {p0, v0, v1}, Landroid/os/EventLogTags;->writeServiceManagerStats(III)V

    .line 479
    sput v4, Landroid/os/ServiceManager;->sGetServiceAccumulatedCallCount:I

    .line 480
    sput v4, Landroid/os/ServiceManager;->sGetServiceAccumulatedUs:I

    .line 481
    sput-wide v7, Landroid/os/ServiceManager;->sLastStatsLogUptime:J

    .line 483
    :cond_80
    monitor-exit v3

    .line 484
    return-object v2

    .line 483
    :catchall_82
    move-exception p0

    monitor-exit v3
    :try_end_84
    .catchall {:try_start_2e .. :try_end_84} :catchall_82

    throw p0
.end method

.method public static blacklist registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/os/IServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 370
    return-void
.end method

.method public static blacklist reset$ravenwood()V
    .registers 2

    .line 142
    const-class v0, Landroid/os/ServiceManager;

    monitor-enter v0

    .line 143
    :try_start_3
    sget-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 144
    const/4 v1, 0x0

    sput-object v1, Landroid/os/ServiceManager;->sCache$ravenwood:Ljava/util/Map;

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public static blacklist waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 354
    :try_start_0
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 355
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 357
    :catch_b
    move-exception p0

    :cond_c
    nop

    .line 358
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist waitForService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 1

    .line 334
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForServiceNative(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method private static native blacklist waitForServiceNative(Ljava/lang/String;)Landroid/os/IBinder;
.end method
