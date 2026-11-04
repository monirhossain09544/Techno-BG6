.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CLEAR_FONT_VARIATION_SETTINGS:Ljava/lang/String; = "com.android.text.flags.clear_font_variation_settings"

.field public static final blacklist FLAG_COMPLETE_FONT_LOAD_IN_SYSTEM_SERVICES_READY:Ljava/lang/String; = "com.android.text.flags.complete_font_load_in_system_services_ready"

.field public static final blacklist FLAG_CONTEXT_MENU_HIDE_UNAVAILABLE_ITEMS:Ljava/lang/String; = "com.android.text.flags.context_menu_hide_unavailable_items"

.field public static final blacklist FLAG_CUSTOM_FALLBACK_FOR_CUSTOMIZATION:Ljava/lang/String; = "com.android.text.flags.custom_fallback_for_customization"

.field public static final blacklist FLAG_DEPRECATE_ELEGANT_TEXT_HEIGHT_API:Ljava/lang/String; = "com.android.text.flags.deprecate_elegant_text_height_api"

.field public static final blacklist FLAG_DISABLE_HANDWRITING_INITIATOR_FOR_IME:Ljava/lang/String; = "com.android.text.flags.disable_handwriting_initiator_for_ime"

.field public static final blacklist FLAG_DO_NOT_OVERWRITE_STATIC_FINAL_FIELD:Ljava/lang/String; = "com.android.text.flags.do_not_overwrite_static_final_field"

.field public static final blacklist FLAG_ESCAPE_CLEARS_FOCUS:Ljava/lang/String; = "com.android.text.flags.escape_clears_focus"

.field public static final blacklist FLAG_FIX_LINE_HEIGHT_FOR_LOCALE:Ljava/lang/String; = "com.android.text.flags.fix_line_height_for_locale"

.field public static final blacklist FLAG_FIX_NULL_TYPEFACE_BOLDING:Ljava/lang/String; = "com.android.text.flags.fix_null_typeface_bolding"

.field public static final blacklist FLAG_FIX_PAINT_RESET_INCONSISTENCY:Ljava/lang/String; = "com.android.text.flags.fix_paint_reset_inconsistency"

.field public static final blacklist FLAG_FIX_SHIFT_DRAWING_AMOUNT:Ljava/lang/String; = "com.android.text.flags.fix_shift_drawing_amount"

.field public static final blacklist FLAG_FIX_SHIFT_DRAWING_AMOUNT_TEST_API:Ljava/lang/String; = "com.android.text.flags.fix_shift_drawing_amount_test_api"

.field public static final blacklist FLAG_HANDWRITING_CURSOR_POSITION:Ljava/lang/String; = "com.android.text.flags.handwriting_cursor_position"

.field public static final blacklist FLAG_HANDWRITING_END_OF_LINE_TAP:Ljava/lang/String; = "com.android.text.flags.handwriting_end_of_line_tap"

.field public static final blacklist FLAG_HANDWRITING_GESTURE_WITH_TRANSFORMATION:Ljava/lang/String; = "com.android.text.flags.handwriting_gesture_with_transformation"

.field public static final blacklist FLAG_HANDWRITING_TRACK_DISABLED:Ljava/lang/String; = "com.android.text.flags.handwriting_track_disabled"

.field public static final blacklist FLAG_HANDWRITING_UNSUPPORTED_MESSAGE:Ljava/lang/String; = "com.android.text.flags.handwriting_unsupported_message"

.field public static final blacklist FLAG_HANDWRITING_UNSUPPORTED_SHOW_SOFT_INPUT_FIX:Ljava/lang/String; = "com.android.text.flags.handwriting_unsupported_show_soft_input_fix"

.field public static final blacklist FLAG_INSERT_MODE_CRASH_UPDATE_LAYOUT_SPAN:Ljava/lang/String; = "com.android.text.flags.insert_mode_crash_update_layout_span"

.field public static final blacklist FLAG_INSERT_MODE_CRASH_WHEN_DELETE:Ljava/lang/String; = "com.android.text.flags.insert_mode_crash_when_delete"

.field public static final blacklist FLAG_INSERT_MODE_HIGHLIGHT_RANGE:Ljava/lang/String; = "com.android.text.flags.insert_mode_highlight_range"

.field public static final blacklist FLAG_INSERT_MODE_NOT_UPDATE_SELECTION:Ljava/lang/String; = "com.android.text.flags.insert_mode_not_update_selection"

.field public static final blacklist FLAG_LANGUAGE_SPECIFIC_EXTENT:Ljava/lang/String; = "com.android.text.flags.language_specific_extent"

.field public static final blacklist FLAG_LETTER_SPACING_JUSTIFICATION:Ljava/lang/String; = "com.android.text.flags.letter_spacing_justification"

.field public static final blacklist FLAG_MISSING_GETTER_APIS:Ljava/lang/String; = "com.android.text.flags.missing_getter_apis"

.field public static final blacklist FLAG_NEW_FONTS_FALLBACK_XML:Ljava/lang/String; = "com.android.text.flags.new_fonts_fallback_xml"

.field public static final blacklist FLAG_NO_BREAK_NO_HYPHENATION_SPAN:Ljava/lang/String; = "com.android.text.flags.no_break_no_hyphenation_span"

.field public static final blacklist FLAG_RUST_HYPHENATOR:Ljava/lang/String; = "com.android.text.flags.rust_hyphenator"

.field public static final blacklist FLAG_TTS_SPAN_DURATION:Ljava/lang/String; = "com.android.text.flags.tts_span_duration"

.field public static final blacklist FLAG_TYPEFACE_CACHE_FOR_VAR_SETTINGS:Ljava/lang/String; = "com.android.text.flags.typeface_cache_for_var_settings"

.field public static final blacklist FLAG_TYPEFACE_REDESIGN_READONLY:Ljava/lang/String; = "com.android.text.flags.typeface_redesign_readonly"

.field public static final blacklist FLAG_USE_BOUNDS_FOR_WIDTH:Ljava/lang/String; = "com.android.text.flags.use_bounds_for_width"

.field public static final blacklist FLAG_USE_FONTATION_BY_DEFAULT:Ljava/lang/String; = "com.android.text.flags.use_fontation_by_default"

.field public static final blacklist FLAG_USE_OPTIMIZED_BOOTTIME_FONT_LOADING:Ljava/lang/String; = "com.android.text.flags.use_optimized_boottime_font_loading"

.field public static final blacklist FLAG_VERTICAL_TEXT_LAYOUT:Ljava/lang/String; = "com.android.text.flags.vertical_text_layout"

.field public static final blacklist FLAG_WORD_STYLE_AUTO:Ljava/lang/String; = "com.android.text.flags.word_style_auto"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 303
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearFontVariationSettings()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->clearFontVariationSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist completeFontLoadInSystemServicesReady()Z
    .registers 1

    .line 90
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->completeFontLoadInSystemServicesReady()Z

    move-result v0

    return v0
.end method

.method public static blacklist contextMenuHideUnavailableItems()Z
    .registers 1

    .line 96
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->contextMenuHideUnavailableItems()Z

    move-result v0

    return v0
.end method

.method public static blacklist customFallbackForCustomization()Z
    .registers 1

    .line 102
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->customFallbackForCustomization()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateElegantTextHeightApi()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->deprecateElegantTextHeightApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist disableHandwritingInitiatorForIme()Z
    .registers 1

    .line 114
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->disableHandwritingInitiatorForIme()Z

    move-result v0

    return v0
.end method

.method public static blacklist doNotOverwriteStaticFinalField()Z
    .registers 1

    .line 120
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->doNotOverwriteStaticFinalField()Z

    move-result v0

    return v0
.end method

.method public static blacklist escapeClearsFocus()Z
    .registers 1

    .line 126
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->escapeClearsFocus()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixLineHeightForLocale()Z
    .registers 1

    .line 132
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->fixLineHeightForLocale()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixNullTypefaceBolding()Z
    .registers 1

    .line 138
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->fixNullTypefaceBolding()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixPaintResetInconsistency()Z
    .registers 1

    .line 144
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->fixPaintResetInconsistency()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixShiftDrawingAmount()Z
    .registers 1

    .line 150
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->fixShiftDrawingAmount()Z

    move-result v0

    return v0
.end method

.method public static blacklist fixShiftDrawingAmountTestApi()Z
    .registers 1

    .line 156
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->fixShiftDrawingAmountTestApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist handwritingCursorPosition()Z
    .registers 1

    .line 162
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->handwritingCursorPosition()Z

    move-result v0

    return v0
.end method

.method public static blacklist handwritingEndOfLineTap()Z
    .registers 1

    .line 168
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->handwritingEndOfLineTap()Z

    move-result v0

    return v0
.end method

.method public static blacklist handwritingGestureWithTransformation()Z
    .registers 1

    .line 174
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->handwritingGestureWithTransformation()Z

    move-result v0

    return v0
.end method

.method public static blacklist handwritingTrackDisabled()Z
    .registers 1

    .line 180
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->handwritingTrackDisabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist handwritingUnsupportedMessage()Z
    .registers 1

    .line 186
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->handwritingUnsupportedMessage()Z

    move-result v0

    return v0
.end method

.method public static blacklist handwritingUnsupportedShowSoftInputFix()Z
    .registers 1

    .line 192
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->handwritingUnsupportedShowSoftInputFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist insertModeCrashUpdateLayoutSpan()Z
    .registers 1

    .line 198
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->insertModeCrashUpdateLayoutSpan()Z

    move-result v0

    return v0
.end method

.method public static blacklist insertModeCrashWhenDelete()Z
    .registers 1

    .line 204
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->insertModeCrashWhenDelete()Z

    move-result v0

    return v0
.end method

.method public static blacklist insertModeHighlightRange()Z
    .registers 1

    .line 210
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->insertModeHighlightRange()Z

    move-result v0

    return v0
.end method

.method public static blacklist insertModeNotUpdateSelection()Z
    .registers 1

    .line 216
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->insertModeNotUpdateSelection()Z

    move-result v0

    return v0
.end method

.method public static blacklist languageSpecificExtent()Z
    .registers 1

    .line 222
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->languageSpecificExtent()Z

    move-result v0

    return v0
.end method

.method public static blacklist letterSpacingJustification()Z
    .registers 1

    .line 228
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->letterSpacingJustification()Z

    move-result v0

    return v0
.end method

.method public static blacklist missingGetterApis()Z
    .registers 1

    .line 234
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->missingGetterApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist newFontsFallbackXml()Z
    .registers 1

    .line 240
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->newFontsFallbackXml()Z

    move-result v0

    return v0
.end method

.method public static blacklist noBreakNoHyphenationSpan()Z
    .registers 1

    .line 246
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->noBreakNoHyphenationSpan()Z

    move-result v0

    return v0
.end method

.method public static blacklist rustHyphenator()Z
    .registers 1

    .line 252
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->rustHyphenator()Z

    move-result v0

    return v0
.end method

.method public static blacklist ttsSpanDuration()Z
    .registers 1

    .line 258
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->ttsSpanDuration()Z

    move-result v0

    return v0
.end method

.method public static blacklist typefaceCacheForVarSettings()Z
    .registers 1

    .line 264
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->typefaceCacheForVarSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist typefaceRedesignReadonly()Z
    .registers 1

    .line 270
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->typefaceRedesignReadonly()Z

    move-result v0

    return v0
.end method

.method public static blacklist useBoundsForWidth()Z
    .registers 1

    .line 276
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->useBoundsForWidth()Z

    move-result v0

    return v0
.end method

.method public static blacklist useFontationByDefault()Z
    .registers 1

    .line 282
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->useFontationByDefault()Z

    move-result v0

    return v0
.end method

.method public static blacklist useOptimizedBoottimeFontLoading()Z
    .registers 1

    .line 288
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->useOptimizedBoottimeFontLoading()Z

    move-result v0

    return v0
.end method

.method public static blacklist verticalTextLayout()Z
    .registers 1

    .line 294
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->verticalTextLayout()Z

    move-result v0

    return v0
.end method

.method public static blacklist wordStyleAuto()Z
    .registers 1

    .line 300
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;->wordStyleAuto()Z

    move-result v0

    return v0
.end method
