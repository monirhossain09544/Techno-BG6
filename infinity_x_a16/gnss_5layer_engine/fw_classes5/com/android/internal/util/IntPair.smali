.class public Lcom/android/internal/util/IntPair;
.super Ljava/lang/Object;
.source "IntPair.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist first(J)I
    .registers 3

    .line 33
    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist of(II)J
    .registers 6

    .line 29
    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static blacklist second(J)I
    .registers 2

    .line 37
    long-to-int p0, p0

    return p0
.end method
