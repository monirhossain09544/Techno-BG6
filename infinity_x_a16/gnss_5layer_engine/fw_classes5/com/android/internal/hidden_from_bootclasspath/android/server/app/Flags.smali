.class public final Lcom/android/internal/hidden_from_bootclasspath/android/server/app/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/app/FeatureFlags; = null

.field public static final blacklist FLAG_GAME_DEFAULT_FRAME_RATE:Ljava/lang/String; = "android.server.app.game_default_frame_rate"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/app/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/app/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/app/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/app/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist gameDefaultFrameRate()Z
    .registers 1

    .line 12
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/server/app/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/server/app/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/server/app/FeatureFlags;->gameDefaultFrameRate()Z

    move-result v0

    return v0
.end method
