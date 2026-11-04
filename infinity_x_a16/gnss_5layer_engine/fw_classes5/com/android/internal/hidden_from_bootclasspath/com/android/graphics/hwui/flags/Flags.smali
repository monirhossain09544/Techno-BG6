.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_SURFACECONTROL_CONSTANTS:Ljava/lang/String; = "com.android.graphics.hwui.flags.add_surfacecontrol_constants"

.field public static final blacklist FLAG_ANIMATED_IMAGE_DRAWABLE_FILTER_BITMAP:Ljava/lang/String; = "com.android.graphics.hwui.flags.animated_image_drawable_filter_bitmap"

.field public static final blacklist FLAG_BITMAP_ASHMEM_LONG_NAME:Ljava/lang/String; = "com.android.graphics.hwui.flags.bitmap_ashmem_long_name"

.field public static final blacklist FLAG_BITMAP_USE_MEMFD:Ljava/lang/String; = "com.android.graphics.hwui.flags.bitmap_use_memfd"

.field public static final blacklist FLAG_CLIP_SHADER:Ljava/lang/String; = "com.android.graphics.hwui.flags.clip_shader"

.field public static final blacklist FLAG_CLIP_SURFACEVIEWS:Ljava/lang/String; = "com.android.graphics.hwui.flags.clip_surfaceviews"

.field public static final blacklist FLAG_DRAW_REGION:Ljava/lang/String; = "com.android.graphics.hwui.flags.draw_region"

.field public static final blacklist FLAG_EARLY_PREINIT_BUFFER_ALLOCATOR:Ljava/lang/String; = "com.android.graphics.hwui.flags.early_preinit_buffer_allocator"

.field public static final blacklist FLAG_GAINMAP_ANIMATIONS:Ljava/lang/String; = "com.android.graphics.hwui.flags.gainmap_animations"

.field public static final blacklist FLAG_GAINMAP_CONSTRUCTOR_WITH_METADATA:Ljava/lang/String; = "com.android.graphics.hwui.flags.gainmap_constructor_with_metadata"

.field public static final blacklist FLAG_HDR_10BIT_PLUS:Ljava/lang/String; = "com.android.graphics.hwui.flags.hdr_10bit_plus"

.field public static final blacklist FLAG_HIGH_CONTRAST_TEXT_SMALL_TEXT_RECT:Ljava/lang/String; = "com.android.graphics.hwui.flags.high_contrast_text_small_text_rect"

.field public static final blacklist FLAG_INITIALIZE_GL_ALWAYS:Ljava/lang/String; = "com.android.graphics.hwui.flags.initialize_gl_always"

.field public static final blacklist FLAG_ISO_GAINMAP_APIS:Ljava/lang/String; = "com.android.graphics.hwui.flags.iso_gainmap_apis"

.field public static final blacklist FLAG_LIMITED_HDR:Ljava/lang/String; = "com.android.graphics.hwui.flags.limited_hdr"

.field public static final blacklist FLAG_MATRIX_44:Ljava/lang/String; = "com.android.graphics.hwui.flags.matrix_44"

.field public static final blacklist FLAG_REMOVE_VRI_SKETCHY_DESTROY:Ljava/lang/String; = "com.android.graphics.hwui.flags.remove_vri_sketchy_destroy"

.field public static final blacklist FLAG_REQUESTED_FORMATS_12_14:Ljava/lang/String; = "com.android.graphics.hwui.flags.requested_formats_12_14"

.field public static final blacklist FLAG_REQUESTED_FORMATS_BGRA_1010102:Ljava/lang/String; = "com.android.graphics.hwui.flags.requested_formats_bgra_1010102"

.field public static final blacklist FLAG_REQUESTED_FORMATS_V:Ljava/lang/String; = "com.android.graphics.hwui.flags.requested_formats_v"

.field public static final blacklist FLAG_RESAMPLE_GAINMAP_REGIONS:Ljava/lang/String; = "com.android.graphics.hwui.flags.resample_gainmap_regions"

.field public static final blacklist FLAG_RUNTIME_COLOR_FILTERS_BLENDERS:Ljava/lang/String; = "com.android.graphics.hwui.flags.runtime_color_filters_blenders"

.field public static final blacklist FLAG_SEPARATE_PIPELINE_CACHE:Ljava/lang/String; = "com.android.graphics.hwui.flags.separate_pipeline_cache"

.field public static final blacklist FLAG_SHADER_COLOR_SPACE:Ljava/lang/String; = "com.android.graphics.hwui.flags.shader_color_space"

.field public static final blacklist FLAG_SKIP_EGLMANAGER_TELEMETRY:Ljava/lang/String; = "com.android.graphics.hwui.flags.skip_eglmanager_telemetry"

.field public static final blacklist FLAG_SURFACEVIEW_STRETCH_ALIGNMENT:Ljava/lang/String; = "com.android.graphics.hwui.flags.surfaceview_stretch_alignment"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 215
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addSurfacecontrolConstants()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->addSurfacecontrolConstants()Z

    move-result v0

    return v0
.end method

.method public static blacklist animatedImageDrawableFilterBitmap()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->animatedImageDrawableFilterBitmap()Z

    move-result v0

    return v0
.end method

.method public static blacklist bitmapAshmemLongName()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->bitmapAshmemLongName()Z

    move-result v0

    return v0
.end method

.method public static blacklist bitmapUseMemfd()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->bitmapUseMemfd()Z

    move-result v0

    return v0
.end method

.method public static blacklist clipShader()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->clipShader()Z

    move-result v0

    return v0
.end method

.method public static blacklist clipSurfaceviews()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->clipSurfaceviews()Z

    move-result v0

    return v0
.end method

.method public static blacklist drawRegion()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->drawRegion()Z

    move-result v0

    return v0
.end method

.method public static blacklist earlyPreinitBufferAllocator()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->earlyPreinitBufferAllocator()Z

    move-result v0

    return v0
.end method

.method public static blacklist gainmapAnimations()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->gainmapAnimations()Z

    move-result v0

    return v0
.end method

.method public static blacklist gainmapConstructorWithMetadata()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->gainmapConstructorWithMetadata()Z

    move-result v0

    return v0
.end method

.method public static blacklist hdr10bitPlus()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->hdr10bitPlus()Z

    move-result v0

    return v0
.end method

.method public static blacklist highContrastTextSmallTextRect()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->highContrastTextSmallTextRect()Z

    move-result v0

    return v0
.end method

.method public static blacklist initializeGlAlways()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->initializeGlAlways()Z

    move-result v0

    return v0
.end method

.method public static blacklist isoGainmapApis()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->isoGainmapApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist limitedHdr()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->limitedHdr()Z

    move-result v0

    return v0
.end method

.method public static blacklist matrix44()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->matrix44()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeVriSketchyDestroy()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->removeVriSketchyDestroy()Z

    move-result v0

    return v0
.end method

.method public static blacklist requestedFormats1214()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->requestedFormats1214()Z

    move-result v0

    return v0
.end method

.method public static blacklist requestedFormatsBgra1010102()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->requestedFormatsBgra1010102()Z

    move-result v0

    return v0
.end method

.method public static blacklist requestedFormatsV()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->requestedFormatsV()Z

    move-result v0

    return v0
.end method

.method public static blacklist resampleGainmapRegions()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->resampleGainmapRegions()Z

    move-result v0

    return v0
.end method

.method public static blacklist runtimeColorFiltersBlenders()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->runtimeColorFiltersBlenders()Z

    move-result v0

    return v0
.end method

.method public static blacklist separatePipelineCache()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->separatePipelineCache()Z

    move-result v0

    return v0
.end method

.method public static blacklist shaderColorSpace()Z
    .registers 1

    .line 200
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->shaderColorSpace()Z

    move-result v0

    return v0
.end method

.method public static blacklist skipEglmanagerTelemetry()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->skipEglmanagerTelemetry()Z

    move-result v0

    return v0
.end method

.method public static blacklist surfaceviewStretchAlignment()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/graphics/hwui/flags/FeatureFlags;->surfaceviewStretchAlignment()Z

    move-result v0

    return v0
.end method
