.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static volatile blacklist isCached:Z

.field private static blacklist rangingCsEnabled:Z

.field private static blacklist rangingRttEnabled:Z

.field private static blacklist rangingStackEnabled:Z

.field private static blacklist rangingStackUpdates25q4:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingCsEnabled:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingRttEnabled:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackEnabled:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackUpdates25q4:Z

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

    .line 17
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.ranging.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 18
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingCsEnabled:Z

    .line 19
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingRttEnabled:Z

    .line 20
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackEnabled:Z

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v4, 0x36ee81

    if-lt v3, v4, :cond_18

    move v2, v1

    goto :goto_1f

    :cond_18
    const-string v3, "ranging_stack_updates_25q4"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    :goto_1f
    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackUpdates25q4:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_2b
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_21} :catch_22

    goto :goto_33

    .line 25
    :catch_22
    move-exception v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 22
    :catch_2b
    move-exception v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :goto_33
    nop

    .line 30
    :goto_34
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist rangingCsEnabled()Z
    .registers 2

    .line 34
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 35
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    .line 37
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingCsEnabled:Z

    return v0
.end method

.method public blacklist rangingRttEnabled()Z
    .registers 2

    .line 42
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 43
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    .line 45
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingRttEnabled:Z

    return v0
.end method

.method public blacklist rangingStackEnabled()Z
    .registers 2

    .line 50
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 51
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    .line 53
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackEnabled:Z

    return v0
.end method

.method public blacklist rangingStackUpdates25q4()Z
    .registers 2

    .line 58
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 59
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->init()V

    .line 61
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;->rangingStackUpdates25q4:Z

    return v0
.end method
