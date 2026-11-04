.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags; = null

.field public static final blacklist FLAG_AIDL_HAL_INPUT_SURFACE:Ljava/lang/String; = "android.media.codec.aidl_hal_input_surface"

.field public static final blacklist FLAG_APP_CODEC_USAGE_METRICS:Ljava/lang/String; = "android.media.codec.app_codec_usage_metrics"

.field public static final blacklist FLAG_APV_SUPPORT:Ljava/lang/String; = "android.media.codec.apv_support"

.field public static final blacklist FLAG_AUDIO_MIX_PRESENTATION_SUPPORT:Ljava/lang/String; = "android.media.codec.audio_mix_presentation_support"

.field public static final blacklist FLAG_CODEC_AVAILABILITY:Ljava/lang/String; = "android.media.codec.codec_availability"

.field public static final blacklist FLAG_CODEC_AVAILABILITY_METRICS:Ljava/lang/String; = "android.media.codec.codec_availability_metrics"

.field public static final blacklist FLAG_CODEC_AVAILABILITY_SUPPORT:Ljava/lang/String; = "android.media.codec.codec_availability_support"

.field public static final blacklist FLAG_CODEC_BUFFER_STATE_CLEANUP:Ljava/lang/String; = "android.media.codec.codec_buffer_state_cleanup"

.field public static final blacklist FLAG_DATASPACE_V0_PARTIAL:Ljava/lang/String; = "android.media.codec.dataspace_v0_partial"

.field public static final blacklist FLAG_DYNAMIC_COLOR_ASPECTS:Ljava/lang/String; = "android.media.codec.dynamic_color_aspects"

.field public static final blacklist FLAG_HLG_EDITING:Ljava/lang/String; = "android.media.codec.hlg_editing"

.field public static final blacklist FLAG_INPUT_SURFACE_THROTTLE:Ljava/lang/String; = "android.media.codec.input_surface_throttle"

.field public static final blacklist FLAG_IN_PROCESS_SW_AUDIO_CODEC:Ljava/lang/String; = "android.media.codec.in_process_sw_audio_codec"

.field public static final blacklist FLAG_IN_PROCESS_SW_AUDIO_CODEC_SUPPORT:Ljava/lang/String; = "android.media.codec.in_process_sw_audio_codec_support"

.field public static final blacklist FLAG_LARGE_AUDIO_FRAME_FINISH:Ljava/lang/String; = "android.media.codec.large_audio_frame_finish"

.field public static final blacklist FLAG_NATIVE_CAPABILITES:Ljava/lang/String; = "android.media.codec.native_capabilites"

.field public static final blacklist FLAG_NULL_OUTPUT_SURFACE:Ljava/lang/String; = "android.media.codec.null_output_surface"

.field public static final blacklist FLAG_NULL_OUTPUT_SURFACE_SUPPORT:Ljava/lang/String; = "android.media.codec.null_output_surface_support"

.field public static final blacklist FLAG_NUM_INPUT_SLOTS:Ljava/lang/String; = "android.media.codec.num_input_slots"

.field public static final blacklist FLAG_P210_FORMAT_SUPPORT:Ljava/lang/String; = "android.media.codec.p210_format_support"

.field public static final blacklist FLAG_REGION_OF_INTEREST:Ljava/lang/String; = "android.media.codec.region_of_interest"

.field public static final blacklist FLAG_REGION_OF_INTEREST_SUPPORT:Ljava/lang/String; = "android.media.codec.region_of_interest_support"

.field public static final blacklist FLAG_REMOVE_ARRAYMODE_FOR_LINEAR_OUTPUT_BUFFERS:Ljava/lang/String; = "android.media.codec.remove_arraymode_for_linear_output_buffers"

.field public static final blacklist FLAG_RENDERING_DEPTH_REMOVAL:Ljava/lang/String; = "android.media.codec.rendering_depth_removal"

.field public static final blacklist FLAG_SECURE_CODECS_REQUIRE_CRYPTO:Ljava/lang/String; = "android.media.codec.secure_codecs_require_crypto"

.field public static final blacklist FLAG_SET_CALLBACK_STALL:Ljava/lang/String; = "android.media.codec.set_callback_stall"

.field public static final blacklist FLAG_SET_STATE_EARLY:Ljava/lang/String; = "android.media.codec.set_state_early"

.field public static final blacklist FLAG_STOP_HAL_BEFORE_SURFACE:Ljava/lang/String; = "android.media.codec.stop_hal_before_surface"

.field public static final blacklist FLAG_SUBSESSION_METRICS:Ljava/lang/String; = "android.media.codec.subsession_metrics"

.field public static final blacklist FLAG_TEAMFOOD:Ljava/lang/String; = "android.media.codec.teamfood"

.field public static final blacklist FLAG_THUMBNAIL_BLOCK_MODEL:Ljava/lang/String; = "android.media.codec.thumbnail_block_model"

.field public static final blacklist FLAG_TRACE_CODEC_ACTIVITY:Ljava/lang/String; = "android.media.codec.trace_codec_activity"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 263
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist aidlHalInputSurface()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->aidlHalInputSurface()Z

    move-result v0

    return v0
.end method

.method public static blacklist appCodecUsageMetrics()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->appCodecUsageMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist apvSupport()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->apvSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioMixPresentationSupport()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->audioMixPresentationSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist codecAvailability()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->codecAvailability()Z

    move-result v0

    return v0
.end method

.method public static blacklist codecAvailabilityMetrics()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->codecAvailabilityMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist codecAvailabilitySupport()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->codecAvailabilitySupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist codecBufferStateCleanup()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->codecBufferStateCleanup()Z

    move-result v0

    return v0
.end method

.method public static blacklist dataspaceV0Partial()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->dataspaceV0Partial()Z

    move-result v0

    return v0
.end method

.method public static blacklist dynamicColorAspects()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->dynamicColorAspects()Z

    move-result v0

    return v0
.end method

.method public static blacklist hlgEditing()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->hlgEditing()Z

    move-result v0

    return v0
.end method

.method public static blacklist inProcessSwAudioCodec()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->inProcessSwAudioCodec()Z

    move-result v0

    return v0
.end method

.method public static blacklist inProcessSwAudioCodecSupport()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->inProcessSwAudioCodecSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist inputSurfaceThrottle()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->inputSurfaceThrottle()Z

    move-result v0

    return v0
.end method

.method public static blacklist largeAudioFrameFinish()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->largeAudioFrameFinish()Z

    move-result v0

    return v0
.end method

.method public static blacklist nativeCapabilites()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->nativeCapabilites()Z

    move-result v0

    return v0
.end method

.method public static blacklist nullOutputSurface()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->nullOutputSurface()Z

    move-result v0

    return v0
.end method

.method public static blacklist nullOutputSurfaceSupport()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->nullOutputSurfaceSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist numInputSlots()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->numInputSlots()Z

    move-result v0

    return v0
.end method

.method public static blacklist p210FormatSupport()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->p210FormatSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist regionOfInterest()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->regionOfInterest()Z

    move-result v0

    return v0
.end method

.method public static blacklist regionOfInterestSupport()Z
    .registers 1

    .line 200
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->regionOfInterestSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeArraymodeForLinearOutputBuffers()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->removeArraymodeForLinearOutputBuffers()Z

    move-result v0

    return v0
.end method

.method public static blacklist renderingDepthRemoval()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->renderingDepthRemoval()Z

    move-result v0

    return v0
.end method

.method public static blacklist secureCodecsRequireCrypto()Z
    .registers 1

    .line 218
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->secureCodecsRequireCrypto()Z

    move-result v0

    return v0
.end method

.method public static blacklist setCallbackStall()Z
    .registers 1

    .line 224
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->setCallbackStall()Z

    move-result v0

    return v0
.end method

.method public static blacklist setStateEarly()Z
    .registers 1

    .line 230
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->setStateEarly()Z

    move-result v0

    return v0
.end method

.method public static blacklist stopHalBeforeSurface()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->stopHalBeforeSurface()Z

    move-result v0

    return v0
.end method

.method public static blacklist subsessionMetrics()Z
    .registers 1

    .line 242
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->subsessionMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist teamfood()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->teamfood()Z

    move-result v0

    return v0
.end method

.method public static blacklist thumbnailBlockModel()Z
    .registers 1

    .line 254
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->thumbnailBlockModel()Z

    move-result v0

    return v0
.end method

.method public static blacklist traceCodecActivity()Z
    .registers 1

    .line 260
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/codec/FeatureFlags;->traceCodecActivity()Z

    move-result v0

    return v0
.end method
