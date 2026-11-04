.class public abstract Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.super Lcom/android/internal/protolog/IProtoLogClient$Stub;
.source "PerfettoProtoLogImpl.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLog;
.implements Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;
.implements Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;
.implements Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLog"

.field public static blacklist MAX_INTERNED_STRINGS_SIZE_BYTES_BEFORE_RESET:I = 0x0

.field public static final blacklist NULL_STRING:Ljava/lang/String; = "null"

.field private static final blacklist STACK_SIZE_TO_PROTO_LOG_ENTRY_CALL:I = 0x6


# instance fields
.field private final blacklist mActiveTracingInstances:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

.field private final blacklist mCollectStackTraceGroupCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mConfigUpdaterLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final blacklist mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

.field protected final blacklist mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

.field private final blacklist mDefaultLogLevelCounts:[I

.field private final blacklist mLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLogGroupsLock:Ljava/lang/Object;

.field private final blacklist mLogLevelCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private blacklist mLogcatReady:Z

.field public final blacklist mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic blacklist $r8$lambda$2j0oAK89ytApbCr0Ps_GsjpEYRQ(Lcom/android/internal/protolog/PerfettoProtoLogImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$queueTracingInstanceAddition$7(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ONsiF0TBddV6xaknEhsfvs87lGk(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$disconnectFromConfigurationServiceAsync$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aPlThjatvauMxCx9GC6HUZvQ76I(Lcom/android/internal/protolog/PerfettoProtoLogImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$queueTracingInstanceRemoval$8(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nH4-trin5tQIfT-e44ZAbslGRUk(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$log$5(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nQkhpMIsDQL_5ykQiMrcm69wHJY(Lcom/android/internal/protolog/PerfettoProtoLogImpl;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$registerGroupsWithConfigurationServiceAsync$1([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oLMGvk9n3jCtLVnANtrX7U02Jos(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$logToProto$6(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oxnj0p6m0xIT7ZE941M_mRZmSsw(Lcom/android/internal/protolog/PerfettoProtoLogImpl;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->lambda$connectToConfigurationServiceAsync$0([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    const/high16 v0, 0x400000

    sput v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->MAX_INTERNED_STRINGS_SIZE_BYTES_BEFORE_RESET:I

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 5

    .line 161
    invoke-static {}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->getConfigurationService()Lcom/android/internal/protolog/IProtoLogConfigurationService;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V

    .line 162
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V
    .registers 6

    .line 168
    invoke-direct {p0}, Lcom/android/internal/protolog/IProtoLogClient$Stub;-><init>()V

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroupsLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    .line 119
    nop

    .line 120
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    .line 123
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigUpdaterLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mActiveTracingInstances:Ljava/util/Set;

    .line 151
    nop

    .line 152
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    .line 169
    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    .line 170
    iput-object p2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    .line 171
    iput-object p4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    .line 173
    invoke-direct {p0, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 174
    return-void
.end method

.method private blacklist collectStackTrace()Ljava/lang/String;
    .registers 7

    .line 764
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 765
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 766
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 767
    const/4 v3, 0x6

    :goto_13
    :try_start_13
    array-length v4, v0

    if-ge v3, v4, :cond_31

    .line 768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_39

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 770
    :cond_31
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 772
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 766
    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw v0
.end method

.method private varargs blacklist connectToConfigurationServiceAsync([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    const-string v1, "A null ProtoLog Configuration Service was provided!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method private blacklist disconnectFromConfigurationServiceAsync()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    const-string v1, "A null ProtoLog Configuration Service was provided!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method private static blacklist getConfigurationService()Lcom/android/internal/protolog/IProtoLogConfigurationService;
    .registers 2

    .line 213
    const-string v0, "protolog_configuration"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_d

    .line 215
    invoke-static {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/protolog/IProtoLogConfigurationService;

    move-result-object v0

    return-object v0

    .line 217
    :cond_d
    const-string v0, "ProtoLog"

    const-string v1, "Failed to get the ProtoLog Configuration Service! Protologging client will not be synced properly and will not be available for running configuration of which groups to log to logcat. We might also be missing viewer configs in the trace for decoding the messages."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist hash(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 757
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method private blacklist internProtoMessage(Landroid/tracing/perfetto/TracingContext;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;)J
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Lcom/android/internal/protolog/common/LogLevel;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 691
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 693
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->hash(Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 695
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->protologAutoClearIncrementalState()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3a

    iget-object v5, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    .line 696
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 697
    iget-wide v7, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->internedStringsSizeBytes:J

    .line 698
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v9, v5

    add-long/2addr v7, v9

    sget v5, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->MAX_INTERNED_STRINGS_SIZE_BYTES_BEFORE_RESET:I

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_34

    move v5, v6

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    .line 700
    :goto_35
    if-eqz v5, :cond_3a

    .line 701
    invoke-virtual {v3}, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->reset()V

    .line 705
    :cond_3a
    iget-boolean v5, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    const-wide v7, 0x10d0000000dL

    if-nez v5, :cond_4e

    .line 706
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/tracing/perfetto/TracingContext;->newTracePacket(I)Landroid/util/proto/ProtoOutputStream;

    move-result-object v5

    .line 707
    invoke-virtual {v5, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 708
    iput-boolean v6, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    .line 712
    :cond_4e
    iget-object v5, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-wide v9, 0x10900000002L

    const-wide v11, 0x10b00000069L

    if-nez v5, :cond_ad

    .line 713
    iget-object v5, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologGroupInterningSet:Ljava/util/Set;

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 715
    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Landroid/tracing/perfetto/TracingContext;->newTracePacket(I)Landroid/util/proto/ProtoOutputStream;

    move-result-object v5

    .line 716
    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 717
    const-wide v11, 0x20b00000002L

    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 719
    const-wide v7, 0x10d00000001L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v6

    invoke-virtual {v5, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 720
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 721
    const-wide v6, 0x10900000003L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 723
    invoke-virtual {v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 724
    invoke-virtual {v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 727
    :cond_ad
    iget-object v5, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_110

    .line 728
    iget-object v5, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->protologMessageInterningSet:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 729
    iget-wide v5, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->internedStringsSizeBytes:J

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->internedStringsSizeBytes:J

    .line 731
    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket(I)Landroid/util/proto/ProtoOutputStream;

    move-result-object v0

    .line 734
    const/4 v3, 0x2

    const-wide v5, 0x10d0000000dL

    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 736
    const-wide v5, 0x10b00000069L

    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 737
    const-wide v7, 0x20b00000001L

    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 739
    const-wide v11, 0x10600000001L

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 740
    invoke-virtual {v0, v9, v10, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 741
    const-wide v2, 0x10e00000003L

    iget v1, v1, Lcom/android/internal/protolog/common/LogLevel;->protoMessageId:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 742
    const-wide v1, 0x10d00000004L

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 744
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 745
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 748
    :cond_110
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 780
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 781
    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->stacktraceInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000025L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private blacklist internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 802
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 804
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/tracing/Flags;->protologAutoClearIncrementalState()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    .line 805
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 806
    iget-wide v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->internedStringsSizeBytes:J

    .line 807
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v5, v1

    add-long/2addr v3, v5

    sget v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->MAX_INTERNED_STRINGS_SIZE_BYTES_BEFORE_RESET:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    .line 809
    :goto_25
    if-eqz v1, :cond_2a

    .line 810
    invoke-virtual {v0}, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->reset()V

    .line 814
    :cond_2a
    iget-boolean v1, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    if-nez v1, :cond_3e

    .line 815
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/tracing/perfetto/TracingContext;->newTracePacket(I)Landroid/util/proto/ProtoOutputStream;

    move-result-object v1

    .line 816
    const-wide v3, 0x10d0000000dL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 817
    iput-boolean v2, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->clearReported:Z

    .line 820
    :cond_3e
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 821
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v2

    .line 822
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    iget-wide v2, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->internedStringsSizeBytes:J

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->internedStringsSizeBytes:J

    .line 825
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/tracing/perfetto/TracingContext;->newTracePacket(I)Landroid/util/proto/ProtoOutputStream;

    move-result-object p1

    .line 826
    const-wide v2, 0x10b0000000cL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 827
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p3

    .line 828
    const-wide v4, 0x10400000001L

    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 829
    const-wide v0, 0x10c00000002L

    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v0, v1, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 830
    invoke-virtual {p1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 831
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 834
    :cond_87
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private blacklist internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/TracingContext<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 790
    invoke-virtual {p1}, Landroid/tracing/perfetto/TracingContext;->getIncrementalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;

    .line 791
    iget-object v3, v0, Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;->argumentInterningMap:Ljava/util/Map;

    const-wide v4, 0x20b00000024L

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internString(Landroid/tracing/perfetto/TracingContext;Ljava/util/Map;JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private synthetic blacklist lambda$connectToConfigurationServiceAsync$0([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 7

    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    move-result-object v0

    .line 237
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    .line 238
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    .line 240
    const/4 v1, 0x0

    :goto_f
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 241
    aget-object v2, p1, v1

    .line 242
    iget-object v3, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groups:[Ljava/lang/String;

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 243
    iget-object v3, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->groupsDefaultLogcatStatus:[Z

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v2

    aput-boolean v2, v3, v1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 246
    :cond_27
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    invoke-interface {p1, p0, v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService;->registerClient(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 249
    goto :goto_35

    .line 247
    :catch_2d
    move-exception p1

    .line 248
    const-string v0, "ProtoLog"

    const-string v1, "Failed to register ProtoLog client"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :goto_35
    return-void
.end method

.method private synthetic blacklist lambda$disconnectFromConfigurationServiceAsync$2()V
    .registers 4

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    invoke-interface {v0, p0}, Lcom/android/internal/protolog/IProtoLogConfigurationService;->unregisterClient(Lcom/android/internal/protolog/IProtoLogClient;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 300
    goto :goto_e

    .line 298
    :catch_6
    move-exception v0

    .line 299
    const-string v1, "ProtoLog"

    const-string v2, "Failed to unregister ProtoLog client"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_e
    return-void
.end method

.method private synthetic blacklist lambda$log$5(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .registers 9

    .line 478
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToProto(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    .line 501
    goto/16 :goto_76

    .line 479
    :catch_5
    move-exception v0

    move-object p1, v0

    .line 482
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    const-string p4, "Failed to log to ProtoLog for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-static {p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2b

    .line 486
    const-string p4, "message: \""

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-static {p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 487
    :cond_2b
    invoke-static {p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object p4

    if-eqz p4, :cond_3f

    .line 488
    const-string p4, "message with hash: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-static {p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 490
    :cond_3f
    const-string p3, "message: (info unavailable)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :goto_44
    if-eqz p7, :cond_6d

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6d

    .line 494
    const-string p3, "\nOriginal Call Site Stack Trace:\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string p3, "\n"

    invoke-virtual {p7, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    array-length p5, p4

    const/4 p6, 0x0

    :goto_59
    if-ge p6, p5, :cond_6d

    aget-object p7, p4, p6

    .line 496
    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    add-int/lit8 p6, p6, 0x1

    goto :goto_59

    .line 500
    :cond_6d
    const-string p3, "ProtoLog"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    :goto_76
    return-void
.end method

.method private synthetic blacklist lambda$logToProto$6(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;JLandroid/tracing/perfetto/TracingContext;)V
    .registers 25

    .line 568
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    iget-object v0, v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mActiveTracingInstances:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/tracing/perfetto/TracingContext;->getInstanceIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 569
    return-void

    .line 572
    :cond_17
    invoke-virtual {v3}, Landroid/tracing/perfetto/TracingContext;->getCustomTlsState()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;

    .line 573
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getLogFromLevel(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    .line 575
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v0

    if-ge v5, v0, :cond_31

    .line 576
    return-void

    .line 579
    :cond_31
    nop

    .line 581
    const-string v5, "null"

    if-eqz v2, :cond_5d

    .line 585
    nop

    .line 586
    array-length v0, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3b
    if-ge v8, v0, :cond_5e

    aget-object v11, v2, v8

    .line 587
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I

    move-result v12

    invoke-static {v12, v9}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v12

    .line 588
    if-nez v12, :cond_58

    .line 589
    nop

    .line 590
    if-nez v11, :cond_50

    .line 591
    invoke-direct {v1, v3, v5}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    goto :goto_57

    .line 593
    :cond_50
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v3, v10}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    .line 596
    :goto_57
    const/4 v10, 0x1

    :cond_58
    add-int/lit8 v9, v9, 0x1

    .line 586
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 581
    :cond_5d
    const/4 v10, 0x0

    .line 600
    :cond_5e
    nop

    .line 601
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 605
    nop

    .line 606
    move-object/from16 v0, p5

    invoke-direct {v1, v3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStacktraceString(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    move v8, v0

    const/4 v10, 0x1

    goto :goto_74

    .line 601
    :cond_73
    const/4 v8, 0x0

    .line 609
    :goto_74
    nop

    .line 610
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 611
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_86

    .line 610
    :cond_84
    const-wide/16 v11, 0x0

    .line 613
    :goto_86
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 614
    nop

    .line 615
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object v0

    .line 616
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct {v1, v3, v10, v9, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internProtoMessage(Landroid/tracing/perfetto/TracingContext;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;)J

    move-result-wide v11

    const/4 v10, 0x1

    goto :goto_9d

    .line 613
    :cond_9b
    move-object/from16 v9, p1

    .line 619
    :goto_9d
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Landroid/tracing/perfetto/TracingContext;->newTracePacket(I)Landroid/util/proto/ProtoOutputStream;

    move-result-object v13

    .line 620
    const-wide v14, 0x10400000008L

    move-wide/from16 v6, p6

    invoke-virtual {v13, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 621
    const-wide v6, 0x10b00000068L

    invoke-virtual {v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 623
    const-wide v14, 0x10600000001L

    invoke-virtual {v13, v14, v15, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 625
    if-eqz v2, :cond_177

    .line 627
    nop

    .line 628
    array-length v11, v2

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_c4
    if-ge v12, v11, :cond_175

    aget-object v0, v2, v12

    .line 629
    invoke-static/range {p4 .. p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->-$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I

    move-result v15

    invoke-static {v15, v14}, Lcom/android/internal/protolog/common/LogDataType;->bitmaskToLogDataType(II)I

    move-result v15

    .line 631
    packed-switch v15, :pswitch_data_198

    move/from16 p2, v10

    move v15, v11

    move/from16 p5, v12

    goto/16 :goto_169

    .line 660
    :pswitch_da
    move/from16 p2, v10

    const-wide v9, 0x20500000005L

    if-nez v0, :cond_ec

    .line 661
    const/4 v15, 0x0

    :try_start_e4
    invoke-virtual {v13, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move v15, v11

    move/from16 p5, v12

    goto/16 :goto_169

    .line 663
    :cond_ec
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f6

    const/4 v15, 0x1

    goto :goto_f7

    :cond_f6
    const/4 v15, 0x0

    :goto_f7
    invoke-virtual {v13, v9, v10, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_fa
    .catch Ljava/lang/ClassCastException; {:try_start_e4 .. :try_end_fa} :catch_ff

    move v15, v11

    move/from16 p5, v12

    goto/16 :goto_169

    .line 667
    :catch_ff
    move-exception v0

    move v15, v11

    move/from16 p5, v12

    goto :goto_15f

    .line 650
    :pswitch_104
    move/from16 p2, v10

    const-wide v9, 0x20100000004L

    if-nez v0, :cond_116

    .line 651
    move v15, v11

    move/from16 p5, v12

    const-wide/16 v11, 0x0

    :try_start_112
    invoke-virtual {v13, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    goto :goto_169

    .line 653
    :cond_116
    move v15, v11

    move/from16 p5, v12

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v13, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 655
    goto :goto_169

    .line 643
    :pswitch_123
    move/from16 p2, v10

    move v15, v11

    move/from16 p5, v12

    const-wide v9, 0x21200000003L

    if-nez v0, :cond_134

    .line 644
    const/4 v11, 0x0

    invoke-virtual {v13, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_169

    .line 646
    :cond_134
    const/4 v11, 0x0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-virtual {v13, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 648
    goto :goto_169

    .line 634
    :pswitch_13f
    move/from16 p2, v10

    move v15, v11

    move/from16 p5, v12

    if-nez v0, :cond_14b

    .line 635
    invoke-direct {v1, v3, v5}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    goto :goto_153

    .line 637
    :cond_14b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->internStringArg(Landroid/tracing/perfetto/TracingContext;Ljava/lang/String;)I

    move-result v0

    .line 639
    :goto_153
    const-wide v9, 0x20d00000002L

    invoke-virtual {v13, v9, v10, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_15b
    .catch Ljava/lang/ClassCastException; {:try_start_112 .. :try_end_15b} :catch_15e

    .line 640
    nop

    .line 641
    const/4 v10, 0x1

    goto :goto_16b

    .line 667
    :catch_15e
    move-exception v0

    .line 668
    :goto_15f
    const-string v9, "ProtoLog"

    const-string v10, "Invalid ProtoLog paramsMask"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v10, p2

    goto :goto_16c

    .line 669
    :goto_169
    move/from16 v10, p2

    :goto_16b
    nop

    .line 670
    :goto_16c
    add-int/lit8 v14, v14, 0x1

    .line 628
    add-int/lit8 v12, p5, 0x1

    move-object/from16 v9, p1

    move v11, v15

    goto/16 :goto_c4

    :cond_175
    move/from16 p2, v10

    .line 674
    :cond_177
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;->getShouldCollectStacktrace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 675
    const-wide v0, 0x10d00000006L

    invoke-virtual {v13, v0, v1, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 678
    :cond_189
    invoke-virtual {v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 680
    if-eqz v10, :cond_197

    .line 681
    const-wide v0, 0x10d0000000dL

    const/4 v2, 0x2

    invoke-virtual {v13, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 684
    :cond_197
    return-void

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_123
        :pswitch_104
        :pswitch_da
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTracingInstanceStopLocked$9(I)Z
    .registers 1

    .line 982
    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private synthetic blacklist lambda$queueTracingInstanceAddition$7(I)V
    .registers 3

    .line 906
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mActiveTracingInstances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$queueTracingInstanceRemoval$8(I)V
    .registers 3

    .line 962
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mActiveTracingInstances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$registerGroupsLocally$4(I)[Lcom/android/internal/protolog/common/IProtoLogGroup;
    .registers 1

    .line 422
    new-array p0, p0, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    return-object p0
.end method

.method private synthetic blacklist lambda$registerGroupsWithConfigurationServiceAsync$1([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 9

    .line 259
    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;

    invoke-direct {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;-><init>()V

    .line 260
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;->groups:[Ljava/lang/String;

    .line 261
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;->groupsDefaultLogcatStatus:[Z

    .line 262
    nop

    .line 263
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v2, v1, :cond_2c

    aget-object v4, p1, v2

    .line 264
    iget-object v5, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;->groups:[Ljava/lang/String;

    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 265
    iget-object v5, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;->groupsDefaultLogcatStatus:[Z

    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v4

    aput-boolean v4, v5, v3

    .line 266
    add-int/lit8 v3, v3, 0x1

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 268
    :cond_2c
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    invoke-interface {p1, p0, v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService;->registerGroups(Lcom/android/internal/protolog/IProtoLogClient;Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterGroupsArgs;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_32

    .line 271
    goto :goto_3a

    .line 269
    :catch_32
    move-exception p1

    .line 270
    const-string v0, "ProtoLog"

    const-string v1, "Failed to register ProtoLog groups"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :goto_3a
    return-void
.end method

.method static synthetic blacklist lambda$toggleLogcat$3(Ljava/lang/String;)V
    .registers 2

    .line 365
    const-string v0, "ProtoLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic blacklist lambda$waitForExistingBackgroundTasksToComplete$10()V
    .registers 2

    .line 1058
    const-string v0, "ProtoLog"

    const-string v1, "Completed all pending background tasks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void
.end method

.method private blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    .registers 15

    .line 460
    invoke-virtual {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->isProtoEnabled()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    .line 463
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    if-eq p1, v0, :cond_29

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 464
    invoke-interface {p2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_26

    goto :goto_29

    .line 467
    :cond_26
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_2e

    .line 465
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->collectStackTrace()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 472
    :goto_2e
    if-eqz p4, :cond_33

    .line 473
    invoke-direct {p0, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->snapshotMutableArgsToStringInPlace([Ljava/lang/Object;)V

    .line 476
    :cond_33
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_48

    .line 460
    :cond_43
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 504
    :goto_48
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 505
    invoke-interface {v4}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3, v5, v6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 507
    :cond_55
    return-void
.end method

.method private static blacklist logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 1000
    const-string v0, "ProtoLog"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    if-eqz p0, :cond_d

    .line 1002
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 1005
    :cond_d
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    .registers 6

    .line 534
    iget-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    if-nez v0, :cond_27

    .line 535
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Trying to log a protolog message with hash "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 536
    invoke-virtual {p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " to logcat before the service is ready to accept such requests."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 535
    const-string p2, "ProtoLog"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 541
    :cond_27
    invoke-virtual {p0, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object p3

    .line 542
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method private blacklist logToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 548
    if-eqz p4, :cond_43

    .line 550
    :try_start_2
    invoke-static {p3, p4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    .line 555
    :goto_6
    goto :goto_44

    .line 551
    :catch_7
    move-exception v0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FORMAT_ERROR \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\", args=("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 554
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p4

    new-instance v0, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p4, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p4

    .line 553
    const-string v0, ", "

    invoke-static {v0, p4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_6

    .line 557
    :cond_43
    nop

    .line 559
    :goto_44
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private blacklist logToProto(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;JLjava/lang/String;)V
    .registers 18

    .line 565
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v6, p3

    move-object v5, p4

    move-wide v8, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;[Ljava/lang/Object;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V

    .line 685
    return-void
.end method

.method private blacklist onTracingInstanceStartLocked(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 7

    .line 910
    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 911
    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v0

    :goto_a
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 912
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 915
    :cond_1c
    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object v0

    .line 917
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 918
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 921
    invoke-virtual {p1, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 922
    invoke-virtual {v3}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v3

    :goto_4e
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_5e

    .line 923
    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 922
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 926
    :cond_5e
    invoke-virtual {p1, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    if-eqz v2, :cond_82

    .line 927
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 928
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 927
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    :cond_82
    goto :goto_24

    .line 932
    :cond_83
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {p1, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 934
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 935
    return-void
.end method

.method private blacklist onTracingInstanceStopLocked(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 7

    .line 966
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 968
    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getDefaultGroupConfig()Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 969
    invoke-virtual {v0}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v0

    :goto_f
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 970
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 973
    :cond_21
    invoke-virtual {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getGroupTagsWithOverriddenConfigs()Ljava/util/Set;

    move-result-object v0

    .line 975
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 976
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 978
    invoke-virtual {p1, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->logFrom:Lcom/android/internal/protolog/common/LogLevel;

    .line 979
    invoke-virtual {v3}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v3

    :goto_47
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_57

    .line 980
    aget v4, v2, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    .line 979
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 982
    :cond_57
    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 983
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    :cond_6b
    invoke-virtual {p1, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;->getConfigFor(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/protolog/ProtoLogDataSource$GroupConfig;->collectStackTrace:Z

    if-eqz v2, :cond_9d

    .line 987
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    .line 988
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 987
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_9d

    .line 991
    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCollectStackTraceGroupCounts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    :cond_9d
    goto :goto_29

    .line 996
    :cond_9e
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {p1, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 997
    return-void
.end method

.method private blacklist queueTracingInstanceAddition(I)V
    .registers 4

    .line 906
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 907
    return-void
.end method

.method private blacklist queueTracingInstanceRemoval(I)V
    .registers 4

    .line 962
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method private blacklist registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 8

    .line 416
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroupsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    .line 420
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 421
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 419
    invoke-static {v1, v2}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 422
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 423
    invoke-direct {p0, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->verifyNoCollisionsOrDuplicates([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 425
    array-length v1, p1

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v1, :cond_35

    aget-object v3, p1, v2

    .line 426
    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 428
    :cond_35
    monitor-exit v0

    .line 429
    return-void

    .line 428
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private varargs blacklist registerGroupsWithConfigurationServiceAsync([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    const-string v1, "A null ProtoLog Configuration Service was provided!"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/protolog/PerfettoProtoLogImpl;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method private varargs blacklist setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I
    .registers 8

    .line 852
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 853
    const/4 p1, -0x1

    return p1

    .line 856
    :cond_8
    iget-object p2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroupsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 857
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    :try_start_d
    array-length v2, p3

    if-ge v1, v2, :cond_3b

    .line 858
    aget-object v2, p3, v1

    .line 859
    iget-object v3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 860
    if-eqz v3, :cond_22

    .line 861
    invoke-interface {v3, p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->setLogToLogcat(Z)V

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 863
    :cond_22
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No IProtoLogGroup named "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 866
    :cond_3b
    monitor-exit p2
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_42

    .line 868
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-interface {p1, p0}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    .line 869
    return v0

    .line 866
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method private blacklist snapshotMutableArgsToStringInPlace([Ljava/lang/Object;)V
    .registers 5

    .line 510
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 511
    aget-object v1, p1, v0

    .line 512
    if-eqz v1, :cond_16

    instance-of v2, v1, Ljava/lang/Number;

    if-nez v2, :cond_16

    instance-of v2, v1, Ljava/lang/Boolean;

    if-nez v2, :cond_16

    .line 513
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 510
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 516
    :cond_19
    return-void
.end method

.method private blacklist unknownCommand(Ljava/io/PrintWriter;)I
    .registers 3

    .line 873
    const-string v0, "Unknown command"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    const-string v0, "Window manager logging options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const-string v0, "  enable-text [group...]: Enable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    const-string v0, "  disable-text [group...]: Disable logcat logging for given groups"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    const/4 p1, -0x1

    return p1
.end method

.method private blacklist verifyNoCollisionsOrDuplicates([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 7

    .line 432
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 434
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_4a

    aget-object v3, p1, v2

    .line 435
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 440
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 436
    :cond_27
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group with same id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") registered twice. Potential duplicate or hash id collision."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_4a
    return-void
.end method

.method private blacklist waitForExistingBackgroundTasksToComplete()V
    .registers 4

    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1059
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_e} :catch_f

    .line 1062
    goto :goto_17

    .line 1060
    :catch_f
    move-exception v0

    .line 1061
    const-string v1, "ProtoLog"

    const-string v2, "Failed to wait for tracing service background tasks to complete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1063
    :goto_17
    return-void
.end method

.method public static blacklist waitForInitialization()V
    .registers 2

    .line 1071
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    .line 1072
    instance-of v1, v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    .line 1076
    invoke-direct {v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->waitForExistingBackgroundTasksToComplete()V

    .line 1077
    return-void

    .line 1073
    :cond_e
    return-void
.end method


# virtual methods
.method protected abstract blacklist createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
.end method

.method public blacklist disable()V
    .registers 2

    .line 280
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnFlushCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;)V

    .line 282
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/ProtoLogDataSource;->unregisterOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    if-eqz v0, :cond_16

    .line 285
    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->disconnectFromConfigurationServiceAsync()V

    .line 288
    :cond_16
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 289
    return-void
.end method

.method abstract blacklist dumpViewerConfig()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public blacklist enable()V
    .registers 4

    .line 181
    sget-object v0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    if-eqz v0, :cond_23

    .line 184
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroupsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 189
    invoke-direct {p0, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->connectToConfigurationServiceAsync([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 190
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_20

    throw v1

    .line 193
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStartCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnFlushCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    invoke-virtual {v0, p0}, Lcom/android/internal/protolog/ProtoLogDataSource;->registerOnStopCallback(Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V

    .line 196
    return-void
.end method

.method abstract blacklist getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
.end method

.method public blacklist getRegisteredGroups()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroupsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 412
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 7

    .line 395
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigUpdaterLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 398
    :try_start_9
    iget-object v1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogLevelCounts:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 399
    if-nez v1, :cond_21

    iget-object v2, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mDefaultLogLevelCounts:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-gtz v2, :cond_31

    :cond_21
    if-eqz v1, :cond_2b

    .line 400
    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-gtz p2, :cond_31

    .line 401
    :cond_2b
    invoke-interface {p1}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_38

    if-eqz p1, :cond_33

    :cond_31
    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    .line 403
    :goto_34
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 399
    return p1

    .line 403
    :catchall_38
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 404
    throw p1
.end method

.method public blacklist isProtoEnabled()Z
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mTracingInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 9

    .line 314
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, p5, v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(JILcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public varargs blacklist log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 321
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    invoke-direct {v1, p3, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/android/internal/protolog/common/InvalidFormatStringException; {:try_start_1 .. :try_end_9} :catch_a

    .line 325
    goto :goto_1f

    .line 322
    :catch_a
    move-exception p3

    .line 323
    const-string p4, "ProtoLog"

    const-string v1, "Invalid protolog string format"

    invoke-static {p4, v1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    new-instance p3, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;

    const-string p4, "INVALID MESSAGE"

    invoke-direct {p3, p4, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;[Ljava/lang/Object;)V

    .line 326
    :goto_1f
    return-void
.end method

.method public blacklist onShellCommand(Landroid/os/ShellCommand;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 454
    const-string v0, "Command deprecated. Please use \'cmd protolog_configuration\' instead."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    const/4 p1, -0x1

    return p1
.end method

.method public blacklist onTracingFlush()V
    .registers 3

    .line 520
    const-string v0, "Executing onTracingFlush"

    const-string v1, "ProtoLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->waitForExistingBackgroundTasksToComplete()V

    .line 523
    const-string v0, "Finished onTracingFlush"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method public blacklist onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 5

    .line 883
    const-string v0, "Executing onTracingInstanceStart"

    const-string v1, "ProtoLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigUpdaterLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 886
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 888
    :try_start_10
    invoke-direct {p0, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStartLocked(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_20

    .line 890
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 891
    nop

    .line 900
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->queueTracingInstanceAddition(I)V

    .line 902
    const-string p1, "Finished onTracingInstanceStart"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void

    .line 890
    :catchall_20
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 891
    throw p1
.end method

.method public declared-synchronized blacklist onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    .registers 5

    monitor-enter p0

    .line 940
    :try_start_1
    const-string v0, "ProtoLog"

    const-string v1, "Executing onTracingInstanceStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->queueTracingInstanceRemoval(I)V

    .line 950
    iget-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigUpdaterLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 951
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_29

    .line 953
    :try_start_14
    invoke-direct {p0, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->onTracingInstanceStopLocked(Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_24

    .line 955
    :try_start_17
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 956
    nop

    .line 958
    const-string p1, "ProtoLog"

    const-string p2, "Finished onTracingInstanceStop"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_29

    .line 959
    monitor-exit p0

    return-void

    .line 955
    :catchall_24
    move-exception p2

    :try_start_25
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 956
    throw p2

    .line 939
    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public blacklist passToLogcat(Ljava/lang/String;Lcom/android/internal/protolog/common/LogLevel;Ljava/lang/String;)V
    .registers 5

    .line 334
    sget-object v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$1;->$SwitchMap$com$android$internal$protolog$common$LogLevel:[I

    invoke-virtual {p2}, Lcom/android/internal/protolog/common/LogLevel;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_26

    goto :goto_24

    .line 351
    :pswitch_c
    invoke-static {p1, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 348
    :pswitch_10
    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    goto :goto_24

    .line 345
    :pswitch_14
    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    goto :goto_24

    .line 342
    :pswitch_18
    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    goto :goto_24

    .line 339
    :pswitch_1c
    invoke-static {p1, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    goto :goto_24

    .line 336
    :pswitch_20
    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    nop

    .line 354
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method protected blacklist readyToLogToLogcat()V
    .registers 2

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogcatReady:Z

    .line 446
    return-void
.end method

.method public varargs blacklist registerGroups([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 3

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->registerGroupsLocally([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mConfigurationService:Lcom/android/internal/protolog/IProtoLogConfigurationService;

    if-eqz v0, :cond_b

    .line 205
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->registerGroupsWithConfigurationServiceAsync([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    goto :goto_12

    .line 207
    :cond_b
    const-string p1, "ProtoLog"

    const-string v0, "Missing configuration service... Not registering groups with it."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_12
    return-void
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4

    .line 380
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->setTextLogging(ZLcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist toggleLogcat(Z[Ljava/lang/String;)V
    .registers 4

    .line 365
    new-instance v0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$$ExternalSyntheticLambda9;-><init>()V

    .line 366
    if-eqz p1, :cond_b

    .line 367
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    goto :goto_e

    .line 369
    :cond_b
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    .line 371
    :goto_e
    return-void
.end method

.method protected blacklist validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z
    .registers 8

    .line 838
    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroupsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 839
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    :try_start_5
    array-length v3, p2

    if-ge v2, v3, :cond_2f

    .line 840
    aget-object v3, p2, v2

    .line 841
    iget-object v4, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->mLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 842
    if-nez v4, :cond_2c

    .line 843
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No IProtoLogGroup named "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/internal/protolog/common/ILogger;->log(Ljava/lang/String;)V

    .line 844
    monitor-exit v0

    return v1

    .line 839
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 847
    :cond_2f
    monitor-exit v0

    .line 848
    const/4 p1, 0x1

    return p1

    .line 847
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw p1
.end method
