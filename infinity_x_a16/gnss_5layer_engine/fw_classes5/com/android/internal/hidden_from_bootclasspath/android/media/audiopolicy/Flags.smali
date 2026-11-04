.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags; = null

.field public static final blacklist FLAG_AUDIO_MIX_POLICY_ORDERING:Ljava/lang/String; = "android.media.audiopolicy.audio_mix_policy_ordering"

.field public static final blacklist FLAG_AUDIO_POLICY_UPDATE_MIXING_RULES_API:Ljava/lang/String; = "android.media.audiopolicy.audio_policy_update_mixing_rules_api"

.field public static final blacklist FLAG_ENABLE_FADE_MANAGER_CONFIGURATION:Ljava/lang/String; = "android.media.audiopolicy.enable_fade_manager_configuration"

.field public static final blacklist FLAG_MULTI_ZONE_AUDIO:Ljava/lang/String; = "android.media.audiopolicy.multi_zone_audio"

.field public static final blacklist FLAG_RECORD_AUDIO_DEVICE_AWARE_PERMISSION:Ljava/lang/String; = "android.media.audiopolicy.record_audio_device_aware_permission"

.field public static final blacklist FLAG_VOLUME_GROUP_MANAGEMENT_UPDATE:Ljava/lang/String; = "android.media.audiopolicy.volume_group_management_update"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist audioMixPolicyOrdering()Z
    .registers 1

    .line 22
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;->audioMixPolicyOrdering()Z

    move-result v0

    return v0
.end method

.method public static blacklist audioPolicyUpdateMixingRulesApi()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;->audioPolicyUpdateMixingRulesApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableFadeManagerConfiguration()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;->enableFadeManagerConfiguration()Z

    move-result v0

    return v0
.end method

.method public static blacklist multiZoneAudio()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;->multiZoneAudio()Z

    move-result v0

    return v0
.end method

.method public static blacklist recordAudioDeviceAwarePermission()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;->recordAudioDeviceAwarePermission()Z

    move-result v0

    return v0
.end method

.method public static blacklist volumeGroupManagementUpdate()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/audiopolicy/FeatureFlags;->volumeGroupManagementUpdate()Z

    move-result v0

    return v0
.end method
