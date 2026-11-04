.class public Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;
.source "RSAKeyGenerationParameters.java"


# instance fields
.field private blacklist certainty:I

.field private blacklist publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V
    .registers 5

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 26
    const/16 p2, 0xc

    if-lt p3, p2, :cond_1b

    .line 34
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 39
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    .line 40
    iput p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    .line 41
    return-void

    .line 36
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "public exponent cannot be even"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key strength too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist getCertainty()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    return v0
.end method

.method public blacklist getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
