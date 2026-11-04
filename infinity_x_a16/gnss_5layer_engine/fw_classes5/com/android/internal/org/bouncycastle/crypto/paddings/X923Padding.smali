.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;
.super Ljava/lang/Object;
.source "X923Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# instance fields
.field blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 5

    .line 47
    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    .line 49
    :goto_3
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_1c

    .line 51
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_10

    .line 53
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    goto :goto_19

    .line 57
    :cond_10
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 59
    :goto_19
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 62
    :cond_1c
    aput-byte v0, p1, p2

    .line 64
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "X9.23"

    return-object v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/paddings/X923Padding;->random:Ljava/security/SecureRandom;

    .line 27
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 73
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 74
    array-length p1, p1

    sub-int/2addr p1, v0

    .line 76
    add-int/lit8 v1, v0, -0x1

    or-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x1f

    .line 77
    if-nez p1, :cond_11

    .line 82
    return v0

    .line 79
    :cond_11
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "pad block corrupted"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
