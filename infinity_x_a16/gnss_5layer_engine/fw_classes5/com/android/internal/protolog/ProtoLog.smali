.class public Lcom/android/internal/protolog/ProtoLog;
.super Ljava/lang/Object;
.source "ProtoLog.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLog"

.field public static blacklist REQUIRE_PROTOLOGTOOL:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static volatile blacklist sController:Lcom/android/internal/protolog/ProtoLogController;

.field private static blacklist sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private static final blacklist sDataSourceLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/protolog/ProtoLog;->REQUIRE_PROTOLOGTOOL:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLog;->sDataSourceLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/android/internal/protolog/ProtoLogController;

    invoke-direct {v0}, Lcom/android/internal/protolog/ProtoLogController;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLog;->sController:Lcom/android/internal/protolog/ProtoLogController;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 115
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 177
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public static blacklist getControllerInstanceForTest()Lcom/android/internal/protolog/ProtoLogController;
    .registers 1

    .line 267
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sController:Lcom/android/internal/protolog/ProtoLogController;

    return-object v0
.end method

.method public static blacklist getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;
    .registers 3

    .line 223
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sDataSourceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    if-nez v1, :cond_26

    .line 225
    sget-object v1, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v1}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 226
    new-instance v1, Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogDataSource;-><init>()V

    sput-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 227
    new-instance v1, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    .line 229
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v1

    .line 233
    sget-object v2, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v2, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    .line 235
    :cond_26
    sget-object v1, Lcom/android/internal/protolog/ProtoLog;->sDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    monitor-exit v0

    return-object v1

    .line 236
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static blacklist getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .registers 1

    .line 210
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sController:Lcom/android/internal/protolog/ProtoLogController;

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-object v0
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 146
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public static varargs blacklist init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 2

    .line 100
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sController:Lcom/android/internal/protolog/ProtoLogController;

    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/ProtoLogController;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 101
    return-void
.end method

.method public static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 3

    .line 201
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sController:Lcom/android/internal/protolog/ProtoLogController;

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result p0

    return p0
.end method

.method static blacklist logOnlyToLogcat()Z
    .registers 1

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist logOnlyToLogcat$ravenwood()Z
    .registers 1

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method private static varargs blacklist logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    .line 241
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sController:Lcom/android/internal/protolog/ProtoLogController;

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 242
    if-nez v0, :cond_e

    .line 243
    const-string p0, "ProtoLog"

    const-string p1, "Trying to use ProtoLog before it is initialized in this process."

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 247
    :cond_e
    invoke-interface {v0, p1, p0}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 248
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_17
    return-void
.end method

.method public static varargs blacklist registerLogGroupInProcess([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 2

    .line 90
    sget-object v0, Lcom/android/internal/protolog/ProtoLog;->sController:Lcom/android/internal/protolog/ProtoLogController;

    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/ProtoLogController;->registerLogGroupInProcess([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 91
    return-void
.end method

.method public static blacklist setControllerInstanceForTest(Lcom/android/internal/protolog/ProtoLogController;)V
    .registers 1

    .line 261
    sput-object p0, Lcom/android/internal/protolog/ProtoLog;->sController:Lcom/android/internal/protolog/ProtoLogController;

    .line 262
    return-void
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 130
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 161
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 192
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/protolog/ProtoLog;->logStringMessage(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    return-void
.end method
