.class public final Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags; = null

.field public static final blacklist FLAG_COMPOSITION_PWLE_APIS:Ljava/lang/String; = "android.os.vibrator.composition_pwle_apis"

.field public static final blacklist FLAG_DECOUPLE_FREQUENCY_PROFILE_FROM_RESONANCE:Ljava/lang/String; = "android.os.vibrator.decouple_frequency_profile_from_resonance"

.field public static final blacklist FLAG_HAPTICS_SCALE_V2_ENABLED:Ljava/lang/String; = "android.os.vibrator.haptics_scale_v2_enabled"

.field public static final blacklist FLAG_HAPTIC_FEEDBACK_WITH_CUSTOM_USAGE:Ljava/lang/String; = "android.os.vibrator.haptic_feedback_with_custom_usage"

.field public static final blacklist FLAG_HAPTIC_PCM_GENERATION:Ljava/lang/String; = "android.os.vibrator.haptic_pcm_generation"

.field public static final blacklist FLAG_NORMALIZED_PWLE_EFFECTS:Ljava/lang/String; = "android.os.vibrator.normalized_pwle_effects"

.field public static final blacklist FLAG_PRIMITIVE_COMPOSITION_ABSOLUTE_DELAY:Ljava/lang/String; = "android.os.vibrator.primitive_composition_absolute_delay"

.field public static final blacklist FLAG_REMOVE_HIDL_SUPPORT:Ljava/lang/String; = "android.os.vibrator.remove_hidl_support"

.field public static final blacklist FLAG_REMOVE_SEQUENTIAL_COMBINATION:Ljava/lang/String; = "android.os.vibrator.remove_sequential_combination"

.field public static final blacklist FLAG_VENDOR_VIBRATION_EFFECTS:Ljava/lang/String; = "android.os.vibrator.vendor_vibration_effects"

.field public static final blacklist FLAG_VIBRATION_ATTRIBUTE_IME_USAGE_API:Ljava/lang/String; = "android.os.vibrator.vibration_attribute_ime_usage_api"

.field public static final blacklist FLAG_VIBRATION_SCALE_BOUNDS_FIX_ENABLED:Ljava/lang/String; = "android.os.vibrator.vibration_scale_bounds_fix_enabled"

.field public static final blacklist FLAG_VIBRATION_SCALE_DEVICE_CONFIG_ENABLED:Ljava/lang/String; = "android.os.vibrator.vibration_scale_device_config_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compositionPwleApis()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->compositionPwleApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist decoupleFrequencyProfileFromResonance()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->decoupleFrequencyProfileFromResonance()Z

    move-result v0

    return v0
.end method

.method public static blacklist hapticFeedbackWithCustomUsage()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->hapticFeedbackWithCustomUsage()Z

    move-result v0

    return v0
.end method

.method public static blacklist hapticPcmGeneration()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->hapticPcmGeneration()Z

    move-result v0

    return v0
.end method

.method public static blacklist hapticsScaleV2Enabled()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->hapticsScaleV2Enabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist normalizedPwleEffects()Z
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->normalizedPwleEffects()Z

    move-result v0

    return v0
.end method

.method public static blacklist primitiveCompositionAbsoluteDelay()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->primitiveCompositionAbsoluteDelay()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeHidlSupport()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->removeHidlSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeSequentialCombination()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->removeSequentialCombination()Z

    move-result v0

    return v0
.end method

.method public static blacklist vendorVibrationEffects()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->vendorVibrationEffects()Z

    move-result v0

    return v0
.end method

.method public static blacklist vibrationAttributeImeUsageApi()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->vibrationAttributeImeUsageApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist vibrationScaleBoundsFixEnabled()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->vibrationScaleBoundsFixEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist vibrationScaleDeviceConfigEnabled()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;->vibrationScaleDeviceConfigEnabled()Z

    move-result v0

    return v0
.end method
