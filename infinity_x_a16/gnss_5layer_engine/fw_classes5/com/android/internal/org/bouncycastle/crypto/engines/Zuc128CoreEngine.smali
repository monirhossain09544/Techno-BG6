.class public Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;
.super Ljava/lang/Object;
.source "Zuc128CoreEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;
.implements Lcom/android/internal/org/bouncycastle/util/Memoable;


# static fields
.field private static final blacklist EK_d:[S

.field private static final blacklist S0:[B

.field private static final blacklist S1:[B


# instance fields
.field private final blacklist BRC:[I

.field private final blacklist F:[I

.field private final blacklist LFSR:[I

.field private final blacklist keyStream:[B

.field private blacklist theIndex:I

.field private blacklist theIterations:I

.field private blacklist theResetState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    .line 43
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_a0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_124

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    return-void

    :array_1c
    .array-data 1
        0x3et
        0x72t
        0x5bt
        0x47t
        -0x36t
        -0x20t
        0x0t
        0x33t
        0x4t
        -0x2ft
        0x54t
        -0x68t
        0x9t
        -0x47t
        0x6dt
        -0x35t
        0x7bt
        0x1bt
        -0x7t
        0x32t
        -0x51t
        -0x63t
        0x6at
        -0x5bt
        -0x48t
        0x2dt
        -0x4t
        0x1dt
        0x8t
        0x53t
        0x3t
        -0x70t
        0x4dt
        0x4et
        -0x7ct
        -0x67t
        -0x1ct
        -0x32t
        -0x27t
        -0x6ft
        -0x23t
        -0x4at
        -0x7bt
        0x48t
        -0x75t
        0x29t
        0x6et
        -0x54t
        -0x33t
        -0x3ft
        -0x8t
        0x1et
        0x73t
        0x43t
        0x69t
        -0x3at
        -0x4bt
        -0x43t
        -0x3t
        0x39t
        0x63t
        0x20t
        -0x2ct
        0x38t
        0x76t
        0x7dt
        -0x4et
        -0x59t
        -0x31t
        -0x13t
        0x57t
        -0x3bt
        -0xdt
        0x2ct
        -0x45t
        0x14t
        0x21t
        0x6t
        0x55t
        -0x65t
        -0x1dt
        -0x11t
        0x5et
        0x31t
        0x4ft
        0x7ft
        0x5at
        -0x5ct
        0xdt
        -0x7et
        0x51t
        0x49t
        0x5ft
        -0x46t
        0x58t
        0x1ct
        0x4at
        0x16t
        -0x2bt
        0x17t
        -0x58t
        -0x6et
        0x24t
        0x1ft
        -0x74t
        -0x1t
        -0x28t
        -0x52t
        0x2et
        0x1t
        -0x2dt
        -0x53t
        0x3bt
        0x4bt
        -0x26t
        0x46t
        -0x15t
        -0x37t
        -0x22t
        -0x66t
        -0x71t
        -0x79t
        -0x29t
        0x3at
        -0x80t
        0x6ft
        0x2ft
        -0x38t
        -0x4ft
        -0x4ct
        0x37t
        -0x9t
        0xat
        0x22t
        0x13t
        0x28t
        0x7ct
        -0x34t
        0x3ct
        -0x77t
        -0x39t
        -0x3dt
        -0x6at
        0x56t
        0x7t
        -0x41t
        0x7et
        -0x10t
        0xbt
        0x2bt
        -0x69t
        0x52t
        0x35t
        0x41t
        0x79t
        0x61t
        -0x5at
        0x4ct
        0x10t
        -0x2t
        -0x44t
        0x26t
        -0x6bt
        -0x78t
        -0x76t
        -0x50t
        -0x5dt
        -0x5t
        -0x40t
        0x18t
        -0x6ct
        -0xet
        -0x1ft
        -0x1bt
        -0x17t
        0x5dt
        -0x30t
        -0x24t
        0x11t
        0x66t
        0x64t
        0x5ct
        -0x14t
        0x59t
        0x42t
        0x75t
        0x12t
        -0xbt
        0x74t
        -0x64t
        -0x56t
        0x23t
        0xet
        -0x7at
        -0x55t
        -0x42t
        0x2at
        0x2t
        -0x19t
        0x67t
        -0x1at
        0x44t
        -0x5et
        0x6ct
        -0x3et
        -0x6dt
        -0x61t
        -0xft
        -0xat
        -0x6t
        0x36t
        -0x2et
        0x50t
        0x68t
        -0x62t
        0x62t
        0x71t
        0x15t
        0x3dt
        -0x2at
        0x40t
        -0x3ct
        -0x1et
        0xft
        -0x72t
        -0x7dt
        0x77t
        0x6bt
        0x25t
        0x5t
        0x3ft
        0xct
        0x30t
        -0x16t
        0x70t
        -0x49t
        -0x5ft
        -0x18t
        -0x57t
        0x65t
        -0x73t
        0x27t
        0x1at
        -0x25t
        -0x7ft
        -0x4dt
        -0x60t
        -0xct
        0x45t
        0x7at
        0x19t
        -0x21t
        -0x12t
        0x78t
        0x34t
        0x60t
    .end array-data

    :array_a0
    .array-data 1
        0x55t
        -0x3et
        0x63t
        0x71t
        0x3bt
        -0x38t
        0x47t
        -0x7at
        -0x61t
        0x3ct
        -0x26t
        0x5bt
        0x29t
        -0x56t
        -0x3t
        0x77t
        -0x74t
        -0x3bt
        -0x6ct
        0xct
        -0x5at
        0x1at
        0x13t
        0x0t
        -0x1dt
        -0x58t
        0x16t
        0x72t
        0x40t
        -0x7t
        -0x8t
        0x42t
        0x44t
        0x26t
        0x68t
        -0x6at
        -0x7ft
        -0x27t
        0x45t
        0x3et
        0x10t
        0x76t
        -0x3at
        -0x59t
        -0x75t
        0x39t
        0x43t
        -0x1ft
        0x3at
        -0x4bt
        0x56t
        0x2at
        -0x40t
        0x6dt
        -0x4dt
        0x5t
        0x22t
        0x66t
        -0x41t
        -0x24t
        0xbt
        -0x6t
        0x62t
        0x48t
        -0x23t
        0x20t
        0x11t
        0x6t
        0x36t
        -0x37t
        -0x3ft
        -0x31t
        -0xat
        0x27t
        0x52t
        -0x45t
        0x69t
        -0xbt
        -0x2ct
        -0x79t
        0x7ft
        -0x7ct
        0x4ct
        -0x2et
        -0x64t
        0x57t
        -0x5ct
        -0x44t
        0x4ft
        -0x66t
        -0x21t
        -0x2t
        -0x2at
        -0x73t
        0x7at
        -0x15t
        0x2bt
        0x53t
        -0x28t
        0x5ct
        -0x5ft
        0x14t
        0x17t
        -0x5t
        0x23t
        -0x2bt
        0x7dt
        0x30t
        0x67t
        0x73t
        0x8t
        0x9t
        -0x12t
        -0x49t
        0x70t
        0x3ft
        0x61t
        -0x4et
        0x19t
        -0x72t
        0x4et
        -0x1bt
        0x4bt
        -0x6dt
        -0x71t
        0x5dt
        -0x25t
        -0x57t
        -0x53t
        -0xft
        -0x52t
        0x2et
        -0x35t
        0xdt
        -0x4t
        -0xct
        0x2dt
        0x46t
        0x6et
        0x1dt
        -0x69t
        -0x18t
        -0x2ft
        -0x17t
        0x4dt
        0x37t
        -0x5bt
        0x75t
        0x5et
        -0x7dt
        -0x62t
        -0x55t
        -0x7et
        -0x63t
        -0x47t
        0x1ct
        -0x20t
        -0x33t
        0x49t
        -0x77t
        0x1t
        -0x4at
        -0x43t
        0x58t
        0x24t
        -0x5et
        0x5ft
        0x38t
        0x78t
        -0x67t
        0x15t
        -0x70t
        0x50t
        -0x48t
        -0x6bt
        -0x1ct
        -0x30t
        -0x6ft
        -0x39t
        -0x32t
        -0x13t
        0xft
        -0x4ct
        0x6ft
        -0x60t
        -0x34t
        -0x10t
        0x2t
        0x4at
        0x79t
        -0x3dt
        -0x22t
        -0x5dt
        -0x11t
        -0x16t
        0x51t
        -0x1at
        0x6bt
        0x18t
        -0x14t
        0x1bt
        0x2ct
        -0x80t
        -0x9t
        0x74t
        -0x19t
        -0x1t
        0x21t
        0x5at
        0x6at
        0x54t
        0x1et
        0x41t
        0x31t
        -0x6et
        0x35t
        -0x3ct
        0x33t
        0x7t
        0xat
        -0x46t
        0x7et
        0xet
        0x34t
        -0x78t
        -0x4ft
        -0x68t
        0x7ct
        -0xdt
        0x3dt
        0x60t
        0x6ct
        0x7bt
        -0x36t
        -0x2dt
        0x1ft
        0x32t
        0x65t
        0x4t
        0x28t
        0x64t
        -0x42t
        -0x7bt
        -0x65t
        0x2ft
        0x59t
        -0x76t
        -0x29t
        -0x50t
        0x25t
        -0x54t
        -0x51t
        0x12t
        0x3t
        -0x1et
        -0xet
    .end array-data

    :array_124
    .array-data 2
        0x44d7s
        0x26bcs
        0x626bs
        0x135es
        0x5789s
        0x35e2s
        0x7135s
        0x9afs
        0x4d78s
        0x2f13s
        0x6bc4s
        0x1af1s
        0x5e26s
        0x3c4ds
        0x789as
        0x47acs
    .end array-data
.end method

.method protected constructor blacklist <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    .line 73
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    .line 83
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    .line 100
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    .line 73
    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    .line 83
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V

    .line 110
    return-void
.end method

.method private blacklist AddM(II)I
    .registers 3

    .line 271
    add-int/2addr p1, p2

    .line 272
    const p2, 0x7fffffff

    and-int/2addr p2, p1

    ushr-int/lit8 p1, p1, 0x1f

    add-int/2addr p2, p1

    return p2
.end method

.method private blacklist BitReorganization()V
    .registers 9

    .line 368
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    const v3, 0x7fff8000

    and-int/2addr v1, v3

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    const/4 v4, 0x0

    aput v1, v0, v4

    .line 369
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v6, 0xb

    aget v1, v1, v6

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x10

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    ushr-int/2addr v6, v2

    or-int/2addr v1, v6

    aput v1, v0, v3

    .line 370
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v3, 0x7

    aget v1, v1, v3

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v6, 0x5

    aget v3, v3, v6

    ushr-int/2addr v3, v2

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 371
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v3

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v4

    ushr-int/lit8 v2, v3, 0xf

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 372
    return-void
.end method

.method private static blacklist L1(I)I
    .registers 3

    .line 394
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v0

    xor-int/2addr v0, p0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private static blacklist L2(I)I
    .registers 3

    .line 405
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v0

    xor-int/2addr v0, p0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x1e

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private blacklist LFSRWithInitialisationMode(I)V
    .registers 11

    .line 294
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 295
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 296
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 297
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x4

    aget v2, v2, v4

    const/16 v5, 0x14

    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 298
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 299
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v5, 0xa

    aget v2, v2, v5

    const/16 v6, 0x15

    invoke-static {v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 300
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 301
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v6, 0xd

    aget v2, v2, v6

    const/16 v7, 0x11

    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 302
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 303
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v7, 0xf

    aget v2, v2, v7

    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 304
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 305
    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result p1

    .line 308
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v8, 0x1

    aget v2, v2, v8

    aput v2, v0, v1

    .line 309
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v8

    .line 310
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v8, 0x3

    aget v1, v1, v8

    aput v1, v0, v2

    .line 311
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v4

    aput v1, v0, v8

    .line 312
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    aput v1, v0, v4

    .line 313
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x6

    aget v1, v1, v4

    aput v1, v0, v2

    .line 314
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    aput v1, v0, v4

    .line 315
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v3

    aput v1, v0, v2

    .line 316
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    aput v1, v0, v3

    .line 317
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v5

    aput v1, v0, v2

    .line 318
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    aput v1, v0, v5

    .line 319
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0xc

    aget v1, v1, v3

    aput v1, v0, v2

    .line 320
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v6

    aput v1, v0, v3

    .line 321
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    aput v1, v0, v6

    .line 322
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v7

    aput v1, v0, v2

    .line 323
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aput p1, v0, v7

    .line 324
    return-void
.end method

.method private blacklist LFSRWithWorkMode()V
    .registers 11

    .line 332
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 333
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 334
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 335
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x4

    aget v2, v2, v4

    const/16 v5, 0x14

    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 336
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 337
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v5, 0xa

    aget v2, v2, v5

    const/16 v6, 0x15

    invoke-static {v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 338
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 339
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v6, 0xd

    aget v2, v2, v6

    const/16 v7, 0x11

    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 340
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 341
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v7, 0xf

    aget v2, v2, v7

    invoke-static {v2, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v2

    .line 342
    invoke-direct {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    .line 345
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    aput v8, v2, v1

    .line 346
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v8, 0x2

    aget v2, v2, v8

    aput v2, v1, v9

    .line 347
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v9, 0x3

    aget v2, v2, v9

    aput v2, v1, v8

    .line 348
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v4

    aput v2, v1, v9

    .line 349
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v8, 0x5

    aget v2, v2, v8

    aput v2, v1, v4

    .line 350
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x6

    aget v2, v2, v4

    aput v2, v1, v8

    .line 351
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v8, 0x7

    aget v2, v2, v8

    aput v2, v1, v4

    .line 352
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v3

    aput v2, v1, v8

    .line 353
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0x9

    aget v2, v2, v4

    aput v2, v1, v3

    .line 354
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v5

    aput v2, v1, v4

    .line 355
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    aput v2, v1, v5

    .line 356
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xc

    aget v2, v2, v4

    aput v2, v1, v3

    .line 357
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v6

    aput v2, v1, v4

    .line 358
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    aput v2, v1, v6

    .line 359
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v7

    aput v2, v1, v3

    .line 360
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aput v0, v1, v7

    .line 361
    return-void
.end method

.method private static blacklist MAKEU31(BSB)I
    .registers 4

    .line 455
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x17

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private static blacklist MAKEU32(BBBB)I
    .registers 4

    .line 422
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    and-int/lit16 p1, p2, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    and-int/lit16 p1, p3, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private static blacklist MulByPow2(II)I
    .registers 3

    .line 284
    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x1f

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    return p0
.end method

.method static blacklist ROT(II)I
    .registers 3

    .line 383
    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static blacklist encode32be(I[BI)V
    .registers 5

    .line 254
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 255
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 256
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 257
    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    .line 258
    return-void
.end method

.method private blacklist makeKeyStream()V
    .registers 4

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->makeKeyStreamWord()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->encode32be(I[BI)V

    .line 532
    return-void
.end method

.method private blacklist setKeyAndIV([B[B)V
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->setKeyAndIV([I[B[B)V

    .line 511
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    const/4 p2, 0x0

    aput p2, p1, p2

    .line 512
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 513
    const/16 p1, 0x20

    .line 514
    :goto_11
    if-lez p1, :cond_21

    .line 516
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    .line 517
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    move-result p2

    .line 518
    ushr-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithInitialisationMode(I)V

    .line 519
    add-int/lit8 p1, p1, -0x1

    .line 520
    goto :goto_11

    .line 521
    :cond_21
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    .line 523
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithWorkMode()V

    .line 524
    return-void
.end method


# virtual methods
.method blacklist F()I
    .registers 11

    .line 431
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v2, v2, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 432
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v2, v2, v1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    aget v4, v4, v3

    add-int/2addr v2, v4

    .line 433
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v4, v5

    .line 434
    shl-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v6, v4, 0x10

    or-int/2addr v5, v6

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->L1(I)I

    move-result v5

    .line 435
    shl-int/lit8 v4, v4, 0x10

    ushr-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->L2(I)I

    move-result v2

    .line 436
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v7, v5, 0x18

    aget-byte v6, v6, v7

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    sget-object v9, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v9, v5

    invoke-static {v6, v7, v8, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU32(BBBB)I

    move-result v5

    aput v5, v4, v1

    .line 438
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v5, v2, 0x18

    aget-byte v4, v4, v5

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    ushr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v7, v2

    invoke-static {v4, v5, v6, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU32(BBBB)I

    move-result v2

    aput v2, v1, v3

    .line 440
    return v0
.end method

.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .registers 2

    .line 558
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;)V

    return-object v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 171
    const-string v0, "Zuc-128"

    return-object v0
.end method

.method protected blacklist getMaxIterations()I
    .registers 2

    .line 161
    const/16 v0, 0x7ff

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 132
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 133
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 134
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    goto :goto_16

    .line 130
    :cond_14
    move-object v0, p2

    move-object v2, v1

    .line 136
    :goto_16
    instance-of v3, v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_20

    .line 138
    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 139
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 143
    :cond_20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    .line 144
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    .line 145
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->setKeyAndIV([B[B)V

    .line 147
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    .line 148
    if-eqz p1, :cond_36

    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_38

    :cond_36
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    :goto_38
    invoke-direct {v0, v2, v1, p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 147
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->copy()Lcom/android/internal/org/bouncycastle/util/Memoable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    .line 152
    return-void
.end method

.method protected blacklist makeKeyStreamWord()I
    .registers 4

    .line 541
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->getMaxIterations()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 545
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    .line 546
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    .line 547
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithWorkMode()V

    .line 548
    return v0

    .line 543
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too much data processed by singleKey/IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 9

    .line 191
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-eqz v0, :cond_31

    .line 195
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_29

    .line 199
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_21

    .line 205
    const/4 v0, 0x0

    :goto_f
    if-ge v0, p3, :cond_20

    .line 207
    add-int v1, v0, p5

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->returnByte(B)B

    move-result v2

    aput-byte v2, p4, v1

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 209
    :cond_20
    return p3

    .line 201
    :cond_21
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :cond_29
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " not initialised"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist reset()V
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-eqz v0, :cond_9

    .line 219
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V

    .line 221
    :cond_9
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .registers 6

    .line 568
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    .line 569
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    .line 574
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    .line 575
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;

    .line 576
    return-void
.end method

.method public blacklist returnByte(B)B
    .registers 4

    .line 232
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    if-nez v0, :cond_7

    .line 234
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->makeKeyStream()V

    .line 238
    :cond_7
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    aget-byte v0, v0, v1

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 239
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    .line 242
    return p1
.end method

.method protected blacklist setKeyAndIV([I[B[B)V
    .registers 8

    .line 470
    if-eqz p2, :cond_12d

    array-length p1, p2

    const/16 v0, 0x10

    if-ne p1, v0, :cond_12d

    .line 474
    if-eqz p3, :cond_125

    array-length p1, p3

    if-ne p1, v0, :cond_125

    .line 480
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x0

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 481
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x1

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 482
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x2

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 483
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x3

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 484
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x4

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 485
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x5

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 486
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x6

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 487
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x7

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 488
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v0, 0x8

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 489
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v0, 0x9

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 490
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v0, 0xa

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 491
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v0, 0xb

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 492
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v0, 0xc

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 493
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v0, 0xd

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 494
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v0, 0xe

    aget-byte v1, p2, v0

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v0

    aget-byte v3, p3, v0

    invoke-static {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, p1, v0

    .line 495
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v0, 0xf

    aget-byte p2, p2, v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v1, v1, v0

    aget-byte p3, p3, v0

    invoke-static {p2, v1, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result p2

    aput p2, p1, v0

    .line 496
    return-void

    .line 476
    :cond_125
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "An IV of 16 bytes is needed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 472
    :cond_12d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A key of 16 bytes is needed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
