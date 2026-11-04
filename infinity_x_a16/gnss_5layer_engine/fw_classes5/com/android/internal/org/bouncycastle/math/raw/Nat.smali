.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(I[I[I[I)I
    .registers 13

    .line 17
    nop

    .line 18
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_1e

    .line 20
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 21
    long-to-int v3, v0

    aput v3, p3, v2

    .line 22
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 24
    :cond_1e
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist add33At(II[II)I
    .registers 11

    .line 30
    add-int/lit8 v0, p3, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 31
    long-to-int p1, v1

    aput p1, p2, v0

    .line 32
    const/16 p1, 0x20

    ushr-long v0, v1, p1

    .line 33
    add-int/lit8 v2, p3, 0x1

    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 34
    long-to-int v3, v0

    aput v3, p2, v2

    .line 35
    ushr-long/2addr v0, p1

    .line 36
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2b

    const/4 p0, 0x0

    goto :goto_31

    :cond_2b
    add-int/lit8 p3, p3, 0x2

    invoke-static {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    :goto_31
    return p0
.end method

.method public static blacklist add33At(II[III)I
    .registers 12

    .line 42
    add-int v0, p3, p4

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 43
    long-to-int p1, v1

    aput p1, p2, v0

    .line 44
    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    .line 45
    add-int/lit8 v0, v0, 0x1

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 46
    long-to-int v3, v1

    aput v3, p2, v0

    .line 47
    ushr-long v0, v1, p1

    .line 48
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2b

    const/4 p0, 0x0

    goto :goto_31

    :cond_2b
    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_31
    return p0
.end method

.method public static blacklist add33To(II[I)I
    .registers 11

    .line 53
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 54
    long-to-int p1, v1

    aput p1, p2, v0

    .line 55
    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    .line 56
    const/4 v5, 0x1

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    add-long/2addr v1, v3

    .line 57
    long-to-int v3, v1

    aput v3, p2, v5

    .line 58
    ushr-long/2addr v1, p1

    .line 59
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_27

    goto :goto_2c

    :cond_27
    const/4 p1, 0x2

    invoke-static {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist add33To(II[II)I
    .registers 11

    .line 64
    add-int/lit8 v0, p3, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 65
    long-to-int p1, v1

    aput p1, p2, v0

    .line 66
    const/16 p1, 0x20

    ushr-long v0, v1, p1

    .line 67
    add-int/lit8 v2, p3, 0x1

    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 68
    long-to-int v3, v0

    aput v3, p2, v2

    .line 69
    ushr-long/2addr v0, p1

    .line 70
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2b

    const/4 p0, 0x0

    goto :goto_30

    :cond_2b
    const/4 p1, 0x2

    invoke-static {p0, p2, p3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_30
    return p0
.end method

.method public static blacklist addBothTo(I[II[II[II)I
    .registers 17

    .line 87
    nop

    .line 88
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_29

    .line 90
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-int v7, p6, v2

    aget v8, p5, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 91
    long-to-int v3, v0

    aput v3, p5, v7

    .line 92
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 94
    :cond_29
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addBothTo(I[I[I[I)I
    .registers 13

    .line 75
    nop

    .line 76
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_23

    .line 78
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 79
    long-to-int v3, v0

    aput v3, p3, v2

    .line 80
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 82
    :cond_23
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addDWordAt(IJ[II)I
    .registers 13

    .line 100
    add-int/lit8 v0, p4, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    .line 101
    long-to-int v5, v1

    aput v5, p3, v0

    .line 102
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 103
    add-int/lit8 v5, p4, 0x1

    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v0

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    .line 104
    long-to-int p1, v1

    aput p1, p3, v5

    .line 105
    ushr-long p1, v1, v0

    .line 106
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    goto :goto_30

    :cond_2a
    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    :goto_30
    return p0
.end method

.method public static blacklist addDWordAt(IJ[III)I
    .registers 14

    .line 112
    add-int v0, p4, p5

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    .line 113
    long-to-int v5, v1

    aput v5, p3, v0

    .line 114
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 115
    add-int/lit8 v0, v0, 0x1

    aget v6, p3, v0

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v5

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    .line 116
    long-to-int p1, v1

    aput p1, p3, v0

    .line 117
    ushr-long p1, v1, v5

    .line 118
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    goto :goto_30

    :cond_2a
    add-int/lit8 p5, p5, 0x2

    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_30
    return p0
.end method

.method public static blacklist addDWordTo(IJ[I)I
    .registers 13

    .line 123
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    .line 124
    long-to-int v5, v1

    aput v5, p3, v0

    .line 125
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 126
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long/2addr p1, v5

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    .line 127
    long-to-int p1, v1

    aput p1, p3, v6

    .line 128
    ushr-long p1, v1, v5

    .line 129
    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_27

    goto :goto_2c

    :cond_27
    const/4 p1, 0x2

    invoke-static {p0, p3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist addDWordTo(IJ[II)I
    .registers 13

    .line 134
    add-int/lit8 v0, p4, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    .line 135
    long-to-int v5, v1

    aput v5, p3, v0

    .line 136
    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    .line 137
    add-int/lit8 v5, p4, 0x1

    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v0

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    .line 138
    long-to-int p1, v1

    aput p1, p3, v5

    .line 139
    ushr-long p1, v1, v0

    .line 140
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    goto :goto_2f

    :cond_2a
    const/4 p1, 0x2

    invoke-static {p0, p3, p4, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_2f
    return p0
.end method

.method public static blacklist addTo(I[II[II)I
    .registers 15

    .line 157
    nop

    .line 158
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_22

    .line 160
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v8, p3, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 161
    long-to-int v3, v0

    aput v3, p3, v7

    .line 162
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 164
    :cond_22
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addTo(I[II[III)I
    .registers 15

    .line 169
    int-to-long v0, p5

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 170
    const/4 p5, 0x0

    :goto_8
    if-ge p5, p0, :cond_21

    .line 172
    add-int v4, p2, p5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int v6, p4, p5

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 173
    long-to-int v4, v0

    aput v4, p3, v6

    .line 174
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 170
    add-int/lit8 p5, p5, 0x1

    goto :goto_8

    .line 176
    :cond_21
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addTo(I[I[I)I
    .registers 12

    .line 145
    nop

    .line 146
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_1e

    .line 148
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 149
    long-to-int v3, v0

    aput v3, p2, v2

    .line 150
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 152
    :cond_1e
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addToEachOther(I[II[II)I
    .registers 16

    .line 181
    nop

    .line 182
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_24

    .line 184
    add-int v3, p2, v2

    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v8, p4, v2

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v6, v9

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 185
    long-to-int v4, v0

    aput v4, p1, v3

    .line 186
    aput v4, p3, v8

    .line 187
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 189
    :cond_24
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addWordAt(II[II)I
    .registers 10

    .line 195
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget p1, p2, p3

    int-to-long v4, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 196
    long-to-int p1, v0

    aput p1, p2, p3

    .line 197
    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    .line 198
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    goto :goto_20

    :cond_1a
    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    :goto_20
    return p0
.end method

.method public static blacklist addWordAt(II[III)I
    .registers 11

    .line 204
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int p1, p3, p4

    aget v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 205
    long-to-int v2, v0

    aput v2, p2, p1

    .line 206
    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    .line 207
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1c

    const/4 p0, 0x0

    goto :goto_22

    :cond_1c
    add-int/lit8 p4, p4, 0x1

    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_22
    return p0
.end method

.method public static blacklist addWordTo(II[I)I
    .registers 9

    .line 212
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p1, 0x0

    aget v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 213
    long-to-int v2, v0

    aput v2, p2, p1

    .line 214
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 215
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    goto :goto_1f

    :cond_1a
    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p1

    :goto_1f
    return p1
.end method

.method public static blacklist addWordTo(II[II)I
    .registers 10

    .line 220
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget p1, p2, p3

    int-to-long v4, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 221
    long-to-int p1, v0

    aput p1, p2, p3

    .line 222
    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    .line 223
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    goto :goto_1f

    :cond_1a
    const/4 p1, 0x1

    invoke-static {p0, p2, p3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_1f
    return p0
.end method

.method public static blacklist cadd(II[I[I[I)I
    .registers 15

    .line 228
    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 229
    nop

    .line 230
    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_e
    if-ge p1, p0, :cond_23

    .line 232
    aget v6, p2, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p3, p1

    int-to-long v8, v8

    and-long/2addr v8, v0

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 233
    long-to-int v6, v4

    aput v6, p4, p1

    .line 234
    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    .line 230
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 236
    :cond_23
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist caddTo(II[I[I)I
    .registers 14

    .line 241
    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 242
    nop

    .line 243
    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_e
    if-ge p1, p0, :cond_23

    .line 245
    aget v6, p3, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p2, p1

    int-to-long v8, v8

    and-long/2addr v8, v0

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 246
    long-to-int v6, v4

    aput v6, p3, p1

    .line 247
    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    .line 243
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 249
    :cond_23
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist cmov(II[II[II)V
    .registers 10

    .line 254
    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    .line 256
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p0, :cond_16

    .line 258
    add-int v1, p5, v0

    aget v2, p4, v1

    add-int v3, p3, v0

    aget v3, p2, v3

    xor-int/2addr v3, v2

    .line 259
    and-int/2addr v3, p1

    xor-int/2addr v2, v3

    .line 260
    aput v2, p4, v1

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 272
    :cond_16
    return-void
.end method

.method public static blacklist compare(I[II[II)I
    .registers 9

    .line 290
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_1a

    .line 292
    add-int v1, p2, p0

    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 293
    add-int v3, p4, p0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    .line 294
    if-ge v1, v2, :cond_14

    .line 295
    const/4 p0, -0x1

    return p0

    .line 296
    :cond_14
    if-le v1, v2, :cond_17

    .line 297
    return v0

    .line 290
    :cond_17
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    .line 299
    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist compare(I[I[I)I
    .registers 7

    .line 276
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_16

    .line 278
    aget v1, p1, p0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 279
    aget v3, p2, p0

    xor-int/2addr v2, v3

    .line 280
    if-ge v1, v2, :cond_10

    .line 281
    const/4 p0, -0x1

    return p0

    .line 282
    :cond_10
    if-le v1, v2, :cond_13

    .line 283
    return v0

    .line 276
    :cond_13
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    .line 285
    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist copy(I[II[II)V
    .registers 5

    .line 316
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    return-void
.end method

.method public static blacklist copy(I[I[I)V
    .registers 4

    .line 311
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    return-void
.end method

.method public static blacklist copy(I[I)[I
    .registers 4

    .line 304
    new-array v0, p0, [I

    .line 305
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    return-object v0
.end method

.method public static blacklist copy64(I[JI[JI)V
    .registers 5

    .line 333
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    return-void
.end method

.method public static blacklist copy64(I[J[J)V
    .registers 4

    .line 328
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    return-void
.end method

.method public static blacklist copy64(I[J)[J
    .registers 4

    .line 321
    new-array v0, p0, [J

    .line 322
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-object v0
.end method

.method public static blacklist create(I)[I
    .registers 1

    .line 338
    new-array p0, p0, [I

    return-object p0
.end method

.method public static blacklist create64(I)[J
    .registers 1

    .line 343
    new-array p0, p0, [J

    return-object p0
.end method

.method public static blacklist csub(II[II[II[II)I
    .registers 18

    .line 361
    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 362
    nop

    .line 363
    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_e
    if-ge p1, p0, :cond_29

    .line 365
    add-int v6, p3, p1

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int v8, p5, p1

    aget v8, p4, v8

    int-to-long v8, v8

    and-long/2addr v8, v0

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 366
    add-int v6, p7, p1

    long-to-int v7, v4

    aput v7, p6, v6

    .line 367
    const/16 v6, 0x20

    shr-long/2addr v4, v6

    .line 363
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 369
    :cond_29
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist csub(II[I[I[I)I
    .registers 15

    .line 348
    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 349
    nop

    .line 350
    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_e
    if-ge p1, p0, :cond_23

    .line 352
    aget v6, p2, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p3, p1

    int-to-long v8, v8

    and-long/2addr v8, v0

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 353
    long-to-int v6, v4

    aput v6, p4, p1

    .line 354
    const/16 v6, 0x20

    shr-long/2addr v4, v6

    .line 350
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 356
    :cond_23
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist dec(I[I)I
    .registers 6

    .line 374
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, -0x1

    if-ge v1, p0, :cond_11

    .line 376
    aget v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v1

    if-eq v3, v2, :cond_e

    .line 378
    return v0

    .line 374
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 381
    :cond_11
    return v2
.end method

.method public static blacklist dec(I[I[I)I
    .registers 7

    .line 386
    const/4 v0, 0x0

    move v1, v0

    .line 387
    :goto_2
    const/4 v2, -0x1

    if-ge v1, p0, :cond_1a

    .line 389
    aget v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    .line 390
    aput v3, p2, v1

    .line 391
    add-int/lit8 v1, v1, 0x1

    .line 392
    if-eq v3, v2, :cond_19

    .line 394
    :goto_f
    if-ge v1, p0, :cond_18

    .line 396
    aget v2, p1, v1

    aput v2, p2, v1

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 399
    :cond_18
    return v0

    .line 401
    :cond_19
    goto :goto_2

    .line 402
    :cond_1a
    return v2
.end method

.method public static blacklist decAt(I[II)I
    .registers 5

    .line 408
    nop

    :goto_1
    const/4 v0, -0x1

    if-ge p2, p0, :cond_11

    .line 410
    aget v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, p2

    if-eq v1, v0, :cond_e

    .line 412
    const/4 p0, 0x0

    return p0

    .line 408
    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 415
    :cond_11
    return v0
.end method

.method public static blacklist decAt(I[III)I
    .registers 7

    .line 421
    nop

    :goto_1
    const/4 v0, -0x1

    if-ge p3, p0, :cond_13

    .line 423
    add-int v1, p2, p3

    aget v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v1

    if-eq v2, v0, :cond_10

    .line 425
    const/4 p0, 0x0

    return p0

    .line 421
    :cond_10
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 428
    :cond_13
    return v0
.end method

.method public static blacklist diff(I[II[II[II)Z
    .registers 9

    .line 433
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[II[II)Z

    move-result v0

    .line 434
    if-eqz v0, :cond_a

    .line 436
    invoke-static/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    goto :goto_13

    .line 440
    :cond_a
    move-object v1, p3

    move-object p3, p1

    move-object p1, v1

    move v1, p4

    move p4, p2

    move p2, v1

    invoke-static/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    .line 442
    :goto_13
    return v0
.end method

.method public static blacklist eq(I[I[I)Z
    .registers 6

    .line 447
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_f

    .line 449
    aget v1, p1, p0

    aget v2, p2, p0

    if-eq v1, v2, :cond_c

    .line 451
    const/4 p0, 0x0

    return p0

    .line 447
    :cond_c
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    .line 454
    :cond_f
    return v0
.end method

.method public static blacklist equalTo(I[II)I
    .registers 6

    .line 459
    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/2addr p2, v0

    .line 460
    const/4 v0, 0x1

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_e

    .line 462
    aget v2, p1, v1

    or-int/2addr p2, v2

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 464
    :cond_e
    ushr-int/lit8 p0, p2, 0x1

    and-int/lit8 p1, p2, 0x1

    or-int/2addr p0, p1

    .line 465
    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalTo(I[III)I
    .registers 7

    .line 470
    aget v0, p1, p2

    xor-int/2addr p3, v0

    .line 471
    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-ge v1, p0, :cond_f

    .line 473
    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr p3, v2

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 475
    :cond_f
    ushr-int/lit8 p0, p3, 0x1

    and-int/lit8 p1, p3, 0x1

    or-int/2addr p0, p1

    .line 476
    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalTo(I[II[II)I
    .registers 9

    .line 492
    nop

    .line 493
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v0, p0, :cond_12

    .line 495
    add-int v2, p2, v0

    aget v2, p1, v2

    add-int v3, p4, v0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 497
    :cond_12
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    .line 498
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalTo(I[I[I)I
    .registers 7

    .line 481
    nop

    .line 482
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v0, p0, :cond_e

    .line 484
    aget v2, p1, v0

    aget v3, p2, v0

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 486
    :cond_e
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    .line 487
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalToZero(I[I)I
    .registers 5

    .line 503
    nop

    .line 504
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v0, p0, :cond_b

    .line 506
    aget v2, p1, v0

    or-int/2addr v1, v2

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 508
    :cond_b
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    .line 509
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalToZero(I[II)I
    .registers 6

    .line 514
    nop

    .line 515
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v0, p0, :cond_d

    .line 517
    add-int v2, p2, v0

    aget v2, p1, v2

    or-int/2addr v1, v2

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 519
    :cond_d
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    .line 520
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist fromBigInteger(ILjava/math/BigInteger;)[I
    .registers 5

    .line 525
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_27

    .line 530
    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    .line 531
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 534
    const/4 v1, 0x0

    :goto_15
    if-ge v1, p0, :cond_26

    .line 536
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 537
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 539
    :cond_26
    return-object v0

    .line 527
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist fromBigInteger64(ILjava/math/BigInteger;)[J
    .registers 6

    .line 544
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_27

    .line 549
    add-int/lit8 p0, p0, 0x3f

    shr-int/lit8 p0, p0, 0x6

    .line 550
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 553
    const/4 v1, 0x0

    :goto_15
    if-ge v1, p0, :cond_26

    .line 555
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 556
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 558
    :cond_26
    return-object v0

    .line 546
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist getBit([II)I
    .registers 5

    .line 563
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 565
    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0

    .line 567
    :cond_8
    shr-int/lit8 v1, p1, 0x5

    .line 568
    if-ltz v1, :cond_18

    array-length v2, p0

    if-lt v1, v2, :cond_10

    goto :goto_18

    .line 572
    :cond_10
    and-int/lit8 p1, p1, 0x1f

    .line 573
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1

    return p0

    .line 570
    :cond_18
    :goto_18
    return v0
.end method

.method public static blacklist gte(I[II[II)Z
    .registers 9

    .line 592
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_1a

    .line 594
    add-int v1, p2, p0

    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 595
    add-int v3, p4, p0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    .line 596
    if-ge v1, v2, :cond_14

    .line 597
    const/4 p0, 0x0

    return p0

    .line 598
    :cond_14
    if-le v1, v2, :cond_17

    .line 599
    return v0

    .line 592
    :cond_17
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    .line 601
    :cond_1a
    return v0
.end method

.method public static blacklist gte(I[I[I)Z
    .registers 7

    .line 578
    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_16

    .line 580
    aget v1, p1, p0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 581
    aget v3, p2, p0

    xor-int/2addr v2, v3

    .line 582
    if-ge v1, v2, :cond_10

    .line 583
    const/4 p0, 0x0

    return p0

    .line 584
    :cond_10
    if-le v1, v2, :cond_13

    .line 585
    return v0

    .line 578
    :cond_13
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    .line 587
    :cond_16
    return v0
.end method

.method public static blacklist inc(I[I)I
    .registers 6

    .line 606
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x1

    if-ge v1, p0, :cond_10

    .line 608
    aget v3, p1, v1

    add-int/2addr v3, v2

    aput v3, p1, v1

    if-eqz v3, :cond_d

    .line 610
    return v0

    .line 606
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 613
    :cond_10
    return v2
.end method

.method public static blacklist inc(I[I[I)I
    .registers 7

    .line 618
    const/4 v0, 0x0

    move v1, v0

    .line 619
    :goto_2
    const/4 v2, 0x1

    if-ge v1, p0, :cond_19

    .line 621
    aget v3, p1, v1

    add-int/2addr v3, v2

    .line 622
    aput v3, p2, v1

    .line 623
    add-int/lit8 v1, v1, 0x1

    .line 624
    if-eqz v3, :cond_18

    .line 626
    :goto_e
    if-ge v1, p0, :cond_17

    .line 628
    aget v2, p1, v1

    aput v2, p2, v1

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 631
    :cond_17
    return v0

    .line 633
    :cond_18
    goto :goto_2

    .line 634
    :cond_19
    return v2
.end method

.method public static blacklist incAt(I[II)I
    .registers 5

    .line 640
    nop

    :goto_1
    const/4 v0, 0x1

    if-ge p2, p0, :cond_10

    .line 642
    aget v1, p1, p2

    add-int/2addr v1, v0

    aput v1, p1, p2

    if-eqz v1, :cond_d

    .line 644
    const/4 p0, 0x0

    return p0

    .line 640
    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 647
    :cond_10
    return v0
.end method

.method public static blacklist incAt(I[III)I
    .registers 7

    .line 653
    nop

    :goto_1
    const/4 v0, 0x1

    if-ge p3, p0, :cond_12

    .line 655
    add-int v1, p2, p3

    aget v2, p1, v1

    add-int/2addr v2, v0

    aput v2, p1, v1

    if-eqz v2, :cond_f

    .line 657
    const/4 p0, 0x0

    return p0

    .line 653
    :cond_f
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 660
    :cond_12
    return v0
.end method

.method public static blacklist isOne(I[I)Z
    .registers 6

    .line 665
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 667
    return v0

    .line 669
    :cond_7
    move v1, v2

    :goto_8
    if-ge v1, p0, :cond_12

    .line 671
    aget v3, p1, v1

    if-eqz v3, :cond_f

    .line 673
    return v0

    .line 669
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 676
    :cond_12
    return v2
.end method

.method public static blacklist isZero(I[I)Z
    .registers 5

    .line 681
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_c

    .line 683
    aget v2, p1, v1

    if-eqz v2, :cond_9

    .line 685
    return v0

    .line 681
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 688
    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist lessThan(I[II[II)I
    .registers 14

    .line 705
    nop

    .line 706
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_1f

    .line 708
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 709
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 712
    :cond_1f
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist lessThan(I[I[I)I
    .registers 12

    .line 693
    nop

    .line 694
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_1b

    .line 696
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 697
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 700
    :cond_1b
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist mul(I[II[II[II)V
    .registers 14

    .line 727
    add-int v0, p6, p0

    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result p0

    move p3, v6

    aput p0, v5, v0

    .line 729
    const/4 p0, 0x1

    :goto_11
    if-ge p0, v1, :cond_24

    .line 731
    add-int v6, p3, p0

    add-int p4, v6, v1

    add-int p5, p2, p0

    aget v2, p1, p5

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p5

    aput p5, v5, p4

    .line 729
    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    .line 733
    :cond_24
    return-void
.end method

.method public static blacklist mul(I[I[I[I)V
    .registers 11

    .line 717
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    .line 719
    const/4 v0, 0x1

    move v6, v0

    :goto_b
    if-ge v6, p0, :cond_1f

    .line 721
    add-int v0, v6, p0

    aget v2, p1, v6

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    aput p0, v5, v0

    .line 719
    add-int/lit8 v6, v6, 0x1

    move p0, v1

    goto :goto_b

    .line 723
    :cond_1f
    return-void
.end method

.method public static blacklist mul([III[III[II)V
    .registers 15

    .line 737
    add-int v0, p7, p5

    aget v2, p0, p1

    move-object v3, p3

    move v4, p4

    move v1, p5

    move-object v5, p6

    move v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result p3

    move p4, v6

    aput p3, v5, v0

    .line 739
    const/4 p3, 0x1

    :goto_11
    if-ge p3, p2, :cond_24

    .line 741
    add-int v6, p4, p3

    add-int p5, v6, v1

    add-int p6, p1, p3

    aget v2, p0, p6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p6

    aput p6, v5, p5

    .line 739
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    .line 743
    :cond_24
    return-void
.end method

.method public static blacklist mul31BothAdd(II[II[I[II)I
    .registers 20

    .line 774
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    move/from16 p1, p3

    int-to-long v4, p1

    and-long/2addr v4, v2

    .line 775
    const-wide/16 v6, 0x0

    const/4 p1, 0x0

    .line 778
    :cond_e
    aget v8, p2, p1

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long/2addr v8, v0

    aget v10, p4, p1

    int-to-long v10, v10

    and-long/2addr v10, v2

    mul-long/2addr v10, v4

    add-long/2addr v8, v10

    add-int v10, p6, p1

    aget v11, p5, v10

    int-to-long v11, v11

    and-long/2addr v11, v2

    add-long/2addr v8, v11

    add-long/2addr v6, v8

    .line 779
    long-to-int v8, v6

    aput v8, p5, v10

    .line 780
    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    .line 782
    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_e

    .line 783
    long-to-int p0, v6

    return p0
.end method

.method public static blacklist mulAddTo(I[II[II[II)I
    .registers 16

    .line 760
    nop

    .line 761
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v8, p6

    :goto_5
    if-ge v2, p0, :cond_31

    .line 763
    add-int p6, p2, v2

    aget v4, p1, p6

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    int-to-long p3, p0

    const-wide p5, 0xffffffffL

    and-long/2addr p3, p5

    add-long/2addr v0, p3

    .line 764
    add-int p0, v8, v3

    aget p3, v7, p0

    int-to-long p3, p3

    and-long/2addr p3, p5

    add-long/2addr v0, p3

    .line 765
    long-to-int p3, v0

    aput p3, v7, p0

    .line 766
    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    .line 767
    add-int/lit8 v8, v8, 0x1

    .line 761
    add-int/lit8 v2, v2, 0x1

    move p0, v3

    move-object p3, v5

    move p4, v6

    move-object p5, v7

    goto :goto_5

    .line 769
    :cond_31
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist mulAddTo(I[I[I[I)I
    .registers 14

    .line 747
    nop

    .line 748
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v7, v2

    :goto_5
    if-ge v7, p0, :cond_2c

    .line 750
    aget v3, p1, v7

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    int-to-long p2, p0

    const-wide v8, 0xffffffffL

    and-long/2addr p2, v8

    add-long/2addr v0, p2

    .line 751
    add-int p0, v7, v2

    aget p2, v6, p0

    int-to-long p2, p2

    and-long/2addr p2, v8

    add-long/2addr v0, p2

    .line 752
    long-to-int p2, v0

    aput p2, v6, p0

    .line 753
    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    .line 748
    add-int/lit8 v7, v7, 0x1

    move p0, v2

    move-object p2, v4

    move-object p3, v6

    goto :goto_5

    .line 755
    :cond_2c
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist mulWord(II[II[II)I
    .registers 14

    .line 802
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 803
    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    .line 806
    :cond_a
    add-int v6, p3, p1

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 807
    add-int v6, p5, p1

    long-to-int v7, v4

    aput v7, p4, v6

    .line 808
    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    .line 810
    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_a

    .line 811
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWord(II[I[I)I
    .registers 12

    .line 788
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 789
    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    .line 792
    :cond_a
    aget v6, p2, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    .line 793
    long-to-int v6, v4

    aput v6, p3, p1

    .line 794
    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    .line 796
    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_a

    .line 797
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWordAddTo(II[II[II)I
    .registers 17

    .line 816
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 817
    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    .line 820
    :cond_a
    add-int v6, p3, p1

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int v8, p5, p1

    aget v9, p4, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    .line 821
    long-to-int v6, v4

    aput v6, p4, v8

    .line 822
    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    .line 824
    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_a

    .line 825
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWordDwordAddAt(IIJ[II)I
    .registers 16

    .line 831
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 832
    and-long v4, p2, v2

    mul-long/2addr v4, v0

    add-int/lit8 p1, p5, 0x0

    aget v6, p4, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    .line 833
    long-to-int v8, v4

    aput v8, p4, p1

    .line 834
    const/16 p1, 0x20

    ushr-long/2addr v4, p1

    .line 835
    ushr-long/2addr p2, p1

    mul-long/2addr v0, p2

    add-int/lit8 p2, p5, 0x1

    aget p3, p4, p2

    int-to-long v8, p3

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v4, v0

    .line 836
    long-to-int p3, v4

    aput p3, p4, p2

    .line 837
    ushr-long p2, v4, p1

    .line 838
    add-int/lit8 v0, p5, 0x2

    aget v1, p4, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p2, v1

    .line 839
    long-to-int v1, p2

    aput v1, p4, v0

    .line 840
    ushr-long p1, p2, p1

    .line 841
    cmp-long p1, p1, v6

    if-nez p1, :cond_3c

    const/4 p0, 0x0

    goto :goto_42

    :cond_3c
    add-int/lit8 p5, p5, 0x3

    invoke-static {p0, p4, p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    :goto_42
    return p0
.end method

.method public static blacklist shiftDownBit(I[II)I
    .registers 5

    .line 846
    nop

    .line 847
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_11

    .line 849
    aget v0, p1, p0

    .line 850
    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v1

    aput p2, p1, p0

    .line 851
    nop

    .line 852
    move p2, v0

    goto :goto_1

    .line 853
    :cond_11
    shl-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static blacklist shiftDownBit(I[III)I
    .registers 7

    .line 858
    nop

    .line 859
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_13

    .line 861
    add-int v0, p2, p0

    aget v1, p1, v0

    .line 862
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v2

    aput p3, p1, v0

    .line 863
    nop

    .line 864
    move p3, v1

    goto :goto_1

    .line 865
    :cond_13
    shl-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static blacklist shiftDownBit(I[III[II)I
    .registers 9

    .line 882
    nop

    .line 883
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_15

    .line 885
    add-int v0, p2, p0

    aget v0, p1, v0

    .line 886
    add-int v1, p5, p0

    ushr-int/lit8 v2, v0, 0x1

    shl-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v2

    aput p3, p4, v1

    .line 887
    nop

    .line 888
    move p3, v0

    goto :goto_1

    .line 889
    :cond_15
    shl-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static blacklist shiftDownBit(I[II[I)I
    .registers 6

    .line 870
    nop

    .line 871
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_11

    .line 873
    aget v0, p1, p0

    .line 874
    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v1

    aput p2, p3, p0

    .line 875
    nop

    .line 876
    move p2, v0

    goto :goto_1

    .line 877
    :cond_11
    shl-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static blacklist shiftDownBits(I[III)I
    .registers 7

    .line 895
    nop

    .line 896
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_11

    .line 898
    aget v0, p1, p0

    .line 899
    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int/2addr p3, v2

    or-int/2addr p3, v1

    aput p3, p1, p0

    .line 900
    nop

    .line 901
    move p3, v0

    goto :goto_1

    .line 902
    :cond_11
    neg-int p0, p2

    shl-int p0, p3, p0

    return p0
.end method

.method public static blacklist shiftDownBits(I[IIII)I
    .registers 9

    .line 908
    nop

    .line 909
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_13

    .line 911
    add-int v0, p2, p0

    aget v1, p1, v0

    .line 912
    ushr-int v2, v1, p3

    neg-int v3, p3

    shl-int/2addr p4, v3

    or-int/2addr p4, v2

    aput p4, p1, v0

    .line 913
    nop

    .line 914
    move p4, v1

    goto :goto_1

    .line 915
    :cond_13
    neg-int p0, p3

    shl-int p0, p4, p0

    return p0
.end method

.method public static blacklist shiftDownBits(I[IIII[II)I
    .registers 11

    .line 934
    nop

    .line 935
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_15

    .line 937
    add-int v0, p2, p0

    aget v0, p1, v0

    .line 938
    add-int v1, p6, p0

    ushr-int v2, v0, p3

    neg-int v3, p3

    shl-int/2addr p4, v3

    or-int/2addr p4, v2

    aput p4, p5, v1

    .line 939
    nop

    .line 940
    move p4, v0

    goto :goto_1

    .line 941
    :cond_15
    neg-int p0, p3

    shl-int p0, p4, p0

    return p0
.end method

.method public static blacklist shiftDownBits(I[III[I)I
    .registers 8

    .line 921
    nop

    .line 922
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_11

    .line 924
    aget v0, p1, p0

    .line 925
    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int/2addr p3, v2

    or-int/2addr p3, v1

    aput p3, p4, p0

    .line 926
    nop

    .line 927
    move p3, v0

    goto :goto_1

    .line 928
    :cond_11
    neg-int p0, p2

    shl-int p0, p3, p0

    return p0
.end method

.method public static blacklist shiftDownWord(I[II)I
    .registers 4

    .line 946
    nop

    .line 947
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_c

    .line 949
    aget v0, p1, p0

    .line 950
    aput p2, p1, p0

    .line 951
    nop

    .line 952
    move p2, v0

    goto :goto_1

    .line 953
    :cond_c
    return p2
.end method

.method public static blacklist shiftUpBit(I[II)I
    .registers 6

    .line 958
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_11

    .line 960
    aget v1, p1, v0

    .line 961
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v2

    aput p2, p1, v0

    .line 962
    nop

    .line 958
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    .line 964
    :cond_11
    ushr-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static blacklist shiftUpBit(I[III)I
    .registers 8

    .line 969
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_13

    .line 971
    add-int v1, p2, v0

    aget v2, p1, v1

    .line 972
    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v3

    aput p3, p1, v1

    .line 973
    nop

    .line 969
    add-int/lit8 v0, v0, 0x1

    move p3, v2

    goto :goto_1

    .line 975
    :cond_13
    ushr-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static blacklist shiftUpBit(I[III[II)I
    .registers 10

    .line 991
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_15

    .line 993
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 994
    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v3

    aput p3, p4, v2

    .line 995
    nop

    .line 991
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_1

    .line 997
    :cond_15
    ushr-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static blacklist shiftUpBit(I[II[I)I
    .registers 7

    .line 980
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_11

    .line 982
    aget v1, p1, v0

    .line 983
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v2

    aput p2, p3, v0

    .line 984
    nop

    .line 980
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    .line 986
    :cond_11
    ushr-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static blacklist shiftUpBit64(I[JIJ[JI)J
    .registers 14

    .line 1002
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x3f

    if-ge v0, p0, :cond_17

    .line 1004
    add-int v2, p2, v0

    aget-wide v2, p1, v2

    .line 1005
    add-int v4, p6, v0

    const/4 v5, 0x1

    shl-long v5, v2, v5

    ushr-long/2addr p3, v1

    or-long/2addr p3, v5

    aput-wide p3, p5, v4

    .line 1006
    nop

    .line 1002
    add-int/lit8 v0, v0, 0x1

    move-wide p3, v2

    goto :goto_1

    .line 1008
    :cond_17
    ushr-long p0, p3, v1

    return-wide p0
.end method

.method public static blacklist shiftUpBits(I[III)I
    .registers 8

    .line 1014
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_11

    .line 1016
    aget v1, p1, v0

    .line 1017
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int/2addr p3, v3

    or-int/2addr p3, v2

    aput p3, p1, v0

    .line 1018
    nop

    .line 1014
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_1

    .line 1020
    :cond_11
    neg-int p0, p2

    ushr-int p0, p3, p0

    return p0
.end method

.method public static blacklist shiftUpBits(I[IIII)I
    .registers 10

    .line 1026
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_13

    .line 1028
    add-int v1, p2, v0

    aget v2, p1, v1

    .line 1029
    shl-int v3, v2, p3

    neg-int v4, p3

    ushr-int/2addr p4, v4

    or-int/2addr p4, v3

    aput p4, p1, v1

    .line 1030
    nop

    .line 1026
    add-int/lit8 v0, v0, 0x1

    move p4, v2

    goto :goto_1

    .line 1032
    :cond_13
    neg-int p0, p3

    ushr-int p0, p4, p0

    return p0
.end method

.method public static blacklist shiftUpBits(I[IIII[II)I
    .registers 12

    .line 1062
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_15

    .line 1064
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 1065
    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int/2addr p4, v4

    or-int/2addr p4, v3

    aput p4, p5, v2

    .line 1066
    nop

    .line 1062
    add-int/lit8 v0, v0, 0x1

    move p4, v1

    goto :goto_1

    .line 1068
    :cond_15
    neg-int p0, p3

    ushr-int p0, p4, p0

    return p0
.end method

.method public static blacklist shiftUpBits(I[III[I)I
    .registers 9

    .line 1050
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_11

    .line 1052
    aget v1, p1, v0

    .line 1053
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int/2addr p3, v3

    or-int/2addr p3, v2

    aput p3, p4, v0

    .line 1054
    nop

    .line 1050
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_1

    .line 1056
    :cond_11
    neg-int p0, p2

    ushr-int p0, p3, p0

    return p0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ)J
    .registers 13

    .line 1038
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_13

    .line 1040
    add-int v1, p2, v0

    aget-wide v2, p1, v1

    .line 1041
    shl-long v4, v2, p3

    neg-int v6, p3

    ushr-long/2addr p4, v6

    or-long/2addr p4, v4

    aput-wide p4, p1, v1

    .line 1042
    nop

    .line 1038
    add-int/lit8 v0, v0, 0x1

    move-wide p4, v2

    goto :goto_1

    .line 1044
    :cond_13
    neg-int p0, p3

    ushr-long p0, p4, p0

    return-wide p0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ[JI)J
    .registers 15

    .line 1074
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_15

    .line 1076
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 1077
    add-int v3, p7, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long/2addr p4, v6

    or-long/2addr p4, v4

    aput-wide p4, p6, v3

    .line 1078
    nop

    .line 1074
    add-int/lit8 v0, v0, 0x1

    move-wide p4, v1

    goto :goto_1

    .line 1080
    :cond_15
    neg-int p0, p3

    ushr-long p0, p4, p0

    return-wide p0
.end method

.method public static blacklist square(I[II[II)V
    .registers 16

    .line 1116
    shl-int/lit8 v0, p0, 0x1

    .line 1117
    nop

    .line 1118
    const/4 v1, 0x0

    move v2, p0

    move v3, v0

    .line 1121
    :cond_6
    add-int/lit8 v2, v2, -0x1

    add-int v4, p2, v2

    aget v4, p1, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 1122
    mul-long/2addr v4, v4

    .line 1123
    add-int/lit8 v3, v3, -0x1

    add-int v8, p4, v3

    shl-int/lit8 v1, v1, 0x1f

    const/16 v9, 0x21

    ushr-long v9, v4, v9

    long-to-int v9, v9

    or-int/2addr v1, v9

    aput v1, p3, v8

    .line 1124
    add-int/lit8 v3, v3, -0x1

    add-int v1, p4, v3

    const/4 v8, 0x1

    ushr-long v9, v4, v8

    long-to-int v9, v9

    aput v9, p3, v1

    .line 1125
    long-to-int v1, v4

    .line 1127
    if-gtz v2, :cond_6

    .line 1129
    nop

    .line 1130
    add-int/lit8 v1, p4, 0x2

    .line 1132
    const-wide/16 v2, 0x0

    :goto_34
    if-ge v8, p0, :cond_59

    .line 1134
    invoke-static {p1, p2, v8, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([III[II)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1135
    aget v4, p3, v1

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1136
    add-int/lit8 v4, v1, 0x1

    long-to-int v5, v2

    aput v5, p3, v1

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    .line 1137
    aget v5, p3, v4

    int-to-long v9, v5

    and-long/2addr v9, v6

    add-long/2addr v2, v9

    .line 1138
    add-int/lit8 v5, v4, 0x1

    long-to-int v9, v2

    aput v9, p3, v4

    ushr-long/2addr v2, v1

    .line 1132
    add-int/lit8 v8, v8, 0x1

    move v1, v5

    goto :goto_34

    .line 1142
    :cond_59
    aget p0, p1, p2

    shl-int/lit8 p0, p0, 0x1f

    invoke-static {v0, p3, p4, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    .line 1143
    return-void
.end method

.method public static blacklist square(I[I[I)V
    .registers 14

    .line 1085
    shl-int/lit8 v0, p0, 0x1

    .line 1086
    nop

    .line 1087
    const/4 v1, 0x0

    move v2, p0

    move v3, v0

    move v4, v1

    .line 1090
    :goto_7
    add-int/lit8 v2, v2, -0x1

    aget v5, p1, v2

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 1091
    mul-long/2addr v5, v5

    .line 1092
    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v4, v4, 0x1f

    const/16 v9, 0x21

    ushr-long v9, v5, v9

    long-to-int v9, v9

    or-int/2addr v4, v9

    aput v4, p2, v3

    .line 1093
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    ushr-long v9, v5, v4

    long-to-int v9, v9

    aput v9, p2, v3

    .line 1094
    long-to-int v5, v5

    .line 1096
    if-gtz v2, :cond_5c

    .line 1098
    nop

    .line 1099
    nop

    .line 1101
    const-wide/16 v2, 0x0

    const/4 v5, 0x2

    :goto_2f
    if-ge v4, p0, :cond_54

    .line 1103
    invoke-static {p1, v4, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([II[I)I

    move-result v6

    int-to-long v9, v6

    and-long/2addr v9, v7

    add-long/2addr v2, v9

    .line 1104
    aget v6, p2, v5

    int-to-long v9, v6

    and-long/2addr v9, v7

    add-long/2addr v2, v9

    .line 1105
    add-int/lit8 v6, v5, 0x1

    long-to-int v9, v2

    aput v9, p2, v5

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 1106
    aget v9, p2, v6

    int-to-long v9, v9

    and-long/2addr v9, v7

    add-long/2addr v2, v9

    .line 1107
    add-int/lit8 v9, v6, 0x1

    long-to-int v10, v2

    aput v10, p2, v6

    ushr-long/2addr v2, v5

    .line 1101
    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_2f

    .line 1111
    :cond_54
    aget p0, p1, v1

    shl-int/lit8 p0, p0, 0x1f

    invoke-static {v0, p2, p0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    .line 1112
    return-void

    .line 1096
    :cond_5c
    move v4, v5

    goto :goto_7
.end method

.method public static blacklist squareWordAddTo([III[II)I
    .registers 19

    .line 1161
    move/from16 v0, p2

    add-int v1, p1, v0

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1162
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v8, v7

    move-wide v6, v5

    move/from16 v5, p4

    .line 1165
    :cond_14
    add-int v9, p1, v8

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long/2addr v9, v1

    add-int v11, v0, v5

    aget v12, p3, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    add-long/2addr v9, v12

    add-long/2addr v6, v9

    .line 1166
    long-to-int v9, v6

    aput v9, p3, v11

    .line 1167
    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    .line 1168
    add-int/lit8 v5, v5, 0x1

    .line 1170
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v0, :cond_14

    .line 1171
    long-to-int p0, v6

    return p0
.end method

.method public static blacklist squareWordAddTo([II[I)I
    .registers 15

    .line 1147
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1148
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 1151
    :cond_c
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-int v9, p1, v6

    aget v10, p2, v9

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-long/2addr v7, v10

    add-long/2addr v4, v7

    .line 1152
    long-to-int v7, v4

    aput v7, p2, v9

    .line 1153
    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    .line 1155
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_c

    .line 1156
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist sub(I[II[II[II)I
    .registers 16

    .line 1188
    nop

    .line 1189
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_24

    .line 1191
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1192
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 1193
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1189
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1195
    :cond_24
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist sub(I[I[I[I)I
    .registers 13

    .line 1176
    nop

    .line 1177
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_1e

    .line 1179
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1180
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1181
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1177
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1183
    :cond_1e
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist sub33At(II[II)I
    .registers 11

    .line 1201
    add-int/lit8 v0, p3, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 1202
    long-to-int p1, v1

    aput p1, p2, v0

    .line 1203
    const/16 p1, 0x20

    shr-long v0, v1, p1

    .line 1204
    add-int/lit8 v2, p3, 0x1

    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1205
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1206
    shr-long/2addr v0, p1

    .line 1207
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2b

    const/4 p0, 0x0

    goto :goto_31

    :cond_2b
    add-int/lit8 p3, p3, 0x2

    invoke-static {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    :goto_31
    return p0
.end method

.method public static blacklist sub33At(II[III)I
    .registers 12

    .line 1213
    add-int v0, p3, p4

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 1214
    long-to-int p1, v1

    aput p1, p2, v0

    .line 1215
    const/16 p1, 0x20

    shr-long/2addr v1, p1

    .line 1216
    add-int/lit8 v0, v0, 0x1

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 1217
    long-to-int v3, v1

    aput v3, p2, v0

    .line 1218
    shr-long v0, v1, p1

    .line 1219
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2b

    const/4 p0, 0x0

    goto :goto_31

    :cond_2b
    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_31
    return p0
.end method

.method public static blacklist sub33From(II[I)I
    .registers 11

    .line 1224
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 1225
    long-to-int p1, v1

    aput p1, p2, v0

    .line 1226
    const/16 p1, 0x20

    shr-long/2addr v1, p1

    .line 1227
    const/4 v5, 0x1

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    add-long/2addr v1, v3

    .line 1228
    long-to-int v3, v1

    aput v3, p2, v5

    .line 1229
    shr-long/2addr v1, p1

    .line 1230
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_27

    goto :goto_2c

    :cond_27
    const/4 p1, 0x2

    invoke-static {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist sub33From(II[II)I
    .registers 11

    .line 1235
    add-int/lit8 v0, p3, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 1236
    long-to-int p1, v1

    aput p1, p2, v0

    .line 1237
    const/16 p1, 0x20

    shr-long v0, v1, p1

    .line 1238
    add-int/lit8 v2, p3, 0x1

    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1239
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1240
    shr-long/2addr v0, p1

    .line 1241
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2b

    const/4 p0, 0x0

    goto :goto_30

    :cond_2b
    const/4 p1, 0x2

    invoke-static {p0, p2, p3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_30
    return p0
.end method

.method public static blacklist subBothFrom(I[II[II[II)I
    .registers 17

    .line 1258
    nop

    .line 1259
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_29

    .line 1261
    add-int v3, p6, v2

    aget v4, p5, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v8, p2, v2

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    sub-long/2addr v4, v8

    add-int v8, p4, v2

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1262
    long-to-int v4, v0

    aput v4, p5, v3

    .line 1263
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1259
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1265
    :cond_29
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist subBothFrom(I[I[I[I)I
    .registers 13

    .line 1246
    nop

    .line 1247
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_23

    .line 1249
    aget v3, p3, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1250
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1251
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1247
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1253
    :cond_23
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist subDWordAt(IJ[II)I
    .registers 13

    .line 1271
    add-int/lit8 v0, p4, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    .line 1272
    long-to-int v5, v1

    aput v5, p3, v0

    .line 1273
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1274
    add-int/lit8 v5, p4, 0x1

    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v0

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    .line 1275
    long-to-int p1, v1

    aput p1, p3, v5

    .line 1276
    shr-long p1, v1, v0

    .line 1277
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    goto :goto_30

    :cond_2a
    add-int/lit8 p4, p4, 0x2

    invoke-static {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    :goto_30
    return p0
.end method

.method public static blacklist subDWordAt(IJ[III)I
    .registers 14

    .line 1283
    add-int v0, p4, p5

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    .line 1284
    long-to-int v5, v1

    aput v5, p3, v0

    .line 1285
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1286
    add-int/lit8 v0, v0, 0x1

    aget v6, p3, v0

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v5

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    .line 1287
    long-to-int p1, v1

    aput p1, p3, v0

    .line 1288
    shr-long p1, v1, v5

    .line 1289
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    goto :goto_30

    :cond_2a
    add-int/lit8 p5, p5, 0x2

    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_30
    return p0
.end method

.method public static blacklist subDWordFrom(IJ[I)I
    .registers 13

    .line 1294
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    .line 1295
    long-to-int v5, v1

    aput v5, p3, v0

    .line 1296
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1297
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long/2addr p1, v5

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    .line 1298
    long-to-int p1, v1

    aput p1, p3, v6

    .line 1299
    shr-long p1, v1, v5

    .line 1300
    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_27

    goto :goto_2c

    :cond_27
    const/4 p1, 0x2

    invoke-static {p0, p3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist subDWordFrom(IJ[II)I
    .registers 13

    .line 1305
    add-int/lit8 v0, p4, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    .line 1306
    long-to-int v5, v1

    aput v5, p3, v0

    .line 1307
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 1308
    add-int/lit8 v5, p4, 0x1

    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v0

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    .line 1309
    long-to-int p1, v1

    aput p1, p3, v5

    .line 1310
    shr-long p1, v1, v0

    .line 1311
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    goto :goto_2f

    :cond_2a
    const/4 p1, 0x2

    invoke-static {p0, p3, p4, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_2f
    return p0
.end method

.method public static blacklist subFrom(I[II[II)I
    .registers 15

    .line 1328
    nop

    .line 1329
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_22

    .line 1331
    add-int v3, p4, v2

    aget v4, p3, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v8, p2, v2

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1332
    long-to-int v4, v0

    aput v4, p3, v3

    .line 1333
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1329
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1335
    :cond_22
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist subFrom(I[I[I)I
    .registers 12

    .line 1316
    nop

    .line 1317
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, p0, :cond_1e

    .line 1319
    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1320
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1321
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1317
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1323
    :cond_1e
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist subWordAt(II[II)I
    .registers 10

    .line 1341
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1342
    long-to-int p1, v0

    aput p1, p2, p3

    .line 1343
    const/16 p1, 0x20

    shr-long/2addr v0, p1

    .line 1344
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    goto :goto_20

    :cond_1a
    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    :goto_20
    return p0
.end method

.method public static blacklist subWordAt(II[III)I
    .registers 12

    .line 1350
    add-int v0, p3, p4

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 1351
    long-to-int p1, v1

    aput p1, p2, v0

    .line 1352
    const/16 p1, 0x20

    shr-long v0, v1, p1

    .line 1353
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1d

    const/4 p0, 0x0

    goto :goto_23

    :cond_1d
    add-int/lit8 p4, p4, 0x1

    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_23
    return p0
.end method

.method public static blacklist subWordFrom(II[I)I
    .registers 10

    .line 1358
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 1359
    long-to-int p1, v1

    aput p1, p2, v0

    .line 1360
    const/16 p1, 0x20

    shr-long/2addr v1, p1

    .line 1361
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1a

    goto :goto_1f

    :cond_1a
    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_1f
    return v0
.end method

.method public static blacklist subWordFrom(II[II)I
    .registers 11

    .line 1366
    add-int/lit8 v0, p3, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 1367
    long-to-int p1, v1

    aput p1, p2, v0

    .line 1368
    const/16 p1, 0x20

    shr-long v0, v1, p1

    .line 1369
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1d

    const/4 p0, 0x0

    goto :goto_22

    :cond_1d
    const/4 p1, 0x1

    invoke-static {p0, p2, p3, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    :goto_22
    return p0
.end method

.method public static blacklist toBigInteger(I[I)Ljava/math/BigInteger;
    .registers 6

    .line 1374
    shl-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    .line 1375
    const/4 v1, 0x0

    :goto_5
    if-ge v1, p0, :cond_16

    .line 1377
    aget v2, p1, v1

    .line 1378
    if-eqz v2, :cond_13

    .line 1380
    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1375
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1383
    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static blacklist zero(I[I)V
    .registers 4

    .line 1388
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_9

    .line 1390
    aput v0, p1, v1

    .line 1388
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1392
    :cond_9
    return-void
.end method

.method public static blacklist zero(I[II)V
    .registers 6

    .line 1396
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_b

    .line 1398
    add-int v2, p2, v1

    aput v0, p1, v2

    .line 1396
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1400
    :cond_b
    return-void
.end method

.method public static blacklist zero64(I[J)V
    .registers 5

    .line 1404
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_a

    .line 1406
    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    .line 1404
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1408
    :cond_a
    return-void
.end method
