.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final greylist-max-o INSTANCE:Landroid/security/NetworkSecurityPolicy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getApplicationConfigForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/security/net/config/ApplicationConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 131
    new-instance p1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {p1, p0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance p0, Landroid/security/net/config/ApplicationConfig;

    invoke-direct {p0, p1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    return-object p0
.end method

.method public static whitelist getInstance()Landroid/security/NetworkSecurityPolicy;
    .registers 1

    .line 44
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 2

    .line 117
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_9

    .line 119
    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->handleTrustStorageUpdate()V

    .line 121
    :cond_9
    return-void
.end method

.method public whitelist isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z
    .registers 3

    .line 108
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCertificateTransparencyVerificationRequired(Ljava/lang/String;)Z

    move-result p1

    .line 108
    return p1
.end method

.method public whitelist isCleartextTrafficPermitted()Z
    .registers 2

    .line 67
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public whitelist isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .registers 3

    .line 77
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    .line 77
    return p1
.end method

.method public greylist-max-o setCleartextTrafficPermitted(Z)V
    .registers 4

    .line 91
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/security/OverlayNetworkSecurityPolicy;

    invoke-direct {v1, v0, p1}, Landroid/security/OverlayNetworkSecurityPolicy;-><init>(Llibcore/net/NetworkSecurityPolicy;Z)V

    .line 94
    invoke-static {v1}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    .line 95
    return-void
.end method
