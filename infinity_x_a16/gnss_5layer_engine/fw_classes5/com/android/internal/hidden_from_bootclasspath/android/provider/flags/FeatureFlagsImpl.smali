.class public final Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist deviceConfigWritableNamespacesApi:Z

.field private static blacklist dumpImprovements:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist mmdDeviceConfig:Z

.field private static blacklist newStoragePublicApi:Z

.field private static blacklist newStorageWriterSystemApi:Z

.field private static blacklist publicInternalReadApi:Z

.field private static blacklist stageFlagsForBuild:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->deviceConfigWritableNamespacesApi:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->dumpImprovements:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->mmdDeviceConfig:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStoragePublicApi:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStorageWriterSystemApi:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->publicInternalReadApi:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->stageFlagsForBuild:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 6

    .line 20
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "android.provider.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 21
    const-string v3, "dump_improvements"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->dumpImprovements:Z

    .line 22
    const-string v3, "mmd_device_config"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->mmdDeviceConfig:Z

    .line 23
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStoragePublicApi:Z

    .line 24
    const-string v3, "new_storage_writer_system_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStorageWriterSystemApi:Z

    .line 25
    const-string v3, "public_internal_read_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->publicInternalReadApi:Z

    .line 26
    const-string v3, "stage_flags_for_build"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->stageFlagsForBuild:Z

    .line 27
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->deviceConfigWritableNamespacesApi:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_36} :catch_40
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_36} :catch_37

    goto :goto_48

    .line 31
    :catch_37
    move-exception v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 28
    :catch_40
    move-exception v2

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_48
    nop

    .line 36
    :goto_49
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist deviceConfigWritableNamespacesApi()Z
    .registers 2

    .line 40
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 41
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 43
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->deviceConfigWritableNamespacesApi:Z

    return v0
.end method

.method public blacklist dumpImprovements()Z
    .registers 2

    .line 48
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 49
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 51
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->dumpImprovements:Z

    return v0
.end method

.method public blacklist mmdDeviceConfig()Z
    .registers 2

    .line 56
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 57
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 59
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->mmdDeviceConfig:Z

    return v0
.end method

.method public blacklist newStoragePublicApi()Z
    .registers 2

    .line 64
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 65
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 67
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStoragePublicApi:Z

    return v0
.end method

.method public blacklist newStorageWriterSystemApi()Z
    .registers 2

    .line 72
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 73
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 75
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->newStorageWriterSystemApi:Z

    return v0
.end method

.method public blacklist publicInternalReadApi()Z
    .registers 2

    .line 80
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 81
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 83
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->publicInternalReadApi:Z

    return v0
.end method

.method public blacklist stageFlagsForBuild()Z
    .registers 2

    .line 88
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 89
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->init()V

    .line 91
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/FeatureFlagsImpl;->stageFlagsForBuild:Z

    return v0
.end method
