.class public final Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags; = null

.field public static final blacklist FLAG_ALWAYS_FALSE:Ljava/lang/String; = "android.content.res.always_false"

.field public static final blacklist FLAG_ASSET_FILE_DESCRIPTOR_FRRO:Ljava/lang/String; = "android.content.res.asset_file_descriptor_frro"

.field public static final blacklist FLAG_DEFAULT_LOCALE:Ljava/lang/String; = "android.content.res.default_locale"

.field public static final blacklist FLAG_DIMENSION_FRRO:Ljava/lang/String; = "android.content.res.dimension_frro"

.field public static final blacklist FLAG_ENHANCED_DEBUGGING:Ljava/lang/String; = "android.content.res.enhanced_debugging"

.field public static final blacklist FLAG_FONT_SCALE_CONVERTER_PUBLIC:Ljava/lang/String; = "android.content.res.font_scale_converter_public"

.field public static final blacklist FLAG_HANDLE_ALL_CONFIG_CHANGES:Ljava/lang/String; = "android.content.res.handle_all_config_changes"

.field public static final blacklist FLAG_IDMAP_CRC_IS_MTIME:Ljava/lang/String; = "android.content.res.idmap_crc_is_mtime"

.field public static final blacklist FLAG_IGNORE_NON_PUBLIC_CONFIG_DIFF_FOR_RESOURCES_KEY:Ljava/lang/String; = "android.content.res.ignore_non_public_config_diff_for_resources_key"

.field public static final blacklist FLAG_LAYOUT_READWRITE_FLAGS:Ljava/lang/String; = "android.content.res.layout_readwrite_flags"

.field public static final blacklist FLAG_MANIFEST_FLAGGING:Ljava/lang/String; = "android.content.res.manifest_flagging"

.field public static final blacklist FLAG_MERGE_IDMAP_BINDER_TRANSACTIONS:Ljava/lang/String; = "android.content.res.merge_idmap_binder_transactions"

.field public static final blacklist FLAG_NINE_PATCH_FRRO:Ljava/lang/String; = "android.content.res.nine_patch_frro"

.field public static final blacklist FLAG_REGISTER_RESOURCE_PATHS:Ljava/lang/String; = "android.content.res.register_resource_paths"

.field public static final blacklist FLAG_RESOURCES_MINOR_VERSION_SUPPORT:Ljava/lang/String; = "android.content.res.resources_minor_version_support"

.field public static final blacklist FLAG_RESOURCE_READWRITE_FLAGS:Ljava/lang/String; = "android.content.res.resource_readwrite_flags"

.field public static final blacklist FLAG_RRO_CONSTRAINTS:Ljava/lang/String; = "android.content.res.rro_constraints"

.field public static final blacklist FLAG_RRO_CONTROL_FOR_ANDROID_NO_OVERLAYABLE:Ljava/lang/String; = "android.content.res.rro_control_for_android_no_overlayable"

.field public static final blacklist FLAG_SELF_TARGETING_ANDROID_RESOURCE_FRRO:Ljava/lang/String; = "android.content.res.self_targeting_android_resource_frro"

.field public static final blacklist FLAG_SYSTEM_CONTEXT_HANDLE_APP_INFO_CHANGED:Ljava/lang/String; = "android.content.res.system_context_handle_app_info_changed"

.field public static final blacklist FLAG_TEST_FLAG_1:Ljava/lang/String; = "android.content.res.test_flag_1"

.field public static final blacklist FLAG_TEST_FLAG_2:Ljava/lang/String; = "android.content.res.test_flag_2"

.field public static final blacklist FLAG_TEST_FLAG_3:Ljava/lang/String; = "android.content.res.test_flag_3"

.field public static final blacklist FLAG_USE_NEW_ACONFIG_STORAGE:Ljava/lang/String; = "android.content.res.use_new_aconfig_storage"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 199
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist alwaysFalse()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->alwaysFalse()Z

    move-result v0

    return v0
.end method

.method public static blacklist assetFileDescriptorFrro()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->assetFileDescriptorFrro()Z

    move-result v0

    return v0
.end method

.method public static blacklist defaultLocale()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->defaultLocale()Z

    move-result v0

    return v0
.end method

.method public static blacklist dimensionFrro()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->dimensionFrro()Z

    move-result v0

    return v0
.end method

.method public static blacklist enhancedDebugging()Z
    .registers 1

    .line 82
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->enhancedDebugging()Z

    move-result v0

    return v0
.end method

.method public static blacklist fontScaleConverterPublic()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->fontScaleConverterPublic()Z

    move-result v0

    return v0
.end method

.method public static blacklist handleAllConfigChanges()Z
    .registers 1

    .line 94
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->handleAllConfigChanges()Z

    move-result v0

    return v0
.end method

.method public static blacklist idmapCrcIsMtime()Z
    .registers 1

    .line 100
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->idmapCrcIsMtime()Z

    move-result v0

    return v0
.end method

.method public static blacklist ignoreNonPublicConfigDiffForResourcesKey()Z
    .registers 1

    .line 106
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->ignoreNonPublicConfigDiffForResourcesKey()Z

    move-result v0

    return v0
.end method

.method public static blacklist layoutReadwriteFlags()Z
    .registers 1

    .line 112
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->layoutReadwriteFlags()Z

    move-result v0

    return v0
.end method

.method public static blacklist manifestFlagging()Z
    .registers 1

    .line 118
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->manifestFlagging()Z

    move-result v0

    return v0
.end method

.method public static blacklist mergeIdmapBinderTransactions()Z
    .registers 1

    .line 124
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->mergeIdmapBinderTransactions()Z

    move-result v0

    return v0
.end method

.method public static blacklist ninePatchFrro()Z
    .registers 1

    .line 130
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->ninePatchFrro()Z

    move-result v0

    return v0
.end method

.method public static blacklist registerResourcePaths()Z
    .registers 1

    .line 136
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->registerResourcePaths()Z

    move-result v0

    return v0
.end method

.method public static blacklist resourceReadwriteFlags()Z
    .registers 1

    .line 142
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->resourceReadwriteFlags()Z

    move-result v0

    return v0
.end method

.method public static blacklist resourcesMinorVersionSupport()Z
    .registers 1

    .line 148
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->resourcesMinorVersionSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist rroConstraints()Z
    .registers 1

    .line 154
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->rroConstraints()Z

    move-result v0

    return v0
.end method

.method public static blacklist rroControlForAndroidNoOverlayable()Z
    .registers 1

    .line 160
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->rroControlForAndroidNoOverlayable()Z

    move-result v0

    return v0
.end method

.method public static blacklist selfTargetingAndroidResourceFrro()Z
    .registers 1

    .line 166
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->selfTargetingAndroidResourceFrro()Z

    move-result v0

    return v0
.end method

.method public static blacklist systemContextHandleAppInfoChanged()Z
    .registers 1

    .line 172
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->systemContextHandleAppInfoChanged()Z

    move-result v0

    return v0
.end method

.method public static blacklist testFlag1()Z
    .registers 1

    .line 178
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->testFlag1()Z

    move-result v0

    return v0
.end method

.method public static blacklist testFlag2()Z
    .registers 1

    .line 184
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->testFlag2()Z

    move-result v0

    return v0
.end method

.method public static blacklist testFlag3()Z
    .registers 1

    .line 190
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->testFlag3()Z

    move-result v0

    return v0
.end method

.method public static blacklist useNewAconfigStorage()Z
    .registers 1

    .line 196
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/res/FeatureFlags;->useNewAconfigStorage()Z

    move-result v0

    return v0
.end method
