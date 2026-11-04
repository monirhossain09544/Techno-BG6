.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist alwaysEnableProfileCode:Z

.field private static blacklist artManagedInstallFilesValidationApi:Z

.field private static blacklist artServiceV3:Z

.field private static blacklist executableMethodFileOffsets:Z

.field private static blacklist executableMethodFileOffsetsDeprecation:Z

.field private static blacklist executableMethodFileOffsetsV2:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist packageLastUsedApi:Z

.field private static blacklist updatableFilterAndReason:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->alwaysEnableProfileCode:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artManagedInstallFilesValidationApi:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artServiceV3:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsets:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsDeprecation:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsV2:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->packageLastUsedApi:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->updatableFilterAndReason:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 7

    .line 21
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.art.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 22
    const-string v3, "art_managed_install_files_validation_api"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artManagedInstallFilesValidationApi:Z

    .line 23
    const-string v3, "package_last_used_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->packageLastUsedApi:Z

    .line 24
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artServiceV3:Z

    .line 25
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v5, 0x36ee81

    if-lt v3, v5, :cond_25

    move v3, v1

    goto :goto_2b

    :cond_25
    const-string v3, "updatable_filter_and_reason"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_2b
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->updatableFilterAndReason:Z

    .line 26
    const-string v3, "always_enable_profile_code"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->alwaysEnableProfileCode:Z

    .line 27
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsets:Z

    .line 28
    const-string v3, "executable_method_file_offsets_deprecation"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsDeprecation:Z

    .line 29
    const-string v3, "executable_method_file_offsets_v2"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsV2:Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_51
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_47} :catch_48

    goto :goto_59

    .line 33
    :catch_48
    move-exception v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 30
    :catch_51
    move-exception v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :goto_59
    nop

    .line 38
    :goto_5a
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist alwaysEnableProfileCode()Z
    .registers 2

    .line 42
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 43
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 45
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->alwaysEnableProfileCode:Z

    return v0
.end method

.method public blacklist artManagedInstallFilesValidationApi()Z
    .registers 2

    .line 50
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 51
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 53
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artManagedInstallFilesValidationApi:Z

    return v0
.end method

.method public blacklist artServiceV3()Z
    .registers 2

    .line 58
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 59
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 61
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->artServiceV3:Z

    return v0
.end method

.method public blacklist executableMethodFileOffsets()Z
    .registers 2

    .line 66
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 67
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 69
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsets:Z

    return v0
.end method

.method public blacklist executableMethodFileOffsetsDeprecation()Z
    .registers 2

    .line 74
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 75
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 77
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsDeprecation:Z

    return v0
.end method

.method public blacklist executableMethodFileOffsetsV2()Z
    .registers 2

    .line 82
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 83
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 85
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->executableMethodFileOffsetsV2:Z

    return v0
.end method

.method public blacklist packageLastUsedApi()Z
    .registers 2

    .line 90
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 91
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 93
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->packageLastUsedApi:Z

    return v0
.end method

.method public blacklist updatableFilterAndReason()Z
    .registers 2

    .line 98
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 99
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->init()V

    .line 101
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/FeatureFlagsImpl;->updatableFilterAndReason:Z

    return v0
.end method
