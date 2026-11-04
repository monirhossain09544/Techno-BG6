.class Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
.super Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SHA1Digest"
.end annotation


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x14

.field private static final blacklist Y1:I = 0x5a827999

.field private static final blacklist Y2:I = 0x6ed9eba1

.field private static final blacklist Y3:I = -0x70e44324

.field private static final blacklist Y4:I = -0x359d3e2a


# instance fields
.field private blacklist H1:I

.field private blacklist H2:I

.field private blacklist H3:I

.field private blacklist H4:I

.field private blacklist H5:I

.field private blacklist X:[I

.field private blacklist xOff:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 179
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;-><init>()V

    .line 172
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    .line 181
    return-void
.end method

.method private blacklist f(III)I
    .registers 4

    .line 273
    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private blacklist g(III)I
    .registers 5

    .line 289
    and-int v0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private blacklist h(III)I
    .registers 4

    .line 281
    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->finish()V

    .line 229
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 230
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 231
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 232
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 233
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 235
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->reset()V

    .line 237
    const/16 p1, 0x14

    return p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 185
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 190
    const/16 v0, 0x14

    return v0
.end method

.method protected blacklist processBlock()V
    .registers 15

    .line 297
    const/16 v0, 0x10

    move v1, v0

    :goto_3
    const/16 v2, 0x50

    if-ge v1, v2, :cond_2e

    .line 299
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v3, v1, -0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v4, v1, -0x8

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v4, v1, -0xe

    aget v3, v3, v4

    xor-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v4, v1, -0x10

    aget v3, v3, v4

    xor-int/2addr v2, v3

    .line 300
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    shl-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v4

    aput v2, v3, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 306
    :cond_2e
    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 307
    iget v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 308
    iget v3, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 309
    iget v4, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 310
    iget v5, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 315
    nop

    .line 317
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_3c
    const/4 v9, 0x4

    if-ge v7, v9, :cond_bf

    .line 321
    shl-int/lit8 v9, v1, 0x5

    ushr-int/lit8 v10, v1, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v8, v10, v8

    add-int/2addr v9, v8

    const v8, 0x5a827999

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 322
    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    .line 324
    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v10, v5, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v4, v9

    .line 325
    shl-int/lit8 v9, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v9

    .line 327
    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v10, v4, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v5, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 328
    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    .line 330
    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v10, v3, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    .line 331
    shl-int/lit8 v9, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v9

    .line 333
    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v10, v2, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v1, v9

    .line 334
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v8

    .line 317
    add-int/lit8 v7, v7, 0x1

    move v8, v11

    goto/16 :goto_3c

    .line 340
    :cond_bf
    move v7, v6

    :goto_c0
    if-ge v7, v9, :cond_142

    .line 344
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v8, v11, v8

    add-int/2addr v10, v8

    const v8, 0x6ed9eba1

    add-int/2addr v10, v8

    add-int/2addr v5, v10

    .line 345
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    .line 347
    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v4, v10

    .line 348
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v10

    .line 350
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v5, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v3, v10

    .line 351
    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    .line 353
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v2, v10

    .line 354
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v10

    .line 356
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v1, v10

    .line 357
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v8

    .line 340
    add-int/lit8 v7, v7, 0x1

    move v8, v12

    goto/16 :goto_c0

    .line 363
    :cond_142
    move v7, v6

    :goto_143
    if-ge v7, v9, :cond_1c5

    .line 367
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v8, v11, v8

    add-int/2addr v10, v8

    const v8, -0x70e44324

    add-int/2addr v10, v8

    add-int/2addr v5, v10

    .line 368
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    .line 370
    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v11, v5, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v4, v10

    .line 371
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v10

    .line 373
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v5, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v3, v10

    .line 374
    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    .line 376
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v13, v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v2, v10

    .line 377
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v10

    .line 379
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v13, 0x1

    aget v11, v11, v13

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    add-int/2addr v1, v10

    .line 380
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v8

    .line 363
    add-int/lit8 v7, v7, 0x1

    move v8, v12

    goto/16 :goto_143

    .line 386
    :cond_1c5
    move v7, v6

    :goto_1c6
    const/4 v9, 0x3

    if-gt v7, v9, :cond_249

    .line 390
    shl-int/lit8 v9, v1, 0x5

    ushr-int/lit8 v10, v1, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v8, v10, v8

    add-int/2addr v9, v8

    const v8, -0x359d3e2a    # -3715189.5f

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    .line 391
    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    .line 393
    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v10, v5, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v4, v9

    .line 394
    shl-int/lit8 v9, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v9

    .line 396
    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v10, v4, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v5, v1, v2}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 397
    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    .line 399
    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v10, v3, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v4, v5, v1}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v12, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    .line 400
    shl-int/lit8 v9, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v9

    .line 402
    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v10, v2, 0x1b

    or-int/2addr v9, v10

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    add-int/lit8 v11, v12, 0x1

    aget v10, v10, v12

    add-int/2addr v9, v10

    add-int/2addr v9, v8

    add-int/2addr v1, v9

    .line 403
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v8

    .line 386
    add-int/lit8 v7, v7, 0x1

    move v8, v11

    goto/16 :goto_1c6

    .line 407
    :cond_249
    iget v7, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 408
    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 409
    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 410
    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 411
    iget v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 416
    iput v6, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    .line 417
    move v1, v6

    :goto_265
    if-ge v1, v0, :cond_26e

    .line 419
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    aput v6, v2, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_265

    .line 421
    :cond_26e
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 7

    .line 214
    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 220
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr p1, v1

    long-to-int p1, p1

    const/16 p2, 0xf

    aput p1, v0, p2

    .line 221
    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 6

    .line 199
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    .line 200
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 201
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 202
    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 203
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    iget v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    aput p1, p2, v0

    .line 205
    iget p1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    if-ne p1, v2, :cond_2f

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->processBlock()V

    .line 209
    :cond_2f
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 245
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;->reset()V

    .line 247
    const v0, 0x67452301

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H1:I

    .line 248
    const v0, -0x10325477

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H2:I

    .line 249
    const v0, -0x67452302

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H3:I

    .line 250
    const v0, 0x10325476

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H4:I

    .line 251
    const v0, -0x3c2d1e10

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->H5:I

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->xOff:I

    .line 254
    move v1, v0

    :goto_20
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_2c

    .line 256
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->X:[I

    aput v0, v2, v1

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 258
    :cond_2c
    return-void
.end method
