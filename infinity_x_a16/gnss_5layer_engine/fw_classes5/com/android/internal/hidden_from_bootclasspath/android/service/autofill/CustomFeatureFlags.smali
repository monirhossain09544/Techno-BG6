.class public Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;",
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
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v1, Ljava/util/HashSet;

    const-string v26, "android.service.autofill.test_flag"

    const-string v27, ""

    const-string v2, "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

    const-string v3, "android.service.autofill.add_last_focused_id_to_client_state"

    const-string v4, "android.service.autofill.add_last_focused_id_to_fill_event_history"

    const-string v5, "android.service.autofill.add_session_id_to_client_state"

    const-string v6, "android.service.autofill.autofill_credman_dev_integration"

    const-string v7, "android.service.autofill.autofill_credman_integration"

    const-string v8, "android.service.autofill.autofill_credman_integration_phase2"

    const-string v9, "android.service.autofill.autofill_session_destroyed"

    const-string v10, "android.service.autofill.autofill_w_metrics"

    const-string v11, "android.service.autofill.disable_fill_dialog_on_automotive_multi_window"

    const-string v12, "android.service.autofill.fill_dialog_improvements"

    const-string v13, "android.service.autofill.fill_dialog_improvements_impl"

    const-string v14, "android.service.autofill.fill_fields_from_current_session_only"

    const-string v15, "android.service.autofill.highlight_autofill_single_field"

    const-string v16, "android.service.autofill.improve_fill_dialog_aconfig"

    const-string v17, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    const-string v18, "android.service.autofill.log_augmented_service_uid"

    const-string v19, "android.service.autofill.metrics_fixes"

    const-string v20, "android.service.autofill.multiple_fill_history"

    const-string v21, "android.service.autofill.relayout"

    const-string v22, "android.service.autofill.relayout_fix"

    const-string v23, "android.service.autofill.remote_fill_service_use_weak_reference"

    const-string v24, "android.service.autofill.support_multi_user_multi_display"

    const-string v25, "android.service.autofill.test"

    filled-new-array/range {v2 .. v27}, [Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 203
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addAccessibilityTitleForAugmentedAutofillDropdown()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist addLastFocusedIdToClientState()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.service.autofill.add_last_focused_id_to_client_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist addLastFocusedIdToFillEventHistory()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.service.autofill.add_last_focused_id_to_fill_event_history"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist addSessionIdToClientState()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.service.autofill.add_session_id_to_client_state"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autofillCredmanDevIntegration()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_dev_integration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autofillCredmanIntegration()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_integration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autofillCredmanIntegrationPhase2()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.service.autofill.autofill_credman_integration_phase2"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autofillSessionDestroyed()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.service.autofill.autofill_session_destroyed"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist autofillWMetrics()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.service.autofill.autofill_w_metrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableFillDialogOnAutomotiveMultiWindow()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.service.autofill.disable_fill_dialog_on_automotive_multi_window"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fillDialogImprovements()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.service.autofill.fill_dialog_improvements"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fillDialogImprovementsImpl()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.service.autofill.fill_dialog_improvements_impl"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fillFieldsFromCurrentSessionOnly()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "android.service.autofill.fill_fields_from_current_session_only"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    const-string v24, "android.service.autofill.test"

    const-string v25, "android.service.autofill.test_flag"

    const-string v1, "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

    const-string v2, "android.service.autofill.add_last_focused_id_to_client_state"

    const-string v3, "android.service.autofill.add_last_focused_id_to_fill_event_history"

    const-string v4, "android.service.autofill.add_session_id_to_client_state"

    const-string v5, "android.service.autofill.autofill_credman_dev_integration"

    const-string v6, "android.service.autofill.autofill_credman_integration"

    const-string v7, "android.service.autofill.autofill_credman_integration_phase2"

    const-string v8, "android.service.autofill.autofill_session_destroyed"

    const-string v9, "android.service.autofill.autofill_w_metrics"

    const-string v10, "android.service.autofill.disable_fill_dialog_on_automotive_multi_window"

    const-string v11, "android.service.autofill.fill_dialog_improvements"

    const-string v12, "android.service.autofill.fill_dialog_improvements_impl"

    const-string v13, "android.service.autofill.fill_fields_from_current_session_only"

    const-string v14, "android.service.autofill.highlight_autofill_single_field"

    const-string v15, "android.service.autofill.improve_fill_dialog_aconfig"

    const-string v16, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    const-string v17, "android.service.autofill.log_augmented_service_uid"

    const-string v18, "android.service.autofill.metrics_fixes"

    const-string v19, "android.service.autofill.multiple_fill_history"

    const-string v20, "android.service.autofill.relayout"

    const-string v21, "android.service.autofill.relayout_fix"

    const-string v22, "android.service.autofill.remote_fill_service_use_weak_reference"

    const-string v23, "android.service.autofill.support_multi_user_multi_display"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist highlightAutofillSingleField()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.service.autofill.highlight_autofill_single_field"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist improveFillDialogAconfig()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.service.autofill.improve_fill_dialog_aconfig"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist includeInvisibleViewGroupInAssistStructure()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.service.autofill.include_invisible_view_group_in_assist_structure"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 195
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 196
    const/4 p1, 0x1

    return p1

    .line 198
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist logAugmentedServiceUid()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.service.autofill.log_augmented_service_uid"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist metricsFixes()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.service.autofill.metrics_fixes"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist multipleFillHistory()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.service.autofill.multiple_fill_history"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist relayout()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.service.autofill.relayout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist relayoutFix()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.service.autofill.relayout_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist remoteFillServiceUseWeakReference()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.service.autofill.remote_fill_service_use_weak_reference"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist supportMultiUserMultiDisplay()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.service.autofill.support_multi_user_multi_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist test()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "android.service.autofill.test"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist testFlag()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.service.autofill.test_flag"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
