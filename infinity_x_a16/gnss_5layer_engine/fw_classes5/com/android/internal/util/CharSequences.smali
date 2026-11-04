.class public Lcom/android/internal/util/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 9

    .line 123
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 124
    nop

    .line 125
    if-ge v0, v1, :cond_d

    move v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    const/4 v3, 0x0

    move v4, v3

    .line 127
    :goto_10
    if-ge v3, v2, :cond_2d

    .line 128
    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    add-int/lit8 v6, v4, 0x1

    .line 129
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_2a

    .line 130
    return v3

    .line 129
    :cond_2a
    move v3, v5

    move v4, v6

    goto :goto_10

    .line 133
    :cond_2d
    sub-int/2addr v0, v1

    return v0
.end method

.method public static greylist equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7

    .line 100
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 101
    return v2

    .line 104
    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 105
    move v1, v2

    :goto_11
    if-ge v1, v0, :cond_21

    .line 106
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1e

    .line 107
    return v2

    .line 105
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 110
    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist forAsciiBytes([B)Ljava/lang/CharSequence;
    .registers 2

    .line 33
    new-instance v0, Lcom/android/internal/util/CharSequences$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/CharSequences$1;-><init>([B)V

    return-object v0
.end method

.method public static blacklist forAsciiBytes([BII)Ljava/lang/CharSequence;
    .registers 4

    .line 65
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/CharSequences;->validate(III)V

    .line 66
    new-instance v0, Lcom/android/internal/util/CharSequences$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/CharSequences$2;-><init>([BII)V

    return-object v0
.end method

.method static blacklist validate(III)V
    .registers 3

    .line 89
    if-ltz p0, :cond_1b

    .line 90
    if-ltz p1, :cond_15

    .line 91
    if-gt p1, p2, :cond_f

    .line 92
    if-gt p0, p1, :cond_9

    .line 93
    return-void

    .line 92
    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 91
    :cond_f
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 90
    :cond_15
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 89
    :cond_1b
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
