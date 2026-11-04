.class public final Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ABORT_IF_NO_CONTEXT_HUB_FOUND:Ljava/lang/String; = "android.chre.flags.abort_if_no_context_hub_found"

.field public static final blacklist FLAG_EFW_XPORT_NONWAKE_RX_RING:Ljava/lang/String; = "android.chre.flags.efw_xport_nonwake_rx_ring"

.field public static final blacklist FLAG_GNSS_HAL_USE_ENDPOINT_MESSAGING:Ljava/lang/String; = "android.chre.flags.gnss_hal_use_endpoint_messaging"

.field public static final blacklist FLAG_HAL_HANDLE_NANOAPP_QUERY_TEST_MODE:Ljava/lang/String; = "android.chre.flags.hal_handle_nanoapp_query_test_mode"

.field public static final blacklist FLAG_OFFLOAD_API:Ljava/lang/String; = "android.chre.flags.offload_api"

.field public static final blacklist FLAG_OFFLOAD_IMPLEMENTATION:Ljava/lang/String; = "android.chre.flags.offload_implementation"

.field public static final blacklist FLAG_RELIABLE_MESSAGE:Ljava/lang/String; = "android.chre.flags.reliable_message"

.field public static final blacklist FLAG_RELIABLE_MESSAGE_TEST_MODE_BEHAVIOR:Ljava/lang/String; = "android.chre.flags.reliable_message_test_mode_behavior"

.field public static final blacklist FLAG_REMOVE_OLD_CONTEXT_HUB_APIS:Ljava/lang/String; = "android.chre.flags.remove_old_context_hub_apis"

.field public static final blacklist FLAG_SIMPLIFY_SERVICE_TRANSACTION_LOCK:Ljava/lang/String; = "android.chre.flags.simplify_service_transaction_lock"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist abortIfNoContextHubFound()Z
    .registers 1

    .line 30
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->abortIfNoContextHubFound()Z

    move-result v0

    return v0
.end method

.method public static blacklist efwXportNonwakeRxRing()Z
    .registers 1

    .line 36
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->efwXportNonwakeRxRing()Z

    move-result v0

    return v0
.end method

.method public static blacklist gnssHalUseEndpointMessaging()Z
    .registers 1

    .line 42
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->gnssHalUseEndpointMessaging()Z

    move-result v0

    return v0
.end method

.method public static blacklist halHandleNanoappQueryTestMode()Z
    .registers 1

    .line 48
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->halHandleNanoappQueryTestMode()Z

    move-result v0

    return v0
.end method

.method public static blacklist offloadApi()Z
    .registers 1

    .line 54
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->offloadApi()Z

    move-result v0

    return v0
.end method

.method public static blacklist offloadImplementation()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->offloadImplementation()Z

    move-result v0

    return v0
.end method

.method public static blacklist reliableMessage()Z
    .registers 1

    .line 66
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->reliableMessage()Z

    move-result v0

    return v0
.end method

.method public static blacklist reliableMessageTestModeBehavior()Z
    .registers 1

    .line 72
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->reliableMessageTestModeBehavior()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeOldContextHubApis()Z
    .registers 1

    .line 78
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->removeOldContextHubApis()Z

    move-result v0

    return v0
.end method

.method public static blacklist simplifyServiceTransactionLock()Z
    .registers 1

    .line 84
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/chre/flags/FeatureFlags;->simplifyServiceTransactionLock()Z

    move-result v0

    return v0
.end method
