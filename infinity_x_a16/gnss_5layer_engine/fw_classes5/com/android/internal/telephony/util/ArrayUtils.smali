.class public final Lcom/android/internal/telephony/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;)[TT;"
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;TT;Z)[TT;"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 60
    if-nez p3, :cond_c

    invoke-static {p1, p2}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    return-object p1

    .line 61
    :cond_c
    array-length p3, p1

    .line 62
    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 63
    invoke-static {p1, v0, p0, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, p3

    goto :goto_22

    .line 65
    :cond_1a
    nop

    .line 66
    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 68
    :goto_22
    aput-object p2, p0, v0

    .line 69
    return-object p0
.end method

.method public static varargs blacklist concatElements(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[[TT;)[TT;"
        }
    .end annotation

    .line 83
    if-eqz p1, :cond_3c

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_3c

    .line 87
    :cond_6
    nop

    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v2, v0, :cond_17

    aget-object v4, p1, v2

    .line 89
    if-nez v4, :cond_12

    .line 90
    goto :goto_14

    .line 93
    :cond_12
    array-length v4, v4

    add-int/2addr v3, v4

    .line 88
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 97
    :cond_17
    if-nez v3, :cond_1e

    .line 98
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 101
    :cond_1e
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 102
    nop

    .line 103
    array-length v0, p1

    move v2, v1

    move v3, v2

    :goto_28
    if-ge v2, v0, :cond_3b

    aget-object v4, p1, v2

    .line 104
    if-eqz v4, :cond_38

    array-length v5, v4

    if-nez v5, :cond_32

    .line 105
    goto :goto_38

    .line 107
    :cond_32
    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    array-length v4, v4

    add-int/2addr v3, v4

    .line 103
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 110
    :cond_3b
    return-object p0

    .line 84
    :cond_3c
    :goto_3c
    invoke-static {p0}, Lcom/android/internal/telephony/util/ArrayUtils;->createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist contains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 147
    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public static blacklist contains([CC)Z
    .registers 6

    .line 134
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 135
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-char v3, p0, v2

    .line 136
    if-ne v3, p1, :cond_e

    .line 137
    const/4 p0, 0x1

    return p0

    .line 135
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 140
    :cond_11
    return v0
.end method

.method public static blacklist contains([II)Z
    .registers 6

    .line 154
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 155
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    .line 156
    if-ne v3, p1, :cond_e

    .line 157
    const/4 p0, 0x1

    return p0

    .line 155
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 160
    :cond_11
    return v0
.end method

.method public static blacklist contains([JJ)Z
    .registers 8

    .line 167
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 168
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_13

    aget-wide v3, p0, v2

    .line 169
    cmp-long v3, v3, p1

    if-nez v3, :cond_10

    .line 170
    const/4 p0, 0x1

    return p0

    .line 168
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 173
    :cond_13
    return v0
.end method

.method public static blacklist contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 180
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private static blacklist createEmptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 114
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_9

    .line 115
    sget-object p0, Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;->STRING:[Ljava/lang/String;

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 116
    :cond_9
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_10

    .line 117
    sget-object p0, Lcom/android/internal/telephony/util/ArrayUtils$EmptyArray;->OBJECT:[Ljava/lang/Object;

    return-object p0

    .line 120
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static blacklist indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 188
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 189
    :cond_4
    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 190
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    .line 189
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 192
    :cond_14
    return v0
.end method

.method public static blacklist isEmpty(Ljava/util/Collection;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 199
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static blacklist isEmpty(Ljava/util/Map;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 206
    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static blacklist isEmpty([B)Z
    .registers 1

    .line 234
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist isEmpty([I)Z
    .registers 1

    .line 220
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist isEmpty([J)Z
    .registers 1

    .line 227
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist isEmpty([Ljava/lang/Object;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 213
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static blacklist isEmpty([Z)Z
    .registers 1

    .line 241
    if-eqz p0, :cond_8

    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method
