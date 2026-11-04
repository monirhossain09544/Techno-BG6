.class public Landroid/security/net/config/TrustedCertificateStoreAdapter;
.super Lcom/android/org/conscrypt/TrustedCertificateStore;
.source "TrustedCertificateStoreAdapter.java"


# instance fields
.field private final greylist-max-o mConfig:Landroid/security/net/config/NetworkSecurityConfig;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/security/net/config/NetworkSecurityConfig;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    .line 33
    return-void
.end method


# virtual methods
.method public greylist-max-o test-api aliases()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api allSystemAliases()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api containsAlias(Ljava/lang/String;)Z
    .registers 2

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public greylist-max-o test-api findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findAllCertificatesByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o test-api findIssuer(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 3

    .line 37
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object p1

    .line 38
    if-nez p1, :cond_a

    .line 39
    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_a
    iget-object p1, p1, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method public greylist-max-o test-api getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 2

    .line 79
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public greylist-max-o test-api getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;
    .registers 3

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public greylist-max-o test-api getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 2

    .line 114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public greylist-max-o test-api getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .registers 3

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public greylist-max-o test-api getCertificateFile(Ljava/io/File;Ljava/security/cert/X509Certificate;)Ljava/io/File;
    .registers 3

    .line 71
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public greylist-max-o test-api getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 2

    .line 89
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public greylist-max-o test-api getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 3

    .line 51
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object p1

    .line 52
    if-nez p1, :cond_a

    .line 53
    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_a
    iget-object p1, p1, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method public greylist-max-o test-api isUserAddedCertificate(Ljava/security/cert/X509Certificate;)Z
    .registers 3

    .line 61
    iget-object v0, p0, Landroid/security/net/config/TrustedCertificateStoreAdapter;->mConfig:Landroid/security/net/config/NetworkSecurityConfig;

    invoke-virtual {v0, p1}, Landroid/security/net/config/NetworkSecurityConfig;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Landroid/security/net/config/TrustAnchor;

    move-result-object p1

    .line 62
    if-nez p1, :cond_a

    .line 63
    const/4 p1, 0x0

    return p1

    .line 65
    :cond_a
    iget-boolean p1, p1, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    return p1
.end method

.method public greylist-max-o test-api userAliases()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
