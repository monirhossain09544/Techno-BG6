.class public Lcom/android/internal/protolog/ProtoLogDataSource;
.super Landroid/tracing/perfetto/DataSource;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;,
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance;,
        Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;,
        Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;,
        Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/tracing/perfetto/DataSource<",
        "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
        "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
        "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist DATASOURCE_NAME:Ljava/lang/String; = "android.protolog"


# instance fields
.field private final blacklist mOnFlushCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnStartCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOnStopCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunningInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$VPcyNWLpkJb2Llg3b6AjwbqkIeo(Lcom/android/internal/protolog/ProtoLogDataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->executeOnStopCallbacks(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$huRpsN2pp2Hn1dkHcp1rwOXHd5Y(Lcom/android/internal/protolog/ProtoLogDataSource;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/protolog/ProtoLogDataSource;->executeOnFlushCallbacks()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zbLGcr8F33CWsucceHMgUWOs8P8(Lcom/android/internal/protolog/ProtoLogDataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->executeOnStartCallbacks(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    const-string v0, "android.protolog"

    invoke-direct {p0, v0}, Lcom/android/internal/protolog/ProtoLogDataSource;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    .line 58
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStartCallbacks:Ljava/util/Set;

    .line 60
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlushCallbacks:Ljava/util/Set;

    .line 62
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStopCallbacks:Ljava/util/Set;

    .line 73
    return-void
.end method

.method private blacklist executeOnFlushCallbacks()V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlushCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;

    .line 191
    invoke-interface {v1}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;->onTracingFlush()V

    .line 192
    goto :goto_6

    .line 193
    :cond_16
    return-void
.end method

.method private declared-synchronized blacklist executeOnStartCallbacks(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 5

    monitor-enter p0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStartCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    .line 185
    invoke-interface {v1, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    .line 186
    goto :goto_10

    .line 187
    :cond_20
    monitor-exit p0

    return-void

    .line 181
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private declared-synchronized blacklist executeOnStopCallbacks(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 5

    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStopCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    .line 199
    invoke-interface {v1, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;->onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    .line 200
    goto :goto_10

    .line 201
    :cond_20
    monitor-exit p0

    return-void

    .line 195
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method static synthetic blacklist lambda$registerOnStartCallback$0(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;Ljava/lang/Integer;Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 3

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    .line 138
    return-void
.end method

.method private blacklist logLevelFromInt(I)Lcom/android/internal/protolog/common/LogLevel;
    .registers 3

    .line 358
    packed-switch p1, :pswitch_data_1e

    .line 365
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unhandled log level"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :pswitch_b
    sget-object p1, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_1c

    .line 363
    :pswitch_e
    sget-object p1, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_1c

    .line 362
    :pswitch_11
    sget-object p1, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_1c

    .line 361
    :pswitch_14
    sget-object p1, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_1c

    .line 360
    :pswitch_17
    sget-object p1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    goto :goto_1c

    .line 359
    :pswitch_1a
    sget-object p1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 358
    :goto_1c
    return-object p1

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private blacklist readProtoLogConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const-wide v0, 0x10b0000007eL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 297
    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    .line 298
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 300
    :goto_10
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_a9

    .line 301
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v4

    const-wide v7, 0x10e00000002L

    packed-switch v4, :pswitch_data_b2

    goto/16 :goto_a7

    .line 303
    :pswitch_26
    const-wide v4, 0x10e00000003L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    .line 304
    invoke-virtual {v2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v5

    if-ge v4, v5, :cond_a7

    .line 305
    nop

    .line 306
    invoke-direct {p0, v4}, Lcom/android/internal/protolog/ProtoLogDataSource;->logLevelFromInt(I)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v2

    goto :goto_a7

    .line 310
    :pswitch_3b
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v4

    .line 311
    packed-switch v4, :pswitch_data_bc

    .line 318
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unhandled ProtoLog tracing mode type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :pswitch_4a
    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    .line 316
    goto :goto_a7

    .line 313
    :pswitch_4d
    goto :goto_a7

    .line 322
    :pswitch_4e
    const-wide v9, 0x20b00000001L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v9

    .line 324
    nop

    .line 325
    nop

    .line 326
    const/4 v4, 0x0

    move-object v11, v2

    .line 327
    :cond_5b
    :goto_5b
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v12

    if-eq v12, v6, :cond_91

    .line 328
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_71

    .line 329
    const-wide v12, 0x10900000001L

    invoke-virtual {p1, v12, v13}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 331
    :cond_71
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_80

    .line 332
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v11

    .line 333
    invoke-direct {p0, v11}, Lcom/android/internal/protolog/ProtoLogDataSource;->logLevelFromInt(I)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v11

    .line 335
    :cond_80
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_5b

    .line 336
    const-wide v12, 0x10800000003L

    invoke-virtual {p1, v12, v13}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v4

    goto :goto_5b

    .line 340
    :cond_91
    if-eqz v5, :cond_9f

    .line 345
    new-instance v6, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    invoke-direct {v6, v11, v4}, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Z)V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_a7

    .line 341
    :cond_9f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to decode proto config. Got a group override without a group tag."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_a7
    :goto_a7
    goto/16 :goto_10

    .line 352
    :cond_a9
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 354
    new-instance p1, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-direct {p1, v2, v3, v5}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;-><init>(Lcom/android/internal/protolog/common/LogLevel;Ljava/util/Map;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V

    return-object p1

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_3b
        :pswitch_26
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4a
    .end packed-switch
.end method


# virtual methods
.method public blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateIncrementalStateArgs<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            ">;)",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;"
        }
    .end annotation

    .line 123
    new-instance p1, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    invoke-direct {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;-><init>()V

    return-object p1
.end method

.method public bridge synthetic blacklist createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->createIncrementalState(Landroid/tracing/perfetto/CreateIncrementalStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/protolog/ProtoLogDataSource;->createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Lcom/android/internal/protolog/ProtoLogDataSource$Instance;
    .registers 11

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_4b

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 83
    :try_start_8
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/16 v2, 0x7e

    if-ne v1, v2, :cond_1f

    .line 84
    if-nez v0, :cond_17

    .line 87
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->readProtoLogConfig(Landroid/util/proto/ProtoInputStream;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v0

    goto :goto_1f

    .line 85
    :cond_17
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ProtoLog config already set in loop"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1f
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_8 .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1f} :catch_4b

    .line 91
    :cond_1f
    :goto_1f
    goto :goto_1

    .line 89
    :catch_20
    move-exception v0

    move-object p1, v0

    .line 90
    :try_start_22
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to parse ProtoLog DataSource config"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_4b

    .line 95
    :cond_2a
    nop

    .line 97
    if-nez v0, :cond_33

    .line 99
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->-$$Nest$sfgetDEFAULT()Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v0

    move-object v4, v0

    goto :goto_34

    .line 97
    :cond_33
    move-object v4, v0

    .line 102
    :goto_34
    new-instance v1, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    new-instance v5, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V

    new-instance v6, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V

    new-instance v7, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;)V

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;-><init>(Landroid/tracing/perfetto/DataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    return-object v1

    .line 93
    :catch_4b
    move-exception v0

    move-object p1, v0

    .line 94
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to read ProtoLog DataSource config"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/CreateTlsStateArgs<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            ">;)",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;"
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Landroid/tracing/perfetto/CreateTlsStateArgs;->getDataSourceInstanceLocked()Landroid/tracing/perfetto/DataSourceInstance;

    move-result-object p1

    check-cast p1, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;

    .line 111
    const/4 v0, 0x0

    if-nez p1, :cond_18

    .line 113
    :try_start_9
    new-instance v1, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->-$$Nest$sfgetDEFAULT()Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_27

    .line 116
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V

    .line 113
    :cond_17
    return-object v1

    .line 115
    :cond_18
    :try_start_18
    new-instance v1, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    invoke-static {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->-$$Nest$fgetmConfig(Lcom/android/internal/protolog/ProtoLogDataSource$Instance;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource-IA;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_27

    .line 116
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V

    .line 115
    :cond_26
    return-object v1

    .line 110
    :catchall_27
    move-exception v0

    if-eqz p1, :cond_32

    :try_start_2a
    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    throw v0
.end method

.method public bridge synthetic blacklist createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogDataSource;->createTlsState(Landroid/tracing/perfetto/CreateTlsStateArgs;)Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist registerOnFlushCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlushCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public declared-synchronized blacklist registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V
    .registers 4

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStartCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mRunningInstances:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/internal/protolog/ProtoLogDataSource$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 139
    monitor-exit p0

    return-void

    .line 133
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public blacklist registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V
    .registers 3

    .line 154
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStopCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public blacklist unregisterOnFlushCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnFlushCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public blacklist unregisterOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStartCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public blacklist unregisterOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource;->mOnStopCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method
