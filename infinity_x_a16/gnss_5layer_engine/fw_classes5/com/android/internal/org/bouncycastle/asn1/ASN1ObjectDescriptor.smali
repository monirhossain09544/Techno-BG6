.class public final Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectDescriptor.java"


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final blacklist baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V
    .registers 3

    .line 80
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 81
    if-eqz p1, :cond_8

    .line 86
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    .line 87
    return-void

    .line 83
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'baseGraphicString\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static blacklist createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .registers 2

    .line 143
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .registers 3

    .line 74
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    .registers 4

    .line 36
    if-eqz p0, :cond_68

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-eqz v0, :cond_7

    goto :goto_68

    .line 40
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1a

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 43
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-eqz v1, :cond_19

    .line 45
    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object v0

    .line 47
    :cond_19
    goto :goto_47

    .line 48
    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_47

    .line 52
    :try_start_1e
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_29

    return-object p0

    .line 54
    :catch_29
    move-exception p0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct object descriptor from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_47
    :goto_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_68
    :goto_68
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 3

    .line 126
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-nez v0, :cond_6

    .line 128
    const/4 p1, 0x0

    return p1

    .line 131
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 133
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    return p1
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 107
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 108
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->encodedLength(Z)I

    move-result p1

    return p1
.end method

.method public blacklist getBaseGraphicString()Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    .line 114
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_e

    move-object v1, p0

    goto :goto_13

    :cond_e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    :goto_13
    return-object v1
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    .line 121
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_e

    move-object v1, p0

    goto :goto_13

    :cond_e
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1GraphicString;)V

    :goto_13
    return-object v1
.end method
