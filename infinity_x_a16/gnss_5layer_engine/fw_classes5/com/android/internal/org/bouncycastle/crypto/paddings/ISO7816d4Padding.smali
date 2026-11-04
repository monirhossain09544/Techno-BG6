.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;
.source "ISO7816d4Padding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 5

    .line 45
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 47
    const/16 v1, -0x80

    aput-byte v1, p1, p2

    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 50
    :goto_8
    array-length v1, p1

    if-ge p2, v1, :cond_11

    .line 52
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 53
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 56
    :cond_11
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .registers 2

    .line 34
    const-string v0, "ISO7816-4"

    return-object v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 65
    nop

    .line 66
    array-length v0, p1

    const/4 v1, -0x1

    move v2, v1

    move v3, v2

    .line 67
    :goto_5
    add-int/2addr v0, v1

    if-ltz v0, :cond_1f

    .line 69
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    .line 70
    xor-int/lit8 v5, v4, 0x0

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 71
    xor-int/lit16 v4, v4, 0x80

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 72
    xor-int v6, v0, v2

    and-int/2addr v4, v3

    and-int/2addr v4, v6

    xor-int/2addr v2, v4

    .line 73
    and-int/2addr v3, v5

    .line 74
    goto :goto_5

    .line 75
    :cond_1f
    if-ltz v2, :cond_24

    .line 79
    array-length p1, p1

    sub-int/2addr p1, v2

    return p1

    .line 77
    :cond_24
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "pad block corrupted"

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
