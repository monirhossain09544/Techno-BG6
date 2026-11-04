.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags; = null

.field public static final blacklist FLAG_ALLOW_DREAM_ATTACH_FAILURE:Ljava/lang/String; = "android.service.dreams.allow_dream_attach_failure"

.field public static final blacklist FLAG_ALLOW_DREAM_WHEN_POSTURED:Ljava/lang/String; = "android.service.dreams.allow_dream_when_postured"

.field public static final blacklist FLAG_ALLOW_DREAM_WITH_CHARGE_LIMIT:Ljava/lang/String; = "android.service.dreams.allow_dream_with_charge_limit"

.field public static final blacklist FLAG_CLEANUP_DREAM_SETTINGS_ON_UNINSTALL:Ljava/lang/String; = "android.service.dreams.cleanup_dream_settings_on_uninstall"

.field public static final blacklist FLAG_DISALLOW_DREAM_ON_AUTO_PROJECTION:Ljava/lang/String; = "android.service.dreams.disallow_dream_on_auto_projection"

.field public static final blacklist FLAG_DISMISS_DREAM_ON_KEYGUARD_DISMISS:Ljava/lang/String; = "android.service.dreams.dismiss_dream_on_keyguard_dismiss"

.field public static final blacklist FLAG_DREAMS_V2:Ljava/lang/String; = "android.service.dreams.dreams_v2"

.field public static final blacklist FLAG_DREAMS_V2_RESOURCES:Ljava/lang/String; = "android.service.dreams.dreams_v2_resources"

.field public static final blacklist FLAG_DREAM_HANDLES_BEING_OBSCURED:Ljava/lang/String; = "android.service.dreams.dream_handles_being_obscured"

.field public static final blacklist FLAG_DREAM_HANDLES_CONFIRM_KEYS:Ljava/lang/String; = "android.service.dreams.dream_handles_confirm_keys"

.field public static final blacklist FLAG_DREAM_OVERLAY_HOST:Ljava/lang/String; = "android.service.dreams.dream_overlay_host"

.field public static final blacklist FLAG_DREAM_OVERLAY_STARTED_FIX:Ljava/lang/String; = "android.service.dreams.dream_overlay_started_fix"

.field public static final blacklist FLAG_DREAM_WAKE_REDIRECT:Ljava/lang/String; = "android.service.dreams.dream_wake_redirect"

.field public static final blacklist FLAG_NAP_WHEN_DREAM_ENABLED:Ljava/lang/String; = "android.service.dreams.nap_when_dream_enabled"

.field public static final blacklist FLAG_PUBLISH_PREVIEW_STATE_TO_OVERLAY:Ljava/lang/String; = "android.service.dreams.publish_preview_state_to_overlay"

.field public static final blacklist FLAG_START_AND_STOP_DOZING_IN_BACKGROUND:Ljava/lang/String; = "android.service.dreams.start_and_stop_dozing_in_background"

.field public static final blacklist FLAG_WAKE_ON_STOPPING_DOZE:Ljava/lang/String; = "android.service.dreams.wake_on_stopping_doze"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist allowDreamAttachFailure()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->allowDreamAttachFailure()Z

    move-result v0

    return v0
.end method

.method public static blacklist allowDreamWhenPostured()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->allowDreamWhenPostured()Z

    move-result v0

    return v0
.end method

.method public static blacklist allowDreamWithChargeLimit()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->allowDreamWithChargeLimit()Z

    move-result v0

    return v0
.end method

.method public static blacklist cleanupDreamSettingsOnUninstall()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->cleanupDreamSettingsOnUninstall()Z

    move-result v0

    return v0
.end method

.method public static blacklist disallowDreamOnAutoProjection()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->disallowDreamOnAutoProjection()Z

    move-result v0

    return v0
.end method

.method public static blacklist dismissDreamOnKeyguardDismiss()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->dismissDreamOnKeyguardDismiss()Z

    move-result v0

    return v0
.end method

.method public static blacklist dreamHandlesBeingObscured()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->dreamHandlesBeingObscured()Z

    move-result v0

    return v0
.end method

.method public static blacklist dreamHandlesConfirmKeys()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->dreamHandlesConfirmKeys()Z

    move-result v0

    return v0
.end method

.method public static blacklist dreamOverlayHost()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->dreamOverlayHost()Z

    move-result v0

    return v0
.end method

.method public static blacklist dreamOverlayStartedFix()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->dreamOverlayStartedFix()Z

    move-result v0

    return v0
.end method

.method public static blacklist dreamWakeRedirect()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->dreamWakeRedirect()Z

    move-result v0

    return v0
.end method

.method public static blacklist dreamsV2()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->dreamsV2()Z

    move-result v0

    return v0
.end method

.method public static blacklist dreamsV2Resources()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->dreamsV2Resources()Z

    move-result v0

    return v0
.end method

.method public static blacklist napWhenDreamEnabled()Z
    .registers 1

    .line 122
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->napWhenDreamEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist publishPreviewStateToOverlay()Z
    .registers 1

    .line 128
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->publishPreviewStateToOverlay()Z

    move-result v0

    return v0
.end method

.method public static blacklist startAndStopDozingInBackground()Z
    .registers 1

    .line 134
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->startAndStopDozingInBackground()Z

    move-result v0

    return v0
.end method

.method public static blacklist wakeOnStoppingDoze()Z
    .registers 1

    .line 140
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/dreams/FeatureFlags;->wakeOnStoppingDoze()Z

    move-result v0

    return v0
.end method
