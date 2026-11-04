.class public Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;


# instance fields
.field private blacklist mFinalizedFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;",
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
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Ljava/util/HashSet;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x16

    new-array v2, v2, [Ljava/util/Map$Entry;

    .line 222
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "android.nfc.enable_card_emulation_euicc"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 223
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "android.nfc.enable_nfc_mainline"

    invoke-static {v6, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v2, v3

    .line 224
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "android.nfc.enable_nfc_reader_option"

    invoke-static {v6, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    .line 225
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "android.nfc.enable_nfc_set_discovery_tech"

    invoke-static {v6, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v2, v6

    .line 226
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v6, "android.nfc.enable_nfc_user_restriction"

    invoke-static {v6, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v2, v6

    .line 227
    sget v4, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v6, 0x36ee81

    if-lt v4, v6, :cond_64

    move v4, v3

    goto :goto_65

    :cond_64
    move v4, v5

    :goto_65
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_apdu_service_info_constructor"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v2, v7

    .line 228
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_associated_role_services"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v2, v7

    .line 229
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_check_tag_intent_preference"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/4 v7, 0x7

    aput-object v4, v2, v7

    .line 230
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_event_listener"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0x8

    aput-object v4, v2, v7

    .line 231
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_observe_mode"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0x9

    aput-object v4, v2, v7

    .line 232
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_oem_extension"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0xa

    aput-object v4, v2, v7

    .line 233
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_override_recover_routing_table"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0xb

    aput-object v4, v2, v7

    .line 234
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_persist_log"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0xc

    aput-object v4, v2, v7

    .line 235
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_read_polling_loop"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0xd

    aput-object v4, v2, v7

    .line 236
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_set_default_disc_tech"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0xe

    aput-object v4, v2, v7

    .line 237
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_set_service_enabled_for_category_other"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0xf

    aput-object v4, v2, v7

    .line 238
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_state_change"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0x10

    aput-object v4, v2, v7

    .line 239
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_state_change_security_log_event_enabled"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0x11

    aput-object v4, v2, v7

    .line 240
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_vendor_cmd"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0x12

    aput-object v4, v2, v7

    .line 241
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "android.nfc.nfc_watchdog"

    invoke-static {v7, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    const/16 v7, 0x13

    aput-object v4, v2, v7

    .line 242
    sget v4, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v4, v6, :cond_139

    goto :goto_13a

    :cond_139
    move v3, v5

    :goto_13a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "android.nfc.screen_state_attribute_toggle"

    invoke-static {v4, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    const/16 v4, 0x14

    aput-object v3, v2, v4

    .line 243
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v2, v3

    .line 221
    invoke-static {v2}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist enableCardEmulationEuicc()Z
    .registers 3

    .line 24
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.nfc.enable_card_emulation_euicc"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcCharging()Z
    .registers 3

    .line 31
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "android.nfc.enable_nfc_charging"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcMainline()Z
    .registers 3

    .line 38
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.nfc.enable_nfc_mainline"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcReaderOption()Z
    .registers 3

    .line 45
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.nfc.enable_nfc_reader_option"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcSetDiscoveryTech()Z
    .registers 3

    .line 52
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.nfc.enable_nfc_set_discovery_tech"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist enableNfcUserRestriction()Z
    .registers 3

    .line 59
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.nfc.enable_nfc_user_restriction"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    const-string v22, "android.nfc.nfc_watchdog"

    const-string v23, "android.nfc.screen_state_attribute_toggle"

    const-string v1, "android.nfc.enable_card_emulation_euicc"

    const-string v2, "android.nfc.enable_nfc_charging"

    const-string v3, "android.nfc.enable_nfc_mainline"

    const-string v4, "android.nfc.enable_nfc_reader_option"

    const-string v5, "android.nfc.enable_nfc_set_discovery_tech"

    const-string v6, "android.nfc.enable_nfc_user_restriction"

    const-string v7, "android.nfc.nfc_action_manage_services_settings"

    const-string v8, "android.nfc.nfc_apdu_service_info_constructor"

    const-string v9, "android.nfc.nfc_associated_role_services"

    const-string v10, "android.nfc.nfc_check_tag_intent_preference"

    const-string v11, "android.nfc.nfc_event_listener"

    const-string v12, "android.nfc.nfc_observe_mode"

    const-string v13, "android.nfc.nfc_oem_extension"

    const-string v14, "android.nfc.nfc_override_recover_routing_table"

    const-string v15, "android.nfc.nfc_persist_log"

    const-string v16, "android.nfc.nfc_read_polling_loop"

    const-string v17, "android.nfc.nfc_set_default_disc_tech"

    const-string v18, "android.nfc.nfc_set_service_enabled_for_category_other"

    const-string v19, "android.nfc.nfc_state_change"

    const-string v20, "android.nfc.nfc_state_change_security_log_event_enabled"

    const-string v21, "android.nfc.nfc_vendor_cmd"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

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
            "Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist isFlagFinalized(Ljava/lang/String;)Z
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 249
    const/4 p1, 0x0

    return p1

    .line 251
    :cond_a
    iget-object v0, p0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->mFinalizedFlags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public blacklist nfcActionManageServicesSettings()Z
    .registers 3

    .line 66
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "android.nfc.nfc_action_manage_services_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcApduServiceInfoConstructor()Z
    .registers 3

    .line 73
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.nfc.nfc_apdu_service_info_constructor"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcAssociatedRoleServices()Z
    .registers 3

    .line 80
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "android.nfc.nfc_associated_role_services"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcCheckTagIntentPreference()Z
    .registers 3

    .line 87
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "android.nfc.nfc_check_tag_intent_preference"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcEventListener()Z
    .registers 3

    .line 94
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "android.nfc.nfc_event_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcObserveMode()Z
    .registers 3

    .line 101
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "android.nfc.nfc_observe_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcOemExtension()Z
    .registers 3

    .line 108
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "android.nfc.nfc_oem_extension"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcOverrideRecoverRoutingTable()Z
    .registers 3

    .line 115
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.nfc.nfc_override_recover_routing_table"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcPersistLog()Z
    .registers 3

    .line 122
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "android.nfc.nfc_persist_log"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcReadPollingLoop()Z
    .registers 3

    .line 129
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "android.nfc.nfc_read_polling_loop"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcSetDefaultDiscTech()Z
    .registers 3

    .line 136
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "android.nfc.nfc_set_default_disc_tech"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcSetServiceEnabledForCategoryOther()Z
    .registers 3

    .line 143
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.nfc.nfc_set_service_enabled_for_category_other"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcStateChange()Z
    .registers 3

    .line 150
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.nfc.nfc_state_change"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcStateChangeSecurityLogEventEnabled()Z
    .registers 3

    .line 157
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.nfc.nfc_state_change_security_log_event_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcVendorCmd()Z
    .registers 3

    .line 164
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "android.nfc.nfc_vendor_cmd"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist nfcWatchdog()Z
    .registers 3

    .line 171
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "android.nfc.nfc_watchdog"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist screenStateAttributeToggle()Z
    .registers 3

    .line 178
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "android.nfc.screen_state_attribute_toggle"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
