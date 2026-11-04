.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags; = null

.field public static final blacklist FLAG_APP_CONTENT_SHARING:Ljava/lang/String; = "com.android.media.projection.flags.app_content_sharing"

.field public static final blacklist FLAG_MEDIA_PROJECTION_CONNECTED_DISPLAY:Ljava/lang/String; = "com.android.media.projection.flags.media_projection_connected_display"

.field public static final blacklist FLAG_MEDIA_PROJECTION_CONNECTED_DISPLAY_NO_VIRTUAL_DEVICE:Ljava/lang/String; = "com.android.media.projection.flags.media_projection_connected_display_no_virtual_device"

.field public static final blacklist FLAG_MEDIA_PROJECTION_CONNECTED_DISPLAY_SCREEN_SHARING:Ljava/lang/String; = "com.android.media.projection.flags.media_projection_connected_display_screen_sharing"

.field public static final blacklist FLAG_RECORDING_OVERLAY:Ljava/lang/String; = "com.android.media.projection.flags.recording_overlay"

.field public static final blacklist FLAG_SHOW_STOP_DIALOG_POST_CALL_END:Ljava/lang/String; = "com.android.media.projection.flags.show_stop_dialog_post_call_end"

.field public static final blacklist FLAG_START_UID_CHECK:Ljava/lang/String; = "com.android.media.projection.flags.start_uid_check"

.field public static final blacklist FLAG_STOP_MEDIA_PROJECTION_ON_CALL_END:Ljava/lang/String; = "com.android.media.projection.flags.stop_media_projection_on_call_end"

.field public static final blacklist FLAG_STOP_ON_DISPLAY_REMOVAL:Ljava/lang/String; = "com.android.media.projection.flags.stop_on_display_removal"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appContentSharing()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->appContentSharing()Z

    move-result v0

    return v0
.end method

.method public static blacklist mediaProjectionConnectedDisplay()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->mediaProjectionConnectedDisplay()Z

    move-result v0

    return v0
.end method

.method public static blacklist mediaProjectionConnectedDisplayNoVirtualDevice()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->mediaProjectionConnectedDisplayNoVirtualDevice()Z

    move-result v0

    return v0
.end method

.method public static blacklist mediaProjectionConnectedDisplayScreenSharing()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->mediaProjectionConnectedDisplayScreenSharing()Z

    move-result v0

    return v0
.end method

.method public static blacklist recordingOverlay()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->recordingOverlay()Z

    move-result v0

    return v0
.end method

.method public static blacklist showStopDialogPostCallEnd()Z
    .registers 1

    .line 58
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->showStopDialogPostCallEnd()Z

    move-result v0

    return v0
.end method

.method public static blacklist startUidCheck()Z
    .registers 1

    .line 64
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->startUidCheck()Z

    move-result v0

    return v0
.end method

.method public static blacklist stopMediaProjectionOnCallEnd()Z
    .registers 1

    .line 70
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->stopMediaProjectionOnCallEnd()Z

    move-result v0

    return v0
.end method

.method public static blacklist stopOnDisplayRemoval()Z
    .registers 1

    .line 76
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/media/projection/flags/FeatureFlags;->stopOnDisplayRemoval()Z

    move-result v0

    return v0
.end method
