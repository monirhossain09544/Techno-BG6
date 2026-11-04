.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.source "X509CertificateInternal.java"


# instance fields
.field private final blacklist encoding:[B

.field private final blacklist exception:Ljava/security/cert/CertificateEncodingException;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[BLjava/security/cert/CertificateEncodingException;)V
    .registers 9

    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    .line 26
    move-object p1, p0

    iput-object p7, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    .line 27
    iput-object p8, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    .line 28
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    if-nez v0, :cond_11

    .line 37
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    return-object v0

    .line 39
    :cond_b
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    throw v0

    .line 34
    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    throw v0
.end method
