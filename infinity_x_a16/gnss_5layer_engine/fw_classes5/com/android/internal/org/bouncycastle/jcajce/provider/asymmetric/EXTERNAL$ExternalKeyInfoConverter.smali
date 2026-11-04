.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;
.super Ljava/lang/Object;
.source "EXTERNAL.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalKeyInfoConverter"
.end annotation


# instance fields
.field private final blacklist provider:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;->provider:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 88
    return-void
.end method


# virtual methods
.method public blacklist generatePrivate(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no support for private key"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist generatePublic(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/ExternalPublicKey;-><init>(Lcom/android/internal/org/bouncycastle/asn1/bc/ExternalValue;)V

    return-object v0
.end method
