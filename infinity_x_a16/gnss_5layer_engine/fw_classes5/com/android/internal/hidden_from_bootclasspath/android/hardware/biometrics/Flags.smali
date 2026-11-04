.class public final Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_FALLBACK:Ljava/lang/String; = "android.hardware.biometrics.add_fallback"

.field public static final blacklist FLAG_ADD_KEY_AGREEMENT_CRYPTO_OBJECT:Ljava/lang/String; = "android.hardware.biometrics.add_key_agreement_crypto_object"

.field public static final blacklist FLAG_BP_FALLBACK_OPTIONS:Ljava/lang/String; = "android.hardware.biometrics.bp_fallback_options"

.field public static final blacklist FLAG_BP_INITIALIZE_COMPOSE_WATCH:Ljava/lang/String; = "android.hardware.biometrics.bp_initialize_compose_watch"

.field public static final blacklist FLAG_CUSTOM_BIOMETRIC_PROMPT:Ljava/lang/String; = "android.hardware.biometrics.custom_biometric_prompt"

.field public static final blacklist FLAG_EFFECTIVE_USER_BP:Ljava/lang/String; = "android.hardware.biometrics.effective_user_bp"

.field public static final blacklist FLAG_GET_OP_ID_CRYPTO_OBJECT:Ljava/lang/String; = "android.hardware.biometrics.get_op_id_crypto_object"

.field public static final blacklist FLAG_IDENTITY_CHECK_ALL_SURFACES:Ljava/lang/String; = "android.hardware.biometrics.identity_check_all_surfaces"

.field public static final blacklist FLAG_IDENTITY_CHECK_API:Ljava/lang/String; = "android.hardware.biometrics.identity_check_api"

.field public static final blacklist FLAG_IDENTITY_CHECK_TEST_API:Ljava/lang/String; = "android.hardware.biometrics.identity_check_test_api"

.field public static final blacklist FLAG_IDENTITY_CHECK_WATCH:Ljava/lang/String; = "android.hardware.biometrics.identity_check_watch"

.field public static final blacklist FLAG_MOVE_FM_API_TO_BM:Ljava/lang/String; = "android.hardware.biometrics.move_fm_api_to_bm"

.field public static final blacklist FLAG_PRIVATE_SPACE_BP:Ljava/lang/String; = "android.hardware.biometrics.private_space_bp"

.field public static final blacklist FLAG_SCREEN_OFF_UNLOCK_UDFPS:Ljava/lang/String; = "android.hardware.biometrics.screen_off_unlock_udfps"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addFallback()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->addFallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist addKeyAgreementCryptoObject()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->addKeyAgreementCryptoObject()Z

    move-result v0

    return v0
.end method

.method public static blacklist bpFallbackOptions()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->bpFallbackOptions()Z

    move-result v0

    return v0
.end method

.method public static blacklist bpInitializeComposeWatch()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->bpInitializeComposeWatch()Z

    move-result v0

    return v0
.end method

.method public static blacklist customBiometricPrompt()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->customBiometricPrompt()Z

    move-result v0

    return v0
.end method

.method public static blacklist effectiveUserBp()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->effectiveUserBp()Z

    move-result v0

    return v0
.end method

.method public static blacklist getOpIdCryptoObject()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->getOpIdCryptoObject()Z

    move-result v0

    return v0
.end method

.method public static blacklist identityCheckAllSurfaces()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->identityCheckAllSurfaces()Z

    move-result v0

    return v0
.end method

.method public static blacklist identityCheckApi()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->identityCheckApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist identityCheckTestApi()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->identityCheckTestApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist identityCheckWatch()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->identityCheckWatch()Z

    move-result v0

    return v0
.end method

.method public static blacklist moveFmApiToBm()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->moveFmApiToBm()Z

    move-result v0

    return v0
.end method

.method public static blacklist privateSpaceBp()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->privateSpaceBp()Z

    move-result v0

    return v0
.end method

.method public static blacklist screenOffUnlockUdfps()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;->screenOffUnlockUdfps()Z

    move-result v0

    return v0
.end method
