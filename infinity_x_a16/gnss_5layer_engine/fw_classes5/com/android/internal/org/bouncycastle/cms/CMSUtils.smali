.class Lcom/android/internal/org/bouncycastle/cms/CMSUtils;
.super Ljava/lang/Object;
.source "CMSUtils.java"


# static fields
.field private static final blacklist des:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ecAlgs:Ljava/util/Set;

.field private static final blacklist gostAlgs:Ljava/util/Set;

.field private static final blacklist mqvAlgs:Ljava/util/Set;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->des:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->mqvAlgs:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->ecAlgs:Ljava/util/Set;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->gostAlgs:Ljava/util/Set;

    .line 59
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->des:Ljava/util/Set;

    const-string v1, "DES"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->des:Ljava/util/Set;

    const-string v1, "DESEDE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addDigestAlgs(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/cms/SignerInformation;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;",
            "Lcom/android/internal/org/bouncycastle/cms/SignerInformation;",
            "Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;",
            ")V"
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getCounterSignatures()Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/cms/SignerInformationStore;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 170
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 172
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;

    .line 173
    sget-object v1, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/org/bouncycastle/cms/CMSSignedHelper;->fixDigestAlgID(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    goto :goto_15

    .line 175
    :cond_2f
    return-void
.end method

.method static blacklist attachDigestsToInputStream(Ljava/util/Collection;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4

    .line 392
    nop

    .line 393
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 394
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 396
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;

    .line 397
    new-instance v1, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/android/internal/org/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 398
    move-object p1, v1

    goto :goto_5

    .line 399
    :cond_1c
    return-object p1
.end method

.method static blacklist attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 3

    .line 404
    nop

    .line 405
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 406
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 408
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;

    .line 409
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/cms/SignerInfoGenerator;->getCalculatingOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    .line 410
    goto :goto_5

    .line 411
    :cond_1a
    return-object p1
.end method

.method static blacklist convertToDlSet(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;)",
            "Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method static blacklist createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 339
    if-eqz p3, :cond_e

    .line 341
    new-array p0, p3, [B

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 344
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method static blacklist createBerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3

    .line 299
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 301
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 303
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_9

    .line 306
    :cond_19
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/BERSet;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.method static blacklist createDerSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3

    .line 323
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 325
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 327
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_9

    .line 330
    :cond_19
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DERSet;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.method static blacklist createDlSetFromList(Ljava/util/List;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 3

    .line 311
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 313
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 315
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_9

    .line 318
    :cond_19
    new-instance p0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method

.method static blacklist getAttributeCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Store;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 208
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 210
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/X509AttributeCertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_28} :catch_2a

    .line 211
    goto :goto_e

    .line 213
    :cond_29
    return-object v0

    .line 215
    :catch_2a
    move-exception p0

    .line 217
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "error processing certs"

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method static blacklist getCRLsFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Store;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 231
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 233
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;

    if-eqz v2, :cond_26

    .line 235
    check-cast v1, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;

    .line 237
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/X509CRLHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    goto :goto_2d

    .line 249
    :cond_26
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_2d

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_2d} :catch_2f

    .line 253
    :cond_2d
    :goto_2d
    goto :goto_e

    .line 255
    :cond_2e
    return-object v0

    .line 257
    :catch_2f
    move-exception p0

    .line 259
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "error processing certs"

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method static blacklist getCertificatesFromStore(Lcom/android/internal/org/bouncycastle/util/Store;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p0, v1}, Lcom/android/internal/org/bouncycastle/util/Store;->getMatches(Lcom/android/internal/org/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 186
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    .line 188
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_21} :catch_23

    .line 189
    goto :goto_e

    .line 191
    :cond_22
    return-object v0

    .line 193
    :catch_23
    move-exception p0

    .line 195
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "error processing certs"

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method static blacklist getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 1

    .line 416
    if-nez p0, :cond_7

    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/NullOutputStream;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cms/NullOutputStream;-><init>()V

    :cond_7
    return-object p0
.end method

.method static blacklist getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 3

    .line 422
    if-nez p0, :cond_7

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    goto :goto_14

    .line 423
    :cond_7
    if-nez p1, :cond_e

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    goto :goto_14

    :cond_e
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    move-object p0, v0

    .line 422
    :goto_14
    return-object p0
.end method

.method static blacklist isDES(Ljava/lang/String;)Z
    .registers 2

    .line 117
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->des:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static blacklist isEC(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 2

    .line 98
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->ecAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static blacklist isEquivalent(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .registers 5

    .line 124
    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    if-nez p1, :cond_6

    goto :goto_3e

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 131
    return v0

    .line 134
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    .line 135
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    .line 136
    const/4 v1, 0x1

    if-eqz p0, :cond_32

    .line 138
    invoke-interface {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-interface {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    if-nez p1, :cond_31

    :cond_30
    move v0, v1

    :cond_31
    return v0

    .line 141
    :cond_32
    if-eqz p1, :cond_3c

    sget-object p0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-interface {p1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    :cond_3c
    move v0, v1

    :cond_3d
    return v0

    .line 126
    :cond_3e
    :goto_3e
    return v0
.end method

.method static blacklist isGOST(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 2

    .line 103
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->gostAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static blacklist isMQV(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .registers 2

    .line 93
    sget-object v0, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->mqvAlgs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static blacklist readContentInfo(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 353
    const-string v0, "Malformed content."

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p0

    .line 354
    if-eqz p0, :cond_d

    .line 359
    return-object p0

    .line 356
    :cond_d
    new-instance p0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "No content found."

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_23
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_15} :catch_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_15} :catch_15

    .line 369
    :catch_15
    move-exception p0

    .line 371
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 365
    :catch_1c
    move-exception p0

    .line 367
    new-instance v1, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 361
    :catch_23
    move-exception p0

    .line 363
    new-instance v0, Lcom/android/internal/org/bouncycastle/cms/CMSException;

    const-string v1, "IOException reading content."

    invoke-direct {v0, v1, p0}, Lcom/android/internal/org/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method static blacklist readContentInfo(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 157
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method static blacklist readContentInfo([B)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/cms/CMSUtils;->readContentInfo(Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;)Lcom/android/internal/org/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist streamToByteArray(Ljava/io/InputStream;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist streamToByteArray(Ljava/io/InputStream;I)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readAllLimited(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method
