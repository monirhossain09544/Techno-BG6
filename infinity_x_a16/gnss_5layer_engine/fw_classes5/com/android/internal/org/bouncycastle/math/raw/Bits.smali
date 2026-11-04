.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist bitPermuteStep(III)I
    .registers 4

    .line 11
    ushr-int v0, p0, p2

    xor-int/2addr v0, p0

    and-int/2addr p1, v0

    .line 12
    shl-int p2, p1, p2

    xor-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static blacklist bitPermuteStep(JJI)J
    .registers 7

    .line 17
    ushr-long v0, p0, p4

    xor-long/2addr v0, p0

    and-long/2addr p2, v0

    .line 18
    shl-long v0, p2, p4

    xor-long/2addr p2, v0

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static blacklist bitPermuteStepSimple(III)I
    .registers 4

    .line 23
    and-int v0, p0, p1

    shl-int/2addr v0, p2

    ushr-int/2addr p0, p2

    and-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static blacklist bitPermuteStepSimple(JJI)J
    .registers 7

    .line 28
    and-long v0, p0, p2

    shl-long/2addr v0, p4

    ushr-long/2addr p0, p4

    and-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method
