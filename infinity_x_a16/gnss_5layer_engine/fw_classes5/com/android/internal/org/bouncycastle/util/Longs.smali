.class public Lcom/android/internal/org/bouncycastle/util/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# static fields
.field public static final blacklist BYTES:I = 0x8

.field public static final blacklist SIZE:I = 0x40


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist highestOneBit(J)J
    .registers 2

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist lowestOneBit(J)J
    .registers 2

    .line 20
    invoke-static {p0, p1}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist numberOfLeadingZeros(J)I
    .registers 2

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    return p0
.end method

.method public static blacklist numberOfTrailingZeros(J)I
    .registers 2

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    return p0
.end method

.method public static blacklist reverse(J)J
    .registers 2

    .line 35
    invoke-static {p0, p1}, Ljava/lang/Long;->reverse(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist reverseBytes(J)J
    .registers 2

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist rotateLeft(JI)J
    .registers 3

    .line 45
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist rotateRight(JI)J
    .registers 3

    .line 50
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static blacklist valueOf(J)Ljava/lang/Long;
    .registers 2

    .line 55
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
