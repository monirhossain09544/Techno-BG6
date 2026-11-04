.class public Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;
.super Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;
.source "CMSSignedDataGenerator.java"


# instance fields
.field private blacklist isDefiniteLength:Z

.field private blacklist signerInfs:Ljava/util/List;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedGenerator;-><init>(Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    .line 58
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerInfs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 145
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 146
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 148
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->_signers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 156
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->digestAlgIdFinder:Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-static {v0, v3, v4}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    .line 158
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    goto :goto_1d

    .line 164
    :cond_36
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 166
    nop

    .line 168
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->getContent()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_96

    .line 170
    nop

    .line 172
    if-eqz p2, :cond_4b

    .line 174
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_4c

    .line 172
    :cond_4b
    move-object v3, v4

    .line 177
    :goto_4c
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-static {v5, v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    .line 180
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v5

    .line 184
    :try_start_56
    invoke-interface {p1, v5}, Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    .line 186
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_77

    .line 191
    nop

    .line 193
    if-eqz p2, :cond_96

    .line 195
    iget-boolean p2, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    if-eqz p2, :cond_6d

    .line 197
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_97

    .line 201
    :cond_6d
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B)V

    goto :goto_97

    .line 188
    :catch_77
    move-exception v0

    move-object p1, v0

    .line 190
    new-instance p2, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data processing exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 206
    :cond_96
    move-object p2, v4

    :goto_97
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    .line 209
    invoke-virtual {v5, v2}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->generate(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v6

    .line 211
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 214
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getCalculatedDigest()[B

    move-result-object v5

    .line 216
    if-eqz v5, :cond_ce

    .line 218
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_ce
    goto :goto_9d

    .line 222
    :cond_cf
    nop

    .line 224
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_ec

    .line 226
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    if-eqz v3, :cond_e4

    .line 228
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createDlSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    move-object v8, v3

    goto :goto_ed

    .line 232
    :cond_e4
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    move-object v8, v3

    goto :goto_ed

    .line 224
    :cond_ec
    move-object v8, v4

    .line 236
    :goto_ed
    nop

    .line 238
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_10a

    .line 240
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    if-eqz v3, :cond_102

    .line 242
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createDlSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    move-object v9, v4

    goto :goto_10b

    .line 246
    :cond_102
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    move-object v9, v4

    goto :goto_10b

    .line 238
    :cond_10a
    move-object v9, v4

    .line 250
    :goto_10b
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {v7, v2, p2}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 252
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;

    .line 253
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/asn1/cms/SignedData;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;)V

    .line 259
    new-instance p2, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p2, v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 262
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;-><init>(Lcom/android/internal/org/bouncycastle/cms/CMSProcessable;Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v0

    .line 112
    :cond_12b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "this method can only be used with SignerInfoGenerator"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist generateCounterSigners(Lcom/android/internal/org/bouncycastle/cms/SignerInformation;)Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 275
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;Z)Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDefiniteLengthEncoding(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    .line 83
    return-void
.end method
