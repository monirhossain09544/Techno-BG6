.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ADD_WIU_ALLOWLISTING_TO_MEDIA_BUTTON_RECEIVER_HOLDER_SEND:Ljava/lang/String; = "com.android.media.mediasession.flags.add_wiu_allowlisting_to_media_button_receiver_holder_send"

.field public static final blacklist FLAG_AVOID_MEDIA_BROWSER_INCLUDE_CAPABILITIES_IF_NOT_NEEDED:Ljava/lang/String; = "com.android.media.mediasession.flags.avoid_media_browser_include_capabilities_if_not_needed"

.field public static final blacklist FLAG_DEPRECATE_PLATFORM_MEDIASESSION2_APIS:Ljava/lang/String; = "com.android.media.mediasession.flags.deprecate_platform_mediasession2_apis"

.field public static final blacklist FLAG_FILTER_SESSION_AUDIO_PLAYBACK_BY_USAGE:Ljava/lang/String; = "com.android.media.mediasession.flags.filter_session_audio_playback_by_usage"

.field public static final blacklist FLAG_REMOVE_AUDIOPLAYERSTATEMONITOR_STATIC_MEMOIZATION:Ljava/lang/String; = "com.android.media.mediasession.flags.remove_audioplayerstatemonitor_static_memoization"

.field public static final blacklist FLAG_REMOVE_WIU_ALLOWLISTING_FROM_MEDIACONTROLLER_SENDCOMMAND:Ljava/lang/String; = "com.android.media.mediasession.flags.remove_wiu_allowlisting_from_mediacontroller_sendcommand"

.field public static final blacklist FLAG_SESSIONLESS_VOL_KEY_ZERO_COOLDOWN:Ljava/lang/String; = "com.android.media.mediasession.flags.sessionless_vol_key_zero_cooldown"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addWiuAllowlistingToMediaButtonReceiverHolderSend()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;->addWiuAllowlistingToMediaButtonReceiverHolderSend()Z

    move-result v0

    return v0
.end method

.method public static blacklist avoidMediaBrowserIncludeCapabilitiesIfNotNeeded()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;->avoidMediaBrowserIncludeCapabilitiesIfNotNeeded()Z

    move-result v0

    return v0
.end method

.method public static blacklist deprecatePlatformMediasession2Apis()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;->deprecatePlatformMediasession2Apis()Z

    move-result v0

    return v0
.end method

.method public static blacklist filterSessionAudioPlaybackByUsage()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;->filterSessionAudioPlaybackByUsage()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeAudioplayerstatemonitorStaticMemoization()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;->removeAudioplayerstatemonitorStaticMemoization()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeWiuAllowlistingFromMediacontrollerSendcommand()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;->removeWiuAllowlistingFromMediacontrollerSendcommand()Z

    move-result v0

    return v0
.end method

.method public static blacklist sessionlessVolKeyZeroCooldown()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/mediasession/flags/FeatureFlags;->sessionlessVolKeyZeroCooldown()Z

    move-result v0

    return v0
.end method
