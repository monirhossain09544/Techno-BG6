.class public Lcom/android/internal/org/bouncycastle/asn1/BERBitString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
.source "BERBitString.java"


# static fields
.field private static final blacklist DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

.field private final blacklist segmentLimit:I


# direct methods
.method public constructor blacklist <init>(BI)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    .line 75
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 76
    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([BI)V

    .line 94
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([BI)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4

    .line 81
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([BII)V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 4

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    .line 87
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 88
    iput p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 89
    return-void
.end method

.method constructor blacklist <init>([BZ)V
    .registers 3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 111
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 112
    const/16 p1, 0x3e8

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 113
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)V
    .registers 3

    .line 98
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;I)V

    .line 99
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;I)V
    .registers 5

    .line 103
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    .line 104
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    .line 105
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    .line 106
    return-void
.end method

.method static blacklist flattenBitStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;)[B
    .registers 9

    .line 22
    array-length v0, p0

    .line 23
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_4c

    .line 32
    add-int/lit8 v3, v0, -0x1

    .line 33
    move v4, v2

    move v5, v4

    goto :goto_15

    .line 29
    :pswitch_b
    aget-object p0, p0, v2

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-object p0

    .line 27
    :pswitch_10
    new-array p0, v1, [B

    aput-byte v2, p0, v2

    return-object p0

    .line 33
    :goto_15
    if-ge v4, v3, :cond_2d

    .line 35
    aget-object v6, p0, v4

    iget-object v6, v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 36
    aget-byte v7, v6, v2

    if-nez v7, :cond_25

    .line 41
    array-length v6, v6

    sub-int/2addr v6, v1

    add-int/2addr v5, v6

    .line 33
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 38
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_2d
    aget-object v3, p0, v3

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 46
    aget-byte v4, v3, v2

    .line 47
    array-length v3, v3

    add-int/2addr v5, v3

    .line 49
    new-array v3, v5, [B

    .line 50
    aput-byte v4, v3, v2

    .line 52
    nop

    .line 53
    move v4, v1

    :goto_3b
    if-ge v2, v0, :cond_4a

    .line 55
    aget-object v5, p0, v2

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->contents:[B

    .line 56
    array-length v6, v5

    sub-int/2addr v6, v1

    .line 57
    invoke-static {v5, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    add-int/2addr v4, v6

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 62
    :cond_4a
    return-object v3

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v2, v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 158
    return-void

    .line 161
    :cond_10
    const/16 v0, 0x23

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 162
    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 164
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-eqz p2, :cond_25

    .line 166
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    move-object v2, p1

    goto :goto_54

    .line 168
    :cond_25
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length p2, p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_2d

    move-object v2, p1

    goto :goto_54

    .line 174
    :cond_2d
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    aget-byte v4, p2, v1

    .line 175
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length p2, p2

    .line 176
    add-int/lit8 v0, p2, -0x1

    .line 177
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v10, v2, -0x1

    .line 179
    :goto_3a
    if-le v0, v10, :cond_4a

    .line 181
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    sub-int v9, p2, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    .line 182
    move-object v2, v5

    sub-int/2addr v0, v10

    move-object p1, v2

    goto :goto_3a

    .line 185
    :cond_4a
    move-object v2, p1

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    sub-int v6, p2, v0

    const/4 v3, 0x1

    move v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    .line 188
    :goto_54
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 189
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 190
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    if-le v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 125
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result p1

    return p1

    .line 128
    :cond_e
    if-eqz p1, :cond_12

    const/4 p1, 0x4

    goto :goto_13

    :cond_12
    const/4 p1, 0x3

    .line 130
    :goto_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    .line 132
    const/4 v0, 0x0

    :goto_19
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    array-length v2, v2

    if-ge v0, v2, :cond_4e

    .line 134
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->encodedLength(Z)I

    move-result v2

    add-int/2addr p1, v2

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 137
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_31

    goto :goto_4e

    .line 143
    :cond_31
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    sub-int/2addr v2, v1

    div-int/2addr v0, v2

    .line 144
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr p1, v2

    .line 146
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERBitString;->segmentLimit:I

    sub-int/2addr v3, v1

    mul-int/2addr v0, v3

    sub-int/2addr v2, v0

    .line 147
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v0

    add-int/2addr p1, v0

    .line 150
    :cond_4e
    :goto_4e
    return p1
.end method
