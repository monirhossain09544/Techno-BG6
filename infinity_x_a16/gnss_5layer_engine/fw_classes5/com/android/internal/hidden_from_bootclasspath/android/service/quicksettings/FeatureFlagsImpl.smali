.class public final Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile blacklist isCached:Z

.field private static blacklist quicksettingsTileCategories:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;->quicksettingsTileCategories:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 6

    .line 14
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "android.service.quicksettings"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v4, 0x36ee81

    if-lt v3, v4, :cond_12

    move v2, v1

    goto :goto_19

    :cond_12
    const-string v3, "quicksettings_tile_categories"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    :goto_19
    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;->quicksettingsTileCategories:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_25
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_2d

    .line 19
    :catch_1c
    move-exception v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 16
    :catch_25
    move-exception v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_2d
    nop

    .line 24
    :goto_2e
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;->isCached:Z

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist quicksettingsTileCategories()Z
    .registers 2

    .line 28
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 29
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;->init()V

    .line 31
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/android/service/quicksettings/FeatureFlagsImpl;->quicksettingsTileCategories:Z

    return v0
.end method
