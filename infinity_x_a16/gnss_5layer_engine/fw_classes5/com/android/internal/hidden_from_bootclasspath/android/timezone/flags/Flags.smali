.class public final Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_AUTOMATIC_TIME_ZONE_REJECTION_LOGGING:Ljava/lang/String; = "android.timezone.flags.enable_automatic_time_zone_rejection_logging"

.field public static final blacklist FLAG_ENABLE_FUSED_TIME_ZONE_DETECTOR:Ljava/lang/String; = "android.timezone.flags.enable_fused_time_zone_detector"

.field public static final blacklist FLAG_ENABLE_PERMANENT_TIME_ZONE_CORRECTNESS_TELEMETRY_LOGGING:Ljava/lang/String; = "android.timezone.flags.enable_permanent_time_zone_correctness_telemetry_logging"

.field public static final blacklist FLAG_ENABLE_TIME_ZONE_TRANSITION_TELEMETRY_LOGGING:Ljava/lang/String; = "android.timezone.flags.enable_time_zone_transition_telemetry_logging"

.field public static final blacklist FLAG_EXPOSE_TIME_ZONE_SYSTEM_API:Ljava/lang/String; = "android.timezone.flags.expose_time_zone_system_api"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableAutomaticTimeZoneRejectionLogging()Z
    .registers 1

    .line 20
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;->enableAutomaticTimeZoneRejectionLogging()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableFusedTimeZoneDetector()Z
    .registers 1

    .line 26
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;->enableFusedTimeZoneDetector()Z

    move-result v0

    return v0
.end method

.method public static blacklist enablePermanentTimeZoneCorrectnessTelemetryLogging()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;->enablePermanentTimeZoneCorrectnessTelemetryLogging()Z

    move-result v0

    return v0
.end method

.method public static blacklist enableTimeZoneTransitionTelemetryLogging()Z
    .registers 1

    .line 38
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;->enableTimeZoneTransitionTelemetryLogging()Z

    move-result v0

    return v0
.end method

.method public static blacklist exposeTimeZoneSystemApi()Z
    .registers 1

    .line 44
    sget-object v0, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/Flags;->FEATURE_FLAGS:Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;

    invoke-interface {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/timezone/flags/FeatureFlags;->exposeTimeZoneSystemApi()Z

    move-result v0

    return v0
.end method
