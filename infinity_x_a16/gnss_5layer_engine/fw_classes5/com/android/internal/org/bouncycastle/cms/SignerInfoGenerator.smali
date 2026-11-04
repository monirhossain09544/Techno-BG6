.class public Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;
.super Ljava/lang/Object;
.source "SignerInfoGenerator.java"


# instance fields
.field private blacklist calculatedDigest:[B

.field private blacklist certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

.field private final blacklist digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final blacklist digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

.field private final blacklist sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

.field private final blacklist sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private final blacklist signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

.field private final blacklist signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

.field private final blacklist unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 49
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 50
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    .line 51
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    .line 53
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 54
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 55
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 56
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/operator/ContentSigner;Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .registers 8

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 66
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 67
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    .line 68
    invoke-interface {p3}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    .line 70
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 71
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 72
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .registers 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 80
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    .line 81
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    .line 82
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 83
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    .line 84
    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 85
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 86
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 87
    return-void
.end method

.method private blacklist getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3

    .line 222
    if-eqz p1, :cond_c

    .line 224
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0

    .line 227
    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;
    .registers 7

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    if-eqz p1, :cond_c

    .line 236
    const-string v1, "contentType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_c
    const-string p1, "digestAlgID"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string p1, "signatureAlgID"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string p1, "digest"

    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-object v0
.end method


# virtual methods
.method public blacklist generate(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 144
    nop

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sigEncAlgFinder:Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;->findEncryptionAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    .line 148
    nop

    .line 150
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    .line 152
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 154
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v2, v6, v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v2

    .line 155
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v2

    .line 157
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 162
    const-string v4, "DER"

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 164
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 165
    move-object v5, v2

    move-object v4, v0

    goto :goto_63

    .line 168
    :cond_50
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 169
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    if-eqz v2, :cond_5f

    .line 171
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    goto :goto_61

    .line 175
    :cond_5f
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    .line 179
    :goto_61
    move-object v5, v1

    move-object v4, v0

    :goto_63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    .line 181
    nop

    .line 182
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v2, :cond_8d

    .line 184
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-direct {p0, p1, v4, v6, v1}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getBaseParameters(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object p1

    .line 185
    const-string v1, "encryptedDigest"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getAttributeSet(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    move-object v8, v1

    goto :goto_8e

    .line 182
    :cond_8d
    move-object v8, v1

    .line 192
    :goto_8e
    nop

    .line 205
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9b} :catch_9c

    return-object v2

    .line 208
    :catch_9c
    move-exception v0

    move-object p1, v0

    .line 210
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "encoding error."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public blacklist getAssociatedCertificate()Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    return-object v0
.end method

.method public blacklist getCalculatedDigest()[B
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    if-eqz v0, :cond_b

    .line 250
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->calculatedDigest:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 253
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCalculatingOutputStream()Ljava/io/OutputStream;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    if-eqz v0, :cond_21

    .line 118
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_1a

    .line 120
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-object v0

    .line 122
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digester:Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 126
    :cond_21
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signer:Lcom/android/internal/org/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->digestAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getGeneratedVersion()I
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_b

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method

.method public blacklist getSID()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->signerIdentifier:Lcom/android/internal/org/bouncycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public blacklist getSignedAttributeTableGenerator()Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->sAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method

.method public blacklist getUnsignedAttributeTableGenerator()Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->unsAttrGen:Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;

    return-object v0
.end method

.method public blacklist hasAssociatedCertificate()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist setAssociatedCertificate(Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->certHolder:Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 217
    return-void
.end method
