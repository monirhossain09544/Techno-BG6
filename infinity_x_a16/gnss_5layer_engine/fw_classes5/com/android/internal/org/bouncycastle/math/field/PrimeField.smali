.class Lcom/android/internal/org/bouncycastle/math/field/PrimeField;
.super Ljava/lang/Object;
.source "PrimeField.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/field/FiniteField;


# instance fields
.field protected final blacklist characteristic:Ljava/math/BigInteger;


# direct methods
.method constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

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
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;

    if-nez v0, :cond_a

    .line 33
    const/4 p1, 0x0

    return p1

    .line 35
    :cond_a
    check-cast p1, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getCharacteristic()Ljava/math/BigInteger;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getDimension()I
    .registers 2

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
