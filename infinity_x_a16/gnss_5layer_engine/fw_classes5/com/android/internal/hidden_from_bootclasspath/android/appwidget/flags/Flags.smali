.class public final Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags; = null

.field public static final blacklist FLAG_DRAW_DATA_PARCEL:Ljava/lang/String; = "android.appwidget.flags.draw_data_parcel"

.field public static final blacklist FLAG_ENGAGEMENT_METRICS:Ljava/lang/String; = "android.appwidget.flags.engagement_metrics"

.field public static final blacklist FLAG_GENERATED_PREVIEWS:Ljava/lang/String; = "android.appwidget.flags.generated_previews"

.field public static final blacklist FLAG_NOT_KEYGUARD_CATEGORY:Ljava/lang/String; = "android.appwidget.flags.not_keyguard_category"

.field public static final blacklist FLAG_PLAY_STORE_PIN_WIDGETS:Ljava/lang/String; = "android.appwidget.flags.play_store_pin_widgets"

.field public static final blacklist FLAG_REMOTE_ADAPTER_CONVERSION:Ljava/lang/String; = "android.appwidget.flags.remote_adapter_conversion"

.field public static final blacklist FLAG_REMOTE_DOCUMENT_FEATURES_2025Q4:Ljava/lang/String; = "android.appwidget.flags.remote_document_features_2025q4"

.field public static final blacklist FLAG_REMOTE_DOCUMENT_SUPPORT:Ljava/lang/String; = "android.appwidget.flags.remote_document_support"

.field public static final blacklist FLAG_REMOTE_VIEWS_PROTO:Ljava/lang/String; = "android.appwidget.flags.remote_views_proto"

.field public static final blacklist FLAG_REMOVE_APP_WIDGET_SERVICE_IO_FROM_CRITICAL_PATH:Ljava/lang/String; = "android.appwidget.flags.remove_app_widget_service_io_from_critical_path"

.field public static final blacklist FLAG_SECURITY_POLICY_INTERACT_ACROSS_USERS:Ljava/lang/String; = "android.appwidget.flags.security_policy_interact_across_users"

.field public static final blacklist FLAG_SUPPORT_RESUME_RESTORE_AFTER_REBOOT:Ljava/lang/String; = "android.appwidget.flags.support_resume_restore_after_reboot"

.field public static final blacklist FLAG_THROTTLE_WIDGET_UPDATES:Ljava/lang/String; = "android.appwidget.flags.throttle_widget_updates"

.field public static final blacklist FLAG_USE_SMALLER_APP_WIDGET_SYSTEM_RADIUS:Ljava/lang/String; = "android.appwidget.flags.use_smaller_app_widget_system_radius"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist drawDataParcel()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->drawDataParcel()Z

    move-result v0

    return v0
.end method

.method public static blacklist engagementMetrics()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->engagementMetrics()Z

    move-result v0

    return v0
.end method

.method public static blacklist generatedPreviews()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->generatedPreviews()Z

    move-result v0

    return v0
.end method

.method public static blacklist notKeyguardCategory()Z
    .registers 1

    .line 56
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->notKeyguardCategory()Z

    move-result v0

    return v0
.end method

.method public static blacklist playStorePinWidgets()Z
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->playStorePinWidgets()Z

    move-result v0

    return v0
.end method

.method public static blacklist remoteAdapterConversion()Z
    .registers 1

    .line 68
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->remoteAdapterConversion()Z

    move-result v0

    return v0
.end method

.method public static blacklist remoteDocumentFeatures2025q4()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->remoteDocumentFeatures2025q4()Z

    move-result v0

    return v0
.end method

.method public static blacklist remoteDocumentSupport()Z
    .registers 1

    .line 80
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->remoteDocumentSupport()Z

    move-result v0

    return v0
.end method

.method public static blacklist remoteViewsProto()Z
    .registers 1

    .line 86
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->remoteViewsProto()Z

    move-result v0

    return v0
.end method

.method public static blacklist removeAppWidgetServiceIoFromCriticalPath()Z
    .registers 1

    .line 92
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->removeAppWidgetServiceIoFromCriticalPath()Z

    move-result v0

    return v0
.end method

.method public static blacklist securityPolicyInteractAcrossUsers()Z
    .registers 1

    .line 98
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->securityPolicyInteractAcrossUsers()Z

    move-result v0

    return v0
.end method

.method public static blacklist supportResumeRestoreAfterReboot()Z
    .registers 1

    .line 104
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->supportResumeRestoreAfterReboot()Z

    move-result v0

    return v0
.end method

.method public static blacklist throttleWidgetUpdates()Z
    .registers 1

    .line 110
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->throttleWidgetUpdates()Z

    move-result v0

    return v0
.end method

.method public static blacklist useSmallerAppWidgetSystemRadius()Z
    .registers 1

    .line 116
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/FeatureFlags;->useSmallerAppWidgetSystemRadius()Z

    move-result v0

    return v0
.end method
