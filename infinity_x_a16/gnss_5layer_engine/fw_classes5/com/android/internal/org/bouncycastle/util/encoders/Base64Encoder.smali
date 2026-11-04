.class public Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final blacklist decodingTable:[B

.field protected final blacklist encodingTable:[B

.field protected blacklist padding:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 30
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    .line 35
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    .line 53
    return-void

    :array_1a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2bt
        0x2ft
    .end array-data
.end method

.method private blacklist decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const-string v1, "invalid characters encountered at end of base64 data"

    const/4 v2, 0x2

    if-ne p4, v0, :cond_2c

    .line 360
    iget-byte p4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p5, p4, :cond_26

    .line 365
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p2, p4, p2

    .line 366
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p3, p4, p3

    .line 368
    or-int p4, p2, p3

    if-ltz p4, :cond_20

    .line 373
    shl-int/2addr p2, v2

    shr-int/lit8 p3, p3, 0x4

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 375
    const/4 p1, 0x1

    return p1

    .line 370
    :cond_20
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_26
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    :cond_2c
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p5, v0, :cond_57

    .line 379
    iget-object p5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p2, p5, p2

    .line 380
    iget-object p5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p3, p5, p3

    .line 381
    iget-object p5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p4, p5, p4

    .line 383
    or-int p5, p2, p3

    or-int/2addr p5, p4

    if-ltz p5, :cond_51

    .line 388
    shl-int/2addr p2, v2

    shr-int/lit8 p5, p3, 0x4

    or-int/2addr p2, p5

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 389
    shl-int/lit8 p2, p3, 0x4

    shr-int/lit8 p3, p4, 0x2

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 391
    return v2

    .line 385
    :cond_51
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p2, v0, p2

    .line 396
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p3, v0, p3

    .line 397
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p4, v0, p4

    .line 398
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p5, v0, p5

    .line 400
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    if-ltz v0, :cond_84

    .line 405
    shl-int/2addr p2, v2

    shr-int/lit8 v0, p3, 0x4

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 406
    shl-int/lit8 p2, p3, 0x4

    shr-int/lit8 p3, p4, 0x2

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 407
    shl-int/lit8 p2, p4, 0x6

    or-int/2addr p2, p5

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 409
    const/4 p1, 0x3

    return p1

    .line 402
    :cond_84
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist ignore(C)Z
    .registers 3

    .line 140
    const/16 v0, 0xa

    if-eq p1, v0, :cond_13

    const/16 v0, 0xd

    if-eq p1, v0, :cond_13

    const/16 v0, 0x9

    if-eq p1, v0, :cond_13

    const/16 v0, 0x20

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private blacklist nextI(Ljava/lang/String;II)I
    .registers 5

    .line 415
    nop

    :goto_1
    if-ge p2, p3, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 417
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 419
    :cond_10
    return p2
.end method

.method private blacklist nextI([BII)I
    .registers 5

    .line 247
    nop

    :goto_1
    if-ge p2, p3, :cond_f

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 251
    :cond_f
    return p2
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x36

    new-array v4, v3, [B

    .line 267
    nop

    .line 268
    nop

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 272
    :goto_10
    if-lez v5, :cond_22

    .line 274
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 276
    goto :goto_22

    .line 279
    :cond_1f
    add-int/lit8 v5, v5, -0x1

    goto :goto_10

    .line 283
    :cond_22
    :goto_22
    const/4 v6, 0x0

    if-nez v5, :cond_26

    .line 285
    return v6

    .line 288
    :cond_26
    nop

    .line 289
    move v7, v5

    move v8, v6

    .line 291
    :goto_29
    if-lez v7, :cond_3f

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3f

    .line 293
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {v0, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v9

    if-nez v9, :cond_3c

    .line 295
    add-int/lit8 v8, v8, 0x1

    .line 298
    :cond_3c
    add-int/lit8 v7, v7, -0x1

    goto :goto_29

    .line 301
    :cond_3f
    invoke-direct {v0, v1, v6, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v8

    move v9, v6

    move v10, v9

    .line 303
    :goto_45
    if-ge v8, v7, :cond_b3

    .line 305
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v8, v11, v8

    .line 307
    invoke-direct {v0, v1, v12, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v11

    .line 309
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget-byte v11, v12, v11

    .line 311
    invoke-direct {v0, v1, v13, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v12

    .line 313
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget-byte v12, v13, v12

    .line 315
    invoke-direct {v0, v1, v14, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v13

    .line 317
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget-byte v13, v14, v13

    .line 319
    or-int v14, v8, v11

    or-int/2addr v14, v12

    or-int/2addr v14, v13

    if-ltz v14, :cond_ab

    .line 324
    add-int/lit8 v14, v9, 0x1

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v16, v11, 0x4

    or-int v8, v8, v16

    int-to-byte v8, v8

    aput-byte v8, v4, v9

    .line 325
    add-int/lit8 v8, v14, 0x1

    shl-int/lit8 v9, v11, 0x4

    shr-int/lit8 v11, v12, 0x2

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v4, v14

    .line 326
    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v11, v12, 0x6

    or-int/2addr v11, v13

    int-to-byte v11, v11

    aput-byte v11, v4, v8

    .line 328
    add-int/lit8 v10, v10, 0x3

    .line 329
    if-ne v9, v3, :cond_a6

    .line 331
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 332
    move v9, v6

    .line 335
    :cond_a6
    invoke-direct {v0, v1, v15, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v8

    goto :goto_45

    .line 321
    :cond_ab
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_b3
    if-lez v9, :cond_b8

    .line 340
    invoke-virtual {v2, v4, v6, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 343
    :cond_b8
    invoke-direct {v0, v1, v8, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    .line 344
    add-int/lit8 v4, v3, 0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v4

    .line 345
    add-int/lit8 v6, v4, 0x1

    invoke-direct {v0, v1, v6, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v6

    .line 346
    add-int/lit8 v7, v6, 0x1

    invoke-direct {v0, v1, v7, v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v5

    .line 348
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v10, v0

    .line 350
    return v10
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/16 v4, 0x36

    new-array v5, v4, [B

    .line 158
    nop

    .line 159
    nop

    .line 161
    add-int v6, v2, p3

    .line 163
    :goto_10
    if-le v6, v2, :cond_21

    .line 165
    add-int/lit8 v7, v6, -0x1

    aget-byte v7, v1, v7

    int-to-char v7, v7

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 167
    goto :goto_21

    .line 170
    :cond_1e
    add-int/lit8 v6, v6, -0x1

    goto :goto_10

    .line 174
    :cond_21
    :goto_21
    const/4 v7, 0x0

    if-nez v6, :cond_25

    .line 176
    return v7

    .line 179
    :cond_25
    nop

    .line 180
    move v8, v6

    move v9, v7

    .line 182
    :goto_28
    if-le v8, v2, :cond_3d

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3d

    .line 184
    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v1, v10

    int-to-char v10, v10

    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v10

    if-nez v10, :cond_3a

    .line 186
    add-int/lit8 v9, v9, 0x1

    .line 189
    :cond_3a
    add-int/lit8 v8, v8, -0x1

    goto :goto_28

    .line 192
    :cond_3d
    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    move v9, v7

    move v10, v9

    .line 194
    :goto_43
    if-ge v2, v8, :cond_a9

    .line 196
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v12, v2, 0x1

    aget-byte v2, v1, v2

    aget-byte v2, v11, v2

    .line 198
    invoke-direct {v0, v1, v12, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v11

    .line 200
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v1, v11

    aget-byte v11, v12, v11

    .line 202
    invoke-direct {v0, v1, v13, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v12

    .line 204
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v12, 0x1

    aget-byte v12, v1, v12

    aget-byte v12, v13, v12

    .line 206
    invoke-direct {v0, v1, v14, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v13

    .line 208
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v13, 0x1

    aget-byte v13, v1, v13

    aget-byte v13, v14, v13

    .line 210
    or-int v14, v2, v11

    or-int/2addr v14, v12

    or-int/2addr v14, v13

    if-ltz v14, :cond_a1

    .line 215
    add-int/lit8 v14, v9, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v16, v11, 0x4

    or-int v2, v2, v16

    int-to-byte v2, v2

    aput-byte v2, v5, v9

    .line 216
    add-int/lit8 v2, v14, 0x1

    shl-int/lit8 v9, v11, 0x4

    shr-int/lit8 v11, v12, 0x2

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v14

    .line 217
    add-int/lit8 v9, v2, 0x1

    shl-int/lit8 v11, v12, 0x6

    or-int/2addr v11, v13

    int-to-byte v11, v11

    aput-byte v11, v5, v2

    .line 219
    if-ne v9, v4, :cond_9a

    .line 221
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 222
    move v9, v7

    .line 225
    :cond_9a
    add-int/lit8 v10, v10, 0x3

    .line 227
    invoke-direct {v0, v1, v15, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    goto :goto_43

    .line 212
    :cond_a1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_a9
    if-lez v9, :cond_ae

    .line 232
    invoke-virtual {v3, v5, v7, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 235
    :cond_ae
    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    .line 236
    add-int/lit8 v4, v2, 0x1

    invoke-direct {v0, v1, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v4

    .line 237
    add-int/lit8 v5, v4, 0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v5

    .line 238
    add-int/lit8 v7, v5, 0x1

    invoke-direct {v0, v1, v7, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v6

    .line 240
    aget-byte v2, v1, v2

    int-to-char v2, v2

    aget-byte v4, v1, v4

    int-to-char v4, v4

    aget-byte v5, v1, v5

    int-to-char v5, v5

    aget-byte v1, v1, v6

    int-to-char v1, v1

    move/from16 v17, v5

    move v5, v1

    move-object v1, v3

    move v3, v4

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v10, v0

    .line 242
    return v10
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    if-gez p3, :cond_4

    .line 121
    return v0

    .line 124
    :cond_4
    const/16 v1, 0x48

    new-array v6, v1, [B

    .line 125
    move v4, p2

    move p2, p3

    .line 126
    :goto_a
    if-lez p2, :cond_20

    .line 128
    const/16 v1, 0x36

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 129
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encode([BII[BI)I

    move-result p1

    .line 130
    invoke-virtual {p4, v6, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 131
    add-int/2addr v4, v5

    .line 132
    sub-int/2addr p2, v5

    .line 133
    move-object p1, v3

    goto :goto_a

    .line 134
    :cond_20
    add-int/lit8 p3, p3, 0x2

    div-int/lit8 p3, p3, 0x3

    mul-int/lit8 p3, p3, 0x4

    return p3
.end method

.method public blacklist encode([BII[BI)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    nop

    .line 58
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x2

    .line 59
    move v1, p2

    move v2, p5

    .line 61
    :goto_7
    if-ge v1, v0, :cond_4f

    .line 63
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p1, v1

    .line 64
    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 65
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 67
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v8, v1, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, p4, v2

    .line 68
    add-int/lit8 v2, v6, 0x1

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v8, v3, 0x4

    or-int/2addr v1, v8

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v7, v1

    aput-byte v1, p4, v6

    .line 69
    add-int/lit8 v1, v2, 0x1

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v7, v4, 0x6

    or-int/2addr v3, v7

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, p4, v2

    .line 70
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, p4, v1

    .line 71
    move v1, v5

    goto :goto_7

    .line 73
    :cond_4f
    sub-int p2, v1, p2

    sub-int/2addr p3, p2

    packed-switch p3, :pswitch_data_ba

    goto :goto_b7

    .line 87
    :pswitch_56
    add-int/lit8 p2, v1, 0x1

    aget-byte p3, p1, v1

    and-int/lit16 p3, p3, 0xff

    .line 88
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 90
    add-int/lit8 p2, v2, 0x1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v1, p3, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v0, v0, v1

    aput-byte v0, p4, v2

    .line 91
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 p3, p3, 0x4

    ushr-int/lit8 v2, p1, 0x4

    or-int/2addr p3, v2

    and-int/lit8 p3, p3, 0x3f

    aget-byte p3, v1, p3

    aput-byte p3, p4, p2

    .line 92
    add-int/lit8 p2, v0, 0x1

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x3f

    aget-byte p1, p3, p1

    aput-byte p1, p4, v0

    .line 93
    add-int/lit8 v2, p2, 0x1

    iget-byte p1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte p1, p4, p2

    .line 94
    goto :goto_b7

    .line 77
    :pswitch_8e
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 79
    add-int/lit8 p2, v2, 0x1

    iget-object p3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v0, p1, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-byte p3, p3, v0

    aput-byte p3, p4, v2

    .line 80
    add-int/lit8 p3, p2, 0x1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0x3f

    aget-byte p1, v0, p1

    aput-byte p1, p4, p2

    .line 81
    add-int/lit8 p1, p3, 0x1

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte p2, p4, p3

    .line 82
    add-int/lit8 v2, p1, 0x1

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 83
    nop

    .line 98
    :goto_b7
    sub-int/2addr v2, p5

    return v2

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist getEncodedLength(I)I
    .registers 2

    .line 103
    add-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public blacklist getMaxDecodedLength(I)I
    .registers 2

    .line 108
    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x3

    return p1
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    .line 39
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 41
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 44
    :cond_f
    nop

    :goto_10
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 46
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 48
    :cond_21
    return-void
.end method
