.class public Lcom/android/internal/org/bouncycastle/asn1/DLSequence;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.source "DLSequence.java"


# instance fields
.field private blacklist contentsLength:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 20
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 13
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 13
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 38
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 13
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 47
    return-void
.end method

.method constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;Z)V

    .line 13
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 52
    return-void
.end method

.method private blacklist getContentsLength()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    if-gez v0, :cond_23

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 59
    nop

    .line 61
    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v1, v0, :cond_21

    .line 63
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 64
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v3

    add-int/2addr v2, v3

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 67
    :cond_21
    iput v2, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 70
    :cond_23
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    return v0
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lcom/android/internal/org/bouncycastle/asn1/DLOutputStream;

    move-result-object p2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    .line 93
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_44

    const/16 v1, 0x10

    if-le v0, v1, :cond_17

    goto :goto_44

    .line 104
    :cond_17
    nop

    .line 106
    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 107
    move v4, v2

    move v5, v4

    :goto_1c
    if-ge v4, v0, :cond_34

    .line 109
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 110
    aput-object v6, v1, v4

    .line 111
    invoke-virtual {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v6

    add-int/2addr v5, v6

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 114
    :cond_34
    iput v5, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->contentsLength:I

    .line 115
    invoke-virtual {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 117
    nop

    :goto_3a
    if-ge v2, v0, :cond_5c

    .line 119
    aget-object p1, v1, v2

    invoke-virtual {p2, p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 95
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    .line 97
    nop

    :goto_4c
    if-ge v2, v0, :cond_5c

    .line 99
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Z)V

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 122
    :cond_5c
    return-void
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result p1

    return p1
.end method

.method blacklist toASN1BitString()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .registers 4

    .line 126
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->getConstructedBitStrings()[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method blacklist toASN1External()Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    .registers 2

    .line 131
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DLSequence;)V

    return-object v0
.end method

.method blacklist toASN1OctetString()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 3

    .line 137
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->getConstructedOctetStrings()[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method blacklist toASN1Set()Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;
    .registers 4

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequence;->toArrayInternal()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLSet;-><init>(Z[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 147
    return-object p0
.end method
