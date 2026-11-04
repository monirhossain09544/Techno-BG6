.class public Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v1, Ljava/util/HashSet;

    const-string v14, "android.os.vibrator.vibration_scale_device_config_enabled"

    const-string v15, ""

    const-string v2, "android.os.vibrator.composition_pwle_apis"

    const-string v3, "android.os.vibrator.decouple_frequency_profile_from_resonance"

    const-string v4, "android.os.vibrator.haptic_feedback_with_custom_usage"

    const-string v5, "android.os.vibrator.haptic_pcm_generation"

    const-string v6, "android.os.vibrator.haptics_scale_v2_enabled"

    const-string v7, "android.os.vibrator.normalized_pwle_effects"

    const-string v8, "android.os.vibrator.primitive_composition_absolute_delay"

    const-string v9, "android.os.vibrator.remove_hidl_support"

    const-string v10, "android.os.vibrator.remove_sequential_combination"

    const-string v11, "android.os.vibrator.vendor_vibration_effects"

    const-string v12, "android.os.vibrator.vibration_attribute_ime_usage_api"

    const-string v13, "android.os.vibrator.vibration_scale_bounds_fix_enabled"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist compositionPwleApis()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.os.vibrator.composition_pwle_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist decoupleFrequencyProfileFromResonance()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.os.vibrator.decouple_frequency_profile_from_resonance"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    const-string v11, "android.os.vibrator.vibration_scale_bounds_fix_enabled"

    const-string v12, "android.os.vibrator.vibration_scale_device_config_enabled"

    const-string v0, "android.os.vibrator.composition_pwle_apis"

    const-string v1, "android.os.vibrator.decouple_frequency_profile_from_resonance"

    const-string v2, "android.os.vibrator.haptic_feedback_with_custom_usage"

    const-string v3, "android.os.vibrator.haptic_pcm_generation"

    const-string v4, "android.os.vibrator.haptics_scale_v2_enabled"

    const-string v5, "android.os.vibrator.normalized_pwle_effects"

    const-string v6, "android.os.vibrator.primitive_composition_absolute_delay"

    const-string v7, "android.os.vibrator.remove_hidl_support"

    const-string v8, "android.os.vibrator.remove_sequential_combination"

    const-string v9, "android.os.vibrator.vendor_vibration_effects"

    const-string v10, "android.os.vibrator.vibration_attribute_ime_usage_api"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist hapticFeedbackWithCustomUsage()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.os.vibrator.haptic_feedback_with_custom_usage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hapticPcmGeneration()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.os.vibrator.haptic_pcm_generation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist hapticsScaleV2Enabled()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.os.vibrator.haptics_scale_v2_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 111
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 112
    const/4 p1, 0x1

    return p1

    .line 114
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist normalizedPwleEffects()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.os.vibrator.normalized_pwle_effects"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist primitiveCompositionAbsoluteDelay()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.os.vibrator.primitive_composition_absolute_delay"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeHidlSupport()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.os.vibrator.remove_hidl_support"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeSequentialCombination()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.os.vibrator.remove_sequential_combination"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vendorVibrationEffects()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.os.vibrator.vendor_vibration_effects"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vibrationAttributeImeUsageApi()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.os.vibrator.vibration_attribute_ime_usage_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vibrationScaleBoundsFixEnabled()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.os.vibrator.vibration_scale_bounds_fix_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist vibrationScaleDeviceConfigEnabled()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.os.vibrator.vibration_scale_device_config_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/os/vibrator/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
