.class public Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "HexEncoder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final blacklist decodingTable:[B

.field protected final blacklist encodingTable:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    .line 23
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    .line 48
    return-void

    :array_16
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static blacklist ignore(C)Z
    .registers 2

    .line 106
    const/16 v0, 0xa

    if-eq p0, v0, :cond_13

    const/16 v0, 0xd

    if-eq p0, v0, :cond_13

    const/16 v0, 0x9

    if-eq p0, v0, :cond_13

    const/16 v0, 0x20

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    nop

    .line 192
    const/16 v0, 0x24

    new-array v1, v0, [B

    .line 193
    nop

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 197
    :goto_a
    if-lez v2, :cond_1c

    .line 199
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v3

    if-nez v3, :cond_19

    .line 201
    goto :goto_1c

    .line 204
    :cond_19
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 207
    :cond_1c
    :goto_1c
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 208
    :goto_20
    if-ge v4, v2, :cond_74

    .line 210
    :goto_22
    if-ge v4, v2, :cond_31

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 215
    :cond_31
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v7, v4

    .line 217
    :goto_3b
    if-ge v8, v2, :cond_4a

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 219
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    .line 222
    :cond_4a
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v7, v7, v8

    .line 224
    or-int v8, v4, v7

    if-ltz v8, :cond_6c

    .line 229
    add-int/lit8 v8, v5, 0x1

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    .line 231
    if-ne v8, v0, :cond_67

    .line 233
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 234
    move v5, v3

    goto :goto_68

    .line 231
    :cond_67
    move v5, v8

    .line 237
    :goto_68
    add-int/lit8 v6, v6, 0x1

    move v4, v9

    goto :goto_20

    .line 226
    :cond_6c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid characters encountered in Hex string"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_74
    if-lez v5, :cond_79

    .line 242
    invoke-virtual {p2, v1, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 245
    :cond_79
    return v6
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    nop

    .line 124
    const/16 v0, 0x24

    new-array v1, v0, [B

    .line 125
    nop

    .line 127
    add-int/2addr p3, p2

    .line 129
    :goto_7
    if-le p3, p2, :cond_18

    .line 131
    add-int/lit8 v2, p3, -0x1

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_15

    .line 133
    goto :goto_18

    .line 136
    :cond_15
    add-int/lit8 p3, p3, -0x1

    goto :goto_7

    .line 139
    :cond_18
    :goto_18
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 140
    :goto_1b
    if-ge p2, p3, :cond_69

    .line 142
    :goto_1d
    if-ge p2, p3, :cond_2b

    aget-byte v5, p1, p2

    int-to-char v5, v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 144
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    .line 147
    :cond_2b
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v6, p2, 0x1

    aget-byte p2, p1, p2

    aget-byte p2, v5, p2

    .line 149
    :goto_33
    if-ge v6, p3, :cond_41

    aget-byte v5, p1, v6

    int-to-char v5, v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 151
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 154
    :cond_41
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p1, v6

    aget-byte v5, v5, v6

    .line 156
    or-int v6, p2, v5

    if-ltz v6, :cond_61

    .line 161
    add-int/lit8 v6, v3, 0x1

    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, v5

    int-to-byte p2, p2

    aput-byte p2, v1, v3

    .line 163
    if-ne v6, v0, :cond_5c

    .line 165
    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 166
    move v3, v2

    goto :goto_5d

    .line 163
    :cond_5c
    move v3, v6

    .line 168
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    move p2, v7

    goto :goto_1b

    .line 158
    :cond_61
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid characters encountered in Hex data"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_69
    if-lez v3, :cond_6e

    .line 173
    invoke-virtual {p4, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 176
    :cond_6e
    return v4
.end method

.method blacklist decodeStrict(Ljava/lang/String;II)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    if-eqz p1, :cond_52

    .line 254
    if-ltz p2, :cond_4a

    if-ltz p3, :cond_4a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_4a

    .line 258
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_42

    .line 263
    ushr-int/lit8 p3, p3, 0x1

    .line 264
    new-array v0, p3, [B

    .line 266
    nop

    .line 267
    const/4 v1, 0x0

    :goto_17
    if-ge v1, p3, :cond_41

    .line 269
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    aget-byte p2, v2, p2

    .line 270
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    .line 272
    shl-int/lit8 p2, p2, 0x4

    or-int/2addr p2, v2

    .line 273
    if-ltz p2, :cond_39

    .line 278
    int-to-byte p2, p2

    aput-byte p2, v0, v1

    .line 267
    add-int/lit8 v1, v1, 0x1

    move p2, v4

    goto :goto_17

    .line 275
    :cond_39
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid characters encountered in Hex string"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_41
    return-object v0

    .line 260
    :cond_42
    new-instance p1, Ljava/io/IOException;

    const-string p2, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_4a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "invalid offset and/or length specified"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_52
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'str\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    if-gez p3, :cond_4

    .line 87
    return v0

    .line 90
    :cond_4
    const/16 v1, 0x48

    new-array v6, v1, [B

    .line 91
    move v4, p2

    move p2, p3

    .line 92
    :goto_a
    if-lez p2, :cond_20

    .line 94
    const/16 v1, 0x24

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 95
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encode([BII[BI)I

    move-result p1

    .line 96
    invoke-virtual {p4, v6, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 97
    add-int/2addr v4, v5

    .line 98
    sub-int/2addr p2, v5

    .line 99
    move-object p1, v3

    goto :goto_a

    .line 100
    :cond_20
    mul-int/lit8 p3, p3, 0x2

    return p3
.end method

.method public blacklist encode([BII[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    nop

    .line 53
    add-int/2addr p3, p2

    .line 54
    move v0, p5

    .line 56
    :goto_3
    if-ge p2, p3, :cond_21

    .line 58
    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 60
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v4, p2, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, p4, v0

    .line 61
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    and-int/lit8 p2, p2, 0xf

    aget-byte p2, v3, p2

    aput-byte p2, p4, v2

    .line 62
    move p2, v1

    goto :goto_3

    .line 64
    :cond_21
    sub-int/2addr v0, p5

    return v0
.end method

.method public blacklist getEncodedLength(I)I
    .registers 2

    .line 69
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public blacklist getMaxDecodedLength(I)I
    .registers 2

    .line 74
    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    .line 27
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 29
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 32
    :cond_f
    nop

    :goto_10
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 34
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 37
    :cond_21
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x61

    aget-byte v1, v1, v2

    const/16 v2, 0x41

    aput-byte v1, v0, v2

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x62

    aget-byte v1, v1, v2

    const/16 v2, 0x42

    aput-byte v1, v0, v2

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x63

    aget-byte v1, v1, v2

    const/16 v2, 0x43

    aput-byte v1, v0, v2

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x64

    aget-byte v1, v1, v2

    const/16 v2, 0x44

    aput-byte v1, v0, v2

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x65

    aget-byte v1, v1, v2

    const/16 v2, 0x45

    aput-byte v1, v0, v2

    .line 42
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v2, 0x66

    aget-byte v1, v1, v2

    const/16 v2, 0x46

    aput-byte v1, v0, v2

    .line 43
    return-void
.end method
