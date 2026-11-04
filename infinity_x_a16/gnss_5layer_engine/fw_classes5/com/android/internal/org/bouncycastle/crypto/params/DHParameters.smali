.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source "DHParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final blacklist DEFAULT_MINIMUM_LENGTH:I = 0xa0


# instance fields
.field private blacklist g:Ljava/math/BigInteger;

.field private blacklist j:Ljava/math/BigInteger;

.field private blacklist l:I

.field private blacklist m:I

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist q:Ljava/math/BigInteger;

.field private blacklist validation:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 13

    .line 58
    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getDefaultMParam(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .registers 14

    .line 68
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 9

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-eqz p5, :cond_1e

    .line 92
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt p5, v0, :cond_16

    .line 96
    if-lt p5, p4, :cond_e

    goto :goto_1e

    .line 98
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "when l value specified, it may not be less than m value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le p4, v0, :cond_35

    const-string v0, "com.android.internal.org.bouncycastle.dh.allow_unsafe_p_value"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_35

    .line 104
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsafe p value so small specific l required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_35
    :goto_35
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    .line 108
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    .line 109
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    .line 110
    iput p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->m:I

    .line 111
    iput p5, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->l:I

    .line 112
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    .line 113
    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V
    .registers 14

    .line 78
    const/16 v4, 0xa0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 79
    return-void
.end method

.method private static blacklist getDefaultMParam(I)I
    .registers 2

    .line 29
    const/16 v0, 0xa0

    if-nez p0, :cond_5

    .line 31
    return v0

    .line 34
    :cond_5
    if-ge p0, v0, :cond_8

    goto :goto_9

    :cond_8
    move p0, v0

    :goto_9
    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 169
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 171
    return v1

    .line 174
    :cond_6
    check-cast p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 180
    return v1

    .line 185
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 187
    return v1

    .line 191
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/4 v1, 0x1

    :cond_3d
    return v1
.end method

.method public blacklist getG()Ljava/math/BigInteger;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getJ()Ljava/math/BigInteger;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getL()I
    .registers 2

    .line 158
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->l:I

    return v0
.end method

.method public blacklist getM()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->m:I

    return v0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->validation:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    xor-int/2addr v0, v1

    return v0
.end method
