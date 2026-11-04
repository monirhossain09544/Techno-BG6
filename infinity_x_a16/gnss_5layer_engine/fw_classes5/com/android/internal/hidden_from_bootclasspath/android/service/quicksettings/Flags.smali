.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags; = null

.field public static final blacklist FLAG_QUICKSETTINGS_TILE_CATEGORIES:Ljava/lang/String; = "android.service.quicksettings.quicksettings_tile_categories"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist quicksettingsTileCategories()Z
    .registers 2

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 11
    const/4 v0, 0x1

    return v0

    .line 13
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;->quicksettingsTileCategories()Z

    move-result v0

    return v0
.end method
