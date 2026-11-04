.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_EYE_DROPPER_API:Ljava/lang/String; = "com.android.eyedropper.enable_eye_dropper_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableEyeDropperApi()Z
    .registers 1

    .line 12
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/eyedropper/FeatureFlags;->enableEyeDropperApi()Z

    move-result v0

    return v0
.end method
