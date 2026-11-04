.class public final Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;
.super Ljava/lang/Object;
.source "FeatureFlagsImpl.java"

# interfaces
.implements Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlags;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlagsImplExport"

.field private static blacklist appinfo:Z

.field private static blacklist hpkePublicApi:Z

.field private static blacklist hpkeVApis:Z

.field private static volatile blacklist isCached:Z

.field private static blacklist madviseApi:Z

.field private static blacklist nativeMetrics:Z

.field private static blacklist networkSecurityPolicyEchApi:Z

.field private static blacklist networkSecurityPolicyReasonCtEnabledApi:Z

.field private static blacklist nicenessApis:Z

.field private static blacklist openjdk21Stringconcat:Z

.field private static blacklist openjdk21V1Apis:Z

.field private static blacklist openjdk21V2Apis:Z

.field private static blacklist openjdk25V1Apis:Z

.field private static blacklist postCleanupApis:Z

.field private static blacklist readOnlyDynamicCodeLoad:Z

.field private static blacklist vApis:Z

.field private static blacklist virtualThreadApiV1:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    .line 11
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z

    .line 12
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    .line 13
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    .line 14
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    .line 15
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    .line 16
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->networkSecurityPolicyEchApi:Z

    .line 17
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->networkSecurityPolicyReasonCtEnabledApi:Z

    .line 18
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nicenessApis:Z

    .line 19
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    .line 20
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    .line 21
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    .line 22
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk25V1Apis:Z

    .line 23
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    .line 24
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    .line 25
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    .line 26
    sput-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->virtualThreadApiV1:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist init()V
    .registers 7

    .line 29
    const-string v0, "FeatureFlagsImplExport"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "com.android.libcore"

    invoke-static {v2}, Landroid/os/flagging/AconfigPackage;->load(Ljava/lang/String;)Landroid/os/flagging/AconfigPackage;

    move-result-object v2

    .line 30
    const-string v3, "hpke_public_api"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    .line 31
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    .line 32
    const-string v3, "madvise_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    .line 33
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    const v5, 0x36ee81

    if-lt v3, v5, :cond_27

    move v3, v1

    goto :goto_2d

    :cond_27
    const-string v3, "niceness_apis"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_2d
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nicenessApis:Z

    .line 35
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    .line 36
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v5, :cond_39

    move v3, v1

    goto :goto_3f

    :cond_39
    const-string v3, "openjdk_21_v2_apis"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_3f
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    .line 38
    const-string v3, "openjdk_25_v1_apis"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk25V1Apis:Z

    .line 39
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    .line 40
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    .line 42
    const-string v3, "virtual_thread_api_v1"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->virtualThreadApiV1:Z

    .line 43
    sget v3, Landroid/os/Build$VERSION;->SDK_INT_FULL:I

    if-lt v3, v5, :cond_5d

    move v3, v1

    goto :goto_63

    :cond_5d
    const-string v3, "appinfo"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    :goto_63
    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z

    .line 44
    const-string v3, "network_security_policy_ech_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->networkSecurityPolicyEchApi:Z

    .line 45
    const-string v3, "network_security_policy_reason_ct_enabled_api"

    invoke-virtual {v2, v3, v4}, Landroid/os/flagging/AconfigPackage;->getBooleanFlagValue(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->networkSecurityPolicyReasonCtEnabledApi:Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_75} :catch_7f
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_75} :catch_76

    goto :goto_87

    .line 49
    :catch_76
    move-exception v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 46
    :catch_7f
    move-exception v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_87
    nop

    .line 54
    :goto_88
    sput-boolean v1, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist appinfo()Z
    .registers 2

    .line 58
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 59
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 61
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->appinfo:Z

    return v0
.end method

.method public blacklist hpkePublicApi()Z
    .registers 2

    .line 66
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 67
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 69
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkePublicApi:Z

    return v0
.end method

.method public blacklist hpkeVApis()Z
    .registers 2

    .line 74
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 75
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 77
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->hpkeVApis:Z

    return v0
.end method

.method public blacklist madviseApi()Z
    .registers 2

    .line 82
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 83
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 85
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->madviseApi:Z

    return v0
.end method

.method public blacklist nativeMetrics()Z
    .registers 2

    .line 90
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 91
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 93
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nativeMetrics:Z

    return v0
.end method

.method public blacklist networkSecurityPolicyEchApi()Z
    .registers 2

    .line 98
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 99
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 101
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->networkSecurityPolicyEchApi:Z

    return v0
.end method

.method public blacklist networkSecurityPolicyReasonCtEnabledApi()Z
    .registers 2

    .line 106
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 107
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 109
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->networkSecurityPolicyReasonCtEnabledApi:Z

    return v0
.end method

.method public blacklist nicenessApis()Z
    .registers 2

    .line 114
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 115
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 117
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->nicenessApis:Z

    return v0
.end method

.method public blacklist openjdk21Stringconcat()Z
    .registers 2

    .line 122
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 123
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 125
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21Stringconcat:Z

    return v0
.end method

.method public blacklist openjdk21V1Apis()Z
    .registers 2

    .line 130
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 131
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 133
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V1Apis:Z

    return v0
.end method

.method public blacklist openjdk21V2Apis()Z
    .registers 2

    .line 138
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 139
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 141
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk21V2Apis:Z

    return v0
.end method

.method public blacklist openjdk25V1Apis()Z
    .registers 2

    .line 146
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 147
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 149
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->openjdk25V1Apis:Z

    return v0
.end method

.method public blacklist postCleanupApis()Z
    .registers 2

    .line 154
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 155
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 157
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->postCleanupApis:Z

    return v0
.end method

.method public blacklist readOnlyDynamicCodeLoad()Z
    .registers 2

    .line 162
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 163
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 165
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->readOnlyDynamicCodeLoad:Z

    return v0
.end method

.method public blacklist vApis()Z
    .registers 2

    .line 170
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 171
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 173
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->vApis:Z

    return v0
.end method

.method public blacklist virtualThreadApiV1()Z
    .registers 2

    .line 178
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->isCached:Z

    if-nez v0, :cond_7

    .line 179
    invoke-direct {p0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->init()V

    .line 181
    :cond_7
    sget-boolean v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/FeatureFlagsImpl;->virtualThreadApiV1:Z

    return v0
.end method
