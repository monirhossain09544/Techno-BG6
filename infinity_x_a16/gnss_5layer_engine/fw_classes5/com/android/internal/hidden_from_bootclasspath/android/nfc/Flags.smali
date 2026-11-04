.class public final Lcom/android/internal/hidden_from_bootclasspath/android/nfc/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_CARD_EMULATION_EUICC:Ljava/lang/String; = "android.nfc.enable_card_emulation_euicc"

.field public static final blacklist FLAG_ENABLE_NFC_CHARGING:Ljava/lang/String; = "android.nfc.enable_nfc_charging"

.field public static final blacklist FLAG_ENABLE_NFC_MAINLINE:Ljava/lang/String; = "android.nfc.enable_nfc_mainline"

.field public static final blacklist FLAG_ENABLE_NFC_READER_OPTION:Ljava/lang/String; = "android.nfc.enable_nfc_reader_option"

.field public static final blacklist FLAG_ENABLE_NFC_SET_DISCOVERY_TECH:Ljava/lang/String; = "android.nfc.enable_nfc_set_discovery_tech"

.field public static final blacklist FLAG_ENABLE_NFC_USER_RESTRICTION:Ljava/lang/String; = "android.nfc.enable_nfc_user_restriction"

.field public static final blacklist FLAG_NFC_ACTION_MANAGE_SERVICES_SETTINGS:Ljava/lang/String; = "android.nfc.nfc_action_manage_services_settings"

.field public static final blacklist FLAG_NFC_APDU_SERVICE_INFO_CONSTRUCTOR:Ljava/lang/String; = "android.nfc.nfc_apdu_service_info_constructor"

.field public static final blacklist FLAG_NFC_ASSOCIATED_ROLE_SERVICES:Ljava/lang/String; = "android.nfc.nfc_associated_role_services"

.field public static final blacklist FLAG_NFC_CHECK_TAG_INTENT_PREFERENCE:Ljava/lang/String; = "android.nfc.nfc_check_tag_intent_preference"

.field public static final blacklist FLAG_NFC_EVENT_LISTENER:Ljava/lang/String; = "android.nfc.nfc_event_listener"

.field public static final blacklist FLAG_NFC_OBSERVE_MODE:Ljava/lang/String; = "android.nfc.nfc_observe_mode"

.field public static final blacklist FLAG_NFC_OEM_EXTENSION:Ljava/lang/String; = "android.nfc.nfc_oem_extension"

.field public static final blacklist FLAG_NFC_OVERRIDE_RECOVER_ROUTING_TABLE:Ljava/lang/String; = "android.nfc.nfc_override_recover_routing_table"

.field public static final blacklist FLAG_NFC_PERSIST_LOG:Ljava/lang/String; = "android.nfc.nfc_persist_log"

.field public static final blacklist FLAG_NFC_READ_POLLING_LOOP:Ljava/lang/String; = "android.nfc.nfc_read_polling_loop"

.field public static final blacklist FLAG_NFC_SET_DEFAULT_DISC_TECH:Ljava/lang/String; = "android.nfc.nfc_set_default_disc_tech"

.field public static final blacklist FLAG_NFC_SET_SERVICE_ENABLED_FOR_CATEGORY_OTHER:Ljava/lang/String; = "android.nfc.nfc_set_service_enabled_for_category_other"

.field public static final blacklist FLAG_NFC_STATE_CHANGE:Ljava/lang/String; = "android.nfc.nfc_state_change"

.field public static final blacklist FLAG_NFC_STATE_CHANGE_SECURITY_LOG_EVENT_ENABLED:Ljava/lang/String; = "android.nfc.nfc_state_change_security_log_event_enabled"

.field public static final blacklist FLAG_NFC_VENDOR_CMD:Ljava/lang/String; = "android.nfc.nfc_vendor_cmd"

.field public static final blacklist FLAG_NFC_WATCHDOG:Ljava/lang/String; = "android.nfc.nfc_watchdog"

.field public static final blacklist FLAG_SCREEN_STATE_ATTRIBUTE_TOGGLE:Ljava/lang/String; = "android.nfc.screen_state_attribute_toggle"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 208
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableCardEmulationEuicc()Z
    .registers 1

    .line 54
    nop

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist enableNfcCharging()Z
    .registers 1

    .line 61
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;->enableNfcCharging()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableNfcMainline()Z
    .registers 1

    .line 65
    nop

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist enableNfcReaderOption()Z
    .registers 1

    .line 72
    nop

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist enableNfcSetDiscoveryTech()Z
    .registers 1

    .line 79
    nop

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist enableNfcUserRestriction()Z
    .registers 1

    .line 86
    nop

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcActionManageServicesSettings()Z
    .registers 1

    .line 93
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;->nfcActionManageServicesSettings()Z

    move-result v0

    return v0
.end method

.method public static blacklist nfcApduServiceInfoConstructor()Z
    .registers 2

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 98
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;->nfcApduServiceInfoConstructor()Z

    move-result v0

    return v0
.end method

.method public static blacklist nfcAssociatedRoleServices()Z
    .registers 1

    .line 104
    nop

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcCheckTagIntentPreference()Z
    .registers 1

    .line 111
    nop

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcEventListener()Z
    .registers 1

    .line 118
    nop

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcObserveMode()Z
    .registers 1

    .line 125
    nop

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcOemExtension()Z
    .registers 1

    .line 132
    nop

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcOverrideRecoverRoutingTable()Z
    .registers 1

    .line 139
    nop

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcPersistLog()Z
    .registers 1

    .line 146
    nop

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcReadPollingLoop()Z
    .registers 1

    .line 153
    nop

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcSetDefaultDiscTech()Z
    .registers 1

    .line 160
    nop

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcSetServiceEnabledForCategoryOther()Z
    .registers 1

    .line 167
    nop

    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcStateChange()Z
    .registers 1

    .line 174
    nop

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcStateChangeSecurityLogEventEnabled()Z
    .registers 1

    .line 181
    nop

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcVendorCmd()Z
    .registers 1

    .line 188
    nop

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist nfcWatchdog()Z
    .registers 1

    .line 195
    nop

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist screenStateAttributeToggle()Z
    .registers 2

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 203
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;->screenStateAttributeToggle()Z

    move-result v0

    return v0
.end method
