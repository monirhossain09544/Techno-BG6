.class public final Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o cloneIfNotEmpty([B)[B
    .registers 2

    .line 46
    if-eqz p0, :cond_b

    array-length v0, p0

    if-lez v0, :cond_b

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    :cond_b
    return-object p0
.end method

.method public static blacklist cloneIfNotEmpty([I)[I
    .registers 2

    .line 42
    if-eqz p0, :cond_b

    array-length v0, p0

    if-lez v0, :cond_b

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    :cond_b
    return-object p0
.end method

.method public static greylist-max-o cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 34
    if-eqz p0, :cond_b

    array-length v0, p0

    if-lez v0, :cond_b

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_b
    return-object p0
.end method

.method public static greylist-max-o concat([BII[BII)[B
    .registers 8

    .line 56
    if-nez p2, :cond_7

    .line 57
    invoke-static {p3, p4, p5}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object p0

    return-object p0

    .line 58
    :cond_7
    if-nez p5, :cond_e

    .line 59
    invoke-static {p0, p1, p2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object p0

    return-object p0

    .line 61
    :cond_e
    add-int v0, p2, p5

    new-array v0, v0, [B

    .line 62
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-object v0
.end method

.method public static greylist-max-o concat([B[B)[B
    .registers 10

    .line 50
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    move v4, v1

    goto :goto_7

    :cond_6
    move v4, v0

    .line 51
    :goto_7
    if-eqz p1, :cond_a

    array-length v0, p1

    :cond_a
    move v7, v0

    .line 50
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o concat([I[I)[I
    .registers 5

    .line 109
    if-eqz p0, :cond_1d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_1d

    .line 111
    :cond_6
    if-eqz p1, :cond_1c

    array-length v0, p1

    if-nez v0, :cond_c

    goto :goto_1c

    .line 114
    :cond_c
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 115
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    return-object v0

    .line 112
    :cond_1c
    :goto_1c
    return-object p0

    .line 110
    :cond_1d
    :goto_1d
    return-object p1
.end method

.method public static blacklist copy([BI[BII)I
    .registers 7

    .line 80
    const/4 v0, 0x0

    if-eqz p2, :cond_19

    if-nez p0, :cond_6

    goto :goto_19

    .line 83
    :cond_6
    array-length v1, p2

    sub-int/2addr v1, p3

    if-le p4, v1, :cond_c

    .line 84
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 86
    :cond_c
    array-length v1, p0

    sub-int/2addr v1, p1

    if-le p4, v1, :cond_12

    .line 87
    array-length p4, p0

    sub-int/2addr p4, p1

    .line 89
    :cond_12
    if-gtz p4, :cond_15

    .line 90
    return v0

    .line 92
    :cond_15
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    return p4

    .line 81
    :cond_19
    :goto_19
    return v0
.end method

.method public static blacklist forEach([ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 128
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget v2, p0, v1

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 131
    :cond_10
    return-void
.end method

.method public static greylist-max-o nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    .line 30
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_5
    return-object p0
.end method

.method public static greylist-max-o subarray([BII)[B
    .registers 5

    .line 97
    if-nez p2, :cond_5

    .line 98
    sget-object p0, Llibcore/util/EmptyArray;->BYTE:[B

    return-object p0

    .line 100
    :cond_5
    if-nez p1, :cond_b

    array-length v0, p0

    if-ne p2, v0, :cond_b

    .line 101
    return-object p0

    .line 103
    :cond_b
    new-array v0, p2, [B

    .line 104
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    return-object v0
.end method
