.class public final Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags; = null

.field public static final blacklist FLAG_BOOST_CPU_LOAD_FOR_LONG_TEXT_RENDERING:Ljava/lang/String; = "android.widget.flags.boost_cpu_load_for_long_text_rendering"

.field public static final blacklist FLAG_ENABLE_PLATFORM_WIDGET_DIFFERENTIAL_MOTION_FLING:Ljava/lang/String; = "android.widget.flags.enable_platform_widget_differential_motion_fling"

.field public static final blacklist FLAG_FIX_UNBOLDED_TYPEFACE_FOR_NUMBERPICKER:Ljava/lang/String; = "android.widget.flags.fix_unbolded_typeface_for_numberpicker"

.field public static final blacklist FLAG_USE_WEAR_MATERIAL3_UI:Ljava/lang/String; = "android.widget.flags.use_wear_material3_ui"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist boostCpuLoadForLongTextRendering()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;->boostCpuLoadForLongTextRendering()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePlatformWidgetDifferentialMotionFling()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;->enablePlatformWidgetDifferentialMotionFling()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixUnboldedTypefaceForNumberpicker()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;->fixUnboldedTypefaceForNumberpicker()Z

    move-result v0

    return v0
.end method

.method public static blacklist useWearMaterial3Ui()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/widget/flags/FeatureFlags;->useWearMaterial3Ui()Z

    move-result v0

    return v0
.end method
