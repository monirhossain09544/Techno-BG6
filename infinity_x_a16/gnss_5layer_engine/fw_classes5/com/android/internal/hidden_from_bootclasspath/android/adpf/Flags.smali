.class public final Lcom/android/internal/hidden_from_bootclasspath/android/adpf/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/adpf/FeatureFlags; = null

.field public static final blacklist FLAG_ADPF_VIEWROOTIMPL_ACTION_DOWN_BOOST:Ljava/lang/String; = "android.adpf.adpf_viewrootimpl_action_down_boost"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/adpf/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/adpf/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/adpf/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/adpf/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adpfViewrootimplActionDownBoost()Z
    .registers 1

    .line 12
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/adpf/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/adpf/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/adpf/FeatureFlags;->adpfViewrootimplActionDownBoost()Z

    move-result v0

    return v0
.end method
