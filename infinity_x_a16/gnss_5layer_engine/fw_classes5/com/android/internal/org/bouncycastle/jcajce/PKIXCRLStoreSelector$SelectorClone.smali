.class Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CRLSelector;
.source "PKIXCRLStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorClone"
.end annotation


# instance fields
.field private final blacklist selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V
    .registers 3

    .line 330
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    .line 333
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->-$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_36

    .line 335
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->-$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509CRLSelector;

    .line 337
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 338
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setDateAndTime(Ljava/util/Date;)V

    .line 339
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setIssuers(Ljava/util/Collection;)V

    .line 340
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 341
    invoke-virtual {p1}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 343
    :cond_36
    return-void
.end method


# virtual methods
.method public whitelist test-api match(Ljava/security/cert/CRL;)Z
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    if-nez v0, :cond_a

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_10

    :cond_8
    const/4 p1, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p1

    :goto_10
    return p1
.end method
