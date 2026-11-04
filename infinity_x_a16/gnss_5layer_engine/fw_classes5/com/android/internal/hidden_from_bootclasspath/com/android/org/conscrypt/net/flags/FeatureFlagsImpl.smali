.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist certificateTransparencyDefaultEnabled:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist networkSecurityConfig:Z

.field private static blacklist networkSecurityConfigLocalhost:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->certificateTransparencyDefaultEnabled:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->networkSecurityConfig:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->networkSecurityConfigLocalhost:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 5

    .line 16
    const-string v0, "FeatureFlagsImplExport"

    :try_start_2
    const-string v1, "com.android.org.conscrypt.net.flags"

    invoke-static {v1}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v1

    .line 17
    const-string v2, "certificate_transparency_default_enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->certificateTransparencyDefaultEnabled:Z

    .line 18
    const-string v2, "network_security_config"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->networkSecurityConfig:Z

    .line 19
    const-string v2, "network_security_config_localhost"

    invoke-virtual {v1, v2, v3}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->networkSecurityConfigLocalhost:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_2b
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_21} :catch_22

    goto :goto_33

    .line 23
    :catch_22
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 20
    :catch_2b
    move-exception v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_33
    nop

    .line 28
    :goto_34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->isCached:Z

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist certificateTransparencyDefaultEnabled()Z
    .registers 2

    .line 32
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 33
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->init()V

    .line 35
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->certificateTransparencyDefaultEnabled:Z

    return v0
.end method

.method public blacklist networkSecurityConfig()Z
    .registers 2

    .line 40
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 41
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->init()V

    .line 43
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->networkSecurityConfig:Z

    return v0
.end method

.method public blacklist networkSecurityConfigLocalhost()Z
    .registers 2

    .line 48
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 49
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->init()V

    .line 51
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/FeatureFlagsImpl;->networkSecurityConfigLocalhost:Z

    return v0
.end method
