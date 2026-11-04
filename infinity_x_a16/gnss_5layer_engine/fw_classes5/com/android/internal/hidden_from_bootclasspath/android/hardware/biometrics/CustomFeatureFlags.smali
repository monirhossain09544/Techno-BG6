.class public Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;",
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
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v1, Ljava/util/HashSet;

    const-string v15, "android.hardware.biometrics.screen_off_unlock_udfps"

    const-string v16, ""

    const-string v2, "android.hardware.biometrics.add_fallback"

    const-string v3, "android.hardware.biometrics.add_key_agreement_crypto_object"

    const-string v4, "android.hardware.biometrics.bp_fallback_options"

    const-string v5, "android.hardware.biometrics.bp_initialize_compose_watch"

    const-string v6, "android.hardware.biometrics.custom_biometric_prompt"

    const-string v7, "android.hardware.biometrics.effective_user_bp"

    const-string v8, "android.hardware.biometrics.get_op_id_crypto_object"

    const-string v9, "android.hardware.biometrics.identity_check_all_surfaces"

    const-string v10, "android.hardware.biometrics.identity_check_api"

    const-string v11, "android.hardware.biometrics.identity_check_test_api"

    const-string v12, "android.hardware.biometrics.identity_check_watch"

    const-string v13, "android.hardware.biometrics.move_fm_api_to_bm"

    const-string v14, "android.hardware.biometrics.private_space_bp"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addFallback()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.hardware.biometrics.add_fallback"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist addKeyAgreementCryptoObject()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.hardware.biometrics.add_key_agreement_crypto_object"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bpFallbackOptions()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.hardware.biometrics.bp_fallback_options"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist bpInitializeComposeWatch()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.hardware.biometrics.bp_initialize_compose_watch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist customBiometricPrompt()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.hardware.biometrics.custom_biometric_prompt"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist effectiveUserBp()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.hardware.biometrics.effective_user_bp"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    const-string v12, "android.hardware.biometrics.private_space_bp"

    const-string v13, "android.hardware.biometrics.screen_off_unlock_udfps"

    const-string v0, "android.hardware.biometrics.add_fallback"

    const-string v1, "android.hardware.biometrics.add_key_agreement_crypto_object"

    const-string v2, "android.hardware.biometrics.bp_fallback_options"

    const-string v3, "android.hardware.biometrics.bp_initialize_compose_watch"

    const-string v4, "android.hardware.biometrics.custom_biometric_prompt"

    const-string v5, "android.hardware.biometrics.effective_user_bp"

    const-string v6, "android.hardware.biometrics.get_op_id_crypto_object"

    const-string v7, "android.hardware.biometrics.identity_check_all_surfaces"

    const-string v8, "android.hardware.biometrics.identity_check_api"

    const-string v9, "android.hardware.biometrics.identity_check_test_api"

    const-string v10, "android.hardware.biometrics.identity_check_watch"

    const-string v11, "android.hardware.biometrics.move_fm_api_to_bm"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpIdCryptoObject()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.hardware.biometrics.get_op_id_crypto_object"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist identityCheckAllSurfaces()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.hardware.biometrics.identity_check_all_surfaces"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist identityCheckApi()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.hardware.biometrics.identity_check_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist identityCheckTestApi()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.hardware.biometrics.identity_check_test_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist identityCheckWatch()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.hardware.biometrics.identity_check_watch"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 118
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 119
    const/4 p1, 0x1

    return p1

    .line 121
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist moveFmApiToBm()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.hardware.biometrics.move_fm_api_to_bm"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist privateSpaceBp()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.hardware.biometrics.private_space_bp"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist screenOffUnlockUdfps()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.hardware.biometrics.screen_off_unlock_udfps"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
