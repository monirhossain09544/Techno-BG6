.class public Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;
.super Ljava/lang/Object;
.source "SignerInformationVerifier.java"


# instance fields
.field private blacklist digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

.field private blacklist sigAlgorithmFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

.field private blacklist sigNameGenerator:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

.field private blacklist verifierProvider:Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;)V
    .registers 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->sigNameGenerator:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    .line 26
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->sigAlgorithmFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    .line 27
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    .line 28
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentVerifier(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->sigNameGenerator:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object p2

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->sigAlgorithmFinder:Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    invoke-interface {v0, p2}, Lcom/android/internal/org/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    .line 47
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/ContentVerifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDigestCalculator(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->digestProvider:Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculatorProvider;->get(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    move-result-object p1

    return-object p1
.end method

.method public blacklist hasAssociatedCertificate()Z
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/ContentVerifierProvider;->hasAssociatedCertificate()Z

    move-result v0

    return v0
.end method
