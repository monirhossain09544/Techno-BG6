.class public Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;
.super Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.source "ProcessedPerfettoProtoLogImpl.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PerfettoProtoLogImpl"


# instance fields
.field private final blacklist mViewerConfigFilePath:Ljava/lang/String;

.field private final blacklist mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;


# direct methods
.method public static synthetic blacklist $r8$lambda$EEQk26-4kQiGHJuKWdjm5Bq-N2Q(Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->lambda$loadLogcatGroupsViewerConfig$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 50
    new-instance v3, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$1;

    invoke-direct {v3, p2}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$1;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p4, p5}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 76
    iput-object p2, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    .line 79
    new-instance p1, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-direct {p1, p3}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;-><init>(Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    iput-object p1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 81
    invoke-direct {p0, p5}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->loadLogcatGroupsViewerConfig([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;Lcom/android/internal/protolog/ProtoLogViewerConfigReader;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p5, p6, p7}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/IProtoLogConfigurationService;)V

    .line 96
    iput-object p2, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    .line 99
    iput-object p4, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 101
    invoke-direct {p0, p6}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->loadLogcatGroupsViewerConfig([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 102
    return-void
.end method

.method private blacklist getReasonForFailureToGetMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .registers 5

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_9

    .line 179
    const-string p1, "Trying to get message from null message hash"

    return-object p1

    .line 183
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    .line 184
    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->getMessageDataForHashFromFile(J)Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;

    move-result-object v0

    .line 185
    if-nez v0, :cond_43

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decode message for logcat logging. Message hash ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") is not available in viewerConfig file ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "). This might be due to the viewer config file and the executing code being out of sync."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    return-object p1

    .line 191
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode message for logcat. Message hash ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageHash()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") was available in the viewerConfig file ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ") but wasn\'t loaded into memory from file before decoding! This is likely a bug. Message: \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;->message:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\', group: \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lcom/android/internal/protolog/ProtoLogViewerConfigReader$MessageData;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_84} :catch_85

    .line 191
    return-object p1

    .line 198
    :catch_85
    move-exception p1

    .line 199
    const-string p1, "Failed to get string message to log but could not identify the root cause due to an IO error in reading the viewer config file."

    return-object p1
.end method

.method private synthetic blacklist lambda$loadLogcatGroupsViewerConfig$0(Ljava/util/ArrayList;)V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig([Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->readyToLogToLogcat()V

    .line 218
    return-void
.end method

.method private blacklist loadLogcatGroupsViewerConfig([Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 7

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1b

    aget-object v3, p1, v2

    .line 207
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->isLogToLogcat()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 208
    invoke-interface {v3}, Lcom/android/internal/protolog/common/IProtoLogGroup;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 215
    :cond_1b
    iget-object p1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mSingleThreadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method


# virtual methods
.method protected blacklist createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .registers 3

    .line 107
    new-instance v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    invoke-direct {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;->viewerConfigFile:Ljava/lang/String;

    .line 109
    return-object v0
.end method

.method blacklist dumpViewerConfig()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dumping viewer config to trace from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerfettoProtoLogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mDataSource:Lcom/android/internal/protolog/ProtoLogDataSource;

    iget-object v2, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigInputStreamProvider:Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;

    invoke-static {v0, v2}, Lcom/android/internal/protolog/Utils;->dumpViewerConfig(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ViewerConfigInputStreamProvider;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully dumped viewer config to trace from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method blacklist getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {p1, v0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessage(Lcom/android/internal/protolog/ProtoLogViewerConfigReader;)Ljava/lang/String;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_9

    .line 173
    return-object v0

    .line 170
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->getReasonForFailureToGetMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 4

    .line 120
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 121
    const/4 p1, -0x1

    return p1

    .line 124
    :cond_8
    iget-object v0, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->loadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V

    .line 125
    invoke-super {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->startLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result p1

    return p1
.end method

.method public blacklist stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I
    .registers 5

    .line 136
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->validateGroups(Lcom/android/internal/protolog/common/ILogger;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 137
    const/4 p1, -0x1

    return p1

    .line 140
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;->stopLoggingToLogcat([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)I

    move-result v0

    .line 142
    if-nez v0, :cond_14

    .line 147
    iget-object v1, p0, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->mViewerConfigReader:Lcom/android/internal/protolog/ProtoLogViewerConfigReader;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->unloadViewerConfig([Ljava/lang/String;Lcom/android/internal/protolog/common/ILogger;)V

    .line 148
    return v0

    .line 143
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to stop logging to logcat"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
