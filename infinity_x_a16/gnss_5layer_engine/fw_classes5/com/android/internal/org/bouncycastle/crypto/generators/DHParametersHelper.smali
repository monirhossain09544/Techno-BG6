.class Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;
.super Ljava/lang/Object;
.source "DHParametersHelper.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;

.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 15
    const-class v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    .line 17
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    .line 18
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .registers 13

    .line 28
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    const-string v1, "Generating safe primes. This may take a long time."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    nop

    .line 33
    add-int/lit8 v2, p0, -0x1

    .line 34
    const/4 v3, 0x2

    ushr-int/2addr p0, v3

    const/4 v4, 0x0

    move v5, v4

    .line 39
    :goto_12
    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 40
    invoke-static {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 43
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 45
    invoke-virtual {v8, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-nez v9, :cond_29

    .line 47
    goto :goto_12

    .line 50
    :cond_29
    if-le p1, v3, :cond_34

    add-int/lit8 v9, p1, -0x2

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-nez v9, :cond_34

    .line 52
    goto :goto_12

    .line 61
    :cond_34
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v9

    if-ge v9, p0, :cond_3b

    .line 63
    goto :goto_12

    .line 69
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 70
    sub-long/2addr p0, v0

    .line 71
    sget-object p2, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generated safe primes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tries took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 74
    new-array p0, v3, [Ljava/math/BigInteger;

    aput-object v8, p0, v4

    aput-object v7, p0, v6

    return-object p0
.end method

.method static blacklist selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 5

    .line 84
    sget-object p1, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 102
    :cond_6
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 109
    return-object v0
.end method
