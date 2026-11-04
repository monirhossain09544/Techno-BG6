.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags; = null

.field public static final blacklist FLAG_APPLY_PICTURE_PROFILES:Ljava/lang/String; = "com.android.graphics.libgui.flags.apply_picture_profiles"

.field public static final blacklist FLAG_BQ_CONSUMER_ATTACH_CALLBACK:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_consumer_attach_callback"

.field public static final blacklist FLAG_BQ_EXTENDEDALLOCATE:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_extendedallocate"

.field public static final blacklist FLAG_BQ_GL_FENCE_CLEANUP:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_gl_fence_cleanup"

.field public static final blacklist FLAG_BQ_PRODUCER_THROTTLES_ONLY_ASYNC_MODE:Ljava/lang/String; = "com.android.graphics.libgui.flags.bq_producer_throttles_only_async_mode"

.field public static final blacklist FLAG_CURSOR_PLANE_COMPATIBILITY:Ljava/lang/String; = "com.android.graphics.libgui.flags.cursor_plane_compatibility"

.field public static final blacklist FLAG_DEFAULT_SCALING_MODE_FREEZE:Ljava/lang/String; = "com.android.graphics.libgui.flags.default_scaling_mode_freeze"

.field public static final blacklist FLAG_FRAMETIMESTAMPS_PREVIOUSRELEASE:Ljava/lang/String; = "com.android.graphics.libgui.flags.frametimestamps_previousrelease"

.field public static final blacklist FLAG_UNAPPLIED_TRANSACTION_CLEANUP:Ljava/lang/String; = "com.android.graphics.libgui.flags.unapplied_transaction_cleanup"

.field public static final blacklist FLAG_WB_CONSUMER_BASE_OWNS_BQ:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_consumer_base_owns_bq"

.field public static final blacklist FLAG_WB_LIBCAMERASERVICE:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_libcameraservice"

.field public static final blacklist FLAG_WB_MEDIA_MIGRATION:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_media_migration"

.field public static final blacklist FLAG_WB_PLATFORM_API_IMPROVEMENTS:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_platform_api_improvements"

.field public static final blacklist FLAG_WB_RING_BUFFER:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_ring_buffer"

.field public static final blacklist FLAG_WB_STREAM_SPLITTER:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_stream_splitter"

.field public static final blacklist FLAG_WB_UNLIMITED_SLOTS:Ljava/lang/String; = "com.android.graphics.libgui.flags.wb_unlimited_slots"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist applyPictureProfiles()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->applyPictureProfiles()Z

    move-result v0

    return v0
.end method

.method public static blacklist bqConsumerAttachCallback()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->bqConsumerAttachCallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist bqExtendedallocate()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->bqExtendedallocate()Z

    move-result v0

    return v0
.end method

.method public static blacklist bqGlFenceCleanup()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->bqGlFenceCleanup()Z

    move-result v0

    return v0
.end method

.method public static blacklist bqProducerThrottlesOnlyAsyncMode()Z
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->bqProducerThrottlesOnlyAsyncMode()Z

    move-result v0

    return v0
.end method

.method public static blacklist cursorPlaneCompatibility()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->cursorPlaneCompatibility()Z

    move-result v0

    return v0
.end method

.method public static blacklist defaultScalingModeFreeze()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->defaultScalingModeFreeze()Z

    move-result v0

    return v0
.end method

.method public static blacklist frametimestampsPreviousrelease()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->frametimestampsPreviousrelease()Z

    move-result v0

    return v0
.end method

.method public static blacklist unappliedTransactionCleanup()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->unappliedTransactionCleanup()Z

    move-result v0

    return v0
.end method

.method public static blacklist wbConsumerBaseOwnsBq()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->wbConsumerBaseOwnsBq()Z

    move-result v0

    return v0
.end method

.method public static blacklist wbLibcameraservice()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->wbLibcameraservice()Z

    move-result v0

    return v0
.end method

.method public static blacklist wbMediaMigration()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->wbMediaMigration()Z

    move-result v0

    return v0
.end method

.method public static blacklist wbPlatformApiImprovements()Z
    .registers 1

    .line 114
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->wbPlatformApiImprovements()Z

    move-result v0

    return v0
.end method

.method public static blacklist wbRingBuffer()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->wbRingBuffer()Z

    move-result v0

    return v0
.end method

.method public static blacklist wbStreamSplitter()Z
    .registers 1

    .line 126
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->wbStreamSplitter()Z

    move-result v0

    return v0
.end method

.method public static blacklist wbUnlimitedSlots()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/libgui/flags/FeatureFlags;->wbUnlimitedSlots()Z

    move-result v0

    return v0
.end method
