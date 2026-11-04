.class public Lcom/android/internal/protolog/ProtoLogImpl;
.super Ljava/lang/Object;
.source "ProtoLogImpl.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "ProtoLogImpl"

.field private static blacklist sCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

.field private static blacklist sLogGroups:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/protolog/common/IProtoLogGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

.field private static blacklist sViewerConfigPath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12

    .line 55
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static varargs blacklist e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12

    .line 75
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static declared-synchronized blacklist getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .registers 6

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-nez v1, :cond_a7

    .line 101
    const-string v1, "ProtoLogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/protolog/ProtoLogImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with viewerConfigPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    .line 105
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_85

    .line 110
    const-string v1, "ProtoLogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find viewer config file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when setting up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/protolog/ProtoLogImpl;

    .line 111
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". ProtoLog will not work here!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;

    invoke-direct {v1}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;-><init>()V

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    goto :goto_98

    .line 116
    :cond_85
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v2
    :try_end_89
    .catchall {:try_start_3 .. :try_end_89} :catchall_ab

    .line 118
    :try_start_89
    new-instance v3, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl;->sViewerConfigPath:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 121
    sput-object v3, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    .line 122
    invoke-virtual {v3}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->enable()V
    :try_end_97
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_89 .. :try_end_97} :catch_a0
    .catchall {:try_start_89 .. :try_end_97} :catchall_ab

    .line 125
    nop

    .line 128
    :goto_98
    :try_start_98
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogCacheUpdater;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-interface {v1, v2}, Lcom/android/internal/protolog/ProtoLogCacheUpdater;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    goto :goto_a7

    .line 123
    :catch_a0
    move-exception v1

    .line 124
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 130
    :cond_a7
    :goto_a7
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_a9
    .catchall {:try_start_98 .. :try_end_a9} :catchall_ab

    monitor-exit v0

    return-object v1

    .line 99
    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public static varargs blacklist i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12

    .line 65
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method private static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 3

    .line 93
    invoke-interface {p0, p1, p2}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .registers 3

    .line 88
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized blacklist setSingleInstance(Lcom/android/internal/protolog/common/IProtoLog;)V
    .registers 2

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl;

    monitor-enter v0

    .line 135
    :try_start_3
    sput-object p0, Lcom/android/internal/protolog/ProtoLogImpl;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 136
    monitor-exit v0

    return-void

    .line 134
    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static varargs blacklist v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12

    .line 60
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public static varargs blacklist w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12

    .line 70
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static varargs blacklist wtf(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .registers 12

    .line 80
    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 81
    return-void
.end method
