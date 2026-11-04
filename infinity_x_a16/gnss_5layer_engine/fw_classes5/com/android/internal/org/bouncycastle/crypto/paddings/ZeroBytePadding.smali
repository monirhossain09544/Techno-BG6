.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/ZeroBytePadding;
.super Ljava/lang/Object;
.source "ZeroBytePadding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 5

    .line 44
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 46
    :goto_2
    array-length v1, p1

    if-ge p2, v1, :cond_b

    .line 48
    const/4 v1, 0x0

    aput-byte v1, p1, p2

    .line 49
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 52
    :cond_b
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "ZeroByte"

    return-object v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 61
    nop

    .line 62
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    .line 63
    :goto_6
    add-int/2addr v0, v2

    if-ltz v0, :cond_15

    .line 65
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    .line 66
    xor-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 67
    and-int/2addr v4, v5

    .line 68
    sub-int/2addr v3, v4

    .line 69
    goto :goto_6

    .line 70
    :cond_15
    return v3
.end method
