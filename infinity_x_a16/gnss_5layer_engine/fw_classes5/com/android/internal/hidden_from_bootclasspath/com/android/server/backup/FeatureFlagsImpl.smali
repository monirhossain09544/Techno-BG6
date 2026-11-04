.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/server/backup/FeatureFlags;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enableClearPipeAfterRestoreFile()Z
    .registers 2

    .line 9
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableCrossPlatformTransfer()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableDelayedRestoreApi()Z
    .registers 2

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableIncreaseDatatypesForAgentLogging()Z
    .registers 2

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableIncreasedBmmLoggingForRestoreAtInstall()Z
    .registers 2

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableKvBackupLogsFromTransportWithProperFlowId()Z
    .registers 2

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableMaxSizeWritesToPipes()Z
    .registers 2

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableMetricsSystemBackupAgents()Z
    .registers 2

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableReadAllExternalStorageFiles()Z
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableRestrictedModeChanges()Z
    .registers 2

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist enableSkippingRestoreLaunchedApps()Z
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableVToURestoreForSystemComponentsInAllowlist()Z
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method
