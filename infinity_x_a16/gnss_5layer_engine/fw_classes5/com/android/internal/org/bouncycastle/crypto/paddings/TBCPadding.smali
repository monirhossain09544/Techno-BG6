.class public Lcom/android/internal/org/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPadding([BI)I
    .registers 7

    .line 54
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 57
    const/16 v1, 0xff

    const/4 v2, 0x0

    if-lez p2, :cond_13

    .line 59
    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    int-to-byte v1, v1

    goto :goto_1f

    .line 63
    :cond_13
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    int-to-byte v1, v1

    .line 66
    :goto_1f
    array-length v2, p1

    if-ge p2, v2, :cond_27

    .line 68
    aput-byte v1, p1, p2

    .line 69
    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    .line 72
    :cond_27
    return v0
.end method

.method public blacklist getPaddingName()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, "TBC"

    return-object v0
.end method

.method public blacklist init(Ljava/security/SecureRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist padCount([B)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 81
    array-length v0, p1

    .line 82
    const/4 v1, -0x1

    add-int/2addr v0, v1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    move v5, v1

    move v4, v3

    .line 83
    :goto_a
    add-int/2addr v0, v1

    if-ltz v0, :cond_18

    .line 85
    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    .line 86
    xor-int/2addr v6, v2

    sub-int/2addr v6, v3

    shr-int/lit8 v6, v6, 0x1f

    .line 87
    and-int/2addr v5, v6

    .line 88
    sub-int/2addr v4, v5

    .line 89
    goto :goto_a

    .line 90
    :cond_18
    return v4
.end method
