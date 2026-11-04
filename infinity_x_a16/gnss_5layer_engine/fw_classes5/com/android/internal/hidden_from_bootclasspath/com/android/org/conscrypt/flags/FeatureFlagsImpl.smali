.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist certificateTransparencyCheckservertrustedApi:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist spake2plusApi:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->certificateTransparencyCheckservertrustedApi:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->spake2plusApi:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 4

    .line 15
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.org.conscrypt.flags"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    .line 16
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->certificateTransparencyCheckservertrustedApi:Z

    .line 17
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->spake2plusApi:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_16
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_1e

    .line 21
    :catch_d
    move-exception v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 18
    :catch_16
    move-exception v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_1e
    nop

    .line 26
    :goto_1f
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->isCached:Z

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist certificateTransparencyCheckservertrustedApi()Z
    .registers 2

    .line 30
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 31
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->init()V

    .line 33
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->certificateTransparencyCheckservertrustedApi:Z

    return v0
.end method

.method public blacklist spake2plusApi()Z
    .registers 2

    .line 38
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 39
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->init()V

    .line 41
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/flags/FeatureFlagsImpl;->spake2plusApi:Z

    return v0
.end method
