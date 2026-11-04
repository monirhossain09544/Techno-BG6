.class Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;
.source "SimpleBigDecimal.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final blacklist bigInt:Ljava/math/BigInteger;

.field private final blacklist scale:I


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;I)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-ltz p2, :cond_a

    .line 54
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    .line 55
    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    .line 56
    return-void

    .line 51
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scale may not be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist checkScale(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)V
    .registers 3

    .line 60
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne v0, p1, :cond_7

    .line 65
    return-void

    .line 62
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist getInstance(Ljava/math/BigInteger;I)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 3

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 86
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public blacklist add(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5

    .line 91
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public blacklist adjustScale(I)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5

    .line 69
    if-ltz p1, :cond_17

    .line 74
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p1, v0, :cond_7

    .line 76
    return-object p0

    .line 79
    :cond_7
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0

    .line 71
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "scale may not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist compareTo(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)I
    .registers 3

    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Ljava/math/BigInteger;)I
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v1, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method public blacklist divide(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .line 130
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 229
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 231
    return v0

    .line 234
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 236
    return v2

    .line 239
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    .line 240
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne v1, p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public blacklist floor()Ljava/math/BigInteger;
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScale()I
    .registers 2

    .line 182
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist intValue()I
    .registers 2

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist longValue()J
    .registers 3

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5

    .line 112
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 113
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    add-int/2addr v1, v2

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public blacklist multiply(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .line 118
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .line 96
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public blacklist round()Ljava/math/BigInteger;
    .registers 4

    .line 156
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 157
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->adjustScale(I)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist shiftLeft(I)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .line 135
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 2

    .line 101
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->negate()Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public blacklist subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5

    .line 106
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 187
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-nez v0, :cond_b

    .line 189
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_30

    .line 197
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 200
    :cond_30
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ne v2, v3, :cond_44

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 202
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 204
    :cond_44
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    new-array v2, v2, [C

    .line 207
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 209
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int/2addr v4, v3

    .line 210
    const/4 v5, 0x0

    move v6, v5

    :goto_5a
    if-ge v6, v4, :cond_63

    .line 212
    const/16 v7, 0x30

    aput-char v7, v2, v6

    .line 210
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    .line 214
    :cond_63
    nop

    :goto_64
    if-ge v5, v3, :cond_71

    .line 216
    add-int v6, v4, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v2, v6

    .line 214
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 218
    :cond_71
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 220
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
