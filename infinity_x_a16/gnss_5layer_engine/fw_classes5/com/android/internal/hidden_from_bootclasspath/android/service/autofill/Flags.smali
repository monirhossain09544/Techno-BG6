.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_ACCESSIBILITY_TITLE_FOR_AUGMENTED_AUTOFILL_DROPDOWN:Ljava/lang/String; = "android.service.autofill.add_accessibility_title_for_augmented_autofill_dropdown"

.field public static final blacklist FLAG_ADD_LAST_FOCUSED_ID_TO_CLIENT_STATE:Ljava/lang/String; = "android.service.autofill.add_last_focused_id_to_client_state"

.field public static final blacklist FLAG_ADD_LAST_FOCUSED_ID_TO_FILL_EVENT_HISTORY:Ljava/lang/String; = "android.service.autofill.add_last_focused_id_to_fill_event_history"

.field public static final blacklist FLAG_ADD_SESSION_ID_TO_CLIENT_STATE:Ljava/lang/String; = "android.service.autofill.add_session_id_to_client_state"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_DEV_INTEGRATION:Ljava/lang/String; = "android.service.autofill.autofill_credman_dev_integration"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_INTEGRATION:Ljava/lang/String; = "android.service.autofill.autofill_credman_integration"

.field public static final blacklist FLAG_AUTOFILL_CREDMAN_INTEGRATION_PHASE2:Ljava/lang/String; = "android.service.autofill.autofill_credman_integration_phase2"

.field public static final blacklist FLAG_AUTOFILL_SESSION_DESTROYED:Ljava/lang/String; = "android.service.autofill.autofill_session_destroyed"

.field public static final blacklist FLAG_AUTOFILL_W_METRICS:Ljava/lang/String; = "android.service.autofill.autofill_w_metrics"

.field public static final blacklist FLAG_DISABLE_FILL_DIALOG_ON_AUTOMOTIVE_MULTI_WINDOW:Ljava/lang/String; = "android.service.autofill.disable_fill_dialog_on_automotive_multi_window"

.field public static final blacklist FLAG_FILL_DIALOG_IMPROVEMENTS:Ljava/lang/String; = "android.service.autofill.fill_dialog_improvements"

.field public static final blacklist FLAG_FILL_DIALOG_IMPROVEMENTS_IMPL:Ljava/lang/String; = "android.service.autofill.fill_dialog_improvements_impl"

.field public static final blacklist FLAG_FILL_FIELDS_FROM_CURRENT_SESSION_ONLY:Ljava/lang/String; = "android.service.autofill.fill_fields_from_current_session_only"

.field public static final blacklist FLAG_HIGHLIGHT_AUTOFILL_SINGLE_FIELD:Ljava/lang/String; = "android.service.autofill.highlight_autofill_single_field"

.field public static final blacklist FLAG_IMPROVE_FILL_DIALOG_ACONFIG:Ljava/lang/String; = "android.service.autofill.improve_fill_dialog_aconfig"

.field public static final blacklist FLAG_INCLUDE_INVISIBLE_VIEW_GROUP_IN_ASSIST_STRUCTURE:Ljava/lang/String; = "android.service.autofill.include_invisible_view_group_in_assist_structure"

.field public static final blacklist FLAG_LOG_AUGMENTED_SERVICE_UID:Ljava/lang/String; = "android.service.autofill.log_augmented_service_uid"

.field public static final blacklist FLAG_METRICS_FIXES:Ljava/lang/String; = "android.service.autofill.metrics_fixes"

.field public static final blacklist FLAG_MULTIPLE_FILL_HISTORY:Ljava/lang/String; = "android.service.autofill.multiple_fill_history"

.field public static final blacklist FLAG_RELAYOUT:Ljava/lang/String; = "android.service.autofill.relayout"

.field public static final blacklist FLAG_RELAYOUT_FIX:Ljava/lang/String; = "android.service.autofill.relayout_fix"

.field public static final blacklist FLAG_REMOTE_FILL_SERVICE_USE_WEAK_REFERENCE:Ljava/lang/String; = "android.service.autofill.remote_fill_service_use_weak_reference"

.field public static final blacklist FLAG_SUPPORT_MULTI_USER_MULTI_DISPLAY:Ljava/lang/String; = "android.service.autofill.support_multi_user_multi_display"

.field public static final blacklist FLAG_TEST:Ljava/lang/String; = "android.service.autofill.test"

.field public static final blacklist FLAG_TEST_FLAG:Ljava/lang/String; = "android.service.autofill.test_flag"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addAccessibilityTitleForAugmentedAutofillDropdown()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->addAccessibilityTitleForAugmentedAutofillDropdown()Z

    move-result v0

    return v0
.end method

.method public static blacklist addLastFocusedIdToClientState()Z
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->addLastFocusedIdToClientState()Z

    move-result v0

    return v0
.end method

.method public static blacklist addLastFocusedIdToFillEventHistory()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->addLastFocusedIdToFillEventHistory()Z

    move-result v0

    return v0
.end method

.method public static blacklist addSessionIdToClientState()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->addSessionIdToClientState()Z

    move-result v0

    return v0
.end method

.method public static blacklist autofillCredmanDevIntegration()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->autofillCredmanDevIntegration()Z

    move-result v0

    return v0
.end method

.method public static blacklist autofillCredmanIntegration()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->autofillCredmanIntegration()Z

    move-result v0

    return v0
.end method

.method public static blacklist autofillCredmanIntegrationPhase2()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->autofillCredmanIntegrationPhase2()Z

    move-result v0

    return v0
.end method

.method public static blacklist autofillSessionDestroyed()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->autofillSessionDestroyed()Z

    move-result v0

    return v0
.end method

.method public static blacklist autofillWMetrics()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->autofillWMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableFillDialogOnAutomotiveMultiWindow()Z
    .registers 1

    .line 114
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->disableFillDialogOnAutomotiveMultiWindow()Z

    move-result v0

    return v0
.end method

.method public static blacklist fillDialogImprovements()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->fillDialogImprovements()Z

    move-result v0

    return v0
.end method

.method public static blacklist fillDialogImprovementsImpl()Z
    .registers 1

    .line 126
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->fillDialogImprovementsImpl()Z

    move-result v0

    return v0
.end method

.method public static blacklist fillFieldsFromCurrentSessionOnly()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->fillFieldsFromCurrentSessionOnly()Z

    move-result v0

    return v0
.end method

.method public static blacklist highlightAutofillSingleField()Z
    .registers 1

    .line 138
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->highlightAutofillSingleField()Z

    move-result v0

    return v0
.end method

.method public static blacklist improveFillDialogAconfig()Z
    .registers 1

    .line 144
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->improveFillDialogAconfig()Z

    move-result v0

    return v0
.end method

.method public static blacklist includeInvisibleViewGroupInAssistStructure()Z
    .registers 1

    .line 150
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->includeInvisibleViewGroupInAssistStructure()Z

    move-result v0

    return v0
.end method

.method public static blacklist logAugmentedServiceUid()Z
    .registers 1

    .line 156
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->logAugmentedServiceUid()Z

    move-result v0

    return v0
.end method

.method public static blacklist metricsFixes()Z
    .registers 1

    .line 162
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->metricsFixes()Z

    move-result v0

    return v0
.end method

.method public static blacklist multipleFillHistory()Z
    .registers 1

    .line 168
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->multipleFillHistory()Z

    move-result v0

    return v0
.end method

.method public static blacklist relayout()Z
    .registers 1

    .line 174
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->relayout()Z

    move-result v0

    return v0
.end method

.method public static blacklist relayoutFix()Z
    .registers 1

    .line 180
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->relayoutFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist remoteFillServiceUseWeakReference()Z
    .registers 1

    .line 186
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->remoteFillServiceUseWeakReference()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportMultiUserMultiDisplay()Z
    .registers 1

    .line 192
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->supportMultiUserMultiDisplay()Z

    move-result v0

    return v0
.end method

.method public static blacklist test()Z
    .registers 1

    .line 198
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->test()Z

    move-result v0

    return v0
.end method

.method public static blacklist testFlag()Z
    .registers 1

    .line 204
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/autofill/FeatureFlags;->testFlag()Z

    move-result v0

    return v0
.end method
