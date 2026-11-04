.class public Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;",
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
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v1, Ljava/util/HashSet;

    const-string v38, "com.android.text.flags.word_style_auto"

    const-string v39, ""

    const-string v2, "com.android.text.flags.clear_font_variation_settings"

    const-string v3, "com.android.text.flags.complete_font_load_in_system_services_ready"

    const-string v4, "com.android.text.flags.context_menu_hide_unavailable_items"

    const-string v5, "com.android.text.flags.custom_fallback_for_customization"

    const-string v6, "com.android.text.flags.deprecate_elegant_text_height_api"

    const-string v7, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    const-string v8, "com.android.text.flags.do_not_overwrite_static_final_field"

    const-string v9, "com.android.text.flags.escape_clears_focus"

    const-string v10, "com.android.text.flags.fix_line_height_for_locale"

    const-string v11, "com.android.text.flags.fix_null_typeface_bolding"

    const-string v12, "com.android.text.flags.fix_paint_reset_inconsistency"

    const-string v13, "com.android.text.flags.fix_shift_drawing_amount"

    const-string v14, "com.android.text.flags.fix_shift_drawing_amount_test_api"

    const-string v15, "com.android.text.flags.handwriting_cursor_position"

    const-string v16, "com.android.text.flags.handwriting_end_of_line_tap"

    const-string v17, "com.android.text.flags.handwriting_gesture_with_transformation"

    const-string v18, "com.android.text.flags.handwriting_track_disabled"

    const-string v19, "com.android.text.flags.handwriting_unsupported_message"

    const-string v20, "com.android.text.flags.handwriting_unsupported_show_soft_input_fix"

    const-string v21, "com.android.text.flags.insert_mode_crash_update_layout_span"

    const-string v22, "com.android.text.flags.insert_mode_crash_when_delete"

    const-string v23, "com.android.text.flags.insert_mode_highlight_range"

    const-string v24, "com.android.text.flags.insert_mode_not_update_selection"

    const-string v25, "com.android.text.flags.language_specific_extent"

    const-string v26, "com.android.text.flags.letter_spacing_justification"

    const-string v27, "com.android.text.flags.missing_getter_apis"

    const-string v28, "com.android.text.flags.new_fonts_fallback_xml"

    const-string v29, "com.android.text.flags.no_break_no_hyphenation_span"

    const-string v30, "com.android.text.flags.rust_hyphenator"

    const-string v31, "com.android.text.flags.tts_span_duration"

    const-string v32, "com.android.text.flags.typeface_cache_for_var_settings"

    const-string v33, "com.android.text.flags.typeface_redesign_readonly"

    const-string v34, "com.android.text.flags.use_bounds_for_width"

    const-string v35, "com.android.text.flags.use_fontation_by_default"

    const-string v36, "com.android.text.flags.use_optimized_boottime_font_loading"

    const-string v37, "com.android.text.flags.vertical_text_layout"

    filled-new-array/range {v2 .. v39}, [Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 16
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 17
    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .registers 2

    .line 287
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist clearFontVariationSettings()Z
    .registers 3

    .line 21
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.text.flags.clear_font_variation_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist completeFontLoadInSystemServicesReady()Z
    .registers 3

    .line 28
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.text.flags.complete_font_load_in_system_services_ready"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist contextMenuHideUnavailableItems()Z
    .registers 3

    .line 35
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.text.flags.context_menu_hide_unavailable_items"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist customFallbackForCustomization()Z
    .registers 3

    .line 42
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.text.flags.custom_fallback_for_customization"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist deprecateElegantTextHeightApi()Z
    .registers 3

    .line 49
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda28;-><init>()V

    const-string v1, "com.android.text.flags.deprecate_elegant_text_height_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist disableHandwritingInitiatorForIme()Z
    .registers 3

    .line 56
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist doNotOverwriteStaticFinalField()Z
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda32;-><init>()V

    const-string v1, "com.android.text.flags.do_not_overwrite_static_final_field"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist escapeClearsFocus()Z
    .registers 3

    .line 70
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.text.flags.escape_clears_focus"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixLineHeightForLocale()Z
    .registers 3

    .line 77
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.text.flags.fix_line_height_for_locale"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixNullTypefaceBolding()Z
    .registers 3

    .line 84
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.text.flags.fix_null_typeface_bolding"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixPaintResetInconsistency()Z
    .registers 3

    .line 91
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda26;-><init>()V

    const-string v1, "com.android.text.flags.fix_paint_reset_inconsistency"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixShiftDrawingAmount()Z
    .registers 3

    .line 98
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.text.flags.fix_shift_drawing_amount"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist fixShiftDrawingAmountTestApi()Z
    .registers 3

    .line 105
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.text.flags.fix_shift_drawing_amount_test_api"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 295
    const-string v36, "com.android.text.flags.vertical_text_layout"

    const-string v37, "com.android.text.flags.word_style_auto"

    const-string v1, "com.android.text.flags.clear_font_variation_settings"

    const-string v2, "com.android.text.flags.complete_font_load_in_system_services_ready"

    const-string v3, "com.android.text.flags.context_menu_hide_unavailable_items"

    const-string v4, "com.android.text.flags.custom_fallback_for_customization"

    const-string v5, "com.android.text.flags.deprecate_elegant_text_height_api"

    const-string v6, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    const-string v7, "com.android.text.flags.do_not_overwrite_static_final_field"

    const-string v8, "com.android.text.flags.escape_clears_focus"

    const-string v9, "com.android.text.flags.fix_line_height_for_locale"

    const-string v10, "com.android.text.flags.fix_null_typeface_bolding"

    const-string v11, "com.android.text.flags.fix_paint_reset_inconsistency"

    const-string v12, "com.android.text.flags.fix_shift_drawing_amount"

    const-string v13, "com.android.text.flags.fix_shift_drawing_amount_test_api"

    const-string v14, "com.android.text.flags.handwriting_cursor_position"

    const-string v15, "com.android.text.flags.handwriting_end_of_line_tap"

    const-string v16, "com.android.text.flags.handwriting_gesture_with_transformation"

    const-string v17, "com.android.text.flags.handwriting_track_disabled"

    const-string v18, "com.android.text.flags.handwriting_unsupported_message"

    const-string v19, "com.android.text.flags.handwriting_unsupported_show_soft_input_fix"

    const-string v20, "com.android.text.flags.insert_mode_crash_update_layout_span"

    const-string v21, "com.android.text.flags.insert_mode_crash_when_delete"

    const-string v22, "com.android.text.flags.insert_mode_highlight_range"

    const-string v23, "com.android.text.flags.insert_mode_not_update_selection"

    const-string v24, "com.android.text.flags.language_specific_extent"

    const-string v25, "com.android.text.flags.letter_spacing_justification"

    const-string v26, "com.android.text.flags.missing_getter_apis"

    const-string v27, "com.android.text.flags.new_fonts_fallback_xml"

    const-string v28, "com.android.text.flags.no_break_no_hyphenation_span"

    const-string v29, "com.android.text.flags.rust_hyphenator"

    const-string v30, "com.android.text.flags.tts_span_duration"

    const-string v31, "com.android.text.flags.typeface_cache_for_var_settings"

    const-string v32, "com.android.text.flags.typeface_redesign_readonly"

    const-string v33, "com.android.text.flags.use_bounds_for_width"

    const-string v34, "com.android.text.flags.use_fontation_by_default"

    const-string v35, "com.android.text.flags.use_optimized_boottime_font_loading"

    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist handwritingCursorPosition()Z
    .registers 3

    .line 112
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_cursor_position"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist handwritingEndOfLineTap()Z
    .registers 3

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda29;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_end_of_line_tap"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist handwritingGestureWithTransformation()Z
    .registers 3

    .line 126
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_gesture_with_transformation"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist handwritingTrackDisabled()Z
    .registers 3

    .line 133
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_track_disabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist handwritingUnsupportedMessage()Z
    .registers 3

    .line 140
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda30;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_unsupported_message"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist handwritingUnsupportedShowSoftInputFix()Z
    .registers 3

    .line 147
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda33;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_unsupported_show_soft_input_fix"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist insertModeCrashUpdateLayoutSpan()Z
    .registers 3

    .line 154
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_crash_update_layout_span"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist insertModeCrashWhenDelete()Z
    .registers 3

    .line 161
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda34;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_crash_when_delete"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist insertModeHighlightRange()Z
    .registers 3

    .line 168
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_highlight_range"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist insertModeNotUpdateSelection()Z
    .registers 3

    .line 175
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_not_update_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 279
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 280
    const/4 p1, 0x1

    return p1

    .line 282
    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist languageSpecificExtent()Z
    .registers 3

    .line 182
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.text.flags.language_specific_extent"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist letterSpacingJustification()Z
    .registers 3

    .line 189
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda27;-><init>()V

    const-string v1, "com.android.text.flags.letter_spacing_justification"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist missingGetterApis()Z
    .registers 3

    .line 196
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.text.flags.missing_getter_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist newFontsFallbackXml()Z
    .registers 3

    .line 203
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.text.flags.new_fonts_fallback_xml"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist noBreakNoHyphenationSpan()Z
    .registers 3

    .line 210
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.text.flags.no_break_no_hyphenation_span"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist rustHyphenator()Z
    .registers 3

    .line 217
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.text.flags.rust_hyphenator"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist ttsSpanDuration()Z
    .registers 3

    .line 224
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.text.flags.tts_span_duration"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist typefaceCacheForVarSettings()Z
    .registers 3

    .line 231
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.text.flags.typeface_cache_for_var_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist typefaceRedesignReadonly()Z
    .registers 3

    .line 238
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.text.flags.typeface_redesign_readonly"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useBoundsForWidth()Z
    .registers 3

    .line 245
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.text.flags.use_bounds_for_width"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useFontationByDefault()Z
    .registers 3

    .line 252
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.text.flags.use_fontation_by_default"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist useOptimizedBoottimeFontLoading()Z
    .registers 3

    .line 259
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.text.flags.use_optimized_boottime_font_loading"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist verticalTextLayout()Z
    .registers 3

    .line 266
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda36;-><init>()V

    const-string v1, "com.android.text.flags.vertical_text_layout"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist wordStyleAuto()Z
    .registers 3

    .line 273
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda31;-><init>()V

    const-string v1, "com.android.text.flags.word_style_auto"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
