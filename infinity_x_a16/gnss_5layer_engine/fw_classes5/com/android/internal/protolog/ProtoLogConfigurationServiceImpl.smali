.class public Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;
.super Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;
.source "ProtoLogConfigurationServiceImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/ProtoLogConfigurationService;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;,
        Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLogConfigurationService"


# instance fields
.field private final blacklist mClientRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfigFileCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfigLock:Ljava/lang/Object;

.field private final blacklist mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private final blacklist mLogGroupToLogcatStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRegisteredGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunningInstances:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;


# direct methods
.method public static synthetic blacklist $r8$lambda$7_oRkkr1dek-CLgkBi7KBQCdsvQ(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FUBAmjg0amlWr42YK8lhO2Z2tFs(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceFlush()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ReB_YOL2yzrokrqqs51-oV1Cw6c(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wPtt8uiPRcPZf-oNAXsjhpBvE3c(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 151
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    new-instance v1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    .line 153
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V
    .registers 3

    .line 162
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V
    .registers 3

    .line 157
    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V

    .line 158
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;)V
    .registers 4

    .line 168
    invoke-direct {p0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientRecords:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    .line 140
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    .line 169
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    .line 171
    new-instance p2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    .line 172
    new-instance p2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnFlushCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;)V

    .line 173
    new-instance p2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    .line 175
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 176
    return-void
.end method

.method private static blacklist dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V
    .registers 3

    .line 455
    new-instance v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/protolog/Utils;->dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    .line 463
    return-void
.end method

.method static synthetic blacklist lambda$dumpViewerConfig$1(Ljava/lang/String;)Lcom/android/internal/protolog/AutoClosableProtoInputStream;
    .registers 5

    .line 457
    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/protolog/AutoClosableProtoInputStream;-><init>(Ljava/io/FileInputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 458
    :catch_b
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load viewer config file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic blacklist lambda$toggleProtoLogToLogcat$0(Ljava/util/Set;Landroid/os/IBinder;Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;)V
    .registers 3

    .line 413
    iget-object p1, p2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->groups:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private blacklist onTracingInstanceFlush()V
    .registers 6

    .line 435
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 436
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 438
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_33

    .line 439
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_33
    goto :goto_12

    .line 442
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_4e

    .line 444
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 445
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-interface {v2, v3, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;->trace(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    .line 446
    goto :goto_39

    .line 447
    :cond_4d
    return-void

    .line 442
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method private blacklist onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    .line 431
    iget-object p2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method private blacklist onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    .line 450
    iget-object p2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRunningInstances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method private blacklist registerGroupsLocked(Lcom/android/internal/protolog/IProtoLogClient;[Ljava/lang/String;[Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_5f

    .line 351
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientRecords:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/protolog/IProtoLogClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;

    .line 352
    if-nez v0, :cond_2b

    .line 353
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to add groups to unregistered client: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProtoLogConfigurationService"

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void

    .line 357
    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    array-length v2, p2

    if-ge v1, v2, :cond_5e

    .line 358
    aget-object v2, p2, v1

    .line 359
    aget-boolean v3, p3, v1

    .line 362
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v4, v0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->groups:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 368
    if-eq v4, v3, :cond_5b

    .line 369
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lcom/android/internal/protolog/IProtoLogClient;->toggleLogcat(Z[Ljava/lang/String;)V

    .line 357
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 372
    :cond_5e
    return-void

    .line 345
    :cond_5f
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected groups and logcatStatuses to have the same length, but groups has length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " and logcatStatuses has length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V
    .registers 12

    .line 378
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    array-length v1, p3

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 381
    iget-object p3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    goto :goto_13

    .line 383
    :cond_12
    nop

    .line 386
    :goto_13
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;

    .line 388
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, v3, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->groups:Ljava/util/Set;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 389
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 391
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_bd

    .line 392
    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_12a

    .line 394
    :try_start_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toggling logcat logging for client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->client:Lcom/android/internal/protolog/IProtoLogClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for groups: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    .line 396
    invoke-static {v6, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    iget-object v5, v3, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->client:Lcom/android/internal/protolog/IProtoLogClient;

    invoke-interface {v5, p2, v4}, Lcom/android/internal/protolog/IProtoLogClient;->toggleLogcat(Z[Ljava/lang/String;)V

    .line 398
    const-string v4, "- Done"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_87
    .catch Landroid/os/DeadObjectException; {:try_start_45 .. :try_end_87} :catch_96
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_87} :catch_88
    .catchall {:try_start_45 .. :try_end_87} :catchall_12a

    goto :goto_bc

    .line 403
    :catch_88
    move-exception p2

    .line 404
    :try_start_89
    const-string p3, "- Failed (unexpected RemoteException)"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "Failed to toggle logcat status for groups on client"

    invoke-direct {p1, p3, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 399
    :catch_96
    move-exception v4

    .line 400
    const-string v5, "- Failed (client may have died)"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string v5, "ProtoLogConfigurationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to toggle logcat status for groups on client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, v3, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->client:Lcom/android/internal/protolog/IProtoLogClient;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", it likely has died"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    :goto_bc
    nop

    .line 409
    :cond_bd
    goto/16 :goto_1d

    .line 412
    :cond_bf
    new-instance v1, Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 413
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientRecords:Ljava/util/Map;

    new-instance v4, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 416
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to toggle log to logcat for group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with no registered clients. This is a no-op."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 419
    const-string v4, "ProtoLogConfigurationService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    goto :goto_d6

    .line 424
    :cond_117
    array-length p1, p3

    :goto_118
    if-ge v2, p1, :cond_128

    aget-object v1, p3, v2

    .line 425
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_118

    .line 427
    :cond_128
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_12a
    move-exception p1

    monitor-exit v0
    :try_end_12c
    .catchall {:try_start_89 .. :try_end_12c} :catchall_12a

    throw p1
.end method

.method private static blacklist writeViewerConfigGroup(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 468
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 470
    :goto_d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5f

    .line 471
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_66

    .line 485
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected field id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :pswitch_38
    const-wide v4, 0x10900000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    .line 482
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 483
    goto :goto_d

    .line 477
    :pswitch_45
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 479
    goto :goto_d

    .line 473
    :pswitch_52
    const-wide v4, 0x10d00000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    .line 474
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 475
    goto :goto_d

    .line 490
    :cond_5f
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 491
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 492
    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_52
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method

.method private static blacklist writeViewerConfigMessage(Landroid/util/proto/ProtoInputStream;Landroid/util/proto/ProtoOutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    const-wide v0, 0x20b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    .line 497
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 499
    :goto_d
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7a

    .line 500
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    packed-switch v4, :pswitch_data_82

    .line 508
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected field id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :pswitch_38
    const-wide v4, 0x10900000005L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_d

    .line 505
    :pswitch_45
    const-wide v4, 0x10d00000004L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_d

    .line 504
    :pswitch_52
    const-wide v4, 0x10e00000003L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_d

    .line 503
    :pswitch_5f
    const-wide v4, 0x10900000002L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_d

    .line 501
    :pswitch_6c
    nop

    .line 502
    const-wide v4, 0x10600000001L

    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    .line 501
    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_d

    .line 513
    :cond_7a
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 514
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 515
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_5f
        :pswitch_52
        :pswitch_45
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 1

    .line 331
    return-void
.end method

.method public whitelist binderDied(Landroid/os/IBinder;)V
    .registers 2

    .line 338
    invoke-static {p1}, Lcom/android/internal/protolog/IProtoLogClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->unregisterClient(Lcom/android/internal/protolog/IProtoLogClient;)V

    .line 339
    return-void
.end method

.method public varargs blacklist disableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public varargs blacklist enableProtoLogToLogcat(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->toggleProtoLogToLogcat(Ljava/io/PrintWriter;Z[Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public blacklist getGroups()[Ljava/lang/String;
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mRegisteredGroups:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 283
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist isLoggingToLogcat(Ljava/lang/String;)Z
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mLogGroupToLogcatStatus:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 314
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2c

    .line 316
    if-eqz v1, :cond_13

    .line 321
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 317
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to get logcat logging status of non-registered group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public blacklist onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 265
    if-eqz v0, :cond_18

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_18

    .line 266
    :cond_b
    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-virtual {p6, p1, p2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 267
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Shell commands are only callable by ADB"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_18
    :goto_18
    new-instance v0, Lcom/android/internal/protolog/ProtoLogCommandHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/protolog/ProtoLogCommandHandler;-><init>(Lcom/android/internal/protolog/ProtoLogConfigurationService;)V

    .line 271
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/protolog/ProtoLogCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 272
    return-void
.end method

.method public blacklist registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-interface {p1}, Lcom/android/internal/protolog/IProtoLogClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 196
    iget-object v1, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->viewerConfigFile:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_9
    iget-object v3, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientRecords:Ljava/util/Map;

    new-instance v4, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;

    invoke-direct {v4, p1, v1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;-><init>(Lcom/android/internal/protolog/IProtoLogClient;Ljava/lang/String;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 202
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 202
    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_31
    iget-object v1, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    iget-object p2, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->registerGroupsLocked(Lcom/android/internal/protolog/IProtoLogClient;[Ljava/lang/String;[Z)V

    .line 207
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_3d

    .line 209
    invoke-interface {v0, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 210
    return-void

    .line 207
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public blacklist registerGroups(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object v1, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;->groups:[Ljava/lang/String;

    iget-object p2, p2, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;->groupsDefaultLogcatStatus:[Z

    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->registerGroupsLocked(Lcom/android/internal/protolog/IProtoLogClient;[Ljava/lang/String;[Z)V

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public blacklist unregisterClient(Lcom/android/internal/protolog/IProtoLogClient;)V
    .registers 9

    .line 225
    if-nez p1, :cond_3

    .line 226
    return-void

    .line 229
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/protolog/IProtoLogClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 230
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 231
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 236
    :cond_d
    nop

    .line 237
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_11
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mClientRecords:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;

    .line 239
    if-nez p1, :cond_1d

    .line 240
    monitor-exit v1

    return-void

    .line 243
    :cond_1d
    iget-object v2, p1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->configFile:Ljava/lang/String;

    if-eqz v2, :cond_46

    .line 244
    iget-object v2, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->configFile:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 245
    iget-object v4, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    iget-object v5, p1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->configFile:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    if-nez v2, :cond_46

    .line 248
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mConfigFileCounts:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->configFile:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move v0, v3

    .line 252
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_53

    .line 255
    if-eqz v0, :cond_52

    .line 256
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mViewerConfigFileTracer:Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    iget-object p1, p1, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ClientRecord;->configFile:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl$ViewerConfigFileTracer;->trace(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;)V

    .line 258
    :cond_52
    return-void

    .line 252
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method
