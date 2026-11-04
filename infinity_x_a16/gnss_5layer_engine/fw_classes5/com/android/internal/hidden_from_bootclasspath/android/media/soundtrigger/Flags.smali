.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlags; = null

.field public static final blacklist FLAG_DETECTION_SERVICE_PAUSED_RESUMED_API:Ljava/lang/String; = "android.media.soundtrigger.detection_service_paused_resumed_api"

.field public static final blacklist FLAG_GENERIC_MODEL_API:Ljava/lang/String; = "android.media.soundtrigger.generic_model_api"

.field public static final blacklist FLAG_MANAGER_API:Ljava/lang/String; = "android.media.soundtrigger.manager_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist detectionServicePausedResumedApi()Z
    .registers 1

    .line 16
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlags;->detectionServicePausedResumedApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist genericModelApi()Z
    .registers 1

    .line 22
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlags;->genericModelApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist managerApi()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/soundtrigger/FeatureFlags;->managerApi()Z

    move-result v0

    return v0
.end method
