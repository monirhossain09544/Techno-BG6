.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlags; = null

.field public static final blacklist FLAG_SANDBOX_ACTIVITY_SDK_BASED_CONTEXT:Ljava/lang/String; = "com.android.sdksandbox.flags.sandbox_activity_sdk_based_context"

.field public static final blacklist FLAG_SANDBOX_CLIENT_IMPORTANCE_LISTENER:Ljava/lang/String; = "com.android.sdksandbox.flags.sandbox_client_importance_listener"

.field public static final blacklist FLAG_SDK_SANDBOX_INSTRUMENTATION_INFO:Ljava/lang/String; = "com.android.sdksandbox.flags.sdk_sandbox_instrumentation_info"

.field public static final blacklist FLAG_SDK_SANDBOX_UID_TO_APP_UID_API:Ljava/lang/String; = "com.android.sdksandbox.flags.sdk_sandbox_uid_to_app_uid_api"

.field public static final blacklist FLAG_SELINUX_INPUT_SELECTOR:Ljava/lang/String; = "com.android.sdksandbox.flags.selinux_input_selector"

.field public static final blacklist FLAG_SELINUX_SDK_SANDBOX_AUDIT:Ljava/lang/String; = "com.android.sdksandbox.flags.selinux_sdk_sandbox_audit"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist sandboxActivitySdkBasedContext()Z
    .registers 1

    .line 20
    nop

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist sandboxClientImportanceListener()Z
    .registers 1

    .line 27
    nop

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist sdkSandboxInstrumentationInfo()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/sdksandbox/flags/FeatureFlags;->sdkSandboxInstrumentationInfo()Z

    move-result v0

    return v0
.end method

.method public static blacklist sdkSandboxUidToAppUidApi()Z
    .registers 1

    .line 38
    nop

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist selinuxInputSelector()Z
    .registers 1

    .line 45
    nop

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist selinuxSdkSandboxAudit()Z
    .registers 1

    .line 52
    nop

    .line 53
    const/4 v0, 0x1

    return v0
.end method
