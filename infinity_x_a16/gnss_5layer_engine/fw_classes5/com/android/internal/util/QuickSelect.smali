.class public final Lcom/android/internal/util/QuickSelect;
.super Ljava/lang/Object;
.source "QuickSelect.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist partition(Ljava/util/List;IIILjava/util/Comparator;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 101
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    .line 103
    nop

    .line 104
    move p3, p1

    :goto_9
    if-ge p1, p2, :cond_1d

    .line 105
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1a

    .line 106
    invoke-static {p0, p3, p1}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    .line 107
    add-int/lit8 p3, p3, 0x1

    .line 104
    :cond_1a
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 110
    :cond_1d
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap(Ljava/util/List;II)V

    .line 111
    return p3
.end method

.method private static blacklist partition([IIII)I
    .registers 6

    .line 115
    aget v0, p0, p3

    .line 116
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    .line 117
    nop

    .line 118
    move p3, p1

    :goto_7
    if-ge p1, p2, :cond_15

    .line 119
    aget v1, p0, p1

    if-ge v1, v0, :cond_12

    .line 120
    invoke-static {p0, p3, p1}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    .line 121
    add-int/lit8 p3, p3, 0x1

    .line 118
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 124
    :cond_15
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([III)V

    .line 125
    return p3
.end method

.method private static blacklist partition([JIII)I
    .registers 8

    .line 129
    aget-wide v0, p0, p3

    .line 130
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    .line 131
    nop

    .line 132
    move p3, p1

    :goto_7
    if-ge p1, p2, :cond_17

    .line 133
    aget-wide v2, p0, p1

    cmp-long v2, v2, v0

    if-gez v2, :cond_14

    .line 134
    invoke-static {p0, p3, p1}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    .line 135
    add-int/lit8 p3, p3, 0x1

    .line 132
    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 138
    :cond_17
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([JII)V

    .line 139
    return p3
.end method

.method private static blacklist partition([Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 144
    aget-object v0, p0, p3

    .line 145
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    .line 146
    nop

    .line 147
    move p3, p1

    :goto_7
    if-ge p1, p2, :cond_19

    .line 148
    aget-object v1, p0, p1

    invoke-interface {p4, v1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_16

    .line 149
    invoke-static {p0, p3, p1}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    .line 150
    add-int/lit8 p3, p3, 0x1

    .line 147
    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 153
    :cond_19
    invoke-static {p0, p2, p3}, Lcom/android/internal/util/QuickSelect;->swap([Ljava/lang/Object;II)V

    .line 154
    return p3
.end method

.method public static blacklist select([IIII)I
    .registers 6

    .line 213
    if-eqz p0, :cond_19

    if-ltz p1, :cond_19

    if-lez p2, :cond_19

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_19

    if-ltz p3, :cond_19

    if-le p2, p3, :cond_19

    .line 217
    add-int/lit8 v1, v1, -0x1

    add-int/2addr p3, p1

    invoke-static {p0, p1, v1, p3}, Lcom/android/internal/util/QuickSelect;->selectImpl([IIII)I

    move-result p1

    aget p0, p0, p1

    return p0

    .line 215
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist select([JIII)J
    .registers 6

    .line 231
    if-eqz p0, :cond_19

    if-ltz p1, :cond_19

    if-lez p2, :cond_19

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_19

    if-ltz p3, :cond_19

    if-le p2, p3, :cond_19

    .line 235
    add-int/lit8 v1, v1, -0x1

    add-int/2addr p3, p1

    invoke-static {p0, p1, v1, p3}, Lcom/android/internal/util/QuickSelect;->selectImpl([JIII)I

    move-result p1

    aget-wide p0, p0, p1

    return-wide p0

    .line 233
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist select(Ljava/util/List;IIILjava/util/Comparator;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 195
    if-eqz p0, :cond_1e

    if-ltz p1, :cond_1e

    if-lez p2, :cond_1e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1e

    if-ltz p3, :cond_1e

    if-le p2, p3, :cond_1e

    .line 199
    add-int/lit8 v1, v1, -0x1

    add-int/2addr p3, p1

    invoke-static {p0, p1, v1, p3, p4}, Lcom/android/internal/util/QuickSelect;->selectImpl(Ljava/util/List;IIILjava/util/Comparator;)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 197
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist select([Ljava/lang/Object;IIILjava/util/Comparator;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 251
    if-eqz p0, :cond_19

    if-ltz p1, :cond_19

    if-lez p2, :cond_19

    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_19

    if-ltz p3, :cond_19

    if-le p2, p3, :cond_19

    .line 255
    add-int/lit8 v1, v1, -0x1

    add-int/2addr p3, p1

    invoke-static {p0, p1, v1, p3, p4}, Lcom/android/internal/util/QuickSelect;->selectImpl([Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    .line 253
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static blacklist selectImpl(Ljava/util/List;IIILjava/util/Comparator;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 36
    nop

    :goto_1
    if-ne p1, p2, :cond_4

    .line 37
    return p1

    .line 39
    :cond_4
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/internal/util/QuickSelect;->partition(Ljava/util/List;IIILjava/util/Comparator;)I

    move-result v0

    .line 40
    if-ne p3, v0, :cond_f

    .line 41
    return p3

    .line 42
    :cond_f
    if-ge p3, v0, :cond_15

    .line 43
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_18

    .line 45
    :cond_15
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    .line 47
    :goto_18
    goto :goto_1
.end method

.method private static blacklist selectImpl([IIII)I
    .registers 5

    .line 52
    nop

    :goto_1
    if-ne p1, p2, :cond_4

    .line 53
    return p1

    .line 55
    :cond_4
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/QuickSelect;->partition([IIII)I

    move-result v0

    .line 56
    if-ne p3, v0, :cond_f

    .line 57
    return p3

    .line 58
    :cond_f
    if-ge p3, v0, :cond_15

    .line 59
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_18

    .line 61
    :cond_15
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    .line 63
    :goto_18
    goto :goto_1
.end method

.method private static blacklist selectImpl([JIII)I
    .registers 5

    .line 68
    nop

    :goto_1
    if-ne p1, p2, :cond_4

    .line 69
    return p1

    .line 71
    :cond_4
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/QuickSelect;->partition([JIII)I

    move-result v0

    .line 72
    if-ne p3, v0, :cond_f

    .line 73
    return p3

    .line 74
    :cond_f
    if-ge p3, v0, :cond_15

    .line 75
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_18

    .line 77
    :cond_15
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    .line 79
    :goto_18
    goto :goto_1
.end method

.method private static blacklist selectImpl([Ljava/lang/Object;IIILjava/util/Comparator;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 85
    nop

    :goto_1
    if-ne p1, p2, :cond_4

    .line 86
    return p1

    .line 88
    :cond_4
    add-int v0, p1, p2

    shr-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, p2, v0, p4}, Lcom/android/internal/util/QuickSelect;->partition([Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v0

    .line 89
    if-ne p3, v0, :cond_f

    .line 90
    return p3

    .line 91
    :cond_f
    if-ge p3, v0, :cond_15

    .line 92
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_18

    .line 94
    :cond_15
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    .line 96
    :goto_18
    goto :goto_1
.end method

.method private static blacklist swap(Ljava/util/List;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 158
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 159
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-interface {p0, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method private static blacklist swap([III)V
    .registers 5

    .line 164
    aget v0, p0, p1

    .line 165
    aget v1, p0, p2

    aput v1, p0, p1

    .line 166
    aput v0, p0, p2

    .line 167
    return-void
.end method

.method private static blacklist swap([JII)V
    .registers 7

    .line 170
    aget-wide v0, p0, p1

    .line 171
    aget-wide v2, p0, p2

    aput-wide v2, p0, p1

    .line 172
    aput-wide v0, p0, p2

    .line 173
    return-void
.end method

.method private static blacklist swap([Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .line 176
    aget-object v0, p0, p1

    .line 177
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 178
    aput-object v0, p0, p2

    .line 179
    return-void
.end method
