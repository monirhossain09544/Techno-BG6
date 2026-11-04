.class public final Lcom/android/internal/hidden_from_bootclasspath/android/sdk/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/sdk/FeatureFlags; = null

.field public static final blacklist FLAG_DEVICE_INITIAL_SDK_INT_FULL:Ljava/lang/String; = "android.sdk.device_initial_sdk_int_full"

.field public static final blacklist FLAG_MAJOR_MINOR_VERSIONING_SCHEME:Ljava/lang/String; = "android.sdk.major_minor_versioning_scheme"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/sdk/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/sdk/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/sdk/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/sdk/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deviceInitialSdkIntFull()Z
    .registers 1

    .line 14
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/sdk/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/sdk/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/sdk/FeatureFlags;->deviceInitialSdkIntFull()Z

    move-result v0

    return v0
.end method

.method public static blacklist majorMinorVersioningScheme()Z
    .registers 1

    .line 20
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/sdk/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/sdk/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/sdk/FeatureFlags;->majorMinorVersioningScheme()Z

    move-result v0

    return v0
.end method
