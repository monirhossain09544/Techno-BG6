.class final Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;
.super Ljava/lang/Object;
.source "ManifestConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/ManifestConfigSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultConfigSource"
.end annotation


# instance fields
.field private final greylist-max-o mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private final blacklist mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method constructor greylist-max-o <init>(ZLandroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {p2}, Landroid/security/net/config/NetworkSecurityConfig;->getDefaultBuilder(Landroid/content/pm/ApplicationInfo;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object p2

    .line 100
    invoke-virtual {p2, p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object p1

    iput-object p1, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 102
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/org/conscrypt/net/flags/Flags;->networkSecurityConfigLocalhost()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 103
    invoke-static {}, Landroid/security/net/config/NetworkSecurityConfig;->getLocalhostBuilder()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object p1

    iput-object p1, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

    goto :goto_25

    .line 105
    :cond_22
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 107
    :goto_25
    return-void
.end method


# virtual methods
.method public greylist-max-o getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public blacklist getLocalhostConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/security/net/config/ManifestConfigSource$DefaultConfigSource;->mLocalhostConfig:Landroid/security/net/config/NetworkSecurityConfig;

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

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
