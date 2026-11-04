.class public Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;
.super Ljava/lang/Object;
.source "RadixConverter.java"


# static fields
.field private static final blacklist DEFAULT_POWERS_TO_CACHE:I = 0xa

.field private static final blacklist LOG_LONG_MAX_VALUE:D


# instance fields
.field private final blacklist digitsGroupLength:I

.field private final blacklist digitsGroupSpacePowers:[Ljava/math/BigInteger;

.field private final blacklist digitsGroupSpaceSize:Ljava/math/BigInteger;

.field private final blacklist radix:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 42
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->LOG_LONG_MAX_VALUE:D

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 69
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;-><init>(II)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 7

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    .line 59
    sget-wide v0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->LOG_LONG_MAX_VALUE:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    .line 60
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    .line 61
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->precomputeDigitsGroupPowers(ILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    .line 62
    return-void
.end method

.method private blacklist fromEncoding(II[S)J
    .registers 8

    .line 171
    nop

    .line 172
    const-wide/16 v0, 0x0

    :goto_3
    if-ge p1, p2, :cond_14

    .line 174
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    aget-short v2, p3, p1

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 172
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 176
    :cond_14
    return-wide v0
.end method

.method private blacklist precomputeDigitsGroupPowers(ILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 6

    .line 181
    new-array v0, p1, [Ljava/math/BigInteger;

    .line 182
    nop

    .line 183
    const/4 v1, 0x0

    move-object v2, p2

    :goto_5
    if-ge v1, p1, :cond_10

    .line 185
    aput-object v2, v0, v1

    .line 186
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 188
    :cond_10
    return-object v0
.end method

.method private blacklist toEncoding(JI[S)I
    .registers 10

    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_27

    if-ltz p3, :cond_27

    .line 108
    cmp-long v2, p1, v3

    if-nez v2, :cond_14

    .line 110
    add-int/lit8 v2, p3, -0x1

    aput-short v0, p4, p3

    .line 111
    move p3, v2

    goto :goto_24

    .line 113
    :cond_14
    add-int/lit8 v2, p3, -0x1

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v3, v3

    rem-long v3, p1, v3

    long-to-int v3, v3

    int-to-short v3, v3

    aput-short v3, p4, p3

    .line 114
    iget p3, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    int-to-long v3, p3

    div-long/2addr p1, v3

    move p3, v2

    .line 106
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_27
    cmp-long p1, p1, v3

    if-nez p1, :cond_2c

    .line 120
    return p3

    .line 118
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to convert decimal number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist fromEncoding([S)Ljava/math/BigInteger;
    .registers 10

    .line 129
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ONE:Ljava/math/BigInteger;

    .line 130
    nop

    .line 131
    nop

    .line 132
    array-length v1, p1

    .line 133
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    .line 134
    :goto_c
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    neg-int v6, v6

    if-le v2, v6, :cond_4a

    .line 137
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    .line 138
    if-gez v2, :cond_19

    .line 141
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    add-int/2addr v6, v2

    .line 142
    move v2, v4

    .line 144
    :cond_19
    add-int/2addr v6, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 145
    invoke-direct {p0, v2, v6, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->fromEncoding(II[S)J

    move-result-wide v6

    .line 146
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 147
    if-nez v5, :cond_2a

    .line 149
    move-object v3, v6

    goto :goto_44

    .line 154
    :cond_2a
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    array-length v7, v7

    if-gt v5, v7, :cond_36

    .line 155
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpacePowers:[Ljava/math/BigInteger;

    add-int/lit8 v7, v5, -0x1

    aget-object v0, v0, v7

    goto :goto_3c

    .line 156
    :cond_36
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 157
    :goto_3c
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 159
    :goto_44
    add-int/lit8 v5, v5, 0x1

    .line 135
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    sub-int/2addr v2, v6

    goto :goto_c

    .line 161
    :cond_4a
    return-object v3
.end method

.method public blacklist getDigitsGroupLength()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupLength:I

    return v0
.end method

.method public blacklist getRadix()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->radix:I

    return v0
.end method

.method public blacklist toEncoding(Ljava/math/BigInteger;I[S)V
    .registers 8

    .line 79
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3a

    .line 85
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 88
    :cond_8
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 90
    add-int/lit8 v1, p2, -0x1

    aput-short v2, p3, p2

    .line 91
    move p2, v1

    goto :goto_2b

    .line 93
    :cond_17
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->digitsGroupSpaceSize:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    .line 94
    aget-object v1, p1, v2

    .line 95
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/util/RadixConverter;->toEncoding(JI[S)I

    move-result p1

    move p2, p1

    move-object p1, v1

    .line 97
    :goto_2b
    if-gez p2, :cond_8

    .line 98
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-nez p1, :cond_34

    .line 102
    return-void

    .line 100
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 81
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
