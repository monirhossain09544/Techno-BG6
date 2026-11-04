.class public final Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_PCC_FRAMEWORK_SUPPORT:Ljava/lang/String; = "android.app.privatecompute.flags.enable_pcc_framework_support"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enablePccFrameworkSupport()Z
    .registers 1

    .line 12
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/FeatureFlags;->enablePccFrameworkSupport()Z

    move-result v0

    return v0
.end method
