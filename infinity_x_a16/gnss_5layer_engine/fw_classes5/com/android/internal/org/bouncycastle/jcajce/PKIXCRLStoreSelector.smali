.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;,
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/org/bouncycastle/util/Selector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist baseSelector:Ljava/security/cert/CRLSelector;

.field private final blacklist completeCRLEnabled:Z

.field private final blacklist deltaCRLIndicator:Z

.field private final blacklist issuingDistributionPoint:[B

.field private final blacklist issuingDistributionPointEnabled:Z

.field private final blacklist maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)V
    .registers 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    .line 159
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetdeltaCRLIndicator(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    .line 160
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetcompleteCRLEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    .line 161
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetmaxBaseCRLNumber(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 162
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetissuingDistributionPoint(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    .line 163
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->-$$Nest$fgetissuingDistributionPointEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 164
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)V

    return-void
.end method

.method public static blacklist getCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1

    .line 268
    return-object p0
.end method

.method public blacklist getCertificateChecking()Ljava/security/cert/X509Certificate;
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_f

    .line 312
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    .line 315
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIssuingDistributionPoint()[B
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist isCompleteCRLEnabled()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public blacklist isDeltaCRLIndicatorEnabled()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public blacklist isIssuingDistributionPointEnabled()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public bridge synthetic blacklist match(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    check-cast p1, Ljava/security/cert/CRL;

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    return p1
.end method

.method public blacklist match(Ljava/security/cert/CRL;)Z
    .registers 6

    .line 185
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    if-nez v0, :cond_b

    .line 187
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-interface {v0, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    return p1

    .line 190
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 191
    nop

    .line 194
    const/4 v1, 0x0

    :try_start_10
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 195
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 196
    if-eqz v2, :cond_29

    .line 198
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_76

    goto :goto_2a

    .line 196
    :cond_29
    const/4 v2, 0x0

    .line 204
    :goto_2a
    nop

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 207
    if-nez v2, :cond_34

    .line 209
    return v1

    .line 212
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 214
    if-eqz v2, :cond_3d

    .line 216
    return v1

    .line 219
    :cond_3d
    if-eqz v2, :cond_51

    .line 222
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v3, :cond_51

    .line 224
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_51

    .line 226
    return v1

    .line 230
    :cond_51
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v2, :cond_6f

    .line 232
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 234
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v2, :cond_66

    .line 237
    if-eqz v0, :cond_6f

    .line 239
    return v1

    .line 244
    :cond_66
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 246
    return v1

    .line 251
    :cond_6f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-interface {v0, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    return p1

    .line 201
    :catch_76
    move-exception p1

    .line 203
    return v1
.end method
