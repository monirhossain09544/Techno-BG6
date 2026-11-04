.class Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;
.source "GF2Polynomial.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/field/Polynomial;


# instance fields
.field protected final blacklist exponents:[I


# direct methods
.method constructor blacklist <init>([I)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    .line 13
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 27
    if-ne p0, p1, :cond_4

    .line 29
    const/4 p1, 0x1

    return p1

    .line 31
    :cond_4
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_a

    .line 33
    const/4 p1, 0x0

    return p1

    .line 35
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result p1

    return p1
.end method

.method public blacklist getDegree()I
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getExponentsPresent()[I
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/GF2Polynomial;->exponents:[I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
