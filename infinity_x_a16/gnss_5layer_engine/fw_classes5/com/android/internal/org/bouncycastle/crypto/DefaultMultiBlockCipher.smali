.class public abstract Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.super Ljava/lang/Object;
.source "DefaultMultiBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/MultiBlockCipher;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public blacklist getMultiBlockSize()I
    .registers 2

    .line 16
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist processBlocks([BII[BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 25
    nop

    .line 26
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->getMultiBlockSize()I

    move-result v0

    .line 28
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-eq v1, p3, :cond_14

    .line 30
    add-int v3, p5, v2

    invoke-virtual {p0, p1, p2, p4, v3}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 32
    add-int/2addr p2, v0

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 35
    :cond_14
    return v2
.end method
