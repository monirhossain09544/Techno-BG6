.class public final Landroid/security/net/config/ApplicationConfig;
.super Ljava/lang/Object;
.source "ApplicationConfig.java"


# static fields
.field private static greylist-max-o sInstance:Landroid/security/net/config/ApplicationConfig;

.field private static greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mConfigSource:Landroid/security/net/config/ConfigSource;

.field private greylist-max-o mConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private greylist-max-o mInitialized:Z

.field private blacklist mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/security/net/config/ConfigSource;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 56
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    .line 57
    return-void
.end method

.method private greylist-max-o ensureInitialized()V
    .registers 3

    .line 215
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    if-eqz v1, :cond_9

    .line 217
    monitor-exit v0

    return-void

    .line 219
    :cond_9
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v1}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    .line 220
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v1}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v1

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 221
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    invoke-interface {v1}, Landroid/security/net/config/ConfigSource;->getLocalhostConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v1

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 223
    new-instance v1, Landroid/security/net/config/RootTrustManager;

    invoke-direct {v1, p0}, Landroid/security/net/config/RootTrustManager;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    iput-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 224
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public static greylist-max-o getDefaultInstance()Landroid/security/net/config/ApplicationConfig;
    .registers 2

    .line 235
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    sget-object v1, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;

    monitor-exit v0

    return-object v1

    .line 237
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static greylist-max-o setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V
    .registers 2

    .line 229
    sget-object v0, Landroid/security/net/config/ApplicationConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    sput-object p0, Landroid/security/net/config/ApplicationConfig;->sInstance:Landroid/security/net/config/ApplicationConfig;

    .line 231
    monitor-exit v0

    .line 232
    return-void

    .line 231
    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method


# virtual methods
.method blacklist getCertificateTransparencyVerificationReason(Ljava/lang/String;)I
    .registers 3

    .line 182
    invoke-static {}, Landroid/security/net/config/NetworkSecurityConfig;->certificateTransparencyVerificationRequiredDefault()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    const/4 p1, 0x1

    return p1

    .line 185
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCertificateTransparencyVerificationRequired()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 186
    const/4 p1, 0x2

    return p1

    .line 188
    :cond_15
    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig;->isCertificateTransparencyVerificationRequired()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 189
    const/4 p1, 0x3

    return p1

    .line 191
    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;
    .registers 9

    .line 82
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 83
    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

    if-nez v0, :cond_15

    goto/16 :goto_b9

    .line 87
    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_b1

    .line 91
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3a

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_3a
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v0, :cond_a1

    .line 100
    nop

    .line 101
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 102
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/Domain;

    .line 103
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig;

    .line 105
    iget-object v6, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 106
    return-object v5

    .line 110
    :cond_63
    iget-boolean v5, v4, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v5, :cond_99

    iget-object v5, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    .line 111
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 112
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_99

    .line 114
    if-nez v1, :cond_85

    .line 115
    goto :goto_98

    .line 116
    :cond_85
    iget-object v4, v4, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/security/net/config/Domain;

    iget-object v5, v5, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_99

    .line 117
    nop

    .line 120
    :goto_98
    move-object v1, v3

    :cond_99
    goto :goto_46

    .line 121
    :cond_9a
    if-eqz v1, :cond_a1

    .line 122
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/security/net/config/NetworkSecurityConfig;

    return-object p1

    .line 125
    :cond_a1
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

    if-eqz v0, :cond_ae

    invoke-static {p1}, Landroid/security/net/config/Domain;->isLocalhost(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 126
    iget-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object p1

    .line 129
    :cond_ae
    iget-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object p1

    .line 88
    :cond_b1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hostname must not begin with a ."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_b9
    :goto_b9
    iget-object p1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object p1
.end method

.method public greylist-max-o getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 137
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 138
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 6

    .line 195
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-boolean v1, p0, Landroid/security/net/config/ApplicationConfig;->mInitialized:Z

    if-nez v1, :cond_9

    .line 199
    monitor-exit v0

    return-void

    .line 201
    :cond_9
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    .line 202
    iget-object v1, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v1, :cond_41

    .line 203
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    .line 204
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 205
    iget-object v2, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 206
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 207
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v3}, Landroid/security/net/config/NetworkSecurityConfig;->handleTrustStorageUpdate()V

    .line 209
    :cond_40
    goto :goto_23

    .line 211
    :cond_41
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public greylist-max-o hasPerDomainConfigs()Z
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 64
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public blacklist isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .registers 2

    .line 178
    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig;->isCertificateTransparencyVerificationRequired()Z

    move-result p1

    return p1
.end method

.method public greylist-max-o isCleartextTrafficPermitted()Z
    .registers 3

    .line 147
    invoke-direct {p0}, Landroid/security/net/config/ApplicationConfig;->ensureInitialized()V

    .line 148
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    if-eqz v0, :cond_26

    .line 149
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mConfigs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 150
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v1}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v1

    if-nez v1, :cond_25

    .line 151
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_25
    goto :goto_d

    .line 156
    :cond_26
    iget-object v0, p0, Landroid/security/net/config/ApplicationConfig;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 2

    .line 164
    invoke-virtual {p0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig;->isCleartextTrafficPermitted()Z

    move-result p1

    return p1
.end method
