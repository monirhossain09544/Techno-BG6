.class public final Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist enableCardEmulationEuicc:Z

.field private static blacklist enableNfcCharging:Z

.field private static blacklist enableNfcMainline:Z

.field private static blacklist enableNfcReaderOption:Z

.field private static blacklist enableNfcSetDiscoveryTech:Z

.field private static blacklist enableNfcUserRestriction:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist nfcActionManageServicesSettings:Z

.field private static blacklist nfcApduServiceInfoConstructor:Z

.field private static blacklist nfcAssociatedRoleServices:Z

.field private static blacklist nfcCheckTagIntentPreference:Z

.field private static blacklist nfcEventListener:Z

.field private static blacklist nfcObserveMode:Z

.field private static blacklist nfcOemExtension:Z

.field private static blacklist nfcOverrideRecoverRoutingTable:Z

.field private static blacklist nfcPersistLog:Z

.field private static blacklist nfcReadPollingLoop:Z

.field private static blacklist nfcSetDefaultDiscTech:Z

.field private static blacklist nfcSetServiceEnabledForCategoryOther:Z

.field private static blacklist nfcStateChange:Z

.field private static blacklist nfcStateChangeSecurityLogEventEnabled:Z

.field private static blacklist nfcVendorCmd:Z

.field private static blacklist nfcWatchdog:Z

.field private static blacklist screenStateAttributeToggle:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableCardEmulationEuicc:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcCharging:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcMainline:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcReaderOption:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcSetDiscoveryTech:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcUserRestriction:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcActionManageServicesSettings:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcApduServiceInfoConstructor:Z

    .line 19
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcAssociatedRoleServices:Z

    .line 20
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcCheckTagIntentPreference:Z

    .line 21
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcEventListener:Z

    .line 22
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcObserveMode:Z

    .line 23
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcOemExtension:Z

    .line 24
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcOverrideRecoverRoutingTable:Z

    .line 25
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcPersistLog:Z

    .line 26
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcReadPollingLoop:Z

    .line 27
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcSetDefaultDiscTech:Z

    .line 28
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcSetServiceEnabledForCategoryOther:Z

    .line 29
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcStateChange:Z

    .line 30
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcStateChangeSecurityLogEventEnabled:Z

    .line 31
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcVendorCmd:Z

    .line 32
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcWatchdog:Z

    .line 33
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->screenStateAttributeToggle:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 7

    .line 36
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "android.nfc"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 37
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableCardEmulationEuicc:Z

    .line 38
    const-string v3, "enable_nfc_charging"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcCharging:Z

    .line 39
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcMainline:Z

    .line 40
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcReaderOption:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcSetDiscoveryTech:Z

    .line 42
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcUserRestriction:Z

    .line 43
    const-string v3, "nfc_action_manage_services_settings"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcActionManageServicesSettings:Z

    .line 44
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v5, 0x36ee81

    if-lt v3, v5, :cond_2d

    move v3, v1

    goto :goto_33

    :cond_2d
    const-string v3, "nfc_apdu_service_info_constructor"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_33
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcApduServiceInfoConstructor:Z

    .line 45
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcAssociatedRoleServices:Z

    .line 46
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcCheckTagIntentPreference:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcEventListener:Z

    .line 48
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcObserveMode:Z

    .line 49
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcOemExtension:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcOverrideRecoverRoutingTable:Z

    .line 51
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcPersistLog:Z

    .line 52
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcReadPollingLoop:Z

    .line 53
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcSetDefaultDiscTech:Z

    .line 54
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcSetServiceEnabledForCategoryOther:Z

    .line 55
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcStateChange:Z

    .line 56
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcStateChangeSecurityLogEventEnabled:Z

    .line 57
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcVendorCmd:Z

    .line 58
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcWatchdog:Z

    .line 59
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v5, :cond_57

    move v2, v1

    goto :goto_5d

    :cond_57
    const-string v3, "screen_state_attribute_toggle"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    :goto_5d
    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->screenStateAttributeToggle:Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5f} :catch_69
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_5f} :catch_60

    goto :goto_71

    .line 63
    :catch_60
    move-exception v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 60
    :catch_69
    move-exception v2

    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_71
    nop

    .line 68
    :goto_72
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist enableCardEmulationEuicc()Z
    .registers 2

    .line 72
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 73
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 75
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableCardEmulationEuicc:Z

    return v0
.end method

.method public blacklist enableNfcCharging()Z
    .registers 2

    .line 80
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 81
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 83
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcCharging:Z

    return v0
.end method

.method public blacklist enableNfcMainline()Z
    .registers 2

    .line 88
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 89
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 91
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcMainline:Z

    return v0
.end method

.method public blacklist enableNfcReaderOption()Z
    .registers 2

    .line 96
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 97
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 99
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcReaderOption:Z

    return v0
.end method

.method public blacklist enableNfcSetDiscoveryTech()Z
    .registers 2

    .line 104
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 105
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 107
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcSetDiscoveryTech:Z

    return v0
.end method

.method public blacklist enableNfcUserRestriction()Z
    .registers 2

    .line 112
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 113
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 115
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->enableNfcUserRestriction:Z

    return v0
.end method

.method public blacklist nfcActionManageServicesSettings()Z
    .registers 2

    .line 120
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 121
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 123
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcActionManageServicesSettings:Z

    return v0
.end method

.method public blacklist nfcApduServiceInfoConstructor()Z
    .registers 2

    .line 128
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 129
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 131
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcApduServiceInfoConstructor:Z

    return v0
.end method

.method public blacklist nfcAssociatedRoleServices()Z
    .registers 2

    .line 136
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 137
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 139
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcAssociatedRoleServices:Z

    return v0
.end method

.method public blacklist nfcCheckTagIntentPreference()Z
    .registers 2

    .line 144
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 145
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 147
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcCheckTagIntentPreference:Z

    return v0
.end method

.method public blacklist nfcEventListener()Z
    .registers 2

    .line 152
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 153
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 155
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcEventListener:Z

    return v0
.end method

.method public blacklist nfcObserveMode()Z
    .registers 2

    .line 160
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 161
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 163
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcObserveMode:Z

    return v0
.end method

.method public blacklist nfcOemExtension()Z
    .registers 2

    .line 168
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 169
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 171
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcOemExtension:Z

    return v0
.end method

.method public blacklist nfcOverrideRecoverRoutingTable()Z
    .registers 2

    .line 176
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 177
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 179
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcOverrideRecoverRoutingTable:Z

    return v0
.end method

.method public blacklist nfcPersistLog()Z
    .registers 2

    .line 184
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 185
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 187
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcPersistLog:Z

    return v0
.end method

.method public blacklist nfcReadPollingLoop()Z
    .registers 2

    .line 192
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 193
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 195
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcReadPollingLoop:Z

    return v0
.end method

.method public blacklist nfcSetDefaultDiscTech()Z
    .registers 2

    .line 200
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 201
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 203
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcSetDefaultDiscTech:Z

    return v0
.end method

.method public blacklist nfcSetServiceEnabledForCategoryOther()Z
    .registers 2

    .line 208
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 209
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 211
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcSetServiceEnabledForCategoryOther:Z

    return v0
.end method

.method public blacklist nfcStateChange()Z
    .registers 2

    .line 216
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 217
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 219
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcStateChange:Z

    return v0
.end method

.method public blacklist nfcStateChangeSecurityLogEventEnabled()Z
    .registers 2

    .line 224
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 225
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 227
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcStateChangeSecurityLogEventEnabled:Z

    return v0
.end method

.method public blacklist nfcVendorCmd()Z
    .registers 2

    .line 232
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 233
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 235
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcVendorCmd:Z

    return v0
.end method

.method public blacklist nfcWatchdog()Z
    .registers 2

    .line 240
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 241
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 243
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->nfcWatchdog:Z

    return v0
.end method

.method public blacklist screenStateAttributeToggle()Z
    .registers 2

    .line 248
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 249
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->init()V

    .line 251
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/nfc/FeatureFlagsImpl;->screenStateAttributeToggle:Z

    return v0
.end method
