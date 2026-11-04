.class public Landroid/security/net/config/ManifestConfigSource;
.super Ljava/lang/Object;
.source "ManifestConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "NetworkSecurityConfig"


# instance fields
.field private final greylist-max-o mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private greylist-max-o mConfigSource:Landroid/security/net/config/ConfigSource;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 43
    return-void
.end method

.method private greylist-max-o getConfigSource()Landroid/security/net/config/ConfigSource;
    .registers 6

    .line 61
    iget-object v0, p0, Landroid/security/net/config/ManifestConfigSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    if-eqz v1, :cond_b

    .line 63
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    monitor-exit v0

    return-object v1

    .line 65
    :cond_b
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 67
    if-eqz v1, :cond_23

    .line 68
    iget-object v2, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_19

    .line 76
    :cond_19
    new-instance v2, Landroid/security/net/config/XmlConfigSource;

    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3, v1, v4}, Landroid/security/net/config/XmlConfigSource;-><init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V

    .line 77
    goto :goto_3e

    .line 83
    :cond_23
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_36

    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 85
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 86
    :goto_37
    new-instance v2, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;

    iget-object v3, p0, Landroid/security/net/config/ManifestConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v1, v3}, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;-><init>(ZLandroid/content/pm/ApplicationInfo;)V

    .line 88
    :goto_3e
    iput-object v2, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    .line 89
    iget-object v1, p0, Landroid/security/net/config/ManifestConfigSource;->mConfigSource:Landroid/security/net/config/ConfigSource;

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method


# virtual methods
.method public greylist-max-o getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLocalhostConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getLocalhostConfig()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getPerDomainConfigs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroid/security/net/config/ManifestConfigSource;->getConfigSource()Landroid/security/net/config/ConfigSource;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/net/config/ConfigSource;->getPerDomainConfigs()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
