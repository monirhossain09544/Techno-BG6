.class public Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;
.super Ljava/lang/Object;
.source "Base32Encoder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;


# static fields
.field private static final blacklist DEAULT_ENCODING_TABLE:[B

.field private static final blacklist DEFAULT_PADDING:B = 0x3dt


# instance fields
.field private final blacklist decodingTable:[B

.field private final blacklist encodingTable:[B

.field private final blacklist padding:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->DEAULT_ENCODING_TABLE:[B

    return-void

    :array_a
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
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    .line 53
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->DEAULT_ENCODING_TABLE:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    .line 54
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->initialiseDecodingTable()V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>([BB)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    .line 67
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1a

    .line 72
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    .line 73
    iput-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->initialiseDecodingTable()V

    .line 76
    return-void

    .line 69
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoding table needs to be length 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist decodeLastBlock(Ljava/io/OutputStream;CCCCCCCC)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    const-string v1, "invalid characters encountered at end of base32 data"

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne p9, v0, :cond_ff

    .line 348
    iget-byte p9, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-eq p8, p9, :cond_5f

    .line 350
    iget-object p9, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p2, p9, p2

    .line 351
    iget-object p9, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p3, p9, p3

    .line 352
    iget-object p9, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p4, p9, p4

    .line 353
    iget-object p9, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p5, p9, p5

    .line 354
    iget-object p9, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p6, p9, p6

    .line 355
    iget-object p9, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p7, p9, p7

    .line 356
    iget-object p9, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p8, p9, p8

    .line 358
    or-int p9, p2, p3

    or-int/2addr p9, p4

    or-int/2addr p9, p5

    or-int/2addr p9, p6

    or-int/2addr p9, p7

    or-int/2addr p9, p8

    if-ltz p9, :cond_59

    .line 363
    shl-int/2addr p2, v5

    shr-int/lit8 p9, p3, 0x2

    or-int/2addr p2, p9

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 364
    shl-int/lit8 p2, p3, 0x6

    shl-int/lit8 p3, p4, 0x1

    or-int/2addr p2, p3

    shr-int/lit8 p3, p5, 0x4

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 365
    shl-int/lit8 p2, p5, 0x4

    shr-int/lit8 p3, p6, 0x1

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 366
    shl-int/lit8 p2, p6, 0x7

    shl-int/lit8 p3, p7, 0x2

    or-int/2addr p2, p3

    shr-int/lit8 p3, p8, 0x3

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 368
    return v2

    .line 360
    :cond_59
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_5f
    iget-byte p8, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-ne p7, p8, :cond_f9

    .line 375
    iget-byte p7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-eq p6, p7, :cond_a3

    .line 377
    iget-object p7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p2, p7, p2

    .line 378
    iget-object p7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p3, p7, p3

    .line 379
    iget-object p7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p4, p7, p4

    .line 380
    iget-object p7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p5, p7, p5

    .line 381
    iget-object p7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p6, p7, p6

    .line 383
    or-int p7, p2, p3

    or-int/2addr p7, p4

    or-int/2addr p7, p5

    or-int/2addr p7, p6

    if-ltz p7, :cond_9d

    .line 388
    shl-int/2addr p2, v5

    shr-int/lit8 p7, p3, 0x2

    or-int/2addr p2, p7

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 389
    shl-int/lit8 p2, p3, 0x6

    shl-int/lit8 p3, p4, 0x1

    or-int/2addr p2, p3

    shr-int/lit8 p3, p5, 0x4

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 390
    shl-int/lit8 p2, p5, 0x4

    shr-int/lit8 p3, p6, 0x1

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 392
    return v5

    .line 385
    :cond_9d
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_a3
    iget-byte p6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-eq p5, p6, :cond_d6

    .line 397
    iget-object p6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p2, p6, p2

    .line 398
    iget-object p6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p3, p6, p3

    .line 399
    iget-object p6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p4, p6, p4

    .line 400
    iget-object p6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p5, p6, p5

    .line 402
    or-int p6, p2, p3

    or-int/2addr p6, p4

    or-int/2addr p6, p5

    if-ltz p6, :cond_d0

    .line 407
    shl-int/2addr p2, v5

    shr-int/lit8 p6, p3, 0x2

    or-int/2addr p2, p6

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 408
    shl-int/lit8 p2, p3, 0x6

    shl-int/lit8 p3, p4, 0x1

    or-int/2addr p2, p3

    shr-int/lit8 p3, p5, 0x4

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 410
    return v4

    .line 404
    :cond_d0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 413
    :cond_d6
    iget-byte p5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-ne p4, p5, :cond_f3

    .line 418
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p2, p4, p2

    .line 419
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p3, p4, p3

    .line 421
    or-int p4, p2, p3

    if-ltz p4, :cond_ed

    .line 426
    shl-int/2addr p2, v5

    shr-int/2addr p3, v4

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 428
    return v3

    .line 423
    :cond_ed
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_f3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_f9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_ff
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p2, v0, p2

    .line 433
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p3, v0, p3

    .line 434
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p4, v0, p4

    .line 435
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p5, v0, p5

    .line 436
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p6, v0, p6

    .line 437
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p7, v0, p7

    .line 438
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p8, v0, p8

    .line 439
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte p9, v0, p9

    .line 441
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    or-int/2addr v0, p6

    or-int/2addr v0, p7

    or-int/2addr v0, p8

    or-int/2addr v0, p9

    if-ltz v0, :cond_156

    .line 446
    shl-int/2addr p2, v5

    shr-int/lit8 v0, p3, 0x2

    or-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 447
    shl-int/lit8 p2, p3, 0x6

    shl-int/lit8 p3, p4, 0x1

    or-int/2addr p2, p3

    shr-int/lit8 p3, p5, 0x4

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 448
    shl-int/lit8 p2, p5, 0x4

    shr-int/lit8 p3, p6, 0x1

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 449
    shl-int/lit8 p2, p6, 0x7

    shl-int/lit8 p3, p7, 0x2

    or-int/2addr p2, p3

    shr-int/lit8 p3, p8, 0x3

    or-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 450
    const/4 p2, 0x5

    shl-int/lit8 p3, p8, 0x5

    or-int/2addr p3, p9

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 452
    return p2

    .line 443
    :cond_156
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist encodeBlock([BI[BI)V
    .registers 11

    .line 131
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 132
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 133
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 134
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 135
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 137
    add-int/lit8 v3, p4, 0x1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v5, p2, 0x3

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, p3, p4

    .line 138
    add-int/lit8 p4, v3, 0x1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 p2, p2, 0x2

    ushr-int/lit8 v5, v0, 0x6

    or-int/2addr p2, v5

    and-int/lit8 p2, p2, 0x1f

    aget-byte p2, v4, p2

    aput-byte p2, p3, v3

    .line 139
    add-int/lit8 p2, p4, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v4, v0, 0x1

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 140
    add-int/lit8 p4, p2, 0x1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v4, v1, 0x4

    or-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x1f

    aget-byte v0, v3, v0

    aput-byte v0, p3, p2

    .line 141
    add-int/lit8 p2, p4, 0x1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    .line 142
    add-int/lit8 p4, p2, 0x1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v1, v2, 0x2

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p2

    .line 143
    add-int/lit8 p2, p4, 0x1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v1, v2, 0x3

    ushr-int/lit8 v2, p1, 0x5

    or-int/2addr v1, v2

    and-int/lit8 v1, v1, 0x1f

    aget-byte v0, v0, v1

    aput-byte v0, p3, p4

    .line 144
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    and-int/lit8 p1, p1, 0x1f

    aget-byte p1, p4, p1

    aput-byte p1, p3, p2

    .line 145
    return-void
.end method

.method private blacklist ignore(C)Z
    .registers 3

    .line 186
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

.method private blacklist nextI([BII)I
    .registers 5

    .line 317
    nop

    :goto_1
    if-ge p2, p3, :cond_f

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 319
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 321
    :cond_f
    return p2
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 336
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decode([BIILjava/io/OutputStream;)I

    move-result p1

    return p1
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/16 v4, 0x37

    new-array v5, v4, [B

    .line 204
    nop

    .line 205
    nop

    .line 207
    add-int v6, v2, p3

    .line 209
    :goto_10
    if-le v6, v2, :cond_21

    .line 211
    add-int/lit8 v7, v6, -0x1

    aget-byte v7, v1, v7

    int-to-char v7, v7

    invoke-direct {v0, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 213
    goto :goto_21

    .line 216
    :cond_1e
    add-int/lit8 v6, v6, -0x1

    goto :goto_10

    .line 220
    :cond_21
    :goto_21
    const/4 v7, 0x0

    if-nez v6, :cond_25

    .line 222
    return v7

    .line 225
    :cond_25
    nop

    .line 226
    move v8, v6

    move v9, v7

    .line 228
    :goto_28
    if-le v8, v2, :cond_3e

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3e

    .line 230
    add-int/lit8 v10, v8, -0x1

    aget-byte v10, v1, v10

    int-to-char v10, v10

    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v10

    if-nez v10, :cond_3b

    .line 232
    add-int/lit8 v9, v9, 0x1

    .line 235
    :cond_3b
    add-int/lit8 v8, v8, -0x1

    goto :goto_28

    .line 238
    :cond_3e
    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v2

    move v9, v7

    move v10, v9

    .line 240
    :goto_44
    if-ge v2, v8, :cond_10a

    .line 242
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v12, v2, 0x1

    aget-byte v2, v1, v2

    aget-byte v2, v11, v2

    .line 244
    invoke-direct {v0, v1, v12, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v11

    .line 246
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v1, v11

    aget-byte v11, v12, v11

    .line 248
    invoke-direct {v0, v1, v13, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v12

    .line 250
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v14, v12, 0x1

    aget-byte v12, v1, v12

    aget-byte v12, v13, v12

    .line 252
    invoke-direct {v0, v1, v14, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v13

    .line 254
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v15, v13, 0x1

    aget-byte v13, v1, v13

    aget-byte v13, v14, v13

    .line 256
    invoke-direct {v0, v1, v15, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v14

    .line 258
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v7, v14, 0x1

    aget-byte v14, v1, v14

    aget-byte v14, v15, v14

    .line 260
    invoke-direct {v0, v1, v7, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v7

    .line 262
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v4, v7, 0x1

    aget-byte v7, v1, v7

    aget-byte v7, v15, v7

    .line 264
    invoke-direct {v0, v1, v4, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v4

    .line 266
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    move/from16 p2, v2

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v1, v4

    aget-byte v4, v15, v4

    .line 268
    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v2

    .line 270
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    move/from16 v16, v2

    add-int/lit8 v2, v16, 0x1

    aget-byte v16, v1, v16

    aget-byte v15, v15, v16

    .line 272
    or-int v16, p2, v11

    or-int v16, v16, v12

    or-int v16, v16, v13

    or-int v16, v16, v14

    or-int v16, v16, v7

    or-int v16, v16, v4

    or-int v16, v16, v15

    if-ltz v16, :cond_102

    .line 277
    add-int/lit8 v16, v9, 0x1

    shl-int/lit8 v17, p2, 0x3

    shr-int/lit8 v18, v11, 0x2

    move/from16 p2, v4

    or-int v4, v17, v18

    int-to-byte v4, v4

    aput-byte v4, v5, v9

    .line 278
    add-int/lit8 v4, v16, 0x1

    shl-int/lit8 v9, v11, 0x6

    shl-int/lit8 v11, v12, 0x1

    or-int/2addr v9, v11

    shr-int/lit8 v11, v13, 0x4

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v16

    .line 279
    add-int/lit8 v9, v4, 0x1

    shl-int/lit8 v11, v13, 0x4

    shr-int/lit8 v12, v14, 0x1

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v4

    .line 280
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v11, v14, 0x7

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v11

    shr-int/lit8 v11, p2, 0x3

    or-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, v5, v9

    .line 281
    add-int/lit8 v7, v4, 0x1

    shl-int/lit8 v9, p2, 0x5

    or-int/2addr v9, v15

    int-to-byte v9, v9

    aput-byte v9, v5, v4

    .line 283
    const/16 v4, 0x37

    if-ne v7, v4, :cond_f8

    .line 285
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 286
    const/4 v9, 0x0

    goto :goto_f9

    .line 283
    :cond_f8
    move v9, v7

    .line 289
    :goto_f9
    add-int/lit8 v10, v10, 0x5

    .line 291
    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v2

    const/4 v7, 0x0

    goto/16 :goto_44

    .line 274
    :cond_102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base32 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_10a
    if-lez v9, :cond_110

    .line 296
    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 299
    :cond_110
    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v2

    .line 300
    add-int/lit8 v4, v2, 0x1

    invoke-direct {v0, v1, v4, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v4

    .line 301
    add-int/lit8 v5, v4, 0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v5

    .line 302
    add-int/lit8 v7, v5, 0x1

    invoke-direct {v0, v1, v7, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v7

    .line 303
    add-int/lit8 v8, v7, 0x1

    invoke-direct {v0, v1, v8, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v8

    .line 304
    add-int/lit8 v9, v8, 0x1

    invoke-direct {v0, v1, v9, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v9

    .line 305
    add-int/lit8 v11, v9, 0x1

    invoke-direct {v0, v1, v11, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v11

    .line 306
    add-int/lit8 v12, v11, 0x1

    invoke-direct {v0, v1, v12, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v6

    .line 308
    aget-byte v2, v1, v2

    int-to-char v2, v2

    aget-byte v4, v1, v4

    int-to-char v4, v4

    aget-byte v5, v1, v5

    int-to-char v5, v5

    aget-byte v7, v1, v7

    int-to-char v7, v7

    aget-byte v8, v1, v8

    int-to-char v8, v8

    aget-byte v9, v1, v9

    int-to-char v9, v9

    aget-byte v11, v1, v11

    int-to-char v11, v11

    aget-byte v1, v1, v6

    int-to-char v1, v1

    move v6, v9

    move v9, v1

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v7

    move v7, v6

    move v6, v8

    move v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCCCCCC)I

    move-result v0

    add-int/2addr v10, v0

    .line 312
    return v10
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    if-gez p3, :cond_4

    .line 167
    return v0

    .line 170
    :cond_4
    const/16 v1, 0x48

    new-array v6, v1, [B

    .line 171
    move v4, p2

    move p2, p3

    .line 172
    :goto_a
    if-lez p2, :cond_20

    .line 174
    const/16 v1, 0x2d

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 175
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encode([BII[BI)I

    move-result p1

    .line 176
    invoke-virtual {p4, v6, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 177
    add-int/2addr v4, v5

    .line 178
    sub-int/2addr p2, v5

    .line 179
    move-object p1, v3

    goto :goto_a

    .line 180
    :cond_20
    add-int/lit8 p3, p3, 0x2

    div-int/lit8 p3, p3, 0x3

    mul-int/lit8 p3, p3, 0x4

    return p3
.end method

.method public blacklist encode([BII[BI)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    nop

    .line 81
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x4

    .line 82
    move v1, p2

    move v2, p5

    .line 84
    :goto_7
    if-ge v1, v0, :cond_11

    .line 86
    invoke-direct {p0, p1, v1, p4, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodeBlock([BI[BI)V

    .line 87
    add-int/lit8 v1, v1, 0x5

    .line 88
    add-int/lit8 v2, v2, 0x8

    goto :goto_7

    .line 91
    :cond_11
    sub-int p2, v1, p2

    sub-int/2addr p3, p2

    .line 92
    if-lez p3, :cond_7e

    .line 94
    const/4 p2, 0x5

    new-array p2, p2, [B

    .line 95
    const/4 v0, 0x0

    invoke-static {p1, v1, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-direct {p0, p2, v0, p4, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodeBlock([BI[BI)V

    .line 97
    packed-switch p3, :pswitch_data_80

    goto :goto_7c

    .line 119
    :pswitch_24
    add-int/lit8 p1, v2, 0x7

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    goto :goto_7c

    .line 114
    :pswitch_2b
    add-int/lit8 p1, v2, 0x5

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 115
    add-int/lit8 p1, v2, 0x6

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 116
    add-int/lit8 p1, v2, 0x7

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 117
    goto :goto_7c

    .line 108
    :pswitch_3e
    add-int/lit8 p1, v2, 0x4

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 109
    add-int/lit8 p1, v2, 0x5

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 110
    add-int/lit8 p1, v2, 0x6

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 111
    add-int/lit8 p1, v2, 0x7

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 112
    goto :goto_7c

    .line 100
    :pswitch_57
    add-int/lit8 p1, v2, 0x2

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 101
    add-int/lit8 p1, v2, 0x3

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 102
    add-int/lit8 p1, v2, 0x4

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 103
    add-int/lit8 p1, v2, 0x5

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 104
    add-int/lit8 p1, v2, 0x6

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 105
    add-int/lit8 p1, v2, 0x7

    iget-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte p2, p4, p1

    .line 106
    nop

    .line 123
    :goto_7c
    add-int/lit8 v2, v2, 0x8

    .line 126
    :cond_7e
    sub-int/2addr v2, p5

    return v2

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_57
        :pswitch_3e
        :pswitch_2b
        :pswitch_24
    .end packed-switch
.end method

.method public blacklist getEncodedLength(I)I
    .registers 2

    .line 149
    add-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public blacklist getMaxDecodedLength(I)I
    .registers 2

    .line 154
    div-int/lit8 p1, p1, 0x8

    mul-int/lit8 p1, p1, 0x5

    return p1
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    .line 37
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 39
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 42
    :cond_f
    nop

    :goto_10
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 44
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 46
    :cond_21
    return-void
.end method
