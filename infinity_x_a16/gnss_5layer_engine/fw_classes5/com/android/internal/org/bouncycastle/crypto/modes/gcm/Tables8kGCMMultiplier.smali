.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private blacklist H:[B

.field private blacklist T:[[[J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init([B)V
    .registers 10

    .line 17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_1d

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v3, v0, v3

    aput v2, v0, v4

    aput v3, v0, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    goto :goto_26

    .line 21
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_26

    .line 23
    return-void

    .line 26
    :cond_26
    :goto_26
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    .line 29
    nop

    :goto_32
    if-ge v1, v3, :cond_73

    .line 31
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object p1, p1, v1

    .line 35
    if-nez v1, :cond_49

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v5, p1, v4

    invoke-static {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    .line 39
    aget-object v0, p1, v4

    aget-object v5, p1, v4

    invoke-static {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    goto :goto_56

    .line 44
    :cond_49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int/lit8 v5, v1, -0x1

    aget-object v0, v0, v5

    aget-object v0, v0, v4

    aget-object v5, p1, v4

    invoke-static {v0, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([J[J)V

    .line 47
    :goto_56
    move v0, v3

    :goto_57
    if-ge v0, v2, :cond_70

    .line 50
    shr-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    aget-object v6, p1, v0

    invoke-static {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    .line 53
    aget-object v5, p1, v0

    aget-object v6, p1, v4

    add-int/lit8 v7, v0, 0x1

    aget-object v7, p1, v7

    invoke-static {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    .line 47
    add-int/lit8 v0, v0, 0x2

    goto :goto_57

    .line 29
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 56
    :cond_73
    return-void
.end method

.method public blacklist multiplyH([B)V
    .registers 22

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v0, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 71
    const/16 v5, 0xe

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    aget-object v5, v2, v5

    .line 72
    const/16 v6, 0xf

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v0, v6

    .line 73
    aget-wide v7, v5, v3

    aget-wide v9, v6, v3

    xor-long/2addr v7, v9

    aget-wide v9, v5, v4

    aget-wide v5, v6, v4

    xor-long/2addr v5, v9

    .line 75
    const/16 v9, 0xc

    :goto_2a
    if-ltz v9, :cond_64

    .line 77
    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    aget-object v10, v2, v10

    .line 78
    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v1, v11

    and-int/lit16 v11, v11, 0xff

    aget-object v11, v0, v11

    .line 80
    const/16 v12, 0x30

    shl-long v13, v5, v12

    .line 81
    aget-wide v15, v10, v4

    aget-wide v17, v11, v4

    xor-long v15, v15, v17

    const/16 v17, 0x10

    ushr-long v5, v5, v17

    shl-long v18, v7, v12

    or-long v5, v5, v18

    xor-long/2addr v5, v15

    .line 82
    aget-wide v15, v10, v3

    aget-wide v10, v11, v3

    xor-long/2addr v10, v15

    ushr-long v7, v7, v17

    xor-long/2addr v7, v10

    xor-long/2addr v7, v13

    ushr-long v10, v13, v4

    xor-long/2addr v7, v10

    const/4 v10, 0x2

    ushr-long v10, v13, v10

    xor-long/2addr v7, v10

    const/4 v10, 0x7

    ushr-long v10, v13, v10

    xor-long/2addr v7, v10

    .line 75
    add-int/lit8 v9, v9, -0x2

    goto :goto_2a

    .line 85
    :cond_64
    invoke-static {v7, v8, v1, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 86
    const/16 v0, 0x8

    invoke-static {v5, v6, v1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 87
    return-void
.end method
