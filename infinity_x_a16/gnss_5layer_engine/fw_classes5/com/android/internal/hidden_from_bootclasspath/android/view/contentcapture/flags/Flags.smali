.class public final Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags; = null

.field public static final blacklist FLAG_CCAPI_BAKLAVA_ENABLED:Ljava/lang/String; = "android.view.contentcapture.flags.ccapi_baklava_enabled"

.field public static final blacklist FLAG_ENABLE_EXPORT_ASSIST_VIRTUAL_NODE_TO_CCAPI:Ljava/lang/String; = "android.view.contentcapture.flags.enable_export_assist_virtual_node_to_ccapi"

.field public static final blacklist FLAG_ENABLE_SYSTEM_UI_UNDERLAY:Ljava/lang/String; = "android.view.contentcapture.flags.enable_system_ui_underlay"

.field public static final blacklist FLAG_FLUSH_AFTER_EACH_FRAME:Ljava/lang/String; = "android.view.contentcapture.flags.flush_after_each_frame"

.field public static final blacklist FLAG_REDUCE_BINDER_TRANSACTION_ENABLED:Ljava/lang/String; = "android.view.contentcapture.flags.reduce_binder_transaction_enabled"

.field public static final blacklist FLAG_RUN_ON_BACKGROUND_THREAD_ENABLED:Ljava/lang/String; = "android.view.contentcapture.flags.run_on_background_thread_enabled"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist ccapiBaklavaEnabled()Z
    .registers 1

    .line 22
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;->ccapiBaklavaEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableExportAssistVirtualNodeToCcapi()Z
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;->enableExportAssistVirtualNodeToCcapi()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableSystemUiUnderlay()Z
    .registers 1

    .line 34
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;->enableSystemUiUnderlay()Z

    move-result v0

    return v0
.end method

.method public static blacklist flushAfterEachFrame()Z
    .registers 1

    .line 40
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;->flushAfterEachFrame()Z

    move-result v0

    return v0
.end method

.method public static blacklist reduceBinderTransactionEnabled()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;->reduceBinderTransactionEnabled()Z

    move-result v0

    return v0
.end method

.method public static blacklist runOnBackgroundThreadEnabled()Z
    .registers 1

    .line 52
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentcapture/flags/FeatureFlags;->runOnBackgroundThreadEnabled()Z

    move-result v0

    return v0
.end method
