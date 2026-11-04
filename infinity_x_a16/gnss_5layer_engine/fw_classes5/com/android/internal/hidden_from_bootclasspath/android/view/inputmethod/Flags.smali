.class public final Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags; = null

.field public static final blacklist FLAG_ADAPTIVE_HANDWRITING_BOUNDS:Ljava/lang/String; = "android.view.inputmethod.adaptive_handwriting_bounds"

.field public static final blacklist FLAG_CONCURRENT_INPUT_METHODS:Ljava/lang/String; = "android.view.inputmethod.concurrent_input_methods"

.field public static final blacklist FLAG_CONNECTIONLESS_HANDWRITING:Ljava/lang/String; = "android.view.inputmethod.connectionless_handwriting"

.field public static final blacklist FLAG_CTRL_SHIFT_SHORTCUT:Ljava/lang/String; = "android.view.inputmethod.ctrl_shift_shortcut"

.field public static final blacklist FLAG_DEPRECATE_INPUT_METHOD_SHOW_HIDE_FLAGS:Ljava/lang/String; = "android.view.inputmethod.deprecate_input_method_show_hide_flags"

.field public static final blacklist FLAG_DISABLE_IME_RESTORE_ON_ACTIVITY_CREATE:Ljava/lang/String; = "android.view.inputmethod.disable_ime_restore_on_activity_create"

.field public static final blacklist FLAG_EDITORINFO_HANDWRITING_ENABLED:Ljava/lang/String; = "android.view.inputmethod.editorinfo_handwriting_enabled"

.field public static final blacklist FLAG_ENFORCE_DEVICE_POLICY_IME:Ljava/lang/String; = "android.view.inputmethod.enforce_device_policy_ime"

.field public static final blacklist FLAG_FALLBACK_DISPLAY_FOR_SECONDARY_USER_ON_SECONDARY_DISPLAY:Ljava/lang/String; = "android.view.inputmethod.fallback_display_for_secondary_user_on_secondary_display"

.field public static final blacklist FLAG_FIX_NAVBAR_DEAD_ZONE:Ljava/lang/String; = "android.view.inputmethod.fix_navbar_dead_zone"

.field public static final blacklist FLAG_HOME_SCREEN_HANDWRITING_DELEGATOR:Ljava/lang/String; = "android.view.inputmethod.home_screen_handwriting_delegator"

.field public static final blacklist FLAG_IME_SWITCHER_REVAMP:Ljava/lang/String; = "android.view.inputmethod.ime_switcher_revamp"

.field public static final blacklist FLAG_IME_SWITCHER_REVAMP_API:Ljava/lang/String; = "android.view.inputmethod.ime_switcher_revamp_api"

.field public static final blacklist FLAG_INITIATION_WITHOUT_INPUT_CONNECTION:Ljava/lang/String; = "android.view.inputmethod.initiation_without_input_connection"

.field public static final blacklist FLAG_INVALIDATE_INPUT_CALLS_RESTART:Ljava/lang/String; = "android.view.inputmethod.invalidate_input_calls_restart"

.field public static final blacklist FLAG_LOWER_IME_OOM_IMPORTANCE:Ljava/lang/String; = "android.view.inputmethod.lower_ime_oom_importance"

.field public static final blacklist FLAG_OPTIMIZE_IME_INPUT_TARGET_UPDATE:Ljava/lang/String; = "android.view.inputmethod.optimize_ime_input_target_update"

.field public static final blacklist FLAG_PUBLIC_AUTOFILL_ID_IN_EDITORINFO:Ljava/lang/String; = "android.view.inputmethod.public_autofill_id_in_editorinfo"

.field public static final blacklist FLAG_REFACTOR_INSETS_CONTROLLER:Ljava/lang/String; = "android.view.inputmethod.refactor_insets_controller"

.field public static final blacklist FLAG_REPORT_ANIMATING_INSETS_TYPES:Ljava/lang/String; = "android.view.inputmethod.report_animating_insets_types"

.field public static final blacklist FLAG_SET_SERVER_VISIBILITY_ONPRELAYOUT:Ljava/lang/String; = "android.view.inputmethod.set_server_visibility_onprelayout"

.field public static final blacklist FLAG_UNIFY_SKIP_ANIMATION_ONCE_WITH_INITIALLY_VISIBLE:Ljava/lang/String; = "android.view.inputmethod.unify_skip_animation_once_with_initially_visible"

.field public static final blacklist FLAG_USE_INPUT_METHOD_INFO_SAFE_LIST:Ljava/lang/String; = "android.view.inputmethod.use_input_method_info_safe_list"

.field public static final blacklist FLAG_USE_ZERO_JANK_PROXY:Ljava/lang/String; = "android.view.inputmethod.use_zero_jank_proxy"

.field public static final blacklist FLAG_VERIFY_KEY_EVENT:Ljava/lang/String; = "android.view.inputmethod.verify_key_event"

.field public static final blacklist FLAG_WRITING_TOOLS:Ljava/lang/String; = "android.view.inputmethod.writing_tools"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 215
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adaptiveHandwritingBounds()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->adaptiveHandwritingBounds()Z

    move-result v0

    return v0
.end method

.method public static blacklist concurrentInputMethods()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->concurrentInputMethods()Z

    move-result v0

    return v0
.end method

.method public static blacklist connectionlessHandwriting()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->connectionlessHandwriting()Z

    move-result v0

    return v0
.end method

.method public static blacklist ctrlShiftShortcut()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->ctrlShiftShortcut()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateInputMethodShowHideFlags()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->deprecateInputMethodShowHideFlags()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableImeRestoreOnActivityCreate()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->disableImeRestoreOnActivityCreate()Z

    move-result v0

    return v0
.end method

.method public static blacklist editorinfoHandwritingEnabled()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->editorinfoHandwritingEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist enforceDevicePolicyIme()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->enforceDevicePolicyIme()Z

    move-result v0

    return v0
.end method

.method public static blacklist fallbackDisplayForSecondaryUserOnSecondaryDisplay()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->fallbackDisplayForSecondaryUserOnSecondaryDisplay()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixNavbarDeadZone()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->fixNavbarDeadZone()Z

    move-result v0

    return v0
.end method

.method public static blacklist homeScreenHandwritingDelegator()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->homeScreenHandwritingDelegator()Z

    move-result v0

    return v0
.end method

.method public static blacklist imeSwitcherRevamp()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->imeSwitcherRevamp()Z

    move-result v0

    return v0
.end method

.method public static blacklist imeSwitcherRevampApi()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->imeSwitcherRevampApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist initiationWithoutInputConnection()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->initiationWithoutInputConnection()Z

    move-result v0

    return v0
.end method

.method public static blacklist invalidateInputCallsRestart()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->invalidateInputCallsRestart()Z

    move-result v0

    return v0
.end method

.method public static blacklist lowerImeOomImportance()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->lowerImeOomImportance()Z

    move-result v0

    return v0
.end method

.method public static blacklist optimizeImeInputTargetUpdate()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->optimizeImeInputTargetUpdate()Z

    move-result v0

    return v0
.end method

.method public static blacklist publicAutofillIdInEditorinfo()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->publicAutofillIdInEditorinfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist refactorInsetsController()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->refactorInsetsController()Z

    move-result v0

    return v0
.end method

.method public static blacklist reportAnimatingInsetsTypes()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->reportAnimatingInsetsTypes()Z

    move-result v0

    return v0
.end method

.method public static blacklist setServerVisibilityOnprelayout()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->setServerVisibilityOnprelayout()Z

    move-result v0

    return v0
.end method

.method public static blacklist unifySkipAnimationOnceWithInitiallyVisible()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->unifySkipAnimationOnceWithInitiallyVisible()Z

    move-result v0

    return v0
.end method

.method public static blacklist useInputMethodInfoSafeList()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->useInputMethodInfoSafeList()Z

    move-result v0

    return v0
.end method

.method public static blacklist useZeroJankProxy()Z
    .registers 1

    .line 200
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->useZeroJankProxy()Z

    move-result v0

    return v0
.end method

.method public static blacklist verifyKeyEvent()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->verifyKeyEvent()Z

    move-result v0

    return v0
.end method

.method public static blacklist writingTools()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/inputmethod/FeatureFlags;->writingTools()Z

    move-result v0

    return v0
.end method
