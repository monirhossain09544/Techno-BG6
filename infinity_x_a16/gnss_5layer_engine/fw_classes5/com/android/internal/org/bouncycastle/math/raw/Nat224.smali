.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([II[II[II)I
    .registers 15

    .line 44
    nop

    .line 45
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    .line 46
    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    aput v5, p4, v4

    .line 47
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 48
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 49
    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v5

    .line 50
    ushr-long/2addr v0, v4

    .line 51
    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 52
    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v5

    .line 53
    ushr-long/2addr v0, v4

    .line 54
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 55
    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v5

    .line 56
    ushr-long/2addr v0, v4

    .line 57
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 58
    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v5

    .line 59
    ushr-long/2addr v0, v4

    .line 60
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 61
    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v5

    .line 62
    ushr-long/2addr v0, v4

    .line 63
    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    .line 64
    add-int/lit8 p5, p5, 0x6

    long-to-int p0, v0

    aput p0, p4, p5

    .line 65
    ushr-long p0, v0, v4

    .line 66
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist add([I[I[I)I
    .registers 13

    .line 17
    nop

    .line 18
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    .line 19
    long-to-int v5, v1

    aput v5, p2, v0

    .line 20
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 21
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 22
    long-to-int v6, v1

    aput v6, p2, v5

    .line 23
    ushr-long/2addr v1, v0

    .line 24
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 25
    long-to-int v6, v1

    aput v6, p2, v5

    .line 26
    ushr-long/2addr v1, v0

    .line 27
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 28
    long-to-int v6, v1

    aput v6, p2, v5

    .line 29
    ushr-long/2addr v1, v0

    .line 30
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 31
    long-to-int v6, v1

    aput v6, p2, v5

    .line 32
    ushr-long/2addr v1, v0

    .line 33
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 34
    long-to-int v6, v1

    aput v6, p2, v5

    .line 35
    ushr-long/2addr v1, v0

    .line 36
    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    .line 37
    long-to-int p0, v1

    aput p0, p2, v5

    .line 38
    ushr-long p0, v1, v0

    .line 39
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addBothTo([II[II[II)I
    .registers 16

    .line 98
    nop

    .line 99
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    add-int/lit8 v4, p5, 0x0

    aget v5, p4, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    .line 100
    long-to-int v5, v0

    aput v5, p4, v4

    .line 101
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 102
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x1

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    .line 103
    long-to-int v5, v0

    aput v5, p4, v7

    .line 104
    ushr-long/2addr v0, v4

    .line 105
    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x2

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    .line 106
    long-to-int v5, v0

    aput v5, p4, v7

    .line 107
    ushr-long/2addr v0, v4

    .line 108
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x3

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    .line 109
    long-to-int v5, v0

    aput v5, p4, v7

    .line 110
    ushr-long/2addr v0, v4

    .line 111
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x4

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    .line 112
    long-to-int v5, v0

    aput v5, p4, v7

    .line 113
    ushr-long/2addr v0, v4

    .line 114
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x5

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    .line 115
    long-to-int v5, v0

    aput v5, p4, v7

    .line 116
    ushr-long/2addr v0, v4

    .line 117
    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-int/lit8 p5, p5, 0x6

    aget p2, p4, p5

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    .line 118
    long-to-int p0, v0

    aput p0, p4, p5

    .line 119
    ushr-long p0, v0, v4

    .line 120
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 13

    .line 71
    nop

    .line 72
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    .line 73
    long-to-int v5, v1

    aput v5, p2, v0

    .line 74
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 75
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 76
    long-to-int v6, v1

    aput v6, p2, v5

    .line 77
    ushr-long/2addr v1, v0

    .line 78
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 79
    long-to-int v6, v1

    aput v6, p2, v5

    .line 80
    ushr-long/2addr v1, v0

    .line 81
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 82
    long-to-int v6, v1

    aput v6, p2, v5

    .line 83
    ushr-long/2addr v1, v0

    .line 84
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 85
    long-to-int v6, v1

    aput v6, p2, v5

    .line 86
    ushr-long/2addr v1, v0

    .line 87
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 88
    long-to-int v6, v1

    aput v6, p2, v5

    .line 89
    ushr-long/2addr v1, v0

    .line 90
    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    .line 91
    long-to-int p0, v1

    aput p0, p2, v5

    .line 92
    ushr-long p0, v1, v0

    .line 93
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([II[III)I
    .registers 14

    .line 179
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 180
    add-int/lit8 p4, p1, 0x0

    aget p4, p0, p4

    int-to-long v4, p4

    and-long/2addr v4, v2

    add-int/lit8 p4, p3, 0x0

    aget v6, p2, p4

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 181
    long-to-int v4, v0

    aput v4, p2, p4

    .line 182
    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    .line 183
    add-int/lit8 v4, p1, 0x1

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 184
    long-to-int v4, v0

    aput v4, p2, v6

    .line 185
    ushr-long/2addr v0, p4

    .line 186
    add-int/lit8 v4, p1, 0x2

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 187
    long-to-int v4, v0

    aput v4, p2, v6

    .line 188
    ushr-long/2addr v0, p4

    .line 189
    add-int/lit8 v4, p1, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 190
    long-to-int v4, v0

    aput v4, p2, v6

    .line 191
    ushr-long/2addr v0, p4

    .line 192
    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 193
    long-to-int v4, v0

    aput v4, p2, v6

    .line 194
    ushr-long/2addr v0, p4

    .line 195
    add-int/lit8 v4, p1, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 196
    long-to-int v4, v0

    aput v4, p2, v6

    .line 197
    ushr-long/2addr v0, p4

    .line 198
    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    .line 199
    long-to-int p0, v0

    aput p0, p2, p3

    .line 200
    ushr-long p0, v0, p4

    .line 201
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([I[I)I
    .registers 12

    .line 125
    nop

    .line 126
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    .line 127
    long-to-int v5, v1

    aput v5, p1, v0

    .line 128
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 129
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 130
    long-to-int v6, v1

    aput v6, p1, v5

    .line 131
    ushr-long/2addr v1, v0

    .line 132
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 133
    long-to-int v6, v1

    aput v6, p1, v5

    .line 134
    ushr-long/2addr v1, v0

    .line 135
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 136
    long-to-int v6, v1

    aput v6, p1, v5

    .line 137
    ushr-long/2addr v1, v0

    .line 138
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 139
    long-to-int v6, v1

    aput v6, p1, v5

    .line 140
    ushr-long/2addr v1, v0

    .line 141
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 142
    long-to-int v6, v1

    aput v6, p1, v5

    .line 143
    ushr-long/2addr v1, v0

    .line 144
    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    add-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 145
    long-to-int p0, v1

    aput p0, p1, v5

    .line 146
    ushr-long p0, v1, v0

    .line 147
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([I[II)I
    .registers 12

    .line 152
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 153
    const/4 p2, 0x0

    aget v4, p0, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    aget v6, p1, p2

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 154
    long-to-int v4, v0

    aput v4, p1, p2

    .line 155
    const/16 p2, 0x20

    ushr-long/2addr v0, p2

    .line 156
    const/4 v4, 0x1

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 157
    long-to-int v5, v0

    aput v5, p1, v4

    .line 158
    ushr-long/2addr v0, p2

    .line 159
    const/4 v4, 0x2

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 160
    long-to-int v5, v0

    aput v5, p1, v4

    .line 161
    ushr-long/2addr v0, p2

    .line 162
    const/4 v4, 0x3

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 163
    long-to-int v5, v0

    aput v5, p1, v4

    .line 164
    ushr-long/2addr v0, p2

    .line 165
    const/4 v4, 0x4

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 166
    long-to-int v5, v0

    aput v5, p1, v4

    .line 167
    ushr-long/2addr v0, p2

    .line 168
    const/4 v4, 0x5

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 169
    long-to-int v5, v0

    aput v5, p1, v4

    .line 170
    ushr-long/2addr v0, p2

    .line 171
    const/4 v4, 0x6

    aget p0, p0, v4

    int-to-long v5, p0

    and-long/2addr v5, v2

    aget p0, p1, v4

    int-to-long v7, p0

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 172
    long-to-int p0, v0

    aput p0, p1, v4

    .line 173
    ushr-long p0, v0, p2

    .line 174
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addToEachOther([II[II)I
    .registers 15

    .line 206
    nop

    .line 207
    add-int/lit8 v0, p1, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p3, 0x0

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    const-wide/16 v6, 0x0

    add-long/2addr v1, v6

    .line 208
    long-to-int v6, v1

    aput v6, p0, v0

    .line 209
    aput v6, p2, v5

    .line 210
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 211
    add-int/lit8 v5, p1, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    .line 212
    long-to-int v6, v1

    aput v6, p0, v5

    .line 213
    aput v6, p2, v8

    .line 214
    ushr-long/2addr v1, v0

    .line 215
    add-int/lit8 v5, p1, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    .line 216
    long-to-int v6, v1

    aput v6, p0, v5

    .line 217
    aput v6, p2, v8

    .line 218
    ushr-long/2addr v1, v0

    .line 219
    add-int/lit8 v5, p1, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    .line 220
    long-to-int v6, v1

    aput v6, p0, v5

    .line 221
    aput v6, p2, v8

    .line 222
    ushr-long/2addr v1, v0

    .line 223
    add-int/lit8 v5, p1, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x4

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    .line 224
    long-to-int v6, v1

    aput v6, p0, v5

    .line 225
    aput v6, p2, v8

    .line 226
    ushr-long/2addr v1, v0

    .line 227
    add-int/lit8 v5, p1, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x5

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    .line 228
    long-to-int v6, v1

    aput v6, p0, v5

    .line 229
    aput v6, p2, v8

    .line 230
    ushr-long/2addr v1, v0

    .line 231
    add-int/lit8 p1, p1, 0x6

    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p3, p3, 0x6

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 232
    long-to-int v3, v1

    aput v3, p0, p1

    .line 233
    aput v3, p2, p3

    .line 234
    ushr-long p0, v1, v0

    .line 235
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist copy([II[II)V
    .registers 6

    .line 251
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 252
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 253
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 254
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 255
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 256
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 257
    add-int/lit8 p3, p3, 0x6

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    aput p0, p2, p3

    .line 258
    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4

    .line 240
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 241
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 242
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 243
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 244
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 245
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 246
    const/4 v0, 0x6

    aget p0, p0, v0

    aput p0, p1, v0

    .line 247
    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    .line 262
    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    .line 267
    const/16 v0, 0xe

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist diff([II[II[II)Z
    .registers 8

    .line 272
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([II[II)Z

    move-result v0

    .line 273
    if-eqz v0, :cond_a

    .line 275
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    goto :goto_13

    .line 279
    :cond_a
    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    .line 281
    :goto_13
    return v0
.end method

.method public static blacklist eq([I[I)Z
    .registers 5

    .line 286
    const/4 v0, 0x6

    :goto_1
    if-ltz v0, :cond_e

    .line 288
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    .line 290
    const/4 p0, 0x0

    return p0

    .line 286
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 293
    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    .line 298
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_26

    .line 303
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 306
    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x7

    if-ge v1, v2, :cond_25

    .line 308
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 309
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 311
    :cond_25
    return-object v0

    .line 300
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist getBit([II)I
    .registers 5

    .line 316
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 318
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    .line 320
    :cond_8
    shr-int/lit8 v1, p1, 0x5

    .line 321
    if-ltz v1, :cond_18

    const/4 v2, 0x7

    if-lt v1, v2, :cond_10

    goto :goto_18

    .line 325
    :cond_10
    and-int/lit8 p1, p1, 0x1f

    .line 326
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0

    .line 323
    :cond_18
    :goto_18
    return v0
.end method

.method public static blacklist gte([II[II)Z
    .registers 9

    .line 345
    const/4 v0, 0x6

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    .line 347
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 348
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 349
    if-ge v2, v3, :cond_14

    .line 350
    const/4 p0, 0x0

    return p0

    .line 351
    :cond_14
    if-le v2, v3, :cond_17

    .line 352
    return v1

    .line 345
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 354
    :cond_1a
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .registers 7

    .line 331
    const/4 v0, 0x6

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 333
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 334
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 335
    if-ge v2, v3, :cond_10

    .line 336
    const/4 p0, 0x0

    return p0

    .line 337
    :cond_10
    if-le v2, v3, :cond_13

    .line 338
    return v1

    .line 331
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 340
    :cond_16
    return v1
.end method

.method public static blacklist isOne([I)Z
    .registers 5

    .line 359
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 361
    return v0

    .line 363
    :cond_7
    move v1, v2

    :goto_8
    const/4 v3, 0x7

    if-ge v1, v3, :cond_13

    .line 365
    aget v3, p0, v1

    if-eqz v3, :cond_10

    .line 367
    return v0

    .line 363
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 370
    :cond_13
    return v2
.end method

.method public static blacklist isZero([I)Z
    .registers 4

    .line 375
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_d

    .line 377
    aget v2, p0, v1

    if-eqz v2, :cond_a

    .line 379
    return v0

    .line 375
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 382
    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist mul([II[II[II)V
    .registers 35

    .line 451
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 452
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 453
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 454
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 455
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 456
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 457
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 460
    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v17, v2

    aget v2, p0, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 461
    mul-long v19, v2, v0

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v0

    add-long v0, v19, v21

    .line 462
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 p2, v2

    long-to-int v2, v0

    aput v2, p4, v16

    .line 463
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 464
    mul-long v19, p2, v4

    add-long v0, v0, v19

    .line 465
    add-int/lit8 v3, p5, 0x1

    move/from16 v16, v2

    long-to-int v2, v0

    aput v2, p4, v3

    .line 466
    ushr-long v0, v0, v16

    .line 467
    mul-long v2, p2, v6

    add-long/2addr v0, v2

    .line 468
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 469
    ushr-long v0, v0, v16

    .line 470
    mul-long v2, p2, v8

    add-long/2addr v0, v2

    .line 471
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 472
    ushr-long v0, v0, v16

    .line 473
    mul-long v2, p2, v10

    add-long/2addr v0, v2

    .line 474
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 475
    ushr-long v0, v0, v16

    .line 476
    mul-long v2, p2, v12

    add-long/2addr v0, v2

    .line 477
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 478
    ushr-long v0, v0, v16

    .line 479
    mul-long v2, p2, v14

    add-long/2addr v0, v2

    .line 480
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 481
    ushr-long v0, v0, v16

    .line 482
    add-int/lit8 v2, p5, 0x7

    long-to-int v0, v0

    aput v0, p4, v2

    .line 485
    const/4 v0, 0x1

    move/from16 v1, p5

    move v2, v0

    :goto_92
    const/4 v3, 0x7

    if-ge v2, v3, :cond_133

    .line 487
    add-int/2addr v1, v0

    .line 488
    add-int v3, p1, v2

    aget v3, p0, v3

    move/from16 p3, v1

    int-to-long v0, v3

    and-long v0, v0, v17

    .line 489
    mul-long v19, v0, v23

    add-int/lit8 v3, p3, 0x0

    move-wide/from16 v25, v0

    aget v0, p4, v3

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v19, v19, v0

    add-long v0, v19, v21

    .line 490
    move/from16 v19, v2

    long-to-int v2, v0

    aput v2, p4, v3

    .line 491
    ushr-long v0, v0, v16

    .line 492
    mul-long v2, v25, v4

    add-int/lit8 v20, p3, 0x1

    move-wide/from16 v27, v0

    aget v0, p4, v20

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v27, v2

    .line 493
    long-to-int v2, v0

    aput v2, p4, v20

    .line 494
    ushr-long v0, v0, v16

    .line 495
    mul-long v2, v25, v6

    add-int/lit8 v20, p3, 0x2

    move-wide/from16 v27, v0

    aget v0, p4, v20

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v27, v2

    .line 496
    long-to-int v2, v0

    aput v2, p4, v20

    .line 497
    ushr-long v0, v0, v16

    .line 498
    mul-long v2, v25, v8

    add-int/lit8 v20, p3, 0x3

    move-wide/from16 v27, v0

    aget v0, p4, v20

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v27, v2

    .line 499
    long-to-int v2, v0

    aput v2, p4, v20

    .line 500
    ushr-long v0, v0, v16

    .line 501
    mul-long v2, v25, v10

    add-int/lit8 v20, p3, 0x4

    move-wide/from16 v27, v0

    aget v0, p4, v20

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v27, v2

    .line 502
    long-to-int v2, v0

    aput v2, p4, v20

    .line 503
    ushr-long v0, v0, v16

    .line 504
    mul-long v2, v25, v12

    add-int/lit8 v20, p3, 0x5

    move-wide/from16 v27, v0

    aget v0, p4, v20

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v27, v2

    .line 505
    long-to-int v2, v0

    aput v2, p4, v20

    .line 506
    ushr-long v0, v0, v16

    .line 507
    mul-long v2, v25, v14

    add-int/lit8 v20, p3, 0x6

    move-wide/from16 v25, v0

    aget v0, p4, v20

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 508
    long-to-int v2, v0

    aput v2, p4, v20

    .line 509
    ushr-long v0, v0, v16

    .line 510
    add-int/lit8 v2, p3, 0x7

    long-to-int v0, v0

    aput v0, p4, v2

    .line 485
    add-int/lit8 v2, v19, 0x1

    move/from16 v1, p3

    const/4 v0, 0x1

    goto/16 :goto_92

    .line 512
    :cond_133
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 35

    .line 387
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 388
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 389
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 390
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 391
    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 392
    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 393
    const/4 v15, 0x6

    move/from16 v21, v4

    aget v4, p1, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    int-to-long v5, v4

    and-long v4, v5, v19

    .line 396
    aget v6, p0, v16

    int-to-long v6, v6

    and-long v6, v6, v19

    .line 397
    mul-long v25, v6, v17

    const-wide/16 v27, 0x0

    move/from16 v29, v8

    move-wide/from16 v30, v9

    add-long v8, v25, v27

    .line 398
    long-to-int v10, v8

    aput v10, p2, v16

    .line 399
    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    .line 400
    mul-long v25, v6, v23

    add-long v8, v8, v25

    .line 401
    move/from16 p1, v10

    long-to-int v10, v8

    aput v10, p2, v22

    .line 402
    ushr-long v8, v8, p1

    .line 403
    mul-long v25, v6, v30

    add-long v8, v8, v25

    .line 404
    long-to-int v10, v8

    aput v10, p2, v29

    .line 405
    ushr-long v8, v8, p1

    .line 406
    mul-long v25, v6, v12

    add-long v8, v8, v25

    .line 407
    long-to-int v10, v8

    aput v10, p2, v11

    .line 408
    ushr-long v8, v8, p1

    .line 409
    mul-long v10, v6, v0

    add-long/2addr v8, v10

    .line 410
    long-to-int v10, v8

    aput v10, p2, v14

    .line 411
    ushr-long v8, v8, p1

    .line 412
    mul-long v10, v6, v2

    add-long/2addr v8, v10

    .line 413
    long-to-int v10, v8

    aput v10, p2, v21

    .line 414
    ushr-long v8, v8, p1

    .line 415
    mul-long/2addr v6, v4

    add-long/2addr v8, v6

    .line 416
    long-to-int v6, v8

    aput v6, p2, v15

    .line 417
    ushr-long v6, v8, p1

    .line 418
    long-to-int v6, v6

    const/4 v7, 0x7

    aput v6, p2, v7

    .line 421
    move/from16 v6, v22

    :goto_86
    if-ge v6, v7, :cond_10d

    .line 423
    aget v8, p0, v6

    int-to-long v8, v8

    and-long v8, v8, v19

    .line 424
    mul-long v10, v8, v17

    add-int/lit8 v14, v6, 0x0

    aget v15, p2, v14

    move-wide/from16 v21, v8

    int-to-long v7, v15

    and-long v7, v7, v19

    add-long/2addr v10, v7

    add-long v10, v10, v27

    .line 425
    long-to-int v7, v10

    aput v7, p2, v14

    .line 426
    ushr-long v7, v10, p1

    .line 427
    mul-long v9, v21, v23

    add-int/lit8 v11, v6, 0x1

    aget v14, p2, v11

    int-to-long v14, v14

    and-long v14, v14, v19

    add-long/2addr v9, v14

    add-long/2addr v7, v9

    .line 428
    long-to-int v9, v7

    aput v9, p2, v11

    .line 429
    ushr-long v7, v7, p1

    .line 430
    mul-long v9, v21, v30

    add-int/lit8 v14, v6, 0x2

    aget v15, p2, v14

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v9, v0

    add-long/2addr v7, v9

    .line 431
    long-to-int v0, v7

    aput v0, p2, v14

    .line 432
    ushr-long v0, v7, p1

    .line 433
    mul-long v8, v21, v12

    add-int/lit8 v7, v6, 0x3

    aget v10, p2, v7

    int-to-long v14, v10

    and-long v14, v14, v19

    add-long/2addr v8, v14

    add-long/2addr v0, v8

    .line 434
    long-to-int v8, v0

    aput v8, p2, v7

    .line 435
    ushr-long v0, v0, p1

    .line 436
    mul-long v8, v21, v25

    add-int/lit8 v7, v6, 0x4

    aget v10, p2, v7

    int-to-long v14, v10

    and-long v14, v14, v19

    add-long/2addr v8, v14

    add-long/2addr v0, v8

    .line 437
    long-to-int v8, v0

    aput v8, p2, v7

    .line 438
    ushr-long v0, v0, p1

    .line 439
    mul-long v8, v21, v2

    add-int/lit8 v7, v6, 0x5

    aget v10, p2, v7

    int-to-long v14, v10

    and-long v14, v14, v19

    add-long/2addr v8, v14

    add-long/2addr v0, v8

    .line 440
    long-to-int v8, v0

    aput v8, p2, v7

    .line 441
    ushr-long v0, v0, p1

    .line 442
    mul-long v8, v21, v4

    add-int/lit8 v7, v6, 0x6

    aget v10, p2, v7

    int-to-long v14, v10

    and-long v14, v14, v19

    add-long/2addr v8, v14

    add-long/2addr v0, v8

    .line 443
    long-to-int v8, v0

    aput v8, p2, v7

    .line 444
    ushr-long v0, v0, p1

    .line 445
    add-int/lit8 v6, v6, 0x7

    long-to-int v0, v0

    aput v0, p2, v6

    .line 421
    move v6, v11

    move-wide/from16 v0, v25

    const/4 v7, 0x7

    goto/16 :goto_86

    .line 447
    :cond_10d
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 19

    .line 605
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 606
    add-int/lit8 p0, p2, 0x0

    aget p0, p1, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    .line 607
    mul-long v6, v0, v4

    add-int/lit8 p0, p4, 0x0

    aget p0, p3, p0

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    .line 608
    add-int/lit8 p0, p6, 0x0

    long-to-int v8, v6

    aput v8, p5, p0

    .line 609
    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    .line 610
    add-int/lit8 v8, p2, 0x1

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 611
    mul-long v10, v0, v8

    add-long/2addr v10, v4

    add-int/lit8 v4, p4, 0x1

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v10, v4

    add-long/2addr v6, v10

    .line 612
    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    aput v5, p5, v4

    .line 613
    ushr-long v4, v6, p0

    .line 614
    add-int/lit8 v6, p2, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 615
    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x2

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    .line 616
    add-int/lit8 v8, p6, 0x2

    long-to-int v9, v4

    aput v9, p5, v8

    .line 617
    ushr-long/2addr v4, p0

    .line 618
    add-int/lit8 v8, p2, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 619
    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x3

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 620
    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    aput v7, p5, v6

    .line 621
    ushr-long/2addr v4, p0

    .line 622
    add-int/lit8 v6, p2, 0x4

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 623
    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x4

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    .line 624
    add-int/lit8 v8, p6, 0x4

    long-to-int v9, v4

    aput v9, p5, v8

    .line 625
    ushr-long/2addr v4, p0

    .line 626
    add-int/lit8 v8, p2, 0x5

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 627
    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x5

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 628
    add-int/lit8 v6, p6, 0x5

    long-to-int v7, v4

    aput v7, p5, v6

    .line 629
    ushr-long/2addr v4, p0

    .line 630
    add-int/lit8 p2, p2, 0x6

    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    .line 631
    mul-long/2addr v0, p1

    add-long/2addr v0, v8

    add-int/lit8 v6, p4, 0x6

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 632
    add-int/lit8 v0, p6, 0x6

    long-to-int v1, v4

    aput v1, p5, v0

    .line 633
    ushr-long v0, v4, p0

    .line 634
    add-long/2addr v0, p1

    .line 635
    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .registers 22

    .line 724
    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 725
    and-long v6, p1, v4

    .line 726
    mul-long v8, v2, v6

    add-int/lit8 v10, v1, 0x0

    aget v11, v0, v10

    int-to-long v11, v11

    and-long/2addr v11, v4

    add-long/2addr v8, v11

    const-wide/16 v11, 0x0

    add-long/2addr v8, v11

    .line 727
    long-to-int v13, v8

    aput v13, v0, v10

    .line 728
    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    .line 729
    ushr-long v13, p1, v10

    .line 730
    mul-long/2addr v2, v13

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x1

    aget v7, v0, v6

    move-wide v15, v4

    int-to-long v4, v7

    and-long/2addr v4, v15

    add-long/2addr v2, v4

    add-long/2addr v8, v2

    .line 731
    long-to-int v2, v8

    aput v2, v0, v6

    .line 732
    ushr-long v2, v8, v10

    .line 733
    add-int/lit8 v4, v1, 0x2

    aget v5, v0, v4

    int-to-long v5, v5

    and-long/2addr v5, v15

    add-long/2addr v13, v5

    add-long/2addr v2, v13

    .line 734
    long-to-int v5, v2

    aput v5, v0, v4

    .line 735
    ushr-long/2addr v2, v10

    .line 736
    add-int/lit8 v4, v1, 0x3

    aget v5, v0, v4

    int-to-long v5, v5

    and-long/2addr v5, v15

    add-long/2addr v2, v5

    .line 737
    long-to-int v5, v2

    aput v5, v0, v4

    .line 738
    ushr-long/2addr v2, v10

    .line 739
    cmp-long v2, v2, v11

    if-nez v2, :cond_50

    const/4 v0, 0x0

    goto :goto_56

    :cond_50
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    :goto_56
    return v0
.end method

.method public static blacklist mul33WordAdd(II[II)I
    .registers 14

    .line 747
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    .line 748
    mul-long/2addr v0, p0

    add-int/lit8 v4, p3, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    .line 749
    long-to-int v7, v0

    aput v7, p2, v4

    .line 750
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 751
    add-int/lit8 v7, p3, 0x1

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr p0, v8

    add-long/2addr v0, p0

    .line 752
    long-to-int p0, v0

    aput p0, p2, v7

    .line 753
    ushr-long p0, v0, v4

    .line 754
    add-int/lit8 v0, p3, 0x2

    aget v1, p2, v0

    int-to-long v7, v1

    and-long v1, v7, v2

    add-long/2addr p0, v1

    .line 755
    long-to-int v1, p0

    aput v1, p2, v0

    .line 756
    ushr-long/2addr p0, v4

    .line 757
    cmp-long p0, p0, v5

    if-nez p0, :cond_39

    const/4 p0, 0x0

    goto :goto_3f

    :cond_39
    const/4 p0, 0x7

    const/4 p1, 0x3

    invoke-static {p0, p2, p3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_3f
    return p0
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .registers 39

    .line 559
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 560
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 561
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 562
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 563
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 564
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 565
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 567
    nop

    .line 568
    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v21, v0

    move-wide/from16 v19, v2

    move/from16 v2, v16

    move-wide/from16 v0, v17

    move/from16 v16, p5

    :goto_3e
    const/4 v3, 0x7

    if-ge v2, v3, :cond_101

    .line 570
    add-int v23, p1, v2

    move/from16 p2, v3

    aget v3, p0, v23

    move/from16 v23, v2

    int-to-long v2, v3

    and-long v2, v2, v19

    .line 571
    mul-long v24, v2, v21

    add-int/lit8 v26, v16, 0x0

    move-wide/from16 v27, v2

    aget v2, p4, v26

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v24, v24, v2

    add-long v2, v24, v17

    .line 572
    move-wide/from16 v24, v4

    long-to-int v4, v2

    aput v4, p4, v26

    .line 573
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 574
    mul-long v29, v27, v24

    add-int/lit8 v5, v16, 0x1

    move/from16 p3, v4

    aget v4, p4, v5

    move-wide/from16 v31, v2

    int-to-long v2, v4

    and-long v2, v2, v19

    add-long v29, v29, v2

    add-long v2, v31, v29

    .line 575
    long-to-int v4, v2

    aput v4, p4, v5

    .line 576
    ushr-long v2, v2, p3

    .line 577
    mul-long v29, v27, v6

    add-int/lit8 v4, v16, 0x2

    move-wide/from16 v31, v2

    aget v2, p4, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v29, v29, v2

    add-long v2, v31, v29

    .line 578
    move/from16 p5, v4

    long-to-int v4, v2

    aput v4, p4, p5

    .line 579
    ushr-long v2, v2, p3

    .line 580
    mul-long v29, v27, v8

    add-int/lit8 v4, v16, 0x3

    move-wide/from16 v31, v2

    aget v2, p4, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v29, v29, v2

    add-long v2, v31, v29

    .line 581
    move/from16 p5, v4

    long-to-int v4, v2

    aput v4, p4, p5

    .line 582
    ushr-long v2, v2, p3

    .line 583
    mul-long v29, v27, v10

    add-int/lit8 v4, v16, 0x4

    move-wide/from16 v31, v2

    aget v2, p4, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v29, v29, v2

    add-long v2, v31, v29

    .line 584
    move/from16 p5, v4

    long-to-int v4, v2

    aput v4, p4, p5

    .line 585
    ushr-long v2, v2, p3

    .line 586
    mul-long v29, v27, v12

    add-int/lit8 v4, v16, 0x5

    move-wide/from16 v31, v2

    aget v2, p4, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v29, v29, v2

    add-long v2, v31, v29

    .line 587
    move/from16 p5, v4

    long-to-int v4, v2

    aput v4, p4, p5

    .line 588
    ushr-long v2, v2, p3

    .line 589
    mul-long v26, v27, v14

    add-int/lit8 v4, v16, 0x6

    move-wide/from16 v28, v2

    aget v2, p4, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v26, v26, v2

    add-long v2, v28, v26

    .line 590
    move/from16 p5, v4

    long-to-int v4, v2

    aput v4, p4, p5

    .line 591
    ushr-long v2, v2, p3

    .line 593
    add-int/lit8 v16, v16, 0x7

    aget v4, p4, v16

    move-wide/from16 v26, v2

    int-to-long v2, v4

    and-long v2, v2, v19

    add-long v2, v26, v2

    add-long/2addr v0, v2

    .line 594
    long-to-int v2, v0

    aput v2, p4, v16

    .line 595
    ushr-long v0, v0, p3

    .line 596
    nop

    .line 568
    add-int/lit8 v2, v23, 0x1

    move/from16 v16, v5

    move-wide/from16 v4, v24

    goto/16 :goto_3e

    .line 598
    :cond_101
    long-to-int v0, v0

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 35

    .line 516
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 517
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .line 518
    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 519
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 520
    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .line 521
    const/4 v13, 0x5

    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .line 522
    const/4 v15, 0x6

    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 524
    nop

    .line 525
    const-wide/16 v19, 0x0

    move-wide v15, v3

    move-wide/from16 v3, v19

    const/4 v2, 0x0

    :goto_31
    move-wide/from16 v21, v15

    const/4 v15, 0x7

    if-ge v2, v15, :cond_e6

    .line 527
    aget v15, p0, v2

    move-wide/from16 v23, v0

    int-to-long v0, v15

    and-long v0, v0, v21

    .line 528
    mul-long v15, v0, v17

    add-int/lit8 v25, v2, 0x0

    move-wide/from16 v26, v0

    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long/2addr v15, v0

    add-long v0, v15, v19

    .line 529
    long-to-int v15, v0

    aput v15, p2, v25

    .line 530
    const/16 v15, 0x20

    ushr-long/2addr v0, v15

    .line 531
    mul-long v28, v26, v5

    add-int/lit8 v16, v2, 0x1

    move/from16 p1, v15

    aget v15, p2, v16

    move-wide/from16 v30, v0

    int-to-long v0, v15

    and-long v0, v0, v21

    add-long v28, v28, v0

    add-long v0, v30, v28

    .line 532
    long-to-int v15, v0

    aput v15, p2, v16

    .line 533
    ushr-long v0, v0, p1

    .line 534
    mul-long v28, v26, v7

    add-int/lit8 v15, v2, 0x2

    move-wide/from16 v30, v0

    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v21

    add-long v28, v28, v0

    add-long v0, v30, v28

    .line 535
    move/from16 v25, v2

    long-to-int v2, v0

    aput v2, p2, v15

    .line 536
    ushr-long v0, v0, p1

    .line 537
    mul-long v28, v26, v9

    add-int/lit8 v2, v25, 0x3

    aget v15, p2, v2

    move-wide/from16 v30, v0

    int-to-long v0, v15

    and-long v0, v0, v21

    add-long v28, v28, v0

    add-long v0, v30, v28

    .line 538
    long-to-int v15, v0

    aput v15, p2, v2

    .line 539
    ushr-long v0, v0, p1

    .line 540
    mul-long v28, v26, v11

    add-int/lit8 v2, v25, 0x4

    aget v15, p2, v2

    move-wide/from16 v30, v0

    int-to-long v0, v15

    and-long v0, v0, v21

    add-long v28, v28, v0

    add-long v0, v30, v28

    .line 541
    long-to-int v15, v0

    aput v15, p2, v2

    .line 542
    ushr-long v0, v0, p1

    .line 543
    mul-long v28, v26, v13

    add-int/lit8 v2, v25, 0x5

    aget v15, p2, v2

    move-wide/from16 v30, v0

    int-to-long v0, v15

    and-long v0, v0, v21

    add-long v28, v28, v0

    add-long v0, v30, v28

    .line 544
    long-to-int v15, v0

    aput v15, p2, v2

    .line 545
    ushr-long v0, v0, p1

    .line 546
    mul-long v26, v26, v23

    add-int/lit8 v2, v25, 0x6

    aget v15, p2, v2

    move-wide/from16 v28, v0

    int-to-long v0, v15

    and-long v0, v0, v21

    add-long v26, v26, v0

    add-long v0, v28, v26

    .line 547
    long-to-int v15, v0

    aput v15, p2, v2

    .line 548
    ushr-long v0, v0, p1

    .line 550
    add-int/lit8 v2, v25, 0x7

    aget v15, p2, v2

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long v0, v0, v21

    add-long v0, v25, v0

    add-long/2addr v3, v0

    .line 551
    long-to-int v0, v3

    aput v0, p2, v2

    .line 552
    ushr-long v3, v3, p1

    .line 525
    move/from16 v2, v16

    move-wide/from16 v15, v21

    move-wide/from16 v0, v23

    goto/16 :goto_31

    .line 554
    :cond_e6
    long-to-int v0, v3

    return v0
.end method

.method public static blacklist mulByWord(I[I)I
    .registers 11

    .line 640
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 641
    const/4 p0, 0x0

    aget v4, p1, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    .line 642
    long-to-int v6, v4

    aput v6, p1, p0

    .line 643
    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    .line 644
    const/4 v6, 0x1

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 645
    long-to-int v7, v4

    aput v7, p1, v6

    .line 646
    ushr-long/2addr v4, p0

    .line 647
    const/4 v6, 0x2

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 648
    long-to-int v7, v4

    aput v7, p1, v6

    .line 649
    ushr-long/2addr v4, p0

    .line 650
    const/4 v6, 0x3

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 651
    long-to-int v7, v4

    aput v7, p1, v6

    .line 652
    ushr-long/2addr v4, p0

    .line 653
    const/4 v6, 0x4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 654
    long-to-int v7, v4

    aput v7, p1, v6

    .line 655
    ushr-long/2addr v4, p0

    .line 656
    const/4 v6, 0x5

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 657
    long-to-int v7, v4

    aput v7, p1, v6

    .line 658
    ushr-long/2addr v4, p0

    .line 659
    const/4 v6, 0x6

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v2, v7

    mul-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 660
    long-to-int v0, v4

    aput v0, p1, v6

    .line 661
    ushr-long p0, v4, p0

    .line 662
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulByWordAddTo(I[I[I)I
    .registers 14

    .line 667
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 668
    const/4 p0, 0x0

    aget v4, p2, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    .line 669
    long-to-int v6, v4

    aput v6, p2, p0

    .line 670
    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    .line 671
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 672
    long-to-int v7, v4

    aput v7, p2, v6

    .line 673
    ushr-long/2addr v4, p0

    .line 674
    const/4 v6, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 675
    long-to-int v7, v4

    aput v7, p2, v6

    .line 676
    ushr-long/2addr v4, p0

    .line 677
    const/4 v6, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 678
    long-to-int v7, v4

    aput v7, p2, v6

    .line 679
    ushr-long/2addr v4, p0

    .line 680
    const/4 v6, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 681
    long-to-int v7, v4

    aput v7, p2, v6

    .line 682
    ushr-long/2addr v4, p0

    .line 683
    const/4 v6, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 684
    long-to-int v7, v4

    aput v7, p2, v6

    .line 685
    ushr-long/2addr v4, p0

    .line 686
    const/4 v6, 0x6

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v0, v7

    aget p1, p1, v6

    int-to-long v7, p1

    and-long/2addr v2, v7

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 687
    long-to-int p1, v4

    aput p1, p2, v6

    .line 688
    ushr-long p0, v4, p0

    .line 689
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulWord(I[I[II)I
    .registers 12

    .line 778
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 779
    const-wide/16 v4, 0x0

    const/4 p0, 0x0

    .line 782
    :cond_a
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 783
    add-int v6, p3, p0

    long-to-int v7, v4

    aput v7, p2, v6

    .line 784
    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    .line 786
    add-int/lit8 p0, p0, 0x1

    const/4 v6, 0x7

    if-lt p0, v6, :cond_a

    .line 787
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWordAddTo(I[II[II)I
    .registers 16

    .line 694
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 695
    add-int/lit8 p0, p2, 0x0

    aget p0, p1, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    add-int/lit8 p0, p4, 0x0

    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    .line 696
    long-to-int v6, v4

    aput v6, p3, p0

    .line 697
    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    .line 698
    add-int/lit8 v6, p2, 0x1

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x1

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    .line 699
    long-to-int v6, v4

    aput v6, p3, v8

    .line 700
    ushr-long/2addr v4, p0

    .line 701
    add-int/lit8 v6, p2, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x2

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    .line 702
    long-to-int v6, v4

    aput v6, p3, v8

    .line 703
    ushr-long/2addr v4, p0

    .line 704
    add-int/lit8 v6, p2, 0x3

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x3

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    .line 705
    long-to-int v6, v4

    aput v6, p3, v8

    .line 706
    ushr-long/2addr v4, p0

    .line 707
    add-int/lit8 v6, p2, 0x4

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x4

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    .line 708
    long-to-int v6, v4

    aput v6, p3, v8

    .line 709
    ushr-long/2addr v4, p0

    .line 710
    add-int/lit8 v6, p2, 0x5

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x5

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    .line 711
    long-to-int v6, v4

    aput v6, p3, v8

    .line 712
    ushr-long/2addr v4, p0

    .line 713
    add-int/lit8 p2, p2, 0x6

    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x6

    aget p1, p3, p4

    int-to-long p1, p1

    and-long/2addr p1, v2

    add-long/2addr v0, p1

    add-long/2addr v4, v0

    .line 714
    long-to-int p1, v4

    aput p1, p3, p4

    .line 715
    ushr-long p0, v4, p0

    .line 716
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .registers 15

    .line 763
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 764
    and-long v4, p1, v2

    mul-long/2addr v4, v0

    add-int/lit8 p0, p4, 0x0

    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    .line 765
    long-to-int v8, v4

    aput v8, p3, p0

    .line 766
    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    .line 767
    ushr-long/2addr p1, p0

    mul-long/2addr v0, p1

    add-int/lit8 p1, p4, 0x1

    aget p2, p3, p1

    int-to-long v8, p2

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v4, v0

    .line 768
    long-to-int p2, v4

    aput p2, p3, p1

    .line 769
    ushr-long p1, v4, p0

    .line 770
    add-int/lit8 v0, p4, 0x2

    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    .line 771
    long-to-int v1, p1

    aput v1, p3, v0

    .line 772
    ushr-long p0, p1, p0

    .line 773
    cmp-long p0, p0, v6

    if-nez p0, :cond_3c

    const/4 p0, 0x0

    goto :goto_42

    :cond_3c
    const/4 p0, 0x7

    const/4 p1, 0x3

    invoke-static {p0, p3, p4, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_42
    return p0
.end method

.method public static blacklist square([II[II)V
    .registers 45

    .line 931
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 934
    nop

    .line 936
    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x6

    .line 939
    :goto_10
    add-int/lit8 v8, v7, -0x1

    add-int v7, p1, v7

    aget v7, p0, v7

    int-to-long v9, v7

    and-long/2addr v9, v2

    .line 940
    mul-long/2addr v9, v9

    .line 941
    add-int/lit8 v6, v6, -0x1

    add-int v7, p3, v6

    shl-int/lit8 v4, v4, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v12, v12

    or-int/2addr v4, v12

    aput v4, p2, v7

    .line 942
    add-int/lit8 v6, v6, -0x1

    add-int v4, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v12, v12

    aput v12, p2, v4

    .line 943
    long-to-int v4, v9

    .line 945
    if-gtz v8, :cond_23b

    .line 948
    mul-long v8, v0, v0

    .line 949
    shl-int/lit8 v4, v4, 0x1f

    int-to-long v12, v4

    and-long/2addr v12, v2

    ushr-long v10, v8, v11

    or-long/2addr v10, v12

    .line 950
    add-int/lit8 v4, p3, 0x0

    long-to-int v6, v8

    aput v6, p2, v4

    .line 951
    const/16 v4, 0x20

    ushr-long/2addr v8, v4

    long-to-int v6, v8

    and-int/2addr v6, v7

    .line 955
    add-int/lit8 v8, p1, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 956
    add-int/lit8 v12, p3, 0x2

    aget v13, p2, v12

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 959
    mul-long v15, v8, v0

    add-long/2addr v10, v15

    .line 960
    long-to-int v15, v10

    .line 961
    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v6, v17, v6

    aput v6, p2, v16

    .line 962
    ushr-int/lit8 v6, v15, 0x1f

    .line 963
    ushr-long/2addr v10, v4

    add-long/2addr v13, v10

    .line 966
    add-int/lit8 v10, p1, 0x2

    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 967
    add-int/lit8 v15, p3, 0x3

    move-wide/from16 v16, v2

    aget v2, p2, v15

    int-to-long v2, v2

    and-long v2, v2, v16

    .line 968
    add-int/lit8 v18, p3, 0x4

    move/from16 v19, v4

    aget v4, p2, v18

    move/from16 v21, v6

    const/16 v20, 0x6

    int-to-long v5, v4

    and-long v4, v5, v16

    .line 970
    mul-long v22, v10, v0

    add-long v13, v13, v22

    .line 971
    long-to-int v6, v13

    .line 972
    shl-int/lit8 v22, v6, 0x1

    or-int v21, v22, v21

    aput v21, p2, v12

    .line 973
    ushr-int/lit8 v6, v6, 0x1f

    .line 974
    ushr-long v12, v13, v19

    mul-long v21, v10, v8

    add-long v12, v12, v21

    add-long/2addr v2, v12

    .line 975
    ushr-long v12, v2, v19

    add-long/2addr v4, v12

    .line 976
    and-long v2, v2, v16

    .line 979
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    int-to-long v12, v12

    and-long v12, v12, v16

    .line 980
    add-int/lit8 v14, p3, 0x5

    move/from16 v21, v7

    aget v7, p2, v14

    move-wide/from16 v22, v0

    int-to-long v0, v7

    and-long v0, v0, v16

    ushr-long v24, v4, v19

    add-long v0, v0, v24

    and-long v4, v4, v16

    .line 981
    add-int/lit8 v7, p3, 0x6

    move-wide/from16 v24, v0

    aget v0, p2, v7

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v26, v24, v19

    add-long v0, v0, v26

    and-long v24, v24, v16

    .line 983
    mul-long v26, v12, v22

    add-long v2, v2, v26

    .line 984
    move-wide/from16 v26, v0

    long-to-int v0, v2

    .line 985
    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v6

    aput v1, p2, v15

    .line 986
    ushr-int/lit8 v0, v0, 0x1f

    .line 987
    ushr-long v1, v2, v19

    mul-long v28, v12, v8

    add-long v1, v1, v28

    add-long/2addr v4, v1

    .line 988
    ushr-long v1, v4, v19

    mul-long v28, v12, v10

    add-long v1, v1, v28

    add-long v24, v24, v1

    .line 989
    and-long v1, v4, v16

    .line 990
    ushr-long v3, v24, v19

    add-long v3, v26, v3

    .line 991
    and-long v5, v24, v16

    .line 994
    add-int/lit8 v15, p1, 0x4

    aget v15, p0, v15

    move/from16 v24, v0

    move-wide/from16 v25, v1

    int-to-long v0, v15

    and-long v0, v0, v16

    .line 995
    add-int/lit8 v2, p3, 0x7

    aget v15, p2, v2

    move-wide/from16 v27, v0

    int-to-long v0, v15

    and-long v0, v0, v16

    ushr-long v29, v3, v19

    add-long v0, v0, v29

    and-long v3, v3, v16

    .line 996
    add-int/lit8 v15, p3, 0x8

    move-wide/from16 v29, v0

    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v31, v29, v19

    add-long v0, v0, v31

    and-long v29, v29, v16

    .line 998
    mul-long v31, v27, v22

    move-wide/from16 v33, v0

    add-long v0, v25, v31

    .line 999
    move/from16 v25, v2

    long-to-int v2, v0

    .line 1000
    shl-int/lit8 v26, v2, 0x1

    or-int v24, v26, v24

    aput v24, p2, v18

    .line 1001
    ushr-int/lit8 v2, v2, 0x1f

    .line 1002
    ushr-long v0, v0, v19

    mul-long v31, v27, v8

    add-long v0, v0, v31

    add-long/2addr v5, v0

    .line 1003
    ushr-long v0, v5, v19

    mul-long v31, v27, v10

    add-long v0, v0, v31

    add-long/2addr v3, v0

    .line 1004
    and-long v0, v5, v16

    .line 1005
    ushr-long v5, v3, v19

    mul-long v31, v27, v12

    add-long v5, v5, v31

    add-long v29, v29, v5

    .line 1006
    and-long v3, v3, v16

    .line 1007
    ushr-long v5, v29, v19

    add-long v5, v33, v5

    .line 1008
    and-long v29, v29, v16

    .line 1011
    add-int/lit8 v18, p1, 0x5

    move-wide/from16 v31, v0

    aget v0, p0, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    .line 1012
    add-int/lit8 v18, p3, 0x9

    move-wide/from16 v33, v0

    aget v0, p2, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v35, v5, v19

    add-long v0, v0, v35

    and-long v5, v5, v16

    .line 1013
    add-int/lit8 v24, p3, 0xa

    move-wide/from16 v35, v0

    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v37, v35, v19

    add-long v0, v0, v37

    and-long v35, v35, v16

    .line 1015
    mul-long v37, v33, v22

    move-wide/from16 v39, v0

    add-long v0, v31, v37

    .line 1016
    move/from16 v26, v2

    long-to-int v2, v0

    .line 1017
    shl-int/lit8 v31, v2, 0x1

    or-int v26, v31, v26

    aput v26, p2, v14

    .line 1018
    ushr-int/lit8 v2, v2, 0x1f

    .line 1019
    ushr-long v0, v0, v19

    mul-long v31, v33, v8

    add-long v0, v0, v31

    add-long/2addr v3, v0

    .line 1020
    ushr-long v0, v3, v19

    mul-long v31, v33, v10

    add-long v0, v0, v31

    add-long v29, v29, v0

    .line 1021
    and-long v0, v3, v16

    .line 1022
    ushr-long v3, v29, v19

    mul-long v31, v33, v12

    add-long v3, v3, v31

    add-long/2addr v5, v3

    .line 1023
    and-long v3, v29, v16

    .line 1024
    ushr-long v29, v5, v19

    mul-long v31, v33, v27

    add-long v29, v29, v31

    add-long v35, v35, v29

    .line 1025
    and-long v5, v5, v16

    .line 1026
    ushr-long v29, v35, v19

    add-long v29, v39, v29

    .line 1027
    and-long v31, v35, v16

    .line 1030
    add-int/lit8 v14, p1, 0x6

    aget v14, p0, v14

    move-wide/from16 v35, v0

    int-to-long v0, v14

    and-long v0, v0, v16

    .line 1031
    add-int/lit8 v14, p3, 0xb

    move-wide/from16 p0, v0

    aget v0, p2, v14

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v37, v29, v19

    add-long v0, v0, v37

    and-long v29, v29, v16

    .line 1032
    add-int/lit8 v20, p3, 0xc

    move-wide/from16 v37, v0

    aget v0, p2, v20

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v39, v37, v19

    add-long v0, v0, v39

    and-long v16, v37, v16

    .line 1034
    mul-long v22, v22, p0

    move-wide/from16 v37, v0

    add-long v0, v35, v22

    .line 1035
    move/from16 v26, v2

    long-to-int v2, v0

    .line 1036
    shl-int/lit8 v22, v2, 0x1

    or-int v22, v22, v26

    aput v22, p2, v7

    .line 1037
    ushr-int/lit8 v2, v2, 0x1f

    .line 1038
    ushr-long v0, v0, v19

    mul-long v7, p0, v8

    add-long/2addr v0, v7

    add-long/2addr v3, v0

    .line 1039
    ushr-long v0, v3, v19

    mul-long v7, p0, v10

    add-long/2addr v0, v7

    add-long/2addr v5, v0

    .line 1040
    ushr-long v0, v5, v19

    mul-long v7, p0, v12

    add-long/2addr v0, v7

    add-long v0, v31, v0

    .line 1041
    ushr-long v7, v0, v19

    mul-long v9, p0, v27

    add-long/2addr v7, v9

    add-long v7, v29, v7

    .line 1042
    ushr-long v9, v7, v19

    mul-long v11, p0, v33

    add-long/2addr v9, v11

    add-long v9, v16, v9

    .line 1043
    ushr-long v11, v9, v19

    add-long v11, v37, v11

    .line 1046
    long-to-int v3, v3

    .line 1047
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p2, v25

    .line 1048
    ushr-int/lit8 v2, v3, 0x1f

    .line 1049
    long-to-int v3, v5

    .line 1050
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p2, v15

    .line 1051
    ushr-int/lit8 v2, v3, 0x1f

    .line 1052
    long-to-int v0, v0

    .line 1053
    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v2

    aput v1, p2, v18

    .line 1054
    ushr-int/lit8 v0, v0, 0x1f

    .line 1055
    long-to-int v1, v7

    .line 1056
    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v24

    .line 1057
    ushr-int/lit8 v0, v1, 0x1f

    .line 1058
    long-to-int v1, v9

    .line 1059
    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v14

    .line 1060
    ushr-int/lit8 v0, v1, 0x1f

    .line 1061
    long-to-int v1, v11

    .line 1062
    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v20

    .line 1063
    ushr-int/lit8 v0, v1, 0x1f

    .line 1064
    add-int/lit8 v1, p3, 0xd

    aget v2, p2, v1

    ushr-long v3, v11, v19

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 1065
    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v1

    .line 1066
    return-void

    .line 945
    :cond_23b
    move-wide/from16 v22, v0

    move-wide/from16 v16, v2

    const/16 v20, 0x6

    move v7, v8

    goto/16 :goto_10
.end method

.method public static blacklist square([I[I)V
    .registers 44

    .line 792
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 795
    nop

    .line 797
    const/16 v6, 0xe

    move v8, v0

    const/4 v7, 0x6

    .line 800
    :goto_f
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    .line 801
    mul-long/2addr v10, v10

    .line 802
    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v7, v8, 0x1f

    const/16 v8, 0x21

    ushr-long v12, v10, v8

    long-to-int v12, v12

    or-int/2addr v7, v12

    aput v7, p1, v6

    .line 803
    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    ushr-long v12, v10, v7

    long-to-int v12, v12

    aput v12, p1, v6

    .line 804
    long-to-int v10, v10

    .line 806
    if-gtz v9, :cond_213

    .line 809
    mul-long v11, v1, v1

    .line 810
    shl-int/lit8 v6, v10, 0x1f

    int-to-long v9, v6

    and-long/2addr v9, v3

    ushr-long v13, v11, v8

    or-long v8, v9, v13

    .line 811
    long-to-int v6, v11

    aput v6, p1, v0

    .line 812
    const/16 v0, 0x20

    ushr-long v10, v11, v0

    long-to-int v6, v10

    and-int/2addr v6, v7

    .line 816
    aget v10, p0, v7

    int-to-long v10, v10

    and-long/2addr v10, v3

    .line 817
    const/4 v12, 0x2

    aget v13, p1, v12

    int-to-long v13, v13

    and-long/2addr v13, v3

    .line 820
    mul-long v15, v10, v1

    add-long/2addr v8, v15

    .line 821
    long-to-int v15, v8

    .line 822
    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    aput v6, p1, v7

    .line 823
    ushr-int/lit8 v6, v15, 0x1f

    .line 824
    ushr-long/2addr v8, v0

    add-long/2addr v13, v8

    .line 827
    aget v8, p0, v12

    int-to-long v8, v8

    and-long/2addr v8, v3

    .line 828
    const/4 v15, 0x3

    move/from16 v16, v0

    aget v0, p1, v15

    move-wide/from16 v17, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    .line 829
    const/16 v19, 0x4

    aget v0, p1, v19

    move/from16 v21, v6

    const/16 v20, 0x6

    int-to-long v5, v0

    and-long v5, v5, v17

    .line 831
    mul-long v22, v8, v1

    add-long v13, v13, v22

    .line 832
    long-to-int v0, v13

    .line 833
    shl-int/lit8 v22, v0, 0x1

    or-int v21, v22, v21

    aput v21, p1, v12

    .line 834
    ushr-int/lit8 v0, v0, 0x1f

    .line 835
    ushr-long v12, v13, v16

    mul-long v21, v8, v10

    add-long v12, v12, v21

    add-long/2addr v3, v12

    .line 836
    ushr-long v12, v3, v16

    add-long/2addr v5, v12

    .line 837
    and-long v3, v3, v17

    .line 840
    aget v12, p0, v15

    int-to-long v12, v12

    and-long v12, v12, v17

    .line 841
    const/4 v14, 0x5

    move/from16 v21, v7

    aget v7, p1, v14

    move/from16 v23, v14

    move/from16 v22, v15

    int-to-long v14, v7

    and-long v14, v14, v17

    ushr-long v24, v5, v16

    add-long v14, v14, v24

    and-long v5, v5, v17

    .line 842
    aget v7, p1, v20

    move-wide/from16 v24, v1

    move v2, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v26, v14, v16

    add-long v0, v0, v26

    and-long v14, v14, v17

    .line 844
    mul-long v26, v12, v24

    add-long v3, v3, v26

    .line 845
    long-to-int v7, v3

    .line 846
    shl-int/lit8 v26, v7, 0x1

    or-int v2, v26, v2

    aput v2, p1, v22

    .line 847
    ushr-int/lit8 v2, v7, 0x1f

    .line 848
    ushr-long v3, v3, v16

    mul-long v26, v12, v10

    add-long v3, v3, v26

    add-long/2addr v5, v3

    .line 849
    ushr-long v3, v5, v16

    mul-long v26, v12, v8

    add-long v3, v3, v26

    add-long/2addr v14, v3

    .line 850
    and-long v3, v5, v17

    .line 851
    ushr-long v5, v14, v16

    add-long/2addr v0, v5

    .line 852
    and-long v5, v14, v17

    .line 855
    aget v7, p0, v19

    int-to-long v14, v7

    and-long v14, v14, v17

    .line 856
    const/16 v22, 0x7

    aget v7, p1, v22

    move-wide/from16 v26, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v28, v26, v16

    add-long v0, v0, v28

    and-long v26, v26, v17

    .line 857
    const/16 v28, 0x8

    aget v7, p1, v28

    move-wide/from16 v29, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v31, v29, v16

    add-long v0, v0, v31

    and-long v29, v29, v17

    .line 859
    mul-long v31, v14, v24

    add-long v3, v3, v31

    .line 860
    long-to-int v7, v3

    .line 861
    shl-int/lit8 v31, v7, 0x1

    or-int v2, v31, v2

    aput v2, p1, v19

    .line 862
    ushr-int/lit8 v2, v7, 0x1f

    .line 863
    ushr-long v3, v3, v16

    mul-long v31, v14, v10

    add-long v3, v3, v31

    add-long/2addr v5, v3

    .line 864
    ushr-long v3, v5, v16

    mul-long v31, v14, v8

    add-long v3, v3, v31

    add-long v26, v26, v3

    .line 865
    and-long v3, v5, v17

    .line 866
    ushr-long v5, v26, v16

    mul-long v31, v14, v12

    add-long v5, v5, v31

    add-long v29, v29, v5

    .line 867
    and-long v5, v26, v17

    .line 868
    ushr-long v26, v29, v16

    add-long v0, v0, v26

    .line 869
    and-long v26, v29, v17

    .line 872
    aget v7, p0, v23

    move-wide/from16 v29, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    .line 873
    const/16 v19, 0x9

    aget v7, p1, v19

    move-wide/from16 v31, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v33, v29, v16

    add-long v0, v0, v33

    and-long v29, v29, v17

    .line 874
    const/16 v33, 0xa

    aget v7, p1, v33

    move-wide/from16 v34, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v36, v34, v16

    add-long v0, v0, v36

    and-long v34, v34, v17

    .line 876
    mul-long v36, v31, v24

    add-long v3, v3, v36

    .line 877
    long-to-int v7, v3

    .line 878
    shl-int/lit8 v36, v7, 0x1

    or-int v2, v36, v2

    aput v2, p1, v23

    .line 879
    ushr-int/lit8 v2, v7, 0x1f

    .line 880
    ushr-long v3, v3, v16

    mul-long v36, v31, v10

    add-long v3, v3, v36

    add-long/2addr v5, v3

    .line 881
    ushr-long v3, v5, v16

    mul-long v36, v31, v8

    add-long v3, v3, v36

    add-long v26, v26, v3

    .line 882
    and-long v3, v5, v17

    .line 883
    ushr-long v5, v26, v16

    mul-long v36, v31, v12

    add-long v5, v5, v36

    add-long v29, v29, v5

    .line 884
    and-long v5, v26, v17

    .line 885
    ushr-long v26, v29, v16

    mul-long v36, v31, v14

    add-long v26, v26, v36

    add-long v34, v34, v26

    .line 886
    and-long v26, v29, v17

    .line 887
    ushr-long v29, v34, v16

    add-long v0, v0, v29

    .line 888
    and-long v29, v34, v17

    .line 891
    aget v7, p0, v20

    move-wide/from16 v34, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    .line 892
    const/16 p0, 0xb

    aget v7, p1, p0

    move-wide/from16 v36, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v38, v34, v16

    add-long v0, v0, v38

    and-long v34, v34, v17

    .line 893
    const/16 v23, 0xc

    aget v7, p1, v23

    move-wide/from16 v38, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v40, v38, v16

    add-long v0, v0, v40

    and-long v17, v38, v17

    .line 895
    mul-long v24, v24, v36

    add-long v3, v3, v24

    .line 896
    long-to-int v7, v3

    .line 897
    shl-int/lit8 v24, v7, 0x1

    or-int v2, v24, v2

    aput v2, p1, v20

    .line 898
    ushr-int/lit8 v2, v7, 0x1f

    .line 899
    ushr-long v3, v3, v16

    mul-long v10, v10, v36

    add-long/2addr v3, v10

    add-long/2addr v5, v3

    .line 900
    ushr-long v3, v5, v16

    mul-long v7, v36, v8

    add-long/2addr v3, v7

    add-long v3, v26, v3

    .line 901
    ushr-long v7, v3, v16

    mul-long v9, v36, v12

    add-long/2addr v7, v9

    add-long v7, v29, v7

    .line 902
    ushr-long v9, v7, v16

    mul-long v11, v36, v14

    add-long/2addr v9, v11

    add-long v9, v34, v9

    .line 903
    ushr-long v11, v9, v16

    mul-long v13, v36, v31

    add-long/2addr v11, v13

    add-long v11, v17, v11

    .line 904
    ushr-long v13, v11, v16

    add-long/2addr v0, v13

    .line 907
    long-to-int v5, v5

    .line 908
    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    aput v2, p1, v22

    .line 909
    ushr-int/lit8 v2, v5, 0x1f

    .line 910
    long-to-int v3, v3

    .line 911
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v28

    .line 912
    ushr-int/lit8 v2, v3, 0x1f

    .line 913
    long-to-int v3, v7

    .line 914
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v19

    .line 915
    ushr-int/lit8 v2, v3, 0x1f

    .line 916
    long-to-int v3, v9

    .line 917
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v33

    .line 918
    ushr-int/lit8 v2, v3, 0x1f

    .line 919
    long-to-int v3, v11

    .line 920
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, p0

    .line 921
    ushr-int/lit8 v2, v3, 0x1f

    .line 922
    long-to-int v3, v0

    .line 923
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v23

    .line 924
    ushr-int/lit8 v2, v3, 0x1f

    .line 925
    const/16 v3, 0xd

    aget v4, p1, v3

    ushr-long v0, v0, v16

    long-to-int v0, v0

    add-int/2addr v4, v0

    .line 926
    shl-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v3

    .line 927
    return-void

    .line 806
    :cond_213
    move-wide/from16 v24, v1

    move-wide/from16 v17, v3

    const/16 v20, 0x6

    move v7, v9

    move v8, v10

    goto/16 :goto_f
.end method

.method public static blacklist sub([II[II[II)I
    .registers 15

    .line 1097
    nop

    .line 1098
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    add-long/2addr v0, v4

    .line 1099
    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    aput v5, p4, v4

    .line 1100
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1101
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1102
    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1103
    shr-long/2addr v0, v4

    .line 1104
    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1105
    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1106
    shr-long/2addr v0, v4

    .line 1107
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1108
    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1109
    shr-long/2addr v0, v4

    .line 1110
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1111
    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1112
    shr-long/2addr v0, v4

    .line 1113
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1114
    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1115
    shr-long/2addr v0, v4

    .line 1116
    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x6

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    .line 1117
    add-int/lit8 p5, p5, 0x6

    long-to-int p0, v0

    aput p0, p4, p5

    .line 1118
    shr-long p0, v0, v4

    .line 1119
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist sub([I[I[I)I
    .registers 13

    .line 1070
    nop

    .line 1071
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    .line 1072
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1073
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1074
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1075
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1076
    shr-long/2addr v1, v0

    .line 1077
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1078
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1079
    shr-long/2addr v1, v0

    .line 1080
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1081
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1082
    shr-long/2addr v1, v0

    .line 1083
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1084
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1085
    shr-long/2addr v1, v0

    .line 1086
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1087
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1088
    shr-long/2addr v1, v0

    .line 1089
    const/4 v5, 0x6

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    .line 1090
    long-to-int p0, v1

    aput p0, p2, v5

    .line 1091
    shr-long p0, v1, v0

    .line 1092
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .registers 13

    .line 1124
    nop

    .line 1125
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    .line 1126
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1127
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1128
    const/4 v5, 0x1

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1129
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1130
    shr-long/2addr v1, v0

    .line 1131
    const/4 v5, 0x2

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1132
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1133
    shr-long/2addr v1, v0

    .line 1134
    const/4 v5, 0x3

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1135
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1136
    shr-long/2addr v1, v0

    .line 1137
    const/4 v5, 0x4

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1138
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1139
    shr-long/2addr v1, v0

    .line 1140
    const/4 v5, 0x5

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1141
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1142
    shr-long/2addr v1, v0

    .line 1143
    const/4 v5, 0x6

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    .line 1144
    long-to-int p0, v1

    aput p0, p2, v5

    .line 1145
    shr-long p0, v1, v0

    .line 1146
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([II[II)I
    .registers 14

    .line 1178
    nop

    .line 1179
    add-int/lit8 v0, p3, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    .line 1180
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1181
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1182
    add-int/lit8 v5, p3, 0x1

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1183
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1184
    shr-long/2addr v1, v0

    .line 1185
    add-int/lit8 v5, p3, 0x2

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x2

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1186
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1187
    shr-long/2addr v1, v0

    .line 1188
    add-int/lit8 v5, p3, 0x3

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x3

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1189
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1190
    shr-long/2addr v1, v0

    .line 1191
    add-int/lit8 v5, p3, 0x4

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x4

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1192
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1193
    shr-long/2addr v1, v0

    .line 1194
    add-int/lit8 v5, p3, 0x5

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x5

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1195
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1196
    shr-long/2addr v1, v0

    .line 1197
    add-int/lit8 p3, p3, 0x6

    aget v5, p2, p3

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p1, p1, 0x6

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v5, p0

    add-long/2addr v1, v5

    .line 1198
    long-to-int p0, v1

    aput p0, p2, p3

    .line 1199
    shr-long p0, v1, v0

    .line 1200
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([I[I)I
    .registers 12

    .line 1151
    nop

    .line 1152
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x0

    add-long/2addr v1, v5

    .line 1153
    long-to-int v5, v1

    aput v5, p1, v0

    .line 1154
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1155
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1156
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1157
    shr-long/2addr v1, v0

    .line 1158
    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1159
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1160
    shr-long/2addr v1, v0

    .line 1161
    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1162
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1163
    shr-long/2addr v1, v0

    .line 1164
    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1165
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1166
    shr-long/2addr v1, v0

    .line 1167
    const/4 v5, 0x5

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1168
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1169
    shr-long/2addr v1, v0

    .line 1170
    const/4 v5, 0x6

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 1171
    long-to-int p0, v1

    aput p0, p1, v5

    .line 1172
    shr-long p0, v1, v0

    .line 1173
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5

    .line 1205
    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 1206
    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x7

    if-ge v1, v2, :cond_16

    .line 1208
    aget v2, p0, v1

    .line 1209
    if-eqz v2, :cond_13

    .line 1211
    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1206
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1214
    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static blacklist zero([I)V
    .registers 3

    .line 1219
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1220
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1221
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1222
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1223
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1224
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1225
    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1226
    return-void
.end method
