.class public Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.super Ljava/lang/Object;
.source "GCMSIVBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;,
        Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;
    }
.end annotation


# static fields
.field private static final blacklist ADD:B = -0x1ft

.field private static final blacklist AEAD_COMPLETE:I = 0x2

.field private static final blacklist BUFLEN:I = 0x10

.field private static final blacklist HALFBUFLEN:I = 0x8

.field private static final blacklist INIT:I = 0x1

.field private static final blacklist MASK:B = -0x80t

.field private static final blacklist MAX_DATALEN:I = 0x7fffffe7

.field private static final blacklist NONCELEN:I = 0xc


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist macBlock:[B

.field private final blacklist theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private final blacklist theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private final blacklist theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private blacklist theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private blacklist theFlags:I

.field private final blacklist theGHash:[B

.field private blacklist theInitialAEAD:[B

.field private final blacklist theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private blacklist theNonce:[B

.field private blacklist thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private final blacklist theReverse:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgHASH(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfillReverse([BII[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 147
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;->newInstance()Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 148
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 156
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 157
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .registers 5

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    .line 97
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    .line 140
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    .line 168
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-ne v1, v0, :cond_2b

    .line 174
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 175
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 178
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    .line 179
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-direct {p1, p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    .line 180
    return-void

    .line 170
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cipher required with a block size of 16."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist bufLength([B)I
    .registers 1

    .line 480
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    array-length p0, p0

    :goto_5
    return p0
.end method

.method private blacklist calculateTag()[B
    .registers 7

    .line 612
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    .line 613
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->completePolyVal()[B

    move-result-object v0

    .line 616
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 619
    const/4 v2, 0x0

    move v3, v2

    :goto_f
    const/16 v4, 0xc

    if-ge v3, v4, :cond_20

    .line 621
    aget-byte v4, v0, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    aget-byte v5, v5, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 619
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 625
    :cond_20
    const/16 v3, 0xf

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, -0x81

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 628
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v0, v2, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 629
    return-object v1
.end method

.method private blacklist checkAEADStatus(I)V
    .registers 8

    .line 250
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    .line 256
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_28

    .line 262
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    const v4, 0x7fffffe7

    sub-int/2addr v4, p1

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long p1, v0, v4

    if-gtz p1, :cond_20

    .line 267
    return-void

    .line 265
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AEAD byte count exceeded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AEAD data cannot be processed after ordinary data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cipher is not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist checkBuffer([BIIZ)V
    .registers 5

    .line 496
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->bufLength([B)I

    move-result p0

    .line 497
    add-int v0, p1, p2

    .line 500
    if-ltz p2, :cond_f

    if-ltz p1, :cond_f

    if-gez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    .line 501
    :goto_10
    if-nez p1, :cond_16

    if-le v0, p0, :cond_15

    goto :goto_16

    .line 507
    :cond_15
    return-void

    .line 503
    :cond_16
    :goto_16
    if-eqz p3, :cond_20

    .line 504
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "Output buffer too short."

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_27

    .line 505
    :cond_20
    new-instance p0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short."

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    :goto_27
    throw p0
.end method

.method private blacklist checkStatus(I)V
    .registers 10

    .line 276
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_45

    .line 282
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_17

    .line 284
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    .line 285
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 289
    :cond_17
    nop

    .line 290
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    int-to-long v0, v0

    .line 291
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-nez v2, :cond_2f

    .line 293
    nop

    .line 294
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x7ffffff7

    goto :goto_32

    .line 291
    :cond_2f
    const-wide/32 v2, 0x7fffffe7

    .line 296
    :goto_32
    const-wide/high16 v4, -0x8000000000000000L

    add-long/2addr v0, v4

    int-to-long v6, p1

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_3d

    .line 301
    return-void

    .line 299
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "byte count exceeded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cipher is not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist completePolyVal()[B
    .registers 5

    .line 639
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 640
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHashLengths()V

    .line 641
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    .line 642
    return-object v1
.end method

.method private blacklist decryptPlain()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    .line 559
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v1

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    .line 562
    if-ltz v1, :cond_64

    .line 568
    add-int/lit8 v3, v1, 0x10

    invoke-static {v0, v1, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 569
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    .line 570
    const/16 v5, 0xf

    aget-byte v6, v4, v5

    or-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 571
    new-array v5, v2, [B

    .line 572
    const/4 v6, 0x0

    move v7, v6

    .line 575
    :goto_28
    if-lez v1, :cond_46

    .line 578
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v8, v4, v6, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 581
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 582
    invoke-static {v5, v0, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    .line 585
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v9, v5, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 586
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v9, v5, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 589
    sub-int/2addr v1, v8

    .line 590
    add-int/2addr v7, v8

    .line 591
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    .line 592
    goto :goto_28

    .line 595
    :cond_46
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v0

    .line 596
    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 602
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length v2, v2

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    return-void

    .line 598
    :cond_59
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->reset()V

    .line 599
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check failed"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_64
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Data too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist deriveKeys(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;)V
    .registers 12

    .line 768
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 769
    new-array v2, v0, [B

    .line 770
    new-array v3, v0, [B

    .line 771
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v4

    new-array v5, v4, [B

    .line 774
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    const/4 v7, 0x4

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static {v6, v9, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 775
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v7, 0x1

    invoke-interface {v6, v7, p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 778
    nop

    .line 779
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 780
    const/16 p1, 0x8

    invoke-static {v2, v9, v3, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    .line 782
    nop

    .line 783
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 784
    invoke-static {v2, v9, v3, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    .line 788
    nop

    .line 789
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 790
    invoke-static {v2, v9, v5, v9, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    aget-byte v6, v1, v9

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    .line 792
    nop

    .line 793
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 794
    invoke-static {v2, v9, v5, p1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    const/16 v6, 0x20

    if-ne v4, v6, :cond_79

    .line 800
    aget-byte v4, v1, v9

    add-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    .line 801
    nop

    .line 802
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 803
    invoke-static {v2, v9, v5, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 804
    aget-byte v4, v1, v9

    add-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v1, v9

    .line 805
    nop

    .line 806
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v1, v9, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 807
    const/16 v1, 0x18

    invoke-static {v2, v9, v5, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    :cond_79
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p1, v7, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 814
    invoke-static {v3, v9, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    .line 815
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->mulX([B)V

    .line 816
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {p1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 817
    iget p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/2addr p1, v7

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 818
    return-void
.end method

.method private blacklist encryptPlain([B[BI)I
    .registers 12

    .line 521
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v0

    .line 522
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    .line 523
    const/16 v1, 0xf

    aget-byte v2, p1, v1

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 524
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 525
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v3

    .line 526
    const/4 v4, 0x0

    move v5, v4

    .line 529
    :goto_1f
    if-lez v3, :cond_38

    .line 532
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, p1, v4, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 535
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 536
    invoke-static {v2, v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    .line 539
    add-int v7, p3, v5

    invoke-static {v2, v4, p2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    sub-int/2addr v3, v6

    .line 543
    add-int/2addr v5, v6

    .line 544
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    .line 545
    goto :goto_1f

    .line 548
    :cond_38
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result p1

    return p1
.end method

.method private static blacklist fillReverse([BII[B)V
    .registers 7

    .line 682
    const/4 v0, 0x0

    const/16 v1, 0xf

    :goto_3
    if-ge v0, p2, :cond_10

    .line 685
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p3, v1

    .line 682
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 687
    :cond_10
    return-void
.end method

.method private blacklist gHASH([B)V
    .registers 3

    .line 665
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[B)V

    .line 666
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-interface {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 667
    return-void
.end method

.method private blacklist gHashLengths()V
    .registers 7

    .line 651
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 652
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v1

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const/4 v5, 0x0

    invoke-static {v1, v2, v0, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 653
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v1

    mul-long/2addr v1, v3

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 656
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    .line 657
    return-void
.end method

.method private static blacklist incrementCounter([B)V
    .registers 3

    .line 730
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    .line 732
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_e

    .line 734
    goto :goto_11

    .line 730
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 737
    :cond_11
    :goto_11
    return-void
.end method

.method private static blacklist mulX([B)V
    .registers 6

    .line 746
    nop

    .line 747
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    const/16 v3, 0x10

    if-ge v1, v3, :cond_1d

    .line 749
    aget-byte v3, p0, v1

    .line 750
    shr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 751
    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_18

    move v2, v0

    goto :goto_1a

    :cond_18
    const/16 v2, -0x80

    .line 747
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 755
    :cond_1d
    if-eqz v2, :cond_26

    .line 757
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, -0x1f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 759
    :cond_26
    return-void
.end method

.method private blacklist resetStreams()V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    if-eqz v0, :cond_9

    .line 453
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->clearBuffer()V

    .line 457
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    .line 458
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    .line 461
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    .line 462
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    goto :goto_25

    :cond_20
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    :goto_25
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    .line 465
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    .line 466
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 467
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    if-eqz v0, :cond_41

    .line 469
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 471
    :cond_41
    return-void
.end method

.method private static blacklist xorBlock([B[B)V
    .registers 5

    .line 698
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_10

    .line 700
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 702
    :cond_10
    return-void
.end method

.method private static blacklist xorBlock([B[BII)V
    .registers 7

    .line 717
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_10

    .line 719
    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 721
    :cond_10
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->getOutputSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 385
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_31

    .line 388
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v1

    .line 391
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->encryptPlain([B[BI)I

    move-result v2

    const/16 v3, 0x10

    add-int/2addr v2, v3

    .line 394
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v4

    add-int/2addr p2, v4

    invoke-static {v1, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length p2, p2

    invoke-static {v1, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 400
    return v2

    .line 407
    :cond_31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->decryptPlain()V

    .line 410
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v1

    .line 411
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v2

    .line 412
    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 416
    return v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-GCM-SIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMac()[B
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 4

    .line 432
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_f

    .line 434
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    return p1

    .line 436
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/2addr p1, v0

    .line 437
    if-le p1, v1, :cond_1a

    sub-int/2addr p1, v1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 2

    .line 427
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 191
    nop

    .line 192
    nop

    .line 193
    nop

    .line 196
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_16

    .line 198
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 199
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    .line 200
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    .line 201
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object p2

    .line 202
    goto :goto_27

    .line 203
    :cond_16
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_5d

    .line 205
    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 206
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 207
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 208
    const/4 v0, 0x0

    .line 215
    :goto_27
    if-eqz v1, :cond_55

    array-length v2, v1

    const/16 v3, 0xc

    if-ne v2, v3, :cond_55

    .line 221
    if-eqz p2, :cond_4d

    .line 222
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_40

    .line 223
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4d

    .line 229
    :cond_40
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    .line 230
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    .line 231
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    .line 234
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->deriveKeys(Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;)V

    .line 235
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 236
    return-void

    .line 225
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid nonce"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameters passed to GCM-SIV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist processAADByte(B)V
    .registers 3

    .line 306
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    .line 310
    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .registers 5

    .line 317
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    .line 320
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 324
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 331
    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 334
    iget-boolean p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz p2, :cond_13

    .line 336
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    .line 337
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    goto :goto_18

    .line 341
    :cond_13
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    .line 345
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    .line 358
    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    .line 361
    iget-boolean p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz p5, :cond_16

    .line 363
    iget-object p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p5, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 364
    iget-object p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {p5, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    goto :goto_1b

    .line 368
    :cond_16
    iget-object p5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {p5, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    .line 372
    :goto_1b
    return p4
.end method

.method public blacklist reset()V
    .registers 1

    .line 442
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    .line 443
    return-void
.end method
