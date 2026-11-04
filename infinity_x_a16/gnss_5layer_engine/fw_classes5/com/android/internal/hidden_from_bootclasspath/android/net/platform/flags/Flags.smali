.class public final Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags; = null

.field public static final blacklist FLAG_AVOID_BAD_WIFI_FROM_CARRIER_CONFIG:Ljava/lang/String; = "android.net.platform.flags.avoid_bad_wifi_from_carrier_config"

.field public static final blacklist FLAG_COLLECT_VPN_METRICS:Ljava/lang/String; = "android.net.platform.flags.collect_vpn_metrics"

.field public static final blacklist FLAG_CONNECTIVITY_SERVICE_DESTROY_SOCKET:Ljava/lang/String; = "android.net.platform.flags.connectivity_service_destroy_socket"

.field public static final blacklist FLAG_CREATE_APP_SPECIFIC_NETWORK_PERMISSION:Ljava/lang/String; = "android.net.platform.flags.create_app_specific_network_permission"

.field public static final blacklist FLAG_DELETE_VPN_PROFILE_WHEN_APP_UNINSTALLED:Ljava/lang/String; = "android.net.platform.flags.delete_vpn_profile_when_app_uninstalled"

.field public static final blacklist FLAG_DEPRECATE_NETWORK_POLICY_CALLBACK:Ljava/lang/String; = "android.net.platform.flags.deprecate_network_policy_callback"

.field public static final blacklist FLAG_MDNS_IMPROVEMENT_FOR_25Q2:Ljava/lang/String; = "android.net.platform.flags.mdns_improvement_for_25q2"

.field public static final blacklist FLAG_POWERED_OFF_FINDING_MESSAGE_NEW_PRODUCT_NAME:Ljava/lang/String; = "android.net.platform.flags.powered_off_finding_message_new_product_name"

.field public static final blacklist FLAG_POWERED_OFF_FINDING_PLATFORM:Ljava/lang/String; = "android.net.platform.flags.powered_off_finding_platform"

.field public static final blacklist FLAG_REGISTER_NSD_OFFLOAD_ENGINE:Ljava/lang/String; = "android.net.platform.flags.register_nsd_offload_engine"

.field public static final blacklist FLAG_VPN_TYPE_OEM_SERVICE_AND_LEGACY:Ljava/lang/String; = "android.net.platform.flags.vpn_type_oem_service_and_legacy"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist avoidBadWifiFromCarrierConfig()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->avoidBadWifiFromCarrierConfig()Z

    move-result v0

    return v0
.end method

.method public static blacklist collectVpnMetrics()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->collectVpnMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist connectivityServiceDestroySocket()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->connectivityServiceDestroySocket()Z

    move-result v0

    return v0
.end method

.method public static blacklist createAppSpecificNetworkPermission()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->createAppSpecificNetworkPermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist deleteVpnProfileWhenAppUninstalled()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->deleteVpnProfileWhenAppUninstalled()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecateNetworkPolicyCallback()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->deprecateNetworkPolicyCallback()Z

    move-result v0

    return v0
.end method

.method public static blacklist mdnsImprovementFor25q2()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->mdnsImprovementFor25q2()Z

    move-result v0

    return v0
.end method

.method public static blacklist poweredOffFindingMessageNewProductName()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->poweredOffFindingMessageNewProductName()Z

    move-result v0

    return v0
.end method

.method public static blacklist poweredOffFindingPlatform()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->poweredOffFindingPlatform()Z

    move-result v0

    return v0
.end method

.method public static blacklist registerNsdOffloadEngine()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->registerNsdOffloadEngine()Z

    move-result v0

    return v0
.end method

.method public static blacklist vpnTypeOemServiceAndLegacy()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/FeatureFlags;->vpnTypeOemServiceAndLegacy()Z

    move-result v0

    return v0
.end method
