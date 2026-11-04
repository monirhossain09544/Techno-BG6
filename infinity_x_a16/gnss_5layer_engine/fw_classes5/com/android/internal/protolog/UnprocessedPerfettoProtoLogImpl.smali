.class public Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;
.super Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.source "UnprocessedPerfettoProtoLogImpl.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/protolog/ProtoLogDataSource;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/protolog/PerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/internal/protolog/UnprocessedPerfettoProtoLogImpl;->readyToLogToLogcat()V

    .line 31
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/android/internal/protolog/common/IProtoLog;)V
    .registers 1

    .line 29
    return-void
.end method


# virtual methods
.method protected blacklist createConfigurationServiceRegisterClientArgs()Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;
    .registers 2

    .line 36
    new-instance v0, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;

    invoke-direct {v0}, Lcom/android/internal/protolog/IProtoLogConfigurationService$RegisterClientArgs;-><init>()V

    return-object v0
.end method

.method blacklist dumpViewerConfig()V
    .registers 1

    .line 42
    return-void
.end method

.method blacklist getLogcatMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .registers 3

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 50
    if-eqz p1, :cond_7

    .line 55
    return-object p1

    .line 51
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to decode message for logcat. Message not available without ViewerConfig to decode the hash."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
