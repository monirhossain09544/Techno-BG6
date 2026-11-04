.class public final Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/FeatureFlags; = null

.field public static final blacklist FLAG_APV_RECORDING_SUPPORT:Ljava/lang/String; = "android.media.mediarecorder.apv_recording_support"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist apvRecordingSupport()Z
    .registers 1

    .line 12
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/media/mediarecorder/FeatureFlags;->apvRecordingSupport()Z

    move-result v0

    return v0
.end method
