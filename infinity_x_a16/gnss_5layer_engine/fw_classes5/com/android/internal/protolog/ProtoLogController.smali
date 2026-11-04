.class public Lcom/android/internal/protolog/ProtoLogController;
.super Ljava/lang/Object;
.source "ProtoLogController.java"


# instance fields
.field private final blacklist mGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mInitLock:Ljava/lang/Object;

.field blacklist mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;


# direct methods
.method public static synthetic blacklist $r8$lambda$_FBC1SXAwGAmUeldTMLuiRIJJQo(Lcom/android/internal/protolog/ProtoLogController;Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogController;->lambda$registerLogGroupInProcess$0(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mInitLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mGroups:Ljava/util/Set;

    return-void
.end method

.method private blacklist assertForCollisions(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;)V"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "ProtoLog group ID collision for ID "

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 172
    if-nez v2, :cond_1a

    .line 173
    goto :goto_9

    .line 175
    :cond_1a
    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 179
    goto :goto_9

    .line 176
    :cond_29
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " within the same registration call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_4a
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 183
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogController;->mGroups:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 184
    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v4

    invoke-interface {v0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v5

    if-ne v4, v5, :cond_b4

    invoke-interface {v2, v0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    goto :goto_b4

    .line 185
    :cond_7d
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-interface {v0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Group "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " conflicts with already registered group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-interface {v2}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_b4
    :goto_b4
    goto :goto_60

    .line 191
    :cond_b5
    goto :goto_4e

    .line 192
    :cond_b6
    return-void
.end method

.method private synthetic blacklist lambda$registerLogGroupInProcess$0(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mGroups:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method protected blacklist createAndEnableNewPerfettoProtoLogImpl(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/PerfettoProtoLogImpl;
    .registers 4

    .line 158
    :try_start_0
    new-instance v0, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;->enable()V
    :try_end_8
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 162
    return-object v0

    .line 163
    :catch_9
    move-exception p1

    .line 164
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to create PerfettoProtoLogImpl"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected blacklist createLogcatOnlyInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .registers 2

    .line 147
    new-instance v0, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;

    invoke-direct {v0}, Lcom/android/internal/protolog/LogcatOnlyProtoLogImpl;-><init>()V

    return-object v0
.end method

.method public blacklist getProtoLogInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-object v0
.end method

.method public blacklist getRegisteredGroups()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mGroups:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 5

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/protolog/ProtoLogController;->registerLogGroupInProcess([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 84
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogController;->mInitLock:Ljava/lang/Object;

    monitor-enter p1

    .line 85
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-eqz v0, :cond_c

    .line 86
    monitor-exit p1

    return-void

    .line 92
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogController;->shouldLogOnlyToLogcat()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProtoLogController;->createLogcatOnlyInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    goto :goto_2e

    .line 95
    :cond_19
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogController;->mGroups:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 98
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/protolog/ProtoLogController;->createAndEnableNewPerfettoProtoLogImpl(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 100
    :goto_2e
    monitor-exit p1

    .line 101
    return-void

    .line 100
    :catchall_30
    move-exception v0

    monitor-exit p1
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public varargs blacklist registerLogGroupInProcess([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/protolog/ProtoLogController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/protolog/ProtoLogController$$ExternalSyntheticLambda0;-><init>()V

    .line 60
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/internal/protolog/ProtoLogController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/protolog/ProtoLogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/protolog/ProtoLogController;)V

    .line 61
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 62
    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 63
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 64
    monitor-exit v0

    return-void

    .line 67
    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProtoLogController;->assertForCollisions(Ljava/util/Set;)V

    .line 69
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogController;->mGroups:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-eqz v1, :cond_45

    .line 72
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-interface {v1, p1}, Lcom/android/internal/protolog/common/IProtoLog;->registerGroups([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 74
    :cond_45
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p1
.end method

.method protected blacklist shouldLogOnlyToLogcat()Z
    .registers 2

    .line 138
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->logOnlyToLogcat()Z

    move-result v0

    return v0
.end method

.method public blacklist tearDown()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogController;->mInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-nez v1, :cond_9

    .line 118
    monitor-exit v0

    return-void

    .line 121
    :cond_9
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    instance-of v1, v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    if-eqz v1, :cond_16

    .line 122
    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogController;->mProtoLogInstance:Lcom/android/internal/protolog/common/IProtoLog;

    check-cast v1, Lcom/android/internal/protolog/PerfettoProtoLogImpl;

    invoke-virtual {v1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->disable()V

    .line 124
    :cond_16
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
