.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_DEFAULT_VISIBILITY_FOR_SENSITIVE_INPUTS:Ljava/lang/String; = "com.android.internal.widget.flags.enable_default_visibility_for_sensitive_inputs"

.field public static final blacklist FLAG_HIDE_LAST_CHAR_WITH_PHYSICAL_INPUT:Ljava/lang/String; = "com.android.internal.widget.flags.hide_last_char_with_physical_input"

.field public static final blacklist FLAG_NOTIFICATION_TRANSPARENT_BADGE_RING:Ljava/lang/String; = "com.android.internal.widget.flags.notification_transparent_badge_ring"

.field public static final blacklist FLAG_RUN_CHECK_CREDENTIAL_WITH_HIGHER_PRIORITY:Ljava/lang/String; = "com.android.internal.widget.flags.run_check_credential_with_higher_priority"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableDefaultVisibilityForSensitiveInputs()Z
    .registers 1

    .line 18
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;->enableDefaultVisibilityForSensitiveInputs()Z

    move-result v0

    return v0
.end method

.method public static blacklist hideLastCharWithPhysicalInput()Z
    .registers 1

    .line 24
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;->hideLastCharWithPhysicalInput()Z

    move-result v0

    return v0
.end method

.method public static blacklist notificationTransparentBadgeRing()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;->notificationTransparentBadgeRing()Z

    move-result v0

    return v0
.end method

.method public static blacklist runCheckCredentialWithHigherPriority()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/widget/flags/FeatureFlags;->runCheckCredentialWithHigherPriority()Z

    move-result v0

    return v0
.end method
