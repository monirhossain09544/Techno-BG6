.class public Landroid/security/net/config/RootTrustManager;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "RootTrustManager.java"


# instance fields
.field private final greylist-max-o mConfig:Landroid/security/net/config/ApplicationConfig;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/net/config/ApplicationConfig;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 46
    if-eqz p1, :cond_8

    .line 49
    iput-object p1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 50
    return-void

    .line 47
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "config must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 68
    return-void
.end method

.method public whitelist test-api checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 77
    return-void
.end method

.method public greylist checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 129
    if-nez p3, :cond_13

    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 130
    :cond_b
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Domain specific configurations require that the hostname be provided"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p3}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 144
    if-nez p5, :cond_13

    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 145
    :cond_b
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Domain specific configurations require that the hostname be provided"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p5}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->hasPerDomainConfigs()Z

    move-result v0

    if-nez v0, :cond_18

    .line 117
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 119
    return-void

    .line 113
    :cond_18
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Domain specific configurations require that hostname aware checkServerTrusted(X509Certificate[], String, String) is used"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 82
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_27

    .line 83
    move-object v0, p3

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 84
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1f

    .line 88
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v1, v0}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 91
    goto :goto_2a

    .line 86
    :cond_1f
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_27
    invoke-virtual {p0, p1, p2}, Landroid/security/net/config/RootTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 95
    :goto_2a
    return-void
.end method

.method public whitelist test-api checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 100
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_18

    .line 104
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v1, v0}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/net/config/NetworkSecurityTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 107
    return-void

    .line 102
    :cond_18
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 3

    .line 158
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityConfig;->getTrustManager()Landroid/security/net/config/NetworkSecurityTrustManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/NetworkSecurityTrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isSameTrustConfiguration(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 169
    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object p1

    iget-object v0, p0, Landroid/security/net/config/RootTrustManager;->mConfig:Landroid/security/net/config/ApplicationConfig;

    .line 170
    invoke-virtual {v0, p2}, Landroid/security/net/config/ApplicationConfig;->getConfigForHostname(Ljava/lang/String;)Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 169
    return p1
.end method
