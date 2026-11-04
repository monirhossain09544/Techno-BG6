.class public Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;
.super Ljava/lang/Object;
.source "XofUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist encode(B)[B
    .registers 4

    .line 57
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static blacklist encode([BII)[B
    .registers 5

    .line 62
    array-length v0, p0

    if-ne v0, p2, :cond_f

    .line 64
    mul-int/lit8 p2, p2, 0x8

    int-to-long p1, p2

    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0

    .line 66
    :cond_f
    mul-int/lit8 v0, p2, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist leftEncode(J)[B
    .registers 9

    .line 13
    nop

    .line 15
    const/4 v0, 0x1

    move-wide v1, p0

    move v3, v0

    .line 16
    :goto_4
    const/16 v4, 0x8

    shr-long/2addr v1, v4

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_11

    .line 18
    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_4

    .line 21
    :cond_11
    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [B

    .line 23
    const/4 v2, 0x0

    aput-byte v3, v1, v2

    .line 25
    nop

    :goto_19
    if-gt v0, v3, :cond_27

    .line 27
    sub-int v2, v3, v0

    mul-int/2addr v2, v4

    shr-long v5, p0, v2

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 30
    :cond_27
    return-object v1
.end method

.method public static blacklist rightEncode(J)[B
    .registers 9

    .line 35
    nop

    .line 37
    const/4 v0, 0x1

    move-wide v1, p0

    move v3, v0

    .line 38
    :goto_4
    const/16 v4, 0x8

    shr-long/2addr v1, v4

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-eqz v5, :cond_11

    .line 40
    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_4

    .line 43
    :cond_11
    add-int/lit8 v1, v3, 0x1

    new-array v1, v1, [B

    .line 45
    aput-byte v3, v1, v3

    .line 47
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v3, :cond_27

    .line 49
    sub-int v5, v3, v2

    sub-int/2addr v5, v0

    mul-int/2addr v5, v4

    shr-long v5, p0, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 52
    :cond_27
    return-object v1
.end method
