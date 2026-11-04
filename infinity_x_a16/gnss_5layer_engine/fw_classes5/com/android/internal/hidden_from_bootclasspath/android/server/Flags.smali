.class public final Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_REMOVING_VPN_SERVICE:Ljava/lang/String; = "android.server.allow_removing_vpn_service"

.field public static final blacklist FLAG_ALLOW_SYSTEM_SERVER_INHERIT_RT:Ljava/lang/String; = "android.server.allow_system_server_inherit_rt"

.field public static final blacklist FLAG_ENABLE_THEME_SERVICE:Ljava/lang/String; = "android.server.enable_theme_service"

.field public static final blacklist FLAG_MIGRATE_WRIST_ORIENTATION:Ljava/lang/String; = "android.server.migrate_wrist_orientation"

.field public static final blacklist FLAG_REMOVE_AD_SERVICES_MANAGER_SERVICE_FROM_WEAR:Ljava/lang/String; = "android.server.remove_ad_services_manager_service_from_wear"

.field public static final blacklist FLAG_REMOVE_APP_INTEGRITY_MANAGER_SERVICE:Ljava/lang/String; = "android.server.remove_app_integrity_manager_service"

.field public static final blacklist FLAG_REMOVE_GAME_MANAGER_SERVICE_FROM_WEAR:Ljava/lang/String; = "android.server.remove_game_manager_service_from_wear"

.field public static final blacklist FLAG_REMOVE_TEXT_SERVICE:Ljava/lang/String; = "android.server.remove_text_service"

.field public static final blacklist FLAG_REMOVE_WEARABLE_SENSING_SERVICE_FROM_WEAR:Ljava/lang/String; = "android.server.remove_wearable_sensing_service_from_wear"

.field public static final blacklist FLAG_VOICEINTERACTIONMANAGERSERVICE_GET_RESOURCES_IN_INIT_THREAD:Ljava/lang/String; = "android.server.voiceinteractionmanagerservice_get_resources_in_init_thread"

.field public static final blacklist FLAG_WEAR_GESTURE_API:Ljava/lang/String; = "android.server.wear_gesture_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowRemovingVpnService()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->allowRemovingVpnService()Z

    move-result v0

    return v0
.end method

.method public static blacklist allowSystemServerInheritRt()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->allowSystemServerInheritRt()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableThemeService()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->enableThemeService()Z

    move-result v0

    return v0
.end method

.method public static blacklist migrateWristOrientation()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->migrateWristOrientation()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeAdServicesManagerServiceFromWear()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->removeAdServicesManagerServiceFromWear()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeAppIntegrityManagerService()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->removeAppIntegrityManagerService()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeGameManagerServiceFromWear()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->removeGameManagerServiceFromWear()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeTextService()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->removeTextService()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeWearableSensingServiceFromWear()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->removeWearableSensingServiceFromWear()Z

    move-result v0

    return v0
.end method

.method public static blacklist voiceinteractionmanagerserviceGetResourcesInInitThread()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->voiceinteractionmanagerserviceGetResourcesInInitThread()Z

    move-result v0

    return v0
.end method

.method public static blacklist wearGestureApi()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/FeatureFlags;->wearGestureApi()Z

    move-result v0

    return v0
.end method
