.class public abstract Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.source "StreamBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private final blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 18
    return-void
.end method


# virtual methods
.method protected abstract blacklist calculateByte(B)B
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 38
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_27

    .line 42
    add-int v1, p5, p3

    array-length v2, p4

    if-gt v1, v2, :cond_1f

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 51
    :goto_d
    if-ge p2, v0, :cond_1e

    .line 53
    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result p2

    aput-byte p2, p4, p5

    move p5, v1

    move p2, v2

    goto :goto_d

    .line 56
    :cond_1e
    return p3

    .line 44
    :cond_1f
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_27
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too small"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final blacklist returnByte(B)B
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;->calculateByte(B)B

    move-result p1

    return p1
.end method
