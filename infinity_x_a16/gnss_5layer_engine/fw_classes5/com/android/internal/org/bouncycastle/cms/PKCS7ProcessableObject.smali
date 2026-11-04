.class public Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;
.super Ljava/lang/Object;
.source "PKCS7ProcessableObject.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSTypedData;


# instance fields
.field private final blacklist structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field private final blacklist type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getContent()Ljava/lang/Object;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getContentType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist write(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/org/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    const-string v1, "DER"

    if-eqz v0, :cond_2b

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 46
    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 47
    goto :goto_12

    .line 48
    :cond_2a
    goto :goto_48

    .line 51
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/PKCS7ProcessableObject;->structure:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 52
    const/4 v1, 0x1

    move v2, v1

    .line 54
    :goto_37
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7f

    if-le v3, v4, :cond_42

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 59
    :cond_42
    add-int/2addr v2, v1

    .line 61
    array-length v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 63
    :goto_48
    return-void
.end method
