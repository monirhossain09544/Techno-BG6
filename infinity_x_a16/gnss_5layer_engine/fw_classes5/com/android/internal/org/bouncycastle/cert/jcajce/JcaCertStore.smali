.class public Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaCertStore;
.super Lcom/android/internal/org/bouncycastle/util/CollectionStore;
.source "JcaCertStore.java"


# direct methods
.method public constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/cert/jcajce/JcaCertStore;->convertCerts(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    .line 34
    return-void
.end method

.method private static blacklist convertCerts(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 45
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_49

    .line 47
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 51
    :try_start_1d
    new-instance v2, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_2b

    .line 56
    nop

    .line 57
    goto :goto_4e

    .line 53
    :catch_2b
    move-exception p0

    .line 55
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to read encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_49
    check-cast v1, Lcom/android/internal/org/bouncycastle/cert/X509CertificateHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_4e
    goto :goto_d

    .line 64
    :cond_4f
    return-object v0
.end method
