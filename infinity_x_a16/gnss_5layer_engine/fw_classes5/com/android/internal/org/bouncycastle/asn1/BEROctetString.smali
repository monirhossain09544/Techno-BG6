.class public Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
.source "BEROctetString.java"


# static fields
.field private static final blacklist DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final blacklist elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field private final blacklist segmentLimit:I


# direct methods
.method public constructor blacklist <init>([B)V
    .registers 3

    .line 69
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 91
    return-void
.end method

.method private constructor blacklist <init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4

    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 108
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 109
    iput p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    .line 110
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3

    .line 80
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V
    .registers 4

    .line 102
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;-><init>([B[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;I)V

    .line 103
    return-void
.end method

.method static blacklist flattenOctetStrings([Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)[B
    .registers 8

    .line 34
    array-length v0, p0

    .line 35
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_30

    .line 43
    nop

    .line 44
    move v2, v1

    move v3, v2

    goto :goto_11

    .line 40
    :pswitch_9
    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object p0

    .line 38
    :pswitch_e
    sget-object p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->EMPTY_OCTETS:[B

    return-object p0

    .line 44
    :goto_11
    if-ge v2, v0, :cond_1c

    .line 46
    aget-object v4, p0, v2

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v4, v4

    add-int/2addr v3, v4

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 49
    :cond_1c
    new-array v2, v3, [B

    .line 50
    move v3, v1

    move v4, v3

    :goto_20
    if-ge v3, v0, :cond_2f

    .line 52
    aget-object v5, p0, v3

    iget-object v5, v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->string:[B

    .line 53
    array-length v6, v5

    invoke-static {v5, v1, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    array-length v5, v5

    add-int/2addr v4, v5

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 58
    :cond_2f
    return-object v2

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const/16 v0, 0x24

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 147
    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 149
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 151
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    goto :goto_2d

    .line 155
    :cond_15
    move p2, v0

    .line 156
    :goto_16
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    if-ge p2, v1, :cond_2d

    .line 158
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    sub-int/2addr v1, p2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 159
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    invoke-static {p1, v2, v3, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    .line 160
    add-int/2addr p2, v1

    .line 161
    goto :goto_16

    .line 164
    :cond_2d
    :goto_2d
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    .line 166
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_5

    :cond_4
    const/4 p1, 0x3

    .line 122
    :goto_5
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 124
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    array-length v2, v2

    if-ge v0, v2, :cond_38

    .line 126
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->elements:[Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->encodedLength(Z)I

    move-result v2

    add-int/2addr p1, v2

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 131
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v0, v0

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    div-int/2addr v0, v2

    .line 132
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr p1, v2

    .line 134
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    mul-int/2addr v0, v3

    sub-int/2addr v2, v0

    .line 135
    if-lez v2, :cond_38

    .line 137
    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v0

    add-int/2addr p1, v0

    .line 141
    :cond_38
    return p1
.end method
