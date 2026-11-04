.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


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

    .line 47
    nop

    .line 48
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

    .line 49
    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    aput v5, p4, v4

    .line 50
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 51
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

    .line 52
    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v5

    .line 53
    ushr-long/2addr v0, v4

    .line 54
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

    .line 55
    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v5

    .line 56
    ushr-long/2addr v0, v4

    .line 57
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

    .line 58
    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v5

    .line 59
    ushr-long/2addr v0, v4

    .line 60
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

    .line 61
    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v5

    .line 62
    ushr-long/2addr v0, v4

    .line 63
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

    .line 64
    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v5

    .line 65
    ushr-long/2addr v0, v4

    .line 66
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 67
    add-int/lit8 v5, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v5

    .line 68
    ushr-long/2addr v0, v4

    .line 69
    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    .line 70
    add-int/lit8 p5, p5, 0x7

    long-to-int p0, v0

    aput p0, p4, p5

    .line 71
    ushr-long p0, v0, v4

    .line 72
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

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 37
    long-to-int v6, v1

    aput v6, p2, v5

    .line 38
    ushr-long/2addr v1, v0

    .line 39
    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    .line 40
    long-to-int p0, v1

    aput p0, p2, v5

    .line 41
    ushr-long p0, v1, v0

    .line 42
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addBothTo([II[II[II)I
    .registers 16

    .line 107
    nop

    .line 108
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

    .line 109
    long-to-int v5, v0

    aput v5, p4, v4

    .line 110
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 111
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

    .line 112
    long-to-int v5, v0

    aput v5, p4, v7

    .line 113
    ushr-long/2addr v0, v4

    .line 114
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

    .line 115
    long-to-int v5, v0

    aput v5, p4, v7

    .line 116
    ushr-long/2addr v0, v4

    .line 117
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

    .line 118
    long-to-int v5, v0

    aput v5, p4, v7

    .line 119
    ushr-long/2addr v0, v4

    .line 120
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

    .line 121
    long-to-int v5, v0

    aput v5, p4, v7

    .line 122
    ushr-long/2addr v0, v4

    .line 123
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

    .line 124
    long-to-int v5, v0

    aput v5, p4, v7

    .line 125
    ushr-long/2addr v0, v4

    .line 126
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x6

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    .line 127
    long-to-int v5, v0

    aput v5, p4, v7

    .line 128
    ushr-long/2addr v0, v4

    .line 129
    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-int/lit8 p5, p5, 0x7

    aget p2, p4, p5

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    .line 130
    long-to-int p0, v0

    aput p0, p4, p5

    .line 131
    ushr-long p0, v0, v4

    .line 132
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 13

    .line 77
    nop

    .line 78
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

    .line 79
    long-to-int v5, v1

    aput v5, p2, v0

    .line 80
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 81
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

    .line 82
    long-to-int v6, v1

    aput v6, p2, v5

    .line 83
    ushr-long/2addr v1, v0

    .line 84
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

    .line 85
    long-to-int v6, v1

    aput v6, p2, v5

    .line 86
    ushr-long/2addr v1, v0

    .line 87
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

    .line 88
    long-to-int v6, v1

    aput v6, p2, v5

    .line 89
    ushr-long/2addr v1, v0

    .line 90
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

    .line 91
    long-to-int v6, v1

    aput v6, p2, v5

    .line 92
    ushr-long/2addr v1, v0

    .line 93
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

    .line 94
    long-to-int v6, v1

    aput v6, p2, v5

    .line 95
    ushr-long/2addr v1, v0

    .line 96
    const/4 v5, 0x6

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

    .line 97
    long-to-int v6, v1

    aput v6, p2, v5

    .line 98
    ushr-long/2addr v1, v0

    .line 99
    const/4 v5, 0x7

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

    .line 100
    long-to-int p0, v1

    aput p0, p2, v5

    .line 101
    ushr-long p0, v1, v0

    .line 102
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([II[III)I
    .registers 14

    .line 197
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 198
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

    .line 199
    long-to-int v4, v0

    aput v4, p2, p4

    .line 200
    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    .line 201
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

    .line 202
    long-to-int v4, v0

    aput v4, p2, v6

    .line 203
    ushr-long/2addr v0, p4

    .line 204
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

    .line 205
    long-to-int v4, v0

    aput v4, p2, v6

    .line 206
    ushr-long/2addr v0, p4

    .line 207
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

    .line 208
    long-to-int v4, v0

    aput v4, p2, v6

    .line 209
    ushr-long/2addr v0, p4

    .line 210
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

    .line 211
    long-to-int v4, v0

    aput v4, p2, v6

    .line 212
    ushr-long/2addr v0, p4

    .line 213
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

    .line 214
    long-to-int v4, v0

    aput v4, p2, v6

    .line 215
    ushr-long/2addr v0, p4

    .line 216
    add-int/lit8 v4, p1, 0x6

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x6

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 217
    long-to-int v4, v0

    aput v4, p2, v6

    .line 218
    ushr-long/2addr v0, p4

    .line 219
    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    .line 220
    long-to-int p0, v0

    aput p0, p2, p3

    .line 221
    ushr-long p0, v0, p4

    .line 222
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([I[I)I
    .registers 12

    .line 137
    nop

    .line 138
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

    .line 139
    long-to-int v5, v1

    aput v5, p1, v0

    .line 140
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 141
    const/4 v5, 0x1

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
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 145
    long-to-int v6, v1

    aput v6, p1, v5

    .line 146
    ushr-long/2addr v1, v0

    .line 147
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 148
    long-to-int v6, v1

    aput v6, p1, v5

    .line 149
    ushr-long/2addr v1, v0

    .line 150
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 151
    long-to-int v6, v1

    aput v6, p1, v5

    .line 152
    ushr-long/2addr v1, v0

    .line 153
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 154
    long-to-int v6, v1

    aput v6, p1, v5

    .line 155
    ushr-long/2addr v1, v0

    .line 156
    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 157
    long-to-int v6, v1

    aput v6, p1, v5

    .line 158
    ushr-long/2addr v1, v0

    .line 159
    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    add-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 160
    long-to-int p0, v1

    aput p0, p1, v5

    .line 161
    ushr-long p0, v1, v0

    .line 162
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([I[II)I
    .registers 12

    .line 167
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 168
    const/4 p2, 0x0

    aget v4, p0, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    aget v6, p1, p2

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 169
    long-to-int v4, v0

    aput v4, p1, p2

    .line 170
    const/16 p2, 0x20

    ushr-long/2addr v0, p2

    .line 171
    const/4 v4, 0x1

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 172
    long-to-int v5, v0

    aput v5, p1, v4

    .line 173
    ushr-long/2addr v0, p2

    .line 174
    const/4 v4, 0x2

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 175
    long-to-int v5, v0

    aput v5, p1, v4

    .line 176
    ushr-long/2addr v0, p2

    .line 177
    const/4 v4, 0x3

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 178
    long-to-int v5, v0

    aput v5, p1, v4

    .line 179
    ushr-long/2addr v0, p2

    .line 180
    const/4 v4, 0x4

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 181
    long-to-int v5, v0

    aput v5, p1, v4

    .line 182
    ushr-long/2addr v0, p2

    .line 183
    const/4 v4, 0x5

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 184
    long-to-int v5, v0

    aput v5, p1, v4

    .line 185
    ushr-long/2addr v0, p2

    .line 186
    const/4 v4, 0x6

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 187
    long-to-int v5, v0

    aput v5, p1, v4

    .line 188
    ushr-long/2addr v0, p2

    .line 189
    const/4 v4, 0x7

    aget p0, p0, v4

    int-to-long v5, p0

    and-long/2addr v5, v2

    aget p0, p1, v4

    int-to-long v7, p0

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 190
    long-to-int p0, v0

    aput p0, p1, v4

    .line 191
    ushr-long p0, v0, p2

    .line 192
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addToEachOther([II[II)I
    .registers 15

    .line 227
    nop

    .line 228
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

    .line 229
    long-to-int v6, v1

    aput v6, p0, v0

    .line 230
    aput v6, p2, v5

    .line 231
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 232
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

    .line 233
    long-to-int v6, v1

    aput v6, p0, v5

    .line 234
    aput v6, p2, v8

    .line 235
    ushr-long/2addr v1, v0

    .line 236
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

    .line 237
    long-to-int v6, v1

    aput v6, p0, v5

    .line 238
    aput v6, p2, v8

    .line 239
    ushr-long/2addr v1, v0

    .line 240
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

    .line 241
    long-to-int v6, v1

    aput v6, p0, v5

    .line 242
    aput v6, p2, v8

    .line 243
    ushr-long/2addr v1, v0

    .line 244
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

    .line 245
    long-to-int v6, v1

    aput v6, p0, v5

    .line 246
    aput v6, p2, v8

    .line 247
    ushr-long/2addr v1, v0

    .line 248
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

    .line 249
    long-to-int v6, v1

    aput v6, p0, v5

    .line 250
    aput v6, p2, v8

    .line 251
    ushr-long/2addr v1, v0

    .line 252
    add-int/lit8 v5, p1, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p3, 0x6

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long/2addr v6, v9

    add-long/2addr v1, v6

    .line 253
    long-to-int v6, v1

    aput v6, p0, v5

    .line 254
    aput v6, p2, v8

    .line 255
    ushr-long/2addr v1, v0

    .line 256
    add-int/lit8 p1, p1, 0x7

    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p3, p3, 0x7

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 257
    long-to-int v3, v1

    aput v3, p0, p1

    .line 258
    aput v3, p2, p3

    .line 259
    ushr-long p0, v1, v0

    .line 260
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist copy([II[II)V
    .registers 6

    .line 277
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 278
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 279
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 280
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 281
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 282
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 283
    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget v1, p0, v1

    aput v1, p2, v0

    .line 284
    add-int/lit8 p3, p3, 0x7

    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    aput p0, p2, p3

    .line 285
    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4

    .line 265
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 266
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 267
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 268
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 269
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 270
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 271
    const/4 v0, 0x6

    aget v1, p0, v0

    aput v1, p1, v0

    .line 272
    const/4 v0, 0x7

    aget p0, p0, v0

    aput p0, p1, v0

    .line 273
    return-void
.end method

.method public static blacklist copy64([JI[JI)V
    .registers 7

    .line 297
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 298
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 299
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 300
    add-int/lit8 p3, p3, 0x3

    add-int/lit8 p1, p1, 0x3

    aget-wide p0, p0, p1

    aput-wide p0, p2, p3

    .line 301
    return-void
.end method

.method public static blacklist copy64([J[J)V
    .registers 5

    .line 289
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 290
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 291
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 292
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 293
    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    .line 305
    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist create64()[J
    .registers 1

    .line 310
    const/4 v0, 0x4

    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    .line 315
    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt64()[J
    .registers 1

    .line 320
    const/16 v0, 0x8

    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist diff([II[II[II)Z
    .registers 8

    .line 325
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v0

    .line 326
    if-eqz v0, :cond_a

    .line 328
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    goto :goto_13

    .line 332
    :cond_a
    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    .line 334
    :goto_13
    return v0
.end method

.method public static blacklist eq([I[I)Z
    .registers 5

    .line 339
    const/4 v0, 0x7

    :goto_1
    if-ltz v0, :cond_e

    .line 341
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    .line 343
    const/4 p0, 0x0

    return p0

    .line 339
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 346
    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist eq64([J[J)Z
    .registers 7

    .line 351
    const/4 v0, 0x3

    :goto_1
    if-ltz v0, :cond_10

    .line 353
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    .line 355
    const/4 p0, 0x0

    return p0

    .line 351
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 358
    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    .line 363
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_27

    .line 368
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 371
    const/4 v1, 0x0

    :goto_13
    const/16 v2, 0x8

    if-ge v1, v2, :cond_26

    .line 373
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 374
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 376
    :cond_26
    return-object v0

    .line 365
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist fromBigInteger64(Ljava/math/BigInteger;)[J
    .registers 5

    .line 381
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_26

    .line 386
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 389
    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_25

    .line 391
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 392
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 394
    :cond_25
    return-object v0

    .line 383
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist getBit([II)I
    .registers 4

    .line 399
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 401
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    .line 403
    :cond_8
    and-int/lit16 v1, p1, 0xff

    if-eq v1, p1, :cond_d

    .line 405
    return v0

    .line 407
    :cond_d
    ushr-int/lit8 v0, p1, 0x5

    .line 408
    and-int/lit8 p1, p1, 0x1f

    .line 409
    aget p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist gte([II[II)Z
    .registers 9

    .line 428
    const/4 v0, 0x7

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    .line 430
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 431
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 432
    if-ge v2, v3, :cond_14

    .line 433
    const/4 p0, 0x0

    return p0

    .line 434
    :cond_14
    if-le v2, v3, :cond_17

    .line 435
    return v1

    .line 428
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 437
    :cond_1a
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .registers 7

    .line 414
    const/4 v0, 0x7

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 416
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 417
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 418
    if-ge v2, v3, :cond_10

    .line 419
    const/4 p0, 0x0

    return p0

    .line 420
    :cond_10
    if-le v2, v3, :cond_13

    .line 421
    return v1

    .line 414
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 423
    :cond_16
    return v1
.end method

.method public static blacklist isOne([I)Z
    .registers 5

    .line 442
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 444
    return v0

    .line 446
    :cond_7
    move v1, v2

    :goto_8
    const/16 v3, 0x8

    if-ge v1, v3, :cond_14

    .line 448
    aget v3, p0, v1

    if-eqz v3, :cond_11

    .line 450
    return v0

    .line 446
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 453
    :cond_14
    return v2
.end method

.method public static blacklist isOne64([J)Z
    .registers 8

    .line 458
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 460
    return v0

    .line 462
    :cond_a
    const/4 v1, 0x1

    move v2, v1

    :goto_c
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1b

    .line 464
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    .line 466
    return v0

    .line 462
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 469
    :cond_1b
    return v1
.end method

.method public static blacklist isZero([I)Z
    .registers 4

    .line 474
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 476
    aget v2, p0, v1

    if-eqz v2, :cond_b

    .line 478
    return v0

    .line 474
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 481
    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist isZero64([J)Z
    .registers 7

    .line 486
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_11

    .line 488
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 490
    return v0

    .line 486
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 493
    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist mul([II[II[II)V
    .registers 37

    .line 569
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 570
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 571
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 572
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 573
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 574
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 575
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 576
    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v2

    aget v2, p2, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 579
    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v19, v0

    aget v0, p0, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    .line 580
    mul-long v21, v0, v19

    const-wide/16 v23, 0x0

    move-wide/from16 p2, v0

    add-long v0, v21, v23

    .line 581
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v21, v2

    long-to-int v2, v0

    aput v2, p4, v16

    .line 582
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 583
    mul-long v25, p2, v4

    add-long v0, v0, v25

    .line 584
    add-int/lit8 v3, p5, 0x1

    move/from16 v16, v2

    long-to-int v2, v0

    aput v2, p4, v3

    .line 585
    ushr-long v0, v0, v16

    .line 586
    mul-long v2, p2, v6

    add-long/2addr v0, v2

    .line 587
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 588
    ushr-long v0, v0, v16

    .line 589
    mul-long v2, p2, v8

    add-long/2addr v0, v2

    .line 590
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 591
    ushr-long v0, v0, v16

    .line 592
    mul-long v2, p2, v10

    add-long/2addr v0, v2

    .line 593
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 594
    ushr-long v0, v0, v16

    .line 595
    mul-long v2, p2, v12

    add-long/2addr v0, v2

    .line 596
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 597
    ushr-long v0, v0, v16

    .line 598
    mul-long v2, p2, v14

    add-long/2addr v0, v2

    .line 599
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 600
    ushr-long v0, v0, v16

    .line 601
    mul-long v2, p2, v21

    add-long/2addr v0, v2

    .line 602
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 603
    ushr-long v0, v0, v16

    .line 604
    add-int/lit8 v2, p5, 0x8

    long-to-int v0, v0

    aput v0, p4, v2

    .line 607
    const/4 v0, 0x1

    move/from16 v1, p5

    move v2, v0

    :goto_a5
    const/16 v3, 0x8

    if-ge v2, v3, :cond_15a

    .line 609
    add-int/2addr v1, v0

    .line 610
    add-int v3, p1, v2

    aget v3, p0, v3

    move/from16 p3, v1

    int-to-long v0, v3

    and-long v0, v0, v17

    .line 611
    mul-long v25, v0, v19

    add-int/lit8 v3, p3, 0x0

    move-wide/from16 v27, v0

    aget v0, p4, v3

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v25, v25, v0

    add-long v0, v25, v23

    .line 612
    move/from16 v25, v2

    long-to-int v2, v0

    aput v2, p4, v3

    .line 613
    ushr-long v0, v0, v16

    .line 614
    mul-long v2, v27, v4

    add-int/lit8 v26, p3, 0x1

    move-wide/from16 v29, v0

    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v29, v2

    .line 615
    long-to-int v2, v0

    aput v2, p4, v26

    .line 616
    ushr-long v0, v0, v16

    .line 617
    mul-long v2, v27, v6

    add-int/lit8 v26, p3, 0x2

    move-wide/from16 v29, v0

    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v29, v2

    .line 618
    long-to-int v2, v0

    aput v2, p4, v26

    .line 619
    ushr-long v0, v0, v16

    .line 620
    mul-long v2, v27, v8

    add-int/lit8 v26, p3, 0x3

    move-wide/from16 v29, v0

    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v29, v2

    .line 621
    long-to-int v2, v0

    aput v2, p4, v26

    .line 622
    ushr-long v0, v0, v16

    .line 623
    mul-long v2, v27, v10

    add-int/lit8 v26, p3, 0x4

    move-wide/from16 v29, v0

    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v29, v2

    .line 624
    long-to-int v2, v0

    aput v2, p4, v26

    .line 625
    ushr-long v0, v0, v16

    .line 626
    mul-long v2, v27, v12

    add-int/lit8 v26, p3, 0x5

    move-wide/from16 v29, v0

    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v29, v2

    .line 627
    long-to-int v2, v0

    aput v2, p4, v26

    .line 628
    ushr-long v0, v0, v16

    .line 629
    mul-long v2, v27, v14

    add-int/lit8 v26, p3, 0x6

    move-wide/from16 v29, v0

    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v29, v2

    .line 630
    long-to-int v2, v0

    aput v2, p4, v26

    .line 631
    ushr-long v0, v0, v16

    .line 632
    mul-long v2, v27, v21

    add-int/lit8 v26, p3, 0x7

    move-wide/from16 v27, v0

    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v27, v2

    .line 633
    long-to-int v2, v0

    aput v2, p4, v26

    .line 634
    ushr-long v0, v0, v16

    .line 635
    add-int/lit8 v2, p3, 0x8

    long-to-int v0, v0

    aput v0, p4, v2

    .line 607
    add-int/lit8 v2, v25, 0x1

    move/from16 v1, p3

    const/4 v0, 0x1

    goto/16 :goto_a5

    .line 637
    :cond_15a
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 37

    .line 498
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 499
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 500
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 501
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 502
    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 503
    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 504
    const/4 v15, 0x6

    move/from16 v21, v4

    aget v4, p1, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    int-to-long v5, v4

    and-long v4, v5, v19

    .line 505
    const/4 v6, 0x7

    aget v7, p1, v6

    move/from16 v25, v6

    int-to-long v6, v7

    and-long v6, v6, v19

    .line 508
    move/from16 v26, v8

    aget v8, p0, v16

    move/from16 v27, v11

    move-wide/from16 v28, v12

    int-to-long v11, v8

    and-long v11, v11, v19

    .line 509
    mul-long v30, v11, v17

    const-wide/16 v32, 0x0

    move v8, v14

    move v13, v15

    add-long v14, v30, v32

    .line 510
    move/from16 p1, v8

    long-to-int v8, v14

    aput v8, p2, v16

    .line 511
    const/16 v8, 0x20

    ushr-long/2addr v14, v8

    .line 512
    mul-long v30, v11, v23

    add-long v14, v14, v30

    .line 513
    move/from16 v16, v8

    long-to-int v8, v14

    aput v8, p2, v22

    .line 514
    ushr-long v14, v14, v16

    .line 515
    mul-long v30, v11, v9

    add-long v14, v14, v30

    .line 516
    long-to-int v8, v14

    aput v8, p2, v26

    .line 517
    ushr-long v14, v14, v16

    .line 518
    mul-long v30, v11, v28

    add-long v14, v14, v30

    .line 519
    long-to-int v8, v14

    aput v8, p2, v27

    .line 520
    ushr-long v14, v14, v16

    .line 521
    mul-long v26, v11, v0

    add-long v14, v14, v26

    .line 522
    long-to-int v8, v14

    aput v8, p2, p1

    .line 523
    ushr-long v14, v14, v16

    .line 524
    mul-long v26, v11, v2

    add-long v14, v14, v26

    .line 525
    long-to-int v8, v14

    aput v8, p2, v21

    .line 526
    ushr-long v14, v14, v16

    .line 527
    mul-long v26, v11, v4

    add-long v14, v14, v26

    .line 528
    long-to-int v8, v14

    aput v8, p2, v13

    .line 529
    ushr-long v13, v14, v16

    .line 530
    mul-long/2addr v11, v6

    add-long/2addr v13, v11

    .line 531
    long-to-int v8, v13

    aput v8, p2, v25

    .line 532
    ushr-long v11, v13, v16

    .line 533
    long-to-int v8, v11

    const/16 v11, 0x8

    aput v8, p2, v11

    .line 536
    move/from16 v8, v22

    :goto_a0
    if-ge v8, v11, :cond_14a

    .line 538
    aget v12, p0, v8

    int-to-long v12, v12

    and-long v12, v12, v19

    .line 539
    mul-long v14, v12, v17

    add-int/lit8 v21, v8, 0x0

    aget v11, p2, v21

    move-wide/from16 v25, v0

    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v14, v14, v32

    .line 540
    long-to-int v0, v14

    aput v0, p2, v21

    .line 541
    ushr-long v0, v14, v16

    .line 542
    mul-long v14, v12, v23

    add-int/lit8 v11, v8, 0x1

    move-wide/from16 v21, v0

    aget v0, p2, v11

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v21, v14

    .line 543
    long-to-int v14, v0

    aput v14, p2, v11

    .line 544
    ushr-long v0, v0, v16

    .line 545
    mul-long v14, v12, v9

    add-int/lit8 v21, v8, 0x2

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 546
    long-to-int v14, v0

    aput v14, p2, v21

    .line 547
    ushr-long v0, v0, v16

    .line 548
    mul-long v14, v12, v28

    add-int/lit8 v21, v8, 0x3

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 549
    long-to-int v14, v0

    aput v14, p2, v21

    .line 550
    ushr-long v0, v0, v16

    .line 551
    mul-long v14, v12, v25

    add-int/lit8 v21, v8, 0x4

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 552
    long-to-int v14, v0

    aput v14, p2, v21

    .line 553
    ushr-long v0, v0, v16

    .line 554
    mul-long v14, v12, v2

    add-int/lit8 v21, v8, 0x5

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 555
    long-to-int v14, v0

    aput v14, p2, v21

    .line 556
    ushr-long v0, v0, v16

    .line 557
    mul-long v14, v12, v4

    add-int/lit8 v21, v8, 0x6

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 558
    long-to-int v14, v0

    aput v14, p2, v21

    .line 559
    ushr-long v0, v0, v16

    .line 560
    mul-long/2addr v12, v6

    add-int/lit8 v14, v8, 0x7

    aget v15, p2, v14

    move-wide/from16 v21, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v12, v0

    add-long v0, v21, v12

    .line 561
    long-to-int v12, v0

    aput v12, p2, v14

    .line 562
    ushr-long v0, v0, v16

    .line 563
    add-int/lit8 v8, v8, 0x8

    long-to-int v0, v0

    aput v0, p2, v8

    .line 536
    move v8, v11

    move-wide/from16 v0, v25

    const/16 v11, 0x8

    goto/16 :goto_a0

    .line 565
    :cond_14a
    return-void
.end method

.method public static blacklist mul128([I[I[I)V
    .registers 37

    .line 641
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 642
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 643
    const/4 v8, 0x2

    aget v9, p0, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 644
    const/4 v11, 0x3

    aget v12, p0, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 645
    const/4 v14, 0x4

    aget v15, p0, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 646
    const/4 v2, 0x5

    aget v15, p0, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 647
    const/4 v15, 0x6

    move/from16 v21, v4

    aget v4, p0, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    int-to-long v5, v4

    and-long v4, v5, v19

    .line 648
    const/4 v6, 0x7

    aget v7, p0, v6

    move/from16 v25, v6

    int-to-long v6, v7

    and-long v6, v6, v19

    .line 651
    move/from16 v26, v8

    aget v8, p1, v16

    move/from16 v27, v11

    move-wide/from16 v28, v12

    int-to-long v11, v8

    and-long v11, v11, v19

    .line 652
    mul-long v30, v11, v17

    const-wide/16 v32, 0x0

    move v8, v14

    move v13, v15

    add-long v14, v30, v32

    .line 653
    move/from16 p0, v8

    long-to-int v8, v14

    aput v8, p2, v16

    .line 654
    const/16 v8, 0x20

    ushr-long/2addr v14, v8

    .line 655
    mul-long v30, v11, v23

    add-long v14, v14, v30

    .line 656
    move/from16 v16, v8

    long-to-int v8, v14

    aput v8, p2, v22

    .line 657
    ushr-long v14, v14, v16

    .line 658
    mul-long v30, v11, v9

    add-long v14, v14, v30

    .line 659
    long-to-int v8, v14

    aput v8, p2, v26

    .line 660
    ushr-long v14, v14, v16

    .line 661
    mul-long v30, v11, v28

    add-long v14, v14, v30

    .line 662
    long-to-int v8, v14

    aput v8, p2, v27

    .line 663
    ushr-long v14, v14, v16

    .line 664
    mul-long v26, v11, v0

    add-long v14, v14, v26

    .line 665
    long-to-int v8, v14

    aput v8, p2, p0

    .line 666
    ushr-long v14, v14, v16

    .line 667
    mul-long v26, v11, v2

    add-long v14, v14, v26

    .line 668
    long-to-int v8, v14

    aput v8, p2, v21

    .line 669
    ushr-long v14, v14, v16

    .line 670
    mul-long v26, v11, v4

    add-long v14, v14, v26

    .line 671
    long-to-int v8, v14

    aput v8, p2, v13

    .line 672
    ushr-long v13, v14, v16

    .line 673
    mul-long/2addr v11, v6

    add-long/2addr v13, v11

    .line 674
    long-to-int v8, v13

    aput v8, p2, v25

    .line 675
    ushr-long v11, v13, v16

    .line 676
    const/16 v8, 0x8

    long-to-int v11, v11

    aput v11, p2, v8

    .line 679
    move/from16 v8, v22

    :goto_a0
    move/from16 v11, p0

    if-ge v8, v11, :cond_14c

    .line 681
    aget v12, p1, v8

    int-to-long v12, v12

    and-long v12, v12, v19

    .line 682
    mul-long v14, v12, v17

    add-int/lit8 v21, v8, 0x0

    aget v11, p2, v21

    move-wide/from16 v25, v0

    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v14, v14, v32

    .line 683
    long-to-int v0, v14

    aput v0, p2, v21

    .line 684
    ushr-long v0, v14, v16

    .line 685
    mul-long v14, v12, v23

    add-int/lit8 v11, v8, 0x1

    move-wide/from16 v21, v0

    aget v0, p2, v11

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v21, v14

    .line 686
    long-to-int v14, v0

    aput v14, p2, v11

    .line 687
    ushr-long v0, v0, v16

    .line 688
    mul-long v14, v12, v9

    add-int/lit8 v21, v8, 0x2

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 689
    long-to-int v14, v0

    aput v14, p2, v21

    .line 690
    ushr-long v0, v0, v16

    .line 691
    mul-long v14, v12, v28

    add-int/lit8 v21, v8, 0x3

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 692
    long-to-int v14, v0

    aput v14, p2, v21

    .line 693
    ushr-long v0, v0, v16

    .line 694
    mul-long v14, v12, v25

    add-int/lit8 v21, v8, 0x4

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 695
    long-to-int v14, v0

    aput v14, p2, v21

    .line 696
    ushr-long v0, v0, v16

    .line 697
    mul-long v14, v12, v2

    add-int/lit8 v21, v8, 0x5

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 698
    long-to-int v14, v0

    aput v14, p2, v21

    .line 699
    ushr-long v0, v0, v16

    .line 700
    mul-long v14, v12, v4

    add-int/lit8 v21, v8, 0x6

    move-wide/from16 v30, v0

    aget v0, p2, v21

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v30, v14

    .line 701
    long-to-int v14, v0

    aput v14, p2, v21

    .line 702
    ushr-long v0, v0, v16

    .line 703
    mul-long/2addr v12, v6

    add-int/lit8 v14, v8, 0x7

    aget v15, p2, v14

    move-wide/from16 v21, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v12, v0

    add-long v0, v21, v12

    .line 704
    long-to-int v12, v0

    aput v12, p2, v14

    .line 705
    ushr-long v0, v0, v16

    .line 706
    add-int/lit8 v8, v8, 0x8

    long-to-int v0, v0

    aput v0, p2, v8

    .line 679
    move v8, v11

    move-wide/from16 v0, v25

    const/16 p0, 0x4

    goto/16 :goto_a0

    .line 708
    :cond_14c
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 19

    .line 809
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 810
    add-int/lit8 p0, p2, 0x0

    aget p0, p1, p0

    int-to-long v4, p0

    and-long/2addr v4, v2

    .line 811
    mul-long v6, v0, v4

    add-int/lit8 p0, p4, 0x0

    aget p0, p3, p0

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    add-long/2addr v6, v8

    .line 812
    add-int/lit8 p0, p6, 0x0

    long-to-int v8, v6

    aput v8, p5, p0

    .line 813
    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    .line 814
    add-int/lit8 v8, p2, 0x1

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 815
    mul-long v10, v0, v8

    add-long/2addr v10, v4

    add-int/lit8 v4, p4, 0x1

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v10, v4

    add-long/2addr v6, v10

    .line 816
    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    aput v5, p5, v4

    .line 817
    ushr-long v4, v6, p0

    .line 818
    add-int/lit8 v6, p2, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 819
    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x2

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    .line 820
    add-int/lit8 v8, p6, 0x2

    long-to-int v9, v4

    aput v9, p5, v8

    .line 821
    ushr-long/2addr v4, p0

    .line 822
    add-int/lit8 v8, p2, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 823
    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x3

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 824
    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    aput v7, p5, v6

    .line 825
    ushr-long/2addr v4, p0

    .line 826
    add-int/lit8 v6, p2, 0x4

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 827
    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x4

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    .line 828
    add-int/lit8 v8, p6, 0x4

    long-to-int v9, v4

    aput v9, p5, v8

    .line 829
    ushr-long/2addr v4, p0

    .line 830
    add-int/lit8 v8, p2, 0x5

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 831
    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x5

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 832
    add-int/lit8 v6, p6, 0x5

    long-to-int v7, v4

    aput v7, p5, v6

    .line 833
    ushr-long/2addr v4, p0

    .line 834
    add-int/lit8 v6, p2, 0x6

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 835
    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x6

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    .line 836
    add-int/lit8 v8, p6, 0x6

    long-to-int v9, v4

    aput v9, p5, v8

    .line 837
    ushr-long/2addr v4, p0

    .line 838
    add-int/lit8 p2, p2, 0x7

    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    .line 839
    mul-long/2addr v0, p1

    add-long/2addr v0, v6

    add-int/lit8 v6, p4, 0x7

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 840
    add-int/lit8 v0, p6, 0x7

    long-to-int v1, v4

    aput v1, p5, v0

    .line 841
    ushr-long v0, v4, p0

    .line 842
    add-long/2addr v0, p1

    .line 843
    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .registers 22

    .line 941
    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 942
    and-long v6, p1, v4

    .line 943
    mul-long v8, v2, v6

    add-int/lit8 v10, v1, 0x0

    aget v11, v0, v10

    int-to-long v11, v11

    and-long/2addr v11, v4

    add-long/2addr v8, v11

    const-wide/16 v11, 0x0

    add-long/2addr v8, v11

    .line 944
    long-to-int v13, v8

    aput v13, v0, v10

    .line 945
    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    .line 946
    ushr-long v13, p1, v10

    .line 947
    mul-long/2addr v2, v13

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x1

    aget v7, v0, v6

    move-wide v15, v4

    int-to-long v4, v7

    and-long/2addr v4, v15

    add-long/2addr v2, v4

    add-long/2addr v8, v2

    .line 948
    long-to-int v2, v8

    aput v2, v0, v6

    .line 949
    ushr-long v2, v8, v10

    .line 950
    add-int/lit8 v4, v1, 0x2

    aget v5, v0, v4

    int-to-long v5, v5

    and-long/2addr v5, v15

    add-long/2addr v13, v5

    add-long/2addr v2, v13

    .line 951
    long-to-int v5, v2

    aput v5, v0, v4

    .line 952
    ushr-long/2addr v2, v10

    .line 953
    add-int/lit8 v4, v1, 0x3

    aget v5, v0, v4

    int-to-long v5, v5

    and-long/2addr v5, v15

    add-long/2addr v2, v5

    .line 954
    long-to-int v5, v2

    aput v5, v0, v4

    .line 955
    ushr-long/2addr v2, v10

    .line 956
    cmp-long v2, v2, v11

    if-nez v2, :cond_50

    const/4 v0, 0x0

    goto :goto_57

    :cond_50
    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v0

    :goto_57
    return v0
.end method

.method public static blacklist mul33WordAdd(II[II)I
    .registers 14

    .line 964
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    .line 965
    mul-long/2addr v0, p0

    add-int/lit8 v4, p3, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x0

    add-long/2addr v0, v5

    .line 966
    long-to-int v7, v0

    aput v7, p2, v4

    .line 967
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 968
    add-int/lit8 v7, p3, 0x1

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr p0, v8

    add-long/2addr v0, p0

    .line 969
    long-to-int p0, v0

    aput p0, p2, v7

    .line 970
    ushr-long p0, v0, v4

    .line 971
    add-int/lit8 v0, p3, 0x2

    aget v1, p2, v0

    int-to-long v7, v1

    and-long v1, v7, v2

    add-long/2addr p0, v1

    .line 972
    long-to-int v1, p0

    aput v1, p2, v0

    .line 973
    ushr-long/2addr p0, v4

    .line 974
    cmp-long p0, p0, v5

    if-nez p0, :cond_39

    const/4 p0, 0x0

    goto :goto_40

    :cond_39
    const/16 p0, 0x8

    const/4 p1, 0x3

    invoke-static {p0, p2, p3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_40
    return p0
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .registers 40

    .line 759
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 760
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 761
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 762
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 763
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 764
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 765
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 766
    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v2

    aget v2, p2, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 768
    nop

    .line 769
    const/16 v16, 0x0

    const-wide/16 v19, 0x0

    move-wide/from16 v21, v0

    move-wide/from16 p2, v2

    move/from16 v0, v16

    move-wide/from16 v1, v19

    move/from16 v16, p5

    :goto_47
    const/16 v3, 0x8

    if-ge v0, v3, :cond_121

    .line 771
    add-int v23, p1, v0

    move/from16 p5, v3

    aget v3, p0, v23

    move-wide/from16 v23, v4

    int-to-long v3, v3

    and-long v3, v3, v17

    .line 772
    mul-long v25, v3, v21

    add-int/lit8 v5, v16, 0x0

    move/from16 v27, v0

    aget v0, p4, v5

    move-wide/from16 v28, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v25, v25, v3

    add-long v3, v25, v19

    .line 773
    long-to-int v0, v3

    aput v0, p4, v5

    .line 774
    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    .line 775
    mul-long v25, v28, v23

    add-int/lit8 v5, v16, 0x1

    move/from16 v30, v0

    aget v0, p4, v5

    move-wide/from16 v31, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v25, v25, v3

    add-long v3, v31, v25

    .line 776
    long-to-int v0, v3

    aput v0, p4, v5

    .line 777
    ushr-long v3, v3, v30

    .line 778
    mul-long v25, v28, v6

    add-int/lit8 v0, v16, 0x2

    move/from16 v31, v0

    aget v0, p4, v31

    move-wide/from16 v32, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v25, v25, v3

    add-long v3, v32, v25

    .line 779
    long-to-int v0, v3

    aput v0, p4, v31

    .line 780
    ushr-long v3, v3, v30

    .line 781
    mul-long v25, v28, v8

    add-int/lit8 v0, v16, 0x3

    move/from16 v31, v0

    aget v0, p4, v31

    move-wide/from16 v32, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v25, v25, v3

    add-long v3, v32, v25

    .line 782
    long-to-int v0, v3

    aput v0, p4, v31

    .line 783
    ushr-long v3, v3, v30

    .line 784
    mul-long v25, v28, v10

    add-int/lit8 v0, v16, 0x4

    move/from16 v31, v0

    aget v0, p4, v31

    move-wide/from16 v32, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v25, v25, v3

    add-long v3, v32, v25

    .line 785
    long-to-int v0, v3

    aput v0, p4, v31

    .line 786
    ushr-long v3, v3, v30

    .line 787
    mul-long v25, v28, v12

    add-int/lit8 v0, v16, 0x5

    move/from16 v31, v0

    aget v0, p4, v31

    move-wide/from16 v32, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v25, v25, v3

    add-long v3, v32, v25

    .line 788
    long-to-int v0, v3

    aput v0, p4, v31

    .line 789
    ushr-long v3, v3, v30

    .line 790
    mul-long v25, v28, v14

    add-int/lit8 v0, v16, 0x6

    move/from16 v31, v0

    aget v0, p4, v31

    move-wide/from16 v32, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v25, v25, v3

    add-long v3, v32, v25

    .line 791
    long-to-int v0, v3

    aput v0, p4, v31

    .line 792
    ushr-long v3, v3, v30

    .line 793
    mul-long v25, v28, p2

    add-int/lit8 v0, v16, 0x7

    move/from16 v28, v0

    aget v0, p4, v28

    move-wide/from16 v31, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v25, v25, v3

    add-long v3, v31, v25

    .line 794
    long-to-int v0, v3

    aput v0, p4, v28

    .line 795
    ushr-long v3, v3, v30

    .line 797
    add-int/lit8 v16, v16, 0x8

    aget v0, p4, v16

    move-wide/from16 v25, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v3, v25, v3

    add-long/2addr v1, v3

    .line 798
    long-to-int v0, v1

    aput v0, p4, v16

    .line 799
    ushr-long v1, v1, v30

    .line 800
    nop

    .line 769
    add-int/lit8 v0, v27, 0x1

    move/from16 v16, v5

    move-wide/from16 v4, v23

    goto/16 :goto_47

    .line 802
    :cond_121
    long-to-int v0, v1

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 36

    .line 712
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 713
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .line 714
    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 715
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 716
    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .line 717
    const/4 v13, 0x5

    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .line 718
    const/4 v15, 0x6

    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 719
    const/4 v2, 0x7

    aget v2, p1, v2

    move-wide/from16 v19, v3

    int-to-long v3, v2

    and-long v2, v3, v19

    .line 721
    nop

    .line 722
    const-wide/16 v21, 0x0

    move-wide v15, v0

    move-wide/from16 v0, v21

    const/4 v4, 0x0

    :goto_39
    move-wide/from16 v23, v2

    const/16 v2, 0x8

    if-ge v4, v2, :cond_10c

    .line 724
    aget v2, p0, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    .line 725
    mul-long v25, v2, v17

    add-int/lit8 v27, v4, 0x0

    move-wide/from16 v28, v2

    aget v2, p2, v27

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v25, v25, v2

    add-long v2, v25, v21

    .line 726
    move/from16 v25, v4

    long-to-int v4, v2

    aput v4, p2, v27

    .line 727
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 728
    mul-long v26, v28, v5

    add-int/lit8 v30, v25, 0x1

    move/from16 p1, v4

    aget v4, p2, v30

    move-wide/from16 v31, v2

    int-to-long v2, v4

    and-long v2, v2, v19

    add-long v26, v26, v2

    add-long v2, v31, v26

    .line 729
    long-to-int v4, v2

    aput v4, p2, v30

    .line 730
    ushr-long v2, v2, p1

    .line 731
    mul-long v26, v28, v7

    add-int/lit8 v4, v25, 0x2

    move-wide/from16 v31, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v26, v26, v2

    add-long v2, v31, v26

    .line 732
    move/from16 v26, v4

    long-to-int v4, v2

    aput v4, p2, v26

    .line 733
    ushr-long v2, v2, p1

    .line 734
    mul-long v26, v28, v9

    add-int/lit8 v4, v25, 0x3

    move-wide/from16 v31, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v26, v26, v2

    add-long v2, v31, v26

    .line 735
    move/from16 v26, v4

    long-to-int v4, v2

    aput v4, p2, v26

    .line 736
    ushr-long v2, v2, p1

    .line 737
    mul-long v26, v28, v11

    add-int/lit8 v4, v25, 0x4

    move-wide/from16 v31, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v26, v26, v2

    add-long v2, v31, v26

    .line 738
    move/from16 v26, v4

    long-to-int v4, v2

    aput v4, p2, v26

    .line 739
    ushr-long v2, v2, p1

    .line 740
    mul-long v26, v28, v13

    add-int/lit8 v4, v25, 0x5

    move-wide/from16 v31, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v26, v26, v2

    add-long v2, v31, v26

    .line 741
    move/from16 v26, v4

    long-to-int v4, v2

    aput v4, p2, v26

    .line 742
    ushr-long v2, v2, p1

    .line 743
    mul-long v26, v28, v15

    add-int/lit8 v4, v25, 0x6

    move-wide/from16 v31, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v26, v26, v2

    add-long v2, v31, v26

    .line 744
    move/from16 v26, v4

    long-to-int v4, v2

    aput v4, p2, v26

    .line 745
    ushr-long v2, v2, p1

    .line 746
    mul-long v26, v28, v23

    add-int/lit8 v4, v25, 0x7

    move-wide/from16 v28, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v26, v26, v2

    add-long v2, v28, v26

    .line 747
    move/from16 v26, v4

    long-to-int v4, v2

    aput v4, p2, v26

    .line 748
    ushr-long v2, v2, p1

    .line 750
    add-int/lit8 v4, v25, 0x8

    move-wide/from16 v25, v2

    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v2, v25, v2

    add-long/2addr v0, v2

    .line 751
    long-to-int v2, v0

    aput v2, p2, v4

    .line 752
    ushr-long v0, v0, p1

    .line 722
    move-wide/from16 v2, v23

    move/from16 v4, v30

    goto/16 :goto_39

    .line 754
    :cond_10c
    long-to-int v0, v0

    return v0
.end method

.method public static blacklist mulByWord(I[I)I
    .registers 11

    .line 848
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 849
    const/4 p0, 0x0

    aget v4, p1, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    .line 850
    long-to-int v6, v4

    aput v6, p1, p0

    .line 851
    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    .line 852
    const/4 v6, 0x1

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 853
    long-to-int v7, v4

    aput v7, p1, v6

    .line 854
    ushr-long/2addr v4, p0

    .line 855
    const/4 v6, 0x2

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 856
    long-to-int v7, v4

    aput v7, p1, v6

    .line 857
    ushr-long/2addr v4, p0

    .line 858
    const/4 v6, 0x3

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 859
    long-to-int v7, v4

    aput v7, p1, v6

    .line 860
    ushr-long/2addr v4, p0

    .line 861
    const/4 v6, 0x4

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 862
    long-to-int v7, v4

    aput v7, p1, v6

    .line 863
    ushr-long/2addr v4, p0

    .line 864
    const/4 v6, 0x5

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 865
    long-to-int v7, v4

    aput v7, p1, v6

    .line 866
    ushr-long/2addr v4, p0

    .line 867
    const/4 v6, 0x6

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    .line 868
    long-to-int v7, v4

    aput v7, p1, v6

    .line 869
    ushr-long/2addr v4, p0

    .line 870
    const/4 v6, 0x7

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v2, v7

    mul-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 871
    long-to-int v0, v4

    aput v0, p1, v6

    .line 872
    ushr-long p0, v4, p0

    .line 873
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulByWordAddTo(I[I[I)I
    .registers 14

    .line 878
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 879
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

    .line 880
    long-to-int v6, v4

    aput v6, p2, p0

    .line 881
    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    .line 882
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

    .line 883
    long-to-int v7, v4

    aput v7, p2, v6

    .line 884
    ushr-long/2addr v4, p0

    .line 885
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

    .line 886
    long-to-int v7, v4

    aput v7, p2, v6

    .line 887
    ushr-long/2addr v4, p0

    .line 888
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

    .line 889
    long-to-int v7, v4

    aput v7, p2, v6

    .line 890
    ushr-long/2addr v4, p0

    .line 891
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

    .line 892
    long-to-int v7, v4

    aput v7, p2, v6

    .line 893
    ushr-long/2addr v4, p0

    .line 894
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

    .line 895
    long-to-int v7, v4

    aput v7, p2, v6

    .line 896
    ushr-long/2addr v4, p0

    .line 897
    const/4 v6, 0x6

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 898
    long-to-int v7, v4

    aput v7, p2, v6

    .line 899
    ushr-long/2addr v4, p0

    .line 900
    const/4 v6, 0x7

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v0, v7

    aget p1, p1, v6

    int-to-long v7, p1

    and-long/2addr v2, v7

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    .line 901
    long-to-int p1, v4

    aput p1, p2, v6

    .line 902
    ushr-long p0, v4, p0

    .line 903
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulWord(I[I[II)I
    .registers 12

    .line 995
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 996
    const-wide/16 v4, 0x0

    const/4 p0, 0x0

    .line 999
    :cond_a
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 1000
    add-int v6, p3, p0

    long-to-int v7, v4

    aput v7, p2, v6

    .line 1001
    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    .line 1003
    add-int/lit8 p0, p0, 0x1

    const/16 v6, 0x8

    if-lt p0, v6, :cond_a

    .line 1004
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWordAddTo(I[II[II)I
    .registers 16

    .line 908
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 909
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

    .line 910
    long-to-int v6, v4

    aput v6, p3, p0

    .line 911
    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    .line 912
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

    .line 913
    long-to-int v6, v4

    aput v6, p3, v8

    .line 914
    ushr-long/2addr v4, p0

    .line 915
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

    .line 916
    long-to-int v6, v4

    aput v6, p3, v8

    .line 917
    ushr-long/2addr v4, p0

    .line 918
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

    .line 919
    long-to-int v6, v4

    aput v6, p3, v8

    .line 920
    ushr-long/2addr v4, p0

    .line 921
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

    .line 922
    long-to-int v6, v4

    aput v6, p3, v8

    .line 923
    ushr-long/2addr v4, p0

    .line 924
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

    .line 925
    long-to-int v6, v4

    aput v6, p3, v8

    .line 926
    ushr-long/2addr v4, p0

    .line 927
    add-int/lit8 v6, p2, 0x6

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x6

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    .line 928
    long-to-int v6, v4

    aput v6, p3, v8

    .line 929
    ushr-long/2addr v4, p0

    .line 930
    add-int/lit8 p2, p2, 0x7

    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x7

    aget p1, p3, p4

    int-to-long p1, p1

    and-long/2addr p1, v2

    add-long/2addr v0, p1

    add-long/2addr v4, v0

    .line 931
    long-to-int p1, v4

    aput p1, p3, p4

    .line 932
    ushr-long p0, v4, p0

    .line 933
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .registers 15

    .line 980
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 981
    and-long v4, p1, v2

    mul-long/2addr v4, v0

    add-int/lit8 p0, p4, 0x0

    aget v6, p3, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    .line 982
    long-to-int v8, v4

    aput v8, p3, p0

    .line 983
    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    .line 984
    ushr-long/2addr p1, p0

    mul-long/2addr v0, p1

    add-int/lit8 p1, p4, 0x1

    aget p2, p3, p1

    int-to-long v8, p2

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v4, v0

    .line 985
    long-to-int p2, v4

    aput p2, p3, p1

    .line 986
    ushr-long p1, v4, p0

    .line 987
    add-int/lit8 v0, p4, 0x2

    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    .line 988
    long-to-int v1, p1

    aput v1, p3, v0

    .line 989
    ushr-long p0, p1, p0

    .line 990
    cmp-long p0, p0, v6

    if-nez p0, :cond_3c

    const/4 p0, 0x0

    goto :goto_43

    :cond_3c
    const/16 p0, 0x8

    const/4 p1, 0x3

    invoke-static {p0, p3, p4, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_43
    return p0
.end method

.method public static blacklist square([II[II)V
    .registers 49

    .line 1173
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1176
    nop

    .line 1178
    const/4 v4, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x7

    .line 1181
    :goto_10
    add-int/lit8 v8, v7, -0x1

    add-int v7, p1, v7

    aget v7, p0, v7

    int-to-long v9, v7

    and-long/2addr v9, v2

    .line 1182
    mul-long/2addr v9, v9

    .line 1183
    add-int/lit8 v6, v6, -0x1

    add-int v7, p3, v6

    shl-int/lit8 v4, v4, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v12, v12

    or-int/2addr v4, v12

    aput v4, p2, v7

    .line 1184
    add-int/lit8 v6, v6, -0x1

    add-int v4, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v12, v12

    aput v12, p2, v4

    .line 1185
    long-to-int v4, v9

    .line 1187
    if-gtz v8, :cond_2bb

    .line 1190
    mul-long v8, v0, v0

    .line 1191
    shl-int/lit8 v4, v4, 0x1f

    int-to-long v12, v4

    and-long/2addr v12, v2

    ushr-long v10, v8, v11

    or-long/2addr v10, v12

    .line 1192
    add-int/lit8 v4, p3, 0x0

    long-to-int v6, v8

    aput v6, p2, v4

    .line 1193
    const/16 v4, 0x20

    ushr-long/2addr v8, v4

    long-to-int v6, v8

    and-int/2addr v6, v7

    .line 1197
    add-int/lit8 v8, p1, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 1198
    add-int/lit8 v12, p3, 0x2

    aget v13, p2, v12

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 1201
    mul-long v15, v8, v0

    add-long/2addr v10, v15

    .line 1202
    long-to-int v15, v10

    .line 1203
    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v6, v17, v6

    aput v6, p2, v16

    .line 1204
    ushr-int/lit8 v6, v15, 0x1f

    .line 1205
    ushr-long/2addr v10, v4

    add-long/2addr v13, v10

    .line 1208
    add-int/lit8 v10, p1, 0x2

    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 1209
    add-int/lit8 v15, p3, 0x3

    move-wide/from16 v16, v2

    aget v2, p2, v15

    int-to-long v2, v2

    and-long v2, v2, v16

    .line 1210
    add-int/lit8 v18, p3, 0x4

    move/from16 v19, v4

    aget v4, p2, v18

    move/from16 v21, v6

    const/16 v20, 0x7

    int-to-long v5, v4

    and-long v4, v5, v16

    .line 1212
    mul-long v22, v10, v0

    add-long v13, v13, v22

    .line 1213
    long-to-int v6, v13

    .line 1214
    shl-int/lit8 v22, v6, 0x1

    or-int v21, v22, v21

    aput v21, p2, v12

    .line 1215
    ushr-int/lit8 v6, v6, 0x1f

    .line 1216
    ushr-long v12, v13, v19

    mul-long v21, v10, v8

    add-long v12, v12, v21

    add-long/2addr v2, v12

    .line 1217
    ushr-long v12, v2, v19

    add-long/2addr v4, v12

    .line 1218
    and-long v2, v2, v16

    .line 1221
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    int-to-long v12, v12

    and-long v12, v12, v16

    .line 1222
    add-int/lit8 v14, p3, 0x5

    move/from16 v21, v7

    aget v7, p2, v14

    move-wide/from16 v22, v0

    int-to-long v0, v7

    and-long v0, v0, v16

    ushr-long v24, v4, v19

    add-long v0, v0, v24

    and-long v4, v4, v16

    .line 1223
    add-int/lit8 v7, p3, 0x6

    move-wide/from16 v24, v0

    aget v0, p2, v7

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v26, v24, v19

    add-long v0, v0, v26

    and-long v24, v24, v16

    .line 1225
    mul-long v26, v12, v22

    add-long v2, v2, v26

    .line 1226
    move-wide/from16 v26, v0

    long-to-int v0, v2

    .line 1227
    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v6

    aput v1, p2, v15

    .line 1228
    ushr-int/lit8 v0, v0, 0x1f

    .line 1229
    ushr-long v1, v2, v19

    mul-long v28, v12, v8

    add-long v1, v1, v28

    add-long/2addr v4, v1

    .line 1230
    ushr-long v1, v4, v19

    mul-long v28, v12, v10

    add-long v1, v1, v28

    add-long v24, v24, v1

    .line 1231
    and-long v1, v4, v16

    .line 1232
    ushr-long v3, v24, v19

    add-long v3, v26, v3

    .line 1233
    and-long v5, v24, v16

    .line 1236
    add-int/lit8 v15, p1, 0x4

    aget v15, p0, v15

    move/from16 v24, v0

    move-wide/from16 v25, v1

    int-to-long v0, v15

    and-long v0, v0, v16

    .line 1237
    add-int/lit8 v2, p3, 0x7

    aget v15, p2, v2

    move-wide/from16 v27, v0

    int-to-long v0, v15

    and-long v0, v0, v16

    ushr-long v29, v3, v19

    add-long v0, v0, v29

    and-long v3, v3, v16

    .line 1238
    add-int/lit8 v15, p3, 0x8

    move-wide/from16 v29, v0

    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v31, v29, v19

    add-long v0, v0, v31

    and-long v29, v29, v16

    .line 1240
    mul-long v31, v27, v22

    move-wide/from16 v33, v0

    add-long v0, v25, v31

    .line 1241
    move/from16 v25, v2

    long-to-int v2, v0

    .line 1242
    shl-int/lit8 v26, v2, 0x1

    or-int v24, v26, v24

    aput v24, p2, v18

    .line 1243
    ushr-int/lit8 v2, v2, 0x1f

    .line 1244
    ushr-long v0, v0, v19

    mul-long v31, v27, v8

    add-long v0, v0, v31

    add-long/2addr v5, v0

    .line 1245
    ushr-long v0, v5, v19

    mul-long v31, v27, v10

    add-long v0, v0, v31

    add-long/2addr v3, v0

    .line 1246
    and-long v0, v5, v16

    .line 1247
    ushr-long v5, v3, v19

    mul-long v31, v27, v12

    add-long v5, v5, v31

    add-long v29, v29, v5

    .line 1248
    and-long v3, v3, v16

    .line 1249
    ushr-long v5, v29, v19

    add-long v5, v33, v5

    .line 1250
    and-long v29, v29, v16

    .line 1253
    add-int/lit8 v18, p1, 0x5

    move-wide/from16 v31, v0

    aget v0, p0, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    .line 1254
    add-int/lit8 v18, p3, 0x9

    move-wide/from16 v33, v0

    aget v0, p2, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v35, v5, v19

    add-long v0, v0, v35

    and-long v5, v5, v16

    .line 1255
    add-int/lit8 v24, p3, 0xa

    move-wide/from16 v35, v0

    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v37, v35, v19

    add-long v0, v0, v37

    and-long v35, v35, v16

    .line 1257
    mul-long v37, v33, v22

    move-wide/from16 v39, v0

    add-long v0, v31, v37

    .line 1258
    move/from16 v26, v2

    long-to-int v2, v0

    .line 1259
    shl-int/lit8 v31, v2, 0x1

    or-int v26, v31, v26

    aput v26, p2, v14

    .line 1260
    ushr-int/lit8 v2, v2, 0x1f

    .line 1261
    ushr-long v0, v0, v19

    mul-long v31, v33, v8

    add-long v0, v0, v31

    add-long/2addr v3, v0

    .line 1262
    ushr-long v0, v3, v19

    mul-long v31, v33, v10

    add-long v0, v0, v31

    add-long v29, v29, v0

    .line 1263
    and-long v0, v3, v16

    .line 1264
    ushr-long v3, v29, v19

    mul-long v31, v33, v12

    add-long v3, v3, v31

    add-long/2addr v5, v3

    .line 1265
    and-long v3, v29, v16

    .line 1266
    ushr-long v29, v5, v19

    mul-long v31, v33, v27

    add-long v29, v29, v31

    add-long v35, v35, v29

    .line 1267
    and-long v5, v5, v16

    .line 1268
    ushr-long v29, v35, v19

    add-long v29, v39, v29

    .line 1269
    and-long v31, v35, v16

    .line 1272
    add-int/lit8 v14, p1, 0x6

    aget v14, p0, v14

    move-wide/from16 v35, v0

    int-to-long v0, v14

    and-long v0, v0, v16

    .line 1273
    add-int/lit8 v14, p3, 0xb

    move-wide/from16 v37, v0

    aget v0, p2, v14

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v39, v29, v19

    add-long v0, v0, v39

    and-long v29, v29, v16

    .line 1274
    add-int/lit8 v26, p3, 0xc

    move-wide/from16 v39, v0

    aget v0, p2, v26

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v41, v39, v19

    add-long v0, v0, v41

    and-long v39, v39, v16

    .line 1276
    mul-long v41, v37, v22

    move-wide/from16 v43, v0

    add-long v0, v35, v41

    .line 1277
    move/from16 v35, v2

    long-to-int v2, v0

    .line 1278
    shl-int/lit8 v36, v2, 0x1

    or-int v35, v36, v35

    aput v35, p2, v7

    .line 1279
    ushr-int/lit8 v2, v2, 0x1f

    .line 1280
    ushr-long v0, v0, v19

    mul-long v35, v37, v8

    add-long v0, v0, v35

    add-long/2addr v3, v0

    .line 1281
    ushr-long v0, v3, v19

    mul-long v35, v37, v10

    add-long v0, v0, v35

    add-long/2addr v5, v0

    .line 1282
    and-long v0, v3, v16

    .line 1283
    ushr-long v3, v5, v19

    mul-long v35, v37, v12

    add-long v3, v3, v35

    add-long v31, v31, v3

    .line 1284
    and-long v3, v5, v16

    .line 1285
    ushr-long v5, v31, v19

    mul-long v35, v37, v27

    add-long v5, v5, v35

    add-long v29, v29, v5

    .line 1286
    and-long v5, v31, v16

    .line 1287
    ushr-long v31, v29, v19

    mul-long v35, v37, v33

    add-long v31, v31, v35

    add-long v39, v39, v31

    .line 1288
    and-long v29, v29, v16

    .line 1289
    ushr-long v31, v39, v19

    add-long v31, v43, v31

    .line 1290
    and-long v35, v39, v16

    .line 1293
    add-int/lit8 v7, p1, 0x7

    aget v7, p0, v7

    move-wide/from16 v39, v0

    int-to-long v0, v7

    and-long v0, v0, v16

    .line 1294
    add-int/lit8 v7, p3, 0xd

    move-wide/from16 p0, v0

    aget v0, p2, v7

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v41, v31, v19

    add-long v0, v0, v41

    and-long v31, v31, v16

    .line 1295
    add-int/lit8 v20, p3, 0xe

    move-wide/from16 v41, v0

    aget v0, p2, v20

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v43, v41, v19

    add-long v0, v0, v43

    and-long v16, v41, v16

    .line 1297
    mul-long v22, v22, p0

    move-wide/from16 v41, v0

    add-long v0, v39, v22

    .line 1298
    move/from16 v39, v2

    long-to-int v2, v0

    .line 1299
    shl-int/lit8 v22, v2, 0x1

    or-int v22, v22, v39

    aput v22, p2, v25

    .line 1300
    ushr-int/lit8 v2, v2, 0x1f

    .line 1301
    ushr-long v0, v0, v19

    mul-long v8, v8, p0

    add-long/2addr v0, v8

    add-long/2addr v3, v0

    .line 1302
    ushr-long v0, v3, v19

    mul-long v8, p0, v10

    add-long/2addr v0, v8

    add-long/2addr v5, v0

    .line 1303
    ushr-long v0, v5, v19

    mul-long v8, p0, v12

    add-long/2addr v0, v8

    add-long v0, v29, v0

    .line 1304
    ushr-long v8, v0, v19

    mul-long v10, p0, v27

    add-long/2addr v8, v10

    add-long v8, v35, v8

    .line 1305
    ushr-long v10, v8, v19

    mul-long v12, p0, v33

    add-long/2addr v10, v12

    add-long v10, v31, v10

    .line 1306
    ushr-long v12, v10, v19

    mul-long v22, p0, v37

    add-long v12, v12, v22

    add-long v12, v16, v12

    .line 1307
    ushr-long v16, v12, v19

    move/from16 v27, v14

    move/from16 v25, v15

    add-long v14, v41, v16

    .line 1310
    long-to-int v3, v3

    .line 1311
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p2, v25

    .line 1312
    ushr-int/lit8 v2, v3, 0x1f

    .line 1313
    long-to-int v3, v5

    .line 1314
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p2, v18

    .line 1315
    ushr-int/lit8 v2, v3, 0x1f

    .line 1316
    long-to-int v0, v0

    .line 1317
    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v2

    aput v1, p2, v24

    .line 1318
    ushr-int/lit8 v0, v0, 0x1f

    .line 1319
    long-to-int v1, v8

    .line 1320
    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v27

    .line 1321
    ushr-int/lit8 v0, v1, 0x1f

    .line 1322
    long-to-int v1, v10

    .line 1323
    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v26

    .line 1324
    ushr-int/lit8 v0, v1, 0x1f

    .line 1325
    long-to-int v1, v12

    .line 1326
    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v7

    .line 1327
    ushr-int/lit8 v0, v1, 0x1f

    .line 1328
    long-to-int v1, v14

    .line 1329
    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v20

    .line 1330
    ushr-int/lit8 v0, v1, 0x1f

    .line 1331
    add-int/lit8 v1, p3, 0xf

    aget v2, p2, v1

    ushr-long v3, v14, v19

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 1332
    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v1

    .line 1333
    return-void

    .line 1187
    :cond_2bb
    move-wide/from16 v22, v0

    move-wide/from16 v16, v2

    const/16 v20, 0x7

    move v7, v8

    goto/16 :goto_10
.end method

.method public static blacklist square([I[I)V
    .registers 49

    .line 1009
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1012
    nop

    .line 1014
    const/16 v6, 0x10

    move v8, v0

    const/4 v7, 0x7

    .line 1017
    :goto_f
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    .line 1018
    mul-long/2addr v10, v10

    .line 1019
    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v7, v8, 0x1f

    const/16 v8, 0x21

    ushr-long v12, v10, v8

    long-to-int v12, v12

    or-int/2addr v7, v12

    aput v7, p1, v6

    .line 1020
    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    ushr-long v12, v10, v7

    long-to-int v12, v12

    aput v12, p1, v6

    .line 1021
    long-to-int v10, v10

    .line 1023
    if-gtz v9, :cond_28b

    .line 1026
    mul-long v11, v1, v1

    .line 1027
    shl-int/lit8 v6, v10, 0x1f

    int-to-long v9, v6

    and-long/2addr v9, v3

    ushr-long v13, v11, v8

    or-long v8, v9, v13

    .line 1028
    long-to-int v6, v11

    aput v6, p1, v0

    .line 1029
    const/16 v0, 0x20

    ushr-long v10, v11, v0

    long-to-int v6, v10

    and-int/2addr v6, v7

    .line 1033
    aget v10, p0, v7

    int-to-long v10, v10

    and-long/2addr v10, v3

    .line 1034
    const/4 v12, 0x2

    aget v13, p1, v12

    int-to-long v13, v13

    and-long/2addr v13, v3

    .line 1037
    mul-long v15, v10, v1

    add-long/2addr v8, v15

    .line 1038
    long-to-int v15, v8

    .line 1039
    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    aput v6, p1, v7

    .line 1040
    ushr-int/lit8 v6, v15, 0x1f

    .line 1041
    ushr-long/2addr v8, v0

    add-long/2addr v13, v8

    .line 1044
    aget v8, p0, v12

    int-to-long v8, v8

    and-long/2addr v8, v3

    .line 1045
    const/4 v15, 0x3

    move/from16 v16, v0

    aget v0, p1, v15

    move-wide/from16 v17, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    .line 1046
    const/16 v19, 0x4

    aget v0, p1, v19

    move/from16 v21, v6

    const/16 v20, 0x7

    int-to-long v5, v0

    and-long v5, v5, v17

    .line 1048
    mul-long v22, v8, v1

    add-long v13, v13, v22

    .line 1049
    long-to-int v0, v13

    .line 1050
    shl-int/lit8 v22, v0, 0x1

    or-int v21, v22, v21

    aput v21, p1, v12

    .line 1051
    ushr-int/lit8 v0, v0, 0x1f

    .line 1052
    ushr-long v12, v13, v16

    mul-long v21, v8, v10

    add-long v12, v12, v21

    add-long/2addr v3, v12

    .line 1053
    ushr-long v12, v3, v16

    add-long/2addr v5, v12

    .line 1054
    and-long v3, v3, v17

    .line 1057
    aget v12, p0, v15

    int-to-long v12, v12

    and-long v12, v12, v17

    .line 1058
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

    .line 1059
    const/16 v24, 0x6

    aget v7, p1, v24

    move-wide/from16 v25, v1

    move v2, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v27, v14, v16

    add-long v0, v0, v27

    and-long v14, v14, v17

    .line 1061
    mul-long v27, v12, v25

    add-long v3, v3, v27

    .line 1062
    long-to-int v7, v3

    .line 1063
    shl-int/lit8 v27, v7, 0x1

    or-int v2, v27, v2

    aput v2, p1, v22

    .line 1064
    ushr-int/lit8 v2, v7, 0x1f

    .line 1065
    ushr-long v3, v3, v16

    mul-long v27, v12, v10

    add-long v3, v3, v27

    add-long/2addr v5, v3

    .line 1066
    ushr-long v3, v5, v16

    mul-long v27, v12, v8

    add-long v3, v3, v27

    add-long/2addr v14, v3

    .line 1067
    and-long v3, v5, v17

    .line 1068
    ushr-long v5, v14, v16

    add-long/2addr v0, v5

    .line 1069
    and-long v5, v14, v17

    .line 1072
    aget v7, p0, v19

    int-to-long v14, v7

    and-long v14, v14, v17

    .line 1073
    aget v7, p1, v20

    move-wide/from16 v27, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v29, v27, v16

    add-long v0, v0, v29

    and-long v27, v27, v17

    .line 1074
    const/16 v22, 0x8

    aget v7, p1, v22

    move-wide/from16 v29, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v31, v29, v16

    add-long v0, v0, v31

    and-long v29, v29, v17

    .line 1076
    mul-long v31, v14, v25

    add-long v3, v3, v31

    .line 1077
    long-to-int v7, v3

    .line 1078
    shl-int/lit8 v31, v7, 0x1

    or-int v2, v31, v2

    aput v2, p1, v19

    .line 1079
    ushr-int/lit8 v2, v7, 0x1f

    .line 1080
    ushr-long v3, v3, v16

    mul-long v31, v14, v10

    add-long v3, v3, v31

    add-long/2addr v5, v3

    .line 1081
    ushr-long v3, v5, v16

    mul-long v31, v14, v8

    add-long v3, v3, v31

    add-long v27, v27, v3

    .line 1082
    and-long v3, v5, v17

    .line 1083
    ushr-long v5, v27, v16

    mul-long v31, v14, v12

    add-long v5, v5, v31

    add-long v29, v29, v5

    .line 1084
    and-long v5, v27, v17

    .line 1085
    ushr-long v27, v29, v16

    add-long v0, v0, v27

    .line 1086
    and-long v27, v29, v17

    .line 1089
    aget v7, p0, v23

    move-wide/from16 v29, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    .line 1090
    const/16 v19, 0x9

    aget v7, p1, v19

    move-wide/from16 v31, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v33, v29, v16

    add-long v0, v0, v33

    and-long v29, v29, v17

    .line 1091
    const/16 v33, 0xa

    aget v7, p1, v33

    move-wide/from16 v34, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v36, v34, v16

    add-long v0, v0, v36

    and-long v34, v34, v17

    .line 1093
    mul-long v36, v31, v25

    add-long v3, v3, v36

    .line 1094
    long-to-int v7, v3

    .line 1095
    shl-int/lit8 v36, v7, 0x1

    or-int v2, v36, v2

    aput v2, p1, v23

    .line 1096
    ushr-int/lit8 v2, v7, 0x1f

    .line 1097
    ushr-long v3, v3, v16

    mul-long v36, v31, v10

    add-long v3, v3, v36

    add-long/2addr v5, v3

    .line 1098
    ushr-long v3, v5, v16

    mul-long v36, v31, v8

    add-long v3, v3, v36

    add-long v27, v27, v3

    .line 1099
    and-long v3, v5, v17

    .line 1100
    ushr-long v5, v27, v16

    mul-long v36, v31, v12

    add-long v5, v5, v36

    add-long v29, v29, v5

    .line 1101
    and-long v5, v27, v17

    .line 1102
    ushr-long v27, v29, v16

    mul-long v36, v31, v14

    add-long v27, v27, v36

    add-long v34, v34, v27

    .line 1103
    and-long v27, v29, v17

    .line 1104
    ushr-long v29, v34, v16

    add-long v0, v0, v29

    .line 1105
    and-long v29, v34, v17

    .line 1108
    aget v7, p0, v24

    move-wide/from16 v34, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    .line 1109
    const/16 v23, 0xb

    aget v7, p1, v23

    move-wide/from16 v36, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v38, v34, v16

    add-long v0, v0, v38

    and-long v34, v34, v17

    .line 1110
    const/16 v38, 0xc

    aget v7, p1, v38

    move-wide/from16 v39, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v41, v39, v16

    add-long v0, v0, v41

    and-long v39, v39, v17

    .line 1112
    mul-long v41, v36, v25

    add-long v3, v3, v41

    .line 1113
    long-to-int v7, v3

    .line 1114
    shl-int/lit8 v41, v7, 0x1

    or-int v2, v41, v2

    aput v2, p1, v24

    .line 1115
    ushr-int/lit8 v2, v7, 0x1f

    .line 1116
    ushr-long v3, v3, v16

    mul-long v41, v36, v10

    add-long v3, v3, v41

    add-long/2addr v5, v3

    .line 1117
    ushr-long v3, v5, v16

    mul-long v41, v36, v8

    add-long v3, v3, v41

    add-long v27, v27, v3

    .line 1118
    and-long v3, v5, v17

    .line 1119
    ushr-long v5, v27, v16

    mul-long v41, v36, v12

    add-long v5, v5, v41

    add-long v29, v29, v5

    .line 1120
    and-long v5, v27, v17

    .line 1121
    ushr-long v27, v29, v16

    mul-long v41, v36, v14

    add-long v27, v27, v41

    add-long v34, v34, v27

    .line 1122
    and-long v27, v29, v17

    .line 1123
    ushr-long v29, v34, v16

    mul-long v41, v36, v31

    add-long v29, v29, v41

    add-long v39, v39, v29

    .line 1124
    and-long v29, v34, v17

    .line 1125
    ushr-long v34, v39, v16

    add-long v0, v0, v34

    .line 1126
    and-long v34, v39, v17

    .line 1129
    aget v7, p0, v20

    move-wide/from16 v39, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    .line 1130
    const/16 p0, 0xd

    aget v7, p1, p0

    move-wide/from16 v41, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v43, v39, v16

    add-long v0, v0, v43

    and-long v39, v39, v17

    .line 1131
    const/16 v24, 0xe

    aget v7, p1, v24

    move-wide/from16 v43, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v45, v43, v16

    add-long v0, v0, v45

    and-long v17, v43, v17

    .line 1133
    mul-long v25, v25, v41

    add-long v3, v3, v25

    .line 1134
    long-to-int v7, v3

    .line 1135
    shl-int/lit8 v25, v7, 0x1

    or-int v2, v25, v2

    aput v2, p1, v20

    .line 1136
    ushr-int/lit8 v2, v7, 0x1f

    .line 1137
    ushr-long v3, v3, v16

    mul-long v10, v10, v41

    add-long/2addr v3, v10

    add-long/2addr v5, v3

    .line 1138
    ushr-long v3, v5, v16

    mul-long v7, v41, v8

    add-long/2addr v3, v7

    add-long v3, v27, v3

    .line 1139
    ushr-long v7, v3, v16

    mul-long v9, v41, v12

    add-long/2addr v7, v9

    add-long v7, v29, v7

    .line 1140
    ushr-long v9, v7, v16

    mul-long v11, v41, v14

    add-long/2addr v9, v11

    add-long v9, v34, v9

    .line 1141
    ushr-long v11, v9, v16

    mul-long v13, v41, v31

    add-long/2addr v11, v13

    add-long v11, v39, v11

    .line 1142
    ushr-long v13, v11, v16

    mul-long v25, v41, v36

    add-long v13, v13, v25

    add-long v13, v17, v13

    .line 1143
    ushr-long v17, v13, v16

    add-long v0, v0, v17

    .line 1146
    long-to-int v5, v5

    .line 1147
    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    aput v2, p1, v22

    .line 1148
    ushr-int/lit8 v2, v5, 0x1f

    .line 1149
    long-to-int v3, v3

    .line 1150
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v19

    .line 1151
    ushr-int/lit8 v2, v3, 0x1f

    .line 1152
    long-to-int v3, v7

    .line 1153
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v33

    .line 1154
    ushr-int/lit8 v2, v3, 0x1f

    .line 1155
    long-to-int v3, v9

    .line 1156
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v23

    .line 1157
    ushr-int/lit8 v2, v3, 0x1f

    .line 1158
    long-to-int v3, v11

    .line 1159
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v38

    .line 1160
    ushr-int/lit8 v2, v3, 0x1f

    .line 1161
    long-to-int v3, v13

    .line 1162
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, p0

    .line 1163
    ushr-int/lit8 v2, v3, 0x1f

    .line 1164
    long-to-int v3, v0

    .line 1165
    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    aput v2, p1, v24

    .line 1166
    ushr-int/lit8 v2, v3, 0x1f

    .line 1167
    const/16 v3, 0xf

    aget v4, p1, v3

    ushr-long v0, v0, v16

    long-to-int v0, v0

    add-int/2addr v4, v0

    .line 1168
    shl-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v2

    aput v0, p1, v3

    .line 1169
    return-void

    .line 1023
    :cond_28b
    move-wide/from16 v25, v1

    move-wide/from16 v17, v3

    const/16 v20, 0x7

    move v7, v9

    move v8, v10

    goto/16 :goto_f
.end method

.method public static blacklist sub([II[II[II)I
    .registers 15

    .line 1367
    nop

    .line 1368
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

    .line 1369
    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    aput v5, p4, v4

    .line 1370
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1371
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

    .line 1372
    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1373
    shr-long/2addr v0, v4

    .line 1374
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

    .line 1375
    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1376
    shr-long/2addr v0, v4

    .line 1377
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

    .line 1378
    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1379
    shr-long/2addr v0, v4

    .line 1380
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

    .line 1381
    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1382
    shr-long/2addr v0, v4

    .line 1383
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

    .line 1384
    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1385
    shr-long/2addr v0, v4

    .line 1386
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1387
    add-int/lit8 v5, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v5

    .line 1388
    shr-long/2addr v0, v4

    .line 1389
    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    .line 1390
    add-int/lit8 p5, p5, 0x7

    long-to-int p0, v0

    aput p0, p4, p5

    .line 1391
    shr-long p0, v0, v4

    .line 1392
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist sub([I[I[I)I
    .registers 13

    .line 1337
    nop

    .line 1338
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

    .line 1339
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1340
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1341
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1342
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1343
    shr-long/2addr v1, v0

    .line 1344
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1345
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1346
    shr-long/2addr v1, v0

    .line 1347
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1348
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1349
    shr-long/2addr v1, v0

    .line 1350
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1351
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1352
    shr-long/2addr v1, v0

    .line 1353
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1354
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1355
    shr-long/2addr v1, v0

    .line 1356
    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1357
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1358
    shr-long/2addr v1, v0

    .line 1359
    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    .line 1360
    long-to-int p0, v1

    aput p0, p2, v5

    .line 1361
    shr-long p0, v1, v0

    .line 1362
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .registers 13

    .line 1397
    nop

    .line 1398
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

    .line 1399
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1400
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1401
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

    .line 1402
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1403
    shr-long/2addr v1, v0

    .line 1404
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

    .line 1405
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1406
    shr-long/2addr v1, v0

    .line 1407
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

    .line 1408
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1409
    shr-long/2addr v1, v0

    .line 1410
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

    .line 1411
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1412
    shr-long/2addr v1, v0

    .line 1413
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

    .line 1414
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1415
    shr-long/2addr v1, v0

    .line 1416
    const/4 v5, 0x6

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

    .line 1417
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1418
    shr-long/2addr v1, v0

    .line 1419
    const/4 v5, 0x7

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

    .line 1420
    long-to-int p0, v1

    aput p0, p2, v5

    .line 1421
    shr-long p0, v1, v0

    .line 1422
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([II[II)I
    .registers 14

    .line 1487
    nop

    .line 1488
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

    .line 1489
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1490
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1491
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

    .line 1492
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1493
    shr-long/2addr v1, v0

    .line 1494
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

    .line 1495
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1496
    shr-long/2addr v1, v0

    .line 1497
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

    .line 1498
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1499
    shr-long/2addr v1, v0

    .line 1500
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

    .line 1501
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1502
    shr-long/2addr v1, v0

    .line 1503
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

    .line 1504
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1505
    shr-long/2addr v1, v0

    .line 1506
    add-int/lit8 v5, p3, 0x6

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-int/lit8 v8, p1, 0x6

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1507
    long-to-int v6, v1

    aput v6, p2, v5

    .line 1508
    shr-long/2addr v1, v0

    .line 1509
    add-int/lit8 p3, p3, 0x7

    aget v5, p2, p3

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v5, p0

    add-long/2addr v1, v5

    .line 1510
    long-to-int p0, v1

    aput p0, p2, p3

    .line 1511
    shr-long p0, v1, v0

    .line 1512
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([II[III)I
    .registers 14

    .line 1517
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1518
    add-int/lit8 p4, p3, 0x0

    aget v4, p2, p4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x0

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1519
    long-to-int v4, v0

    aput v4, p2, p4

    .line 1520
    const/16 p4, 0x20

    shr-long/2addr v0, p4

    .line 1521
    add-int/lit8 v4, p3, 0x1

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x1

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1522
    long-to-int v5, v0

    aput v5, p2, v4

    .line 1523
    shr-long/2addr v0, p4

    .line 1524
    add-int/lit8 v4, p3, 0x2

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x2

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1525
    long-to-int v5, v0

    aput v5, p2, v4

    .line 1526
    shr-long/2addr v0, p4

    .line 1527
    add-int/lit8 v4, p3, 0x3

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x3

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1528
    long-to-int v5, v0

    aput v5, p2, v4

    .line 1529
    shr-long/2addr v0, p4

    .line 1530
    add-int/lit8 v4, p3, 0x4

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x4

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1531
    long-to-int v5, v0

    aput v5, p2, v4

    .line 1532
    shr-long/2addr v0, p4

    .line 1533
    add-int/lit8 v4, p3, 0x5

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x5

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1534
    long-to-int v5, v0

    aput v5, p2, v4

    .line 1535
    shr-long/2addr v0, p4

    .line 1536
    add-int/lit8 v4, p3, 0x6

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1537
    long-to-int v5, v0

    aput v5, p2, v4

    .line 1538
    shr-long/2addr v0, p4

    .line 1539
    add-int/lit8 p3, p3, 0x7

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    sub-long/2addr v4, p0

    add-long/2addr v0, v4

    .line 1540
    long-to-int p0, v0

    aput p0, p2, p3

    .line 1541
    shr-long p0, v0, p4

    .line 1542
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([I[I)I
    .registers 12

    .line 1427
    nop

    .line 1428
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

    .line 1429
    long-to-int v5, v1

    aput v5, p1, v0

    .line 1430
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1431
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1432
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1433
    shr-long/2addr v1, v0

    .line 1434
    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1435
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1436
    shr-long/2addr v1, v0

    .line 1437
    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1438
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1439
    shr-long/2addr v1, v0

    .line 1440
    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1441
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1442
    shr-long/2addr v1, v0

    .line 1443
    const/4 v5, 0x5

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1444
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1445
    shr-long/2addr v1, v0

    .line 1446
    const/4 v5, 0x6

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 1447
    long-to-int v6, v1

    aput v6, p1, v5

    .line 1448
    shr-long/2addr v1, v0

    .line 1449
    const/4 v5, 0x7

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 1450
    long-to-int p0, v1

    aput p0, p1, v5

    .line 1451
    shr-long p0, v1, v0

    .line 1452
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([I[II)I
    .registers 12

    .line 1457
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1458
    const/4 p2, 0x0

    aget v4, p1, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    aget v6, p0, p2

    int-to-long v6, v6

    and-long/2addr v6, v2

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1459
    long-to-int v4, v0

    aput v4, p1, p2

    .line 1460
    const/16 p2, 0x20

    shr-long/2addr v0, p2

    .line 1461
    const/4 v4, 0x1

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1462
    long-to-int v5, v0

    aput v5, p1, v4

    .line 1463
    shr-long/2addr v0, p2

    .line 1464
    const/4 v4, 0x2

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1465
    long-to-int v5, v0

    aput v5, p1, v4

    .line 1466
    shr-long/2addr v0, p2

    .line 1467
    const/4 v4, 0x3

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1468
    long-to-int v5, v0

    aput v5, p1, v4

    .line 1469
    shr-long/2addr v0, p2

    .line 1470
    const/4 v4, 0x4

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1471
    long-to-int v5, v0

    aput v5, p1, v4

    .line 1472
    shr-long/2addr v0, p2

    .line 1473
    const/4 v4, 0x5

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1474
    long-to-int v5, v0

    aput v5, p1, v4

    .line 1475
    shr-long/2addr v0, p2

    .line 1476
    const/4 v4, 0x6

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1477
    long-to-int v5, v0

    aput v5, p1, v4

    .line 1478
    shr-long/2addr v0, p2

    .line 1479
    const/4 v4, 0x7

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget p0, p0, v4

    int-to-long v7, p0

    and-long/2addr v2, v7

    sub-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 1480
    long-to-int p0, v0

    aput p0, p1, v4

    .line 1481
    shr-long p0, v0, p2

    .line 1482
    long-to-int p0, p0

    return p0
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5

    .line 1547
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1548
    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_17

    .line 1550
    aget v2, p0, v1

    .line 1551
    if-eqz v2, :cond_14

    .line 1553
    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1548
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1556
    :cond_17
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static blacklist toBigInteger64([J)Ljava/math/BigInteger;
    .registers 7

    .line 1561
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1562
    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1a

    .line 1564
    aget-wide v2, p0, v1

    .line 1565
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_17

    .line 1567
    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1562
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1570
    :cond_1a
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static blacklist zero([I)V
    .registers 3

    .line 1575
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1576
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1577
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1578
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1579
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1580
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1581
    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1582
    const/4 v1, 0x7

    aput v0, p0, v1

    .line 1583
    return-void
.end method
