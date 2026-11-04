.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "DHValidationParameters.java"


# instance fields
.field private blacklist counter:I

.field private blacklist seed:[B


# direct methods
.method public constructor blacklist <init>([BI)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    .line 19
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 35
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 37
    return v1

    .line 40
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 42
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    if-eq v0, v2, :cond_f

    .line 44
    return v1

    .line 47
    :cond_f
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    iget-object p1, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public blacklist getCounter()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    return v0
.end method

.method public blacklist getSeed()[B
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 52
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
