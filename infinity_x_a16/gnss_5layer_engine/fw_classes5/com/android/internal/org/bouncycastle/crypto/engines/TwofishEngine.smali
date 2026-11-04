.class public final Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "TwofishEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final blacklist BLOCK_SIZE:I = 0x10

.field private static final blacklist GF256_FDBK:I = 0x169

.field private static final blacklist GF256_FDBK_2:I = 0xb4

.field private static final blacklist GF256_FDBK_4:I = 0x5a

.field private static final blacklist INPUT_WHITEN:I = 0x0

.field private static final blacklist MAX_KEY_BITS:I = 0x100

.field private static final blacklist MAX_ROUNDS:I = 0x10

.field private static final blacklist OUTPUT_WHITEN:I = 0x4

.field private static final blacklist P:[[B

.field private static final blacklist P_00:I = 0x1

.field private static final blacklist P_01:I = 0x0

.field private static final blacklist P_02:I = 0x0

.field private static final blacklist P_03:I = 0x1

.field private static final blacklist P_04:I = 0x1

.field private static final blacklist P_10:I = 0x0

.field private static final blacklist P_11:I = 0x0

.field private static final blacklist P_12:I = 0x1

.field private static final blacklist P_13:I = 0x1

.field private static final blacklist P_14:I = 0x0

.field private static final blacklist P_20:I = 0x1

.field private static final blacklist P_21:I = 0x1

.field private static final blacklist P_22:I = 0x0

.field private static final blacklist P_23:I = 0x0

.field private static final blacklist P_24:I = 0x0

.field private static final blacklist P_30:I = 0x0

.field private static final blacklist P_31:I = 0x1

.field private static final blacklist P_32:I = 0x1

.field private static final blacklist P_33:I = 0x0

.field private static final blacklist P_34:I = 0x1

.field private static final blacklist ROUNDS:I = 0x10

.field private static final blacklist ROUND_SUBKEYS:I = 0x8

.field private static final blacklist RS_GF_FDBK:I = 0x14d

.field private static final blacklist SK_BUMP:I = 0x1010101

.field private static final blacklist SK_ROTL:I = 0x9

.field private static final blacklist SK_STEP:I = 0x2020202

.field private static final blacklist TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private blacklist encrypting:Z

.field private blacklist gMDS0:[I

.field private blacklist gMDS1:[I

.field private blacklist gMDS2:[I

.field private blacklist gMDS3:[I

.field private blacklist gSBox:[I

.field private blacklist gSubKeys:[I

.field private blacklist k64Cnt:I

.field private blacklist workingKey:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 25
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_9a

    filled-new-array {v0, v1}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    nop

    :array_16
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_9a
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 11

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 215
    const/16 v1, 0x100

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    .line 216
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    .line 217
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    .line 218
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    .line 227
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 229
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 233
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 236
    nop

    .line 237
    nop

    .line 238
    nop

    .line 241
    move v2, v0

    :goto_2d
    if-ge v2, v1, :cond_bd

    .line 243
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v3, v3, v0

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 244
    nop

    .line 245
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 246
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 248
    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    .line 249
    filled-new-array {v3, v6}, [I

    move-result-object v3

    .line 250
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    filled-new-array {v4, v8}, [I

    move-result-object v4

    .line 251
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    filled-new-array {v5, v6}, [I

    move-result-object v5

    .line 253
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v8, v3, v7

    aget v9, v4, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v5, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v5, v7

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v2

    .line 256
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v8, v5, v0

    aget v9, v5, v0

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v4, v0

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v9, v3, v0

    shl-int/lit8 v9, v9, 0x18

    or-int/2addr v8, v9

    aput v8, v6, v2

    .line 259
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v8, v4, v7

    aget v9, v5, v7

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aget v9, v3, v7

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    aget v7, v5, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v7, v8

    aput v7, v6, v2

    .line 262
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v7, v4, v0

    aget v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v7

    aget v5, v5, v0

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    aget v4, v4, v0

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    aput v3, v6, v2

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2d

    .line 265
    :cond_bd
    return-void
.end method

.method private blacklist F32(I[I)I
    .registers 13

    .line 535
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v0

    .line 536
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v1

    .line 537
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    .line 538
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p1

    .line 539
    const/4 v3, 0x0

    aget v4, p2, v3

    .line 540
    const/4 v5, 0x1

    aget v6, p2, v5

    .line 541
    const/4 v7, 0x2

    aget v7, p2, v7

    .line 542
    const/4 v8, 0x3

    aget p2, p2, v8

    .line 544
    nop

    .line 545
    iget v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v8, v9

    packed-switch v8, :pswitch_data_154

    goto/16 :goto_153

    .line 548
    :pswitch_25
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v6, v6, v3

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v6

    xor-int/2addr v0, v6

    aget p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v6, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v3, v6, v3

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    .line 549
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v3

    xor-int/2addr v1, v3

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 550
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v5

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 551
    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v1

    xor-int/2addr p1, v1

    aget p1, v0, p1

    xor-int v3, p2, p1

    .line 552
    goto/16 :goto_153

    .line 554
    :pswitch_6f
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v5

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v8

    xor-int/2addr v0, v8

    .line 555
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v3

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v8

    xor-int/2addr v1, v8

    .line 556
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v3

    aget-byte v2, v8, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v8

    xor-int/2addr v2, v8

    .line 557
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v5

    aget-byte p1, v8, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p2

    xor-int/2addr p1, p2

    .line 559
    :pswitch_a3
    sget-object p2, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object p2, p2, v5

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v0

    xor-int/2addr v0, p2

    .line 560
    sget-object p2, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object p2, p2, v5

    aget-byte p2, p2, v1

    and-int/lit16 p2, p2, 0xff

    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v1

    xor-int/2addr v1, p2

    .line 561
    sget-object p2, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object p2, p2, v3

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    xor-int/2addr v2, p2

    .line 562
    sget-object p2, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object p2, p2, v3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result p2

    xor-int/2addr p1, p2

    .line 564
    :pswitch_d7
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v7, v3

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v3

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    .line 565
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v8

    xor-int/2addr v0, v8

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v7

    xor-int/2addr v0, v7

    aget p2, p2, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v7, v7, v3

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v5

    aget-byte v1, v8, v1

    and-int/lit16 v1, v1, 0xff

    .line 566
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v8

    xor-int/2addr v1, v8

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v7

    xor-int/2addr v1, v7

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v5

    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v3, v7, v3

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    .line 567
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v3

    xor-int/2addr v2, v3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    xor-int/2addr v1, v2

    aget v0, v0, v1

    xor-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v1, v1, v5

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v2, v2, v5

    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    .line 568
    invoke-direct {p0, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v2

    xor-int/2addr p1, v2

    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v1

    xor-int/2addr p1, v1

    aget p1, v0, p1

    xor-int v3, p2, p1

    .line 571
    :goto_153
    return v3

    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_25
        :pswitch_d7
        :pswitch_a3
    .end packed-switch
.end method

.method private blacklist Fe32_0(I)I
    .registers 5

    .line 661
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p1, v1, p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private blacklist Fe32_3(I)I
    .registers 5

    .line 669
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x201

    aget p1, v1, p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private blacklist LFSR1(I)I
    .registers 3

    .line 618
    shr-int/lit8 v0, p1, 0x1

    .line 619
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_9

    const/16 p1, 0xb4

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    xor-int/2addr p1, v0

    .line 618
    return p1
.end method

.method private blacklist LFSR2(I)I
    .registers 5

    .line 624
    shr-int/lit8 v0, p1, 0x2

    .line 625
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    const/16 v1, 0xb4

    goto :goto_b

    :cond_a
    move v1, v2

    :goto_b
    xor-int/2addr v0, v1

    .line 626
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_12

    const/16 v2, 0x5a

    :cond_12
    xor-int p1, v0, v2

    .line 624
    return p1
.end method

.method private blacklist Mx_X(I)I
    .registers 3

    .line 631
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr p1, v0

    return p1
.end method

.method private blacklist Mx_Y(I)I
    .registers 3

    .line 636
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method private blacklist RS_MDS_Encode(II)I
    .registers 6

    .line 585
    nop

    .line 586
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 588
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result p2

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 590
    :cond_d
    xor-int/2addr p1, p2

    .line 591
    nop

    :goto_f
    if-ge v0, v2, :cond_18

    .line 593
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result p1

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 596
    :cond_18
    return p1
.end method

.method private blacklist RS_rem(I)I
    .registers 7

    .line 608
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 609
    shl-int/lit8 v1, v0, 0x1

    .line 610
    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    const/16 v2, 0x14d

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 611
    ushr-int/lit8 v2, v0, 0x1

    .line 612
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1a

    const/16 v3, 0xa6

    :cond_1a
    xor-int/2addr v2, v3

    xor-int/2addr v2, v1

    .line 613
    shl-int/lit8 p1, p1, 0x8

    shl-int/lit8 v3, v2, 0x18

    xor-int/2addr p1, v3

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr p1, v1

    shl-int/lit8 v1, v2, 0x8

    xor-int/2addr p1, v1

    xor-int/2addr p1, v0

    return p1
.end method

.method private blacklist b0(I)I
    .registers 2

    .line 641
    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private blacklist b1(I)I
    .registers 2

    .line 646
    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private blacklist b2(I)I
    .registers 2

    .line 651
    ushr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private blacklist b3(I)I
    .registers 2

    .line 656
    ushr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private blacklist decryptBlock([BI[BI)V
    .registers 16

    .line 500
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    .line 501
    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    xor-int/2addr v1, v2

    .line 502
    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    xor-int/2addr v2, v3

    .line 503
    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v3, 0x7

    aget p2, p2, v3

    xor-int/2addr p1, p2

    .line 505
    nop

    .line 507
    const/16 p2, 0x27

    const/4 v3, 0x0

    move v4, v3

    :goto_33
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v4, v5, :cond_85

    .line 509
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 510
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v7

    .line 511
    mul-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, p2, -0x1

    aget p2, v9, p2

    add-int/2addr v8, p2

    xor-int/2addr p1, v8

    .line 512
    invoke-static {v2, v6}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result p2

    add-int/2addr v5, v7

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v10, -0x1

    aget v2, v2, v10

    add-int/2addr v5, v2

    xor-int v2, p2, v5

    .line 513
    invoke-static {p1, v6}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateRight(II)I

    move-result p1

    .line 515
    invoke-direct {p0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result p2

    .line 516
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v5

    .line 517
    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v8, p2

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v7, -0x1

    aget v7, v9, v7

    add-int/2addr v8, v7

    xor-int/2addr v1, v8

    .line 518
    invoke-static {v0, v6}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v0

    add-int/2addr p2, v5

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v10, -0x1

    aget v5, v5, v10

    add-int/2addr p2, v5

    xor-int/2addr v0, p2

    .line 519
    invoke-static {v1, v6}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v1

    .line 507
    add-int/lit8 v4, v4, 0x2

    move p2, v7

    goto :goto_33

    .line 522
    :cond_85
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget p2, p2, v3

    xor-int/2addr p2, v2

    invoke-static {p2, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 523
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    aget p2, p2, v6

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-static {p1, p3, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 524
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 p2, 0x2

    aget p1, p1, p2

    xor-int/2addr p1, v0

    add-int/lit8 p2, p4, 0x8

    invoke-static {p1, p3, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 525
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 p2, 0x3

    aget p1, p1, p2

    xor-int/2addr p1, v1

    add-int/lit8 p4, p4, 0xc

    invoke-static {p1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 526
    return-void
.end method

.method private blacklist encryptBlock([BI[BI)V
    .registers 16

    .line 461
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    .line 462
    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    xor-int/2addr v1, v3

    .line 463
    add-int/lit8 v3, p2, 0x8

    invoke-static {p1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    xor-int/2addr v3, v5

    .line 464
    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v5, 0x3

    aget p2, p2, v5

    xor-int/2addr p1, p2

    .line 466
    nop

    .line 468
    const/16 p2, 0x8

    :goto_31
    const/16 v5, 0x10

    if-ge v2, v5, :cond_82

    .line 470
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 471
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v7

    .line 472
    add-int v8, v5, v7

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, p2, 0x1

    aget p2, v9, p2

    add-int/2addr v8, p2

    xor-int p2, v3, v8

    .line 473
    invoke-static {p2, v4}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v3

    .line 474
    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result p1

    mul-int/2addr v7, v6

    add-int/2addr v5, v7

    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v10, 0x1

    aget p2, p2, v10

    add-int/2addr v5, p2

    xor-int/2addr p1, v5

    .line 476
    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result p2

    .line 477
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v5

    .line 478
    add-int v8, p2, v5

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v10, v7, 0x1

    aget v7, v9, v7

    add-int/2addr v8, v7

    xor-int/2addr v0, v8

    .line 479
    invoke-static {v0, v4}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    .line 480
    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    mul-int/2addr v5, v6

    add-int/2addr p2, v5

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v7, v10, 0x1

    aget v5, v5, v10

    add-int/2addr p2, v5

    xor-int/2addr v1, p2

    .line 468
    add-int/lit8 v2, v2, 0x2

    move p2, v7

    goto :goto_31

    .line 483
    :cond_82
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x4

    aget p2, p2, v2

    xor-int/2addr p2, v3

    invoke-static {p2, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 484
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v2, 0x5

    aget p2, p2, v2

    xor-int/2addr p1, p2

    add-int/lit8 p2, p4, 0x4

    invoke-static {p1, p3, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 485
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 p2, 0x6

    aget p1, p1, p2

    xor-int/2addr p1, v0

    add-int/lit8 p2, p4, 0x8

    invoke-static {p1, p3, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 486
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 p2, 0x7

    aget p1, p1, p2

    xor-int/2addr p1, v1

    add-int/lit8 p4, p4, 0xc

    invoke-static {p1, p3, p4}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 487
    return-void
.end method

.method private blacklist setKey([B)V
    .registers 20

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 364
    new-array v4, v2, [I

    .line 366
    new-array v5, v2, [I

    .line 367
    const/16 v6, 0x28

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    .line 373
    const/4 v6, 0x0

    move v7, v6

    :goto_13
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    const/4 v9, 0x1

    if-ge v7, v8, :cond_38

    .line 375
    mul-int/lit8 v8, v7, 0x8

    .line 377
    invoke-static {v1, v8}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    aput v10, v3, v7

    .line 378
    add-int/2addr v8, v2

    invoke-static {v1, v8}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    aput v8, v4, v7

    .line 380
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v7

    aget v9, v3, v7

    aget v10, v4, v7

    invoke-direct {v0, v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v9

    aput v9, v5, v8

    .line 373
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 384
    :cond_38
    move v1, v6

    :goto_39
    const/16 v2, 0x14

    if-ge v1, v2, :cond_68

    .line 386
    const v2, 0x2020202

    mul-int/2addr v2, v1

    .line 387
    invoke-direct {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v7

    .line 388
    const v8, 0x1010101

    add-int/2addr v2, v8

    invoke-direct {v0, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v2

    .line 389
    const/16 v8, 0x8

    invoke-static {v2, v8}, Lcom/android/internal/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v2

    .line 390
    add-int/2addr v7, v2

    .line 391
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    mul-int/lit8 v10, v1, 0x2

    aput v7, v8, v10

    .line 392
    add-int/2addr v7, v2

    .line 393
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/2addr v10, v9

    shl-int/lit8 v8, v7, 0x9

    ushr-int/lit8 v7, v7, 0x17

    or-int/2addr v7, v8

    aput v7, v2, v10

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 399
    :cond_68
    aget v1, v5, v6

    .line 400
    aget v2, v5, v9

    .line 401
    const/4 v3, 0x2

    aget v3, v5, v3

    .line 402
    const/4 v4, 0x3

    aget v5, v5, v4

    .line 404
    const/16 v7, 0x400

    new-array v7, v7, [I

    iput-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    .line 405
    move v7, v6

    :goto_79
    const/16 v8, 0x100

    if-ge v7, v8, :cond_1f1

    .line 407
    nop

    .line 408
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/2addr v8, v4

    packed-switch v8, :pswitch_data_1f2

    goto/16 :goto_1ed

    :pswitch_86
    move v8, v7

    move v10, v8

    move v11, v10

    move v12, v11

    goto/16 :goto_124

    :pswitch_8c
    move v8, v7

    move v10, v8

    move v11, v10

    move v12, v11

    goto/16 :goto_158

    .line 411
    :pswitch_92
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v10, v7, 0x2

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v12, v12, v6

    aget-byte v12, v12, v7

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget v11, v11, v12

    aput v11, v8, v10

    .line 412
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit8 v11, v10, 0x1

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v6

    aget-byte v13, v13, v7

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v8, v11

    .line 413
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v11, v10, 0x200

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v9

    aget-byte v13, v13, v7

    and-int/lit16 v13, v13, 0xff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v14

    xor-int/2addr v13, v14

    aget v12, v12, v13

    aput v12, v8, v11

    .line 414
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v10, v10, 0x201

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v12, v12, v9

    aget-byte v12, v12, v7

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget v11, v11, v12

    aput v11, v8, v10

    .line 415
    goto/16 :goto_1ed

    .line 417
    :pswitch_f0
    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v8, v8, v9

    aget-byte v8, v8, v7

    and-int/lit16 v8, v8, 0xff

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int/2addr v8, v10

    .line 418
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v10, v10, v6

    aget-byte v10, v10, v7

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v11

    xor-int/2addr v10, v11

    .line 419
    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v11, v11, v6

    aget-byte v11, v11, v7

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    .line 420
    sget-object v12, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v12, v12, v9

    aget-byte v12, v12, v7

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v12, v13

    .line 423
    :goto_124
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v9

    aget-byte v8, v13, v8

    and-int/lit16 v8, v8, 0xff

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v13

    xor-int/2addr v8, v13

    .line 424
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v9

    aget-byte v10, v13, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int/2addr v10, v13

    .line 425
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v6

    aget-byte v11, v13, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v13

    xor-int/2addr v11, v13

    .line 426
    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v6

    aget-byte v12, v13, v12

    and-int/lit16 v12, v12, 0xff

    invoke-direct {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v12, v13

    .line 429
    :goto_158
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    mul-int/lit8 v14, v7, 0x2

    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v16, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v16, v16, v6

    sget-object v17, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v17, v17, v6

    aget-byte v8, v17, v8

    and-int/lit16 v8, v8, 0xff

    .line 430
    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v17

    xor-int v8, v8, v17

    aget-byte v8, v16, v8

    and-int/lit16 v8, v8, 0xff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v16

    xor-int v8, v8, v16

    aget v8, v15, v8

    aput v8, v13, v14

    .line 431
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit8 v13, v14, 0x1

    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v16, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v16, v16, v6

    sget-object v17, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v17, v17, v9

    aget-byte v10, v17, v10

    and-int/lit16 v10, v10, 0xff

    .line 432
    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v17

    xor-int v10, v10, v17

    aget-byte v10, v16, v10

    and-int/lit16 v10, v10, 0xff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v16

    xor-int v10, v10, v16

    aget v10, v15, v10

    aput v10, v8, v13

    .line 433
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v10, v14, 0x200

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v15, v15, v9

    sget-object v16, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v16, v16, v6

    aget-byte v11, v16, v11

    and-int/lit16 v11, v11, 0xff

    .line 434
    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v16

    xor-int v11, v11, v16

    aget-byte v11, v15, v11

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v15

    xor-int/2addr v11, v15

    aget v11, v13, v11

    aput v11, v8, v10

    .line 435
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gSBox:[I

    add-int/lit16 v14, v14, 0x201

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v11, v11, v9

    sget-object v13, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v13, v13, v9

    aget-byte v12, v13, v12

    and-int/lit16 v12, v12, 0xff

    .line 436
    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    aput v10, v8, v14

    .line 405
    :goto_1ed
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_79

    .line 445
    :cond_1f1
    return-void

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_92
        :pswitch_8c
        :pswitch_86
    .end packed-switch
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 308
    const-string v0, "Twofish"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 354
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    .line 279
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_3d

    .line 281
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 282
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 284
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    .line 285
    sparse-switch v0, :sswitch_data_5e

    .line 292
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key length not 128/192/256 bits."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :sswitch_1f
    nop

    .line 295
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v1, v2, v0, p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 297
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length p1, p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 298
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 300
    return-void

    .line 303
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid parameter passed to Twofish init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_5e
    .sparse-switch
        0x80 -> :sswitch_1f
        0xc0 -> :sswitch_1f
        0x100 -> :sswitch_1f
    .end sparse-switch
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 7

    .line 317
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_2c

    .line 322
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_24

    .line 327
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_1c

    .line 332
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_16

    .line 334
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    goto :goto_19

    .line 338
    :cond_16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    .line 341
    :goto_19
    const/16 p1, 0x10

    return p1

    .line 329
    :cond_1c
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_24
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Twofish not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist reset()V
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 350
    :cond_9
    return-void
.end method
