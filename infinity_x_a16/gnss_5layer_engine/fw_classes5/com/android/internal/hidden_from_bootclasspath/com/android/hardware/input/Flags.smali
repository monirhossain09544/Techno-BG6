.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags; = null

.field public static final blacklist FLAG_ABORT_SLOW_MULTI_PRESS:Ljava/lang/String; = "com.android.hardware.input.abort_slow_multi_press"

.field public static final blacklist FLAG_BLUETOOTH_WAKEUP_STATE_CHECK:Ljava/lang/String; = "com.android.hardware.input.bluetooth_wakeup_state_check"

.field public static final blacklist FLAG_CAN_WINDOW_OVERRIDE_POWER_GESTURE_API:Ljava/lang/String; = "com.android.hardware.input.can_window_override_power_gesture_api"

.field public static final blacklist FLAG_CREATE_VIRTUAL_KEYBOARD_API:Ljava/lang/String; = "com.android.hardware.input.create_virtual_keyboard_api"

.field public static final blacklist FLAG_DISABLE_SETTINGS_FOR_VIRTUAL_DEVICES:Ljava/lang/String; = "com.android.hardware.input.disable_settings_for_virtual_devices"

.field public static final blacklist FLAG_ENABLE_BACKUP_AND_RESTORE_FOR_INPUT_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_backup_and_restore_for_input_gestures"

.field public static final blacklist FLAG_ENABLE_CUSTOMIZABLE_INPUT_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_customizable_input_gestures"

.field public static final blacklist FLAG_ENABLE_DISPLAY_COLOR_INVERSION_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_display_color_inversion_key_gestures"

.field public static final blacklist FLAG_ENABLE_MAGNIFY_MAGNIFICATION_KEY_GESTURE_DIALOG:Ljava/lang/String; = "com.android.hardware.input.enable_magnify_magnification_key_gesture_dialog"

.field public static final blacklist FLAG_ENABLE_NEW_25Q2_KEYCODES:Ljava/lang/String; = "com.android.hardware.input.enable_new_25q2_keycodes"

.field public static final blacklist FLAG_ENABLE_PARTIAL_SCREENSHOT_KEYBOARD_SHORTCUT:Ljava/lang/String; = "com.android.hardware.input.enable_partial_screenshot_keyboard_shortcut"

.field public static final blacklist FLAG_ENABLE_QUICK_SETTINGS_PANEL_SHORTCUT:Ljava/lang/String; = "com.android.hardware.input.enable_quick_settings_panel_shortcut"

.field public static final blacklist FLAG_ENABLE_SELECT_TO_SPEAK_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_select_to_speak_key_gestures"

.field public static final blacklist FLAG_ENABLE_TALKBACK_AND_MAGNIFIER_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_talkback_and_magnifier_key_gestures"

.field public static final blacklist FLAG_ENABLE_TALKBACK_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_talkback_key_gestures"

.field public static final blacklist FLAG_ENABLE_VOICE_ACCESS_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.enable_voice_access_key_gestures"

.field public static final blacklist FLAG_FIX_SEARCH_MODIFIER_FALLBACKS:Ljava/lang/String; = "com.android.hardware.input.fix_search_modifier_fallbacks"

.field public static final blacklist FLAG_KEYBOARD_A11Y_SHORTCUT_CONTROL:Ljava/lang/String; = "com.android.hardware.input.keyboard_a11y_shortcut_control"

.field public static final blacklist FLAG_KEYBOARD_BACKLIGHT_SHORTCUTS:Ljava/lang/String; = "com.android.hardware.input.keyboard_backlight_shortcuts"

.field public static final blacklist FLAG_KEYBOARD_GLYPH_MAP:Ljava/lang/String; = "com.android.hardware.input.keyboard_glyph_map"

.field public static final blacklist FLAG_KEYBOARD_REPEAT_KEYS:Ljava/lang/String; = "com.android.hardware.input.keyboard_repeat_keys"

.field public static final blacklist FLAG_KEY_EVENT_ACTIVITY_DETECTION:Ljava/lang/String; = "com.android.hardware.input.key_event_activity_detection"

.field public static final blacklist FLAG_MANAGE_KEY_GESTURES:Ljava/lang/String; = "com.android.hardware.input.manage_key_gestures"

.field public static final blacklist FLAG_MOUSE_REVERSE_VERTICAL_SCROLLING:Ljava/lang/String; = "com.android.hardware.input.mouse_reverse_vertical_scrolling"

.field public static final blacklist FLAG_MOUSE_SCROLLING_ACCELERATION:Ljava/lang/String; = "com.android.hardware.input.mouse_scrolling_acceleration"

.field public static final blacklist FLAG_MOUSE_SWAP_PRIMARY_BUTTON:Ljava/lang/String; = "com.android.hardware.input.mouse_swap_primary_button"

.field public static final blacklist FLAG_MOUSE_TO_TOUCH_PER_APP_COMPAT:Ljava/lang/String; = "com.android.hardware.input.mouse_to_touch_per_app_compat"

.field public static final blacklist FLAG_OVERRIDE_POWER_KEY_BEHAVIOR_IN_FOCUSED_WINDOW:Ljava/lang/String; = "com.android.hardware.input.override_power_key_behavior_in_focused_window"

.field public static final blacklist FLAG_POINTER_ACCELERATION:Ljava/lang/String; = "com.android.hardware.input.pointer_acceleration"

.field public static final blacklist FLAG_POINTER_CAPTURE_MODES:Ljava/lang/String; = "com.android.hardware.input.pointer_capture_modes"

.field public static final blacklist FLAG_REMOVE_FALLBACK_MODIFIERS:Ljava/lang/String; = "com.android.hardware.input.remove_fallback_modifiers"

.field public static final blacklist FLAG_REQUEST_KEY_CAPTURE_API:Ljava/lang/String; = "com.android.hardware.input.request_key_capture_api"

.field public static final blacklist FLAG_TOUCHPAD_DISABLE:Ljava/lang/String; = "com.android.hardware.input.touchpad_disable"

.field public static final blacklist FLAG_TOUCHPAD_SYSTEM_GESTURE_DISABLE:Ljava/lang/String; = "com.android.hardware.input.touchpad_system_gesture_disable"

.field public static final blacklist FLAG_TOUCHPAD_VISUALIZER:Ljava/lang/String; = "com.android.hardware.input.touchpad_visualizer"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 287
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist abortSlowMultiPress()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->abortSlowMultiPress()Z

    move-result v0

    return v0
.end method

.method public static blacklist bluetoothWakeupStateCheck()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->bluetoothWakeupStateCheck()Z

    move-result v0

    return v0
.end method

.method public static blacklist canWindowOverridePowerGestureApi()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->canWindowOverridePowerGestureApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist createVirtualKeyboardApi()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->createVirtualKeyboardApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableSettingsForVirtualDevices()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->disableSettingsForVirtualDevices()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableBackupAndRestoreForInputGestures()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableBackupAndRestoreForInputGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableCustomizableInputGestures()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableCustomizableInputGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableDisplayColorInversionKeyGestures()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableDisplayColorInversionKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableMagnifyMagnificationKeyGestureDialog()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableMagnifyMagnificationKeyGestureDialog()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableNew25q2Keycodes()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableNew25q2Keycodes()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePartialScreenshotKeyboardShortcut()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enablePartialScreenshotKeyboardShortcut()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableQuickSettingsPanelShortcut()Z
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableQuickSettingsPanelShortcut()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSelectToSpeakKeyGestures()Z
    .registers 1

    .line 152
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableSelectToSpeakKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTalkbackAndMagnifierKeyGestures()Z
    .registers 1

    .line 158
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableTalkbackAndMagnifierKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTalkbackKeyGestures()Z
    .registers 1

    .line 164
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableTalkbackKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableVoiceAccessKeyGestures()Z
    .registers 1

    .line 170
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->enableVoiceAccessKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixSearchModifierFallbacks()Z
    .registers 1

    .line 176
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->fixSearchModifierFallbacks()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyEventActivityDetection()Z
    .registers 1

    .line 182
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyEventActivityDetection()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardA11yShortcutControl()Z
    .registers 1

    .line 188
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardA11yShortcutControl()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardBacklightShortcuts()Z
    .registers 1

    .line 194
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardBacklightShortcuts()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardGlyphMap()Z
    .registers 1

    .line 200
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardGlyphMap()Z

    move-result v0

    return v0
.end method

.method public static blacklist keyboardRepeatKeys()Z
    .registers 1

    .line 206
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->keyboardRepeatKeys()Z

    move-result v0

    return v0
.end method

.method public static blacklist manageKeyGestures()Z
    .registers 1

    .line 212
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->manageKeyGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist mouseReverseVerticalScrolling()Z
    .registers 1

    .line 218
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->mouseReverseVerticalScrolling()Z

    move-result v0

    return v0
.end method

.method public static blacklist mouseScrollingAcceleration()Z
    .registers 1

    .line 224
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->mouseScrollingAcceleration()Z

    move-result v0

    return v0
.end method

.method public static blacklist mouseSwapPrimaryButton()Z
    .registers 1

    .line 230
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->mouseSwapPrimaryButton()Z

    move-result v0

    return v0
.end method

.method public static blacklist mouseToTouchPerAppCompat()Z
    .registers 1

    .line 236
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->mouseToTouchPerAppCompat()Z

    move-result v0

    return v0
.end method

.method public static blacklist overridePowerKeyBehaviorInFocusedWindow()Z
    .registers 1

    .line 242
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->overridePowerKeyBehaviorInFocusedWindow()Z

    move-result v0

    return v0
.end method

.method public static blacklist pointerAcceleration()Z
    .registers 1

    .line 248
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->pointerAcceleration()Z

    move-result v0

    return v0
.end method

.method public static blacklist pointerCaptureModes()Z
    .registers 1

    .line 254
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->pointerCaptureModes()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeFallbackModifiers()Z
    .registers 1

    .line 260
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->removeFallbackModifiers()Z

    move-result v0

    return v0
.end method

.method public static blacklist requestKeyCaptureApi()Z
    .registers 1

    .line 266
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->requestKeyCaptureApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist touchpadDisable()Z
    .registers 1

    .line 272
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->touchpadDisable()Z

    move-result v0

    return v0
.end method

.method public static blacklist touchpadSystemGestureDisable()Z
    .registers 1

    .line 278
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->touchpadSystemGestureDisable()Z

    move-result v0

    return v0
.end method

.method public static blacklist touchpadVisualizer()Z
    .registers 1

    .line 284
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/FeatureFlags;->touchpadVisualizer()Z

    move-result v0

    return v0
.end method
