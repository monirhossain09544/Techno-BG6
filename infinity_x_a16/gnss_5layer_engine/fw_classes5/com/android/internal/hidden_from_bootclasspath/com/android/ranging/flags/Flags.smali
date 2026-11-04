.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags; = null

.field public static final blacklist FLAG_RANGING_CS_ENABLED:Ljava/lang/String; = "com.android.ranging.flags.ranging_cs_enabled"

.field public static final blacklist FLAG_RANGING_RTT_ENABLED:Ljava/lang/String; = "com.android.ranging.flags.ranging_rtt_enabled"

.field public static final blacklist FLAG_RANGING_STACK_ENABLED:Ljava/lang/String; = "com.android.ranging.flags.ranging_stack_enabled"

.field public static final blacklist FLAG_RANGING_STACK_UPDATES_25Q4:Ljava/lang/String; = "com.android.ranging.flags.ranging_stack_updates_25q4"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist rangingCsEnabled()Z
    .registers 1

    .line 16
    nop

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist rangingRttEnabled()Z
    .registers 1

    .line 23
    nop

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist rangingStackEnabled()Z
    .registers 1

    .line 30
    nop

    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist rangingStackUpdates25q4()Z
    .registers 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v1, 0x36ee81

    if-lt v0, v1, :cond_9

    .line 38
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_9
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/FeatureFlags;->rangingStackUpdates25q4()Z

    move-result v0

    return v0
.end method
