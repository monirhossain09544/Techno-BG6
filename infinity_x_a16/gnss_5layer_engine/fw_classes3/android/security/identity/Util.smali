.class public Landroid/security/identity/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Util"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist computeHkdf(Ljava/lang/String;[B[B[BI)[B
    .registers 9

    .line 125
    nop

    .line 127
    :try_start_1
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_5} :catch_73

    .line 130
    nop

    .line 131
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p4, v1, :cond_6a

    .line 135
    if-eqz p2, :cond_1d

    :try_start_10
    array-length v1, p2

    if-nez v1, :cond_14

    goto :goto_1d

    .line 141
    :cond_14
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p2, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_2b

    .line 139
    :cond_1d
    :goto_1d
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {p2, v1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 143
    :goto_2b
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 144
    new-array p2, p4, [B

    .line 145
    nop

    .line 146
    nop

    .line 147
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 148
    const/4 p0, 0x0

    new-array p1, p0, [B

    const/4 v1, 0x1

    move v2, p0

    .line 150
    :goto_40
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 151
    invoke-virtual {v0, p3}, Ljavax/crypto/Mac;->update([B)V

    .line 152
    int-to-byte p1, v1

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V

    .line 153
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    .line 154
    array-length v3, p1

    add-int/2addr v3, v2

    if-ge v3, p4, :cond_5b

    .line 155
    array-length v3, p1

    invoke-static {p1, p0, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    array-length v3, p1

    add-int/2addr v2, v3

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 159
    :cond_5b
    sub-int/2addr p4, v2

    invoke-static {p1, p0, p2, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5f
    .catch Ljava/security/InvalidKeyException; {:try_start_10 .. :try_end_5f} :catch_61

    .line 160
    nop

    .line 163
    return-object p2

    .line 164
    :catch_61
    move-exception p0

    .line 165
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Error MACing"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 132
    :cond_6a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "size too large"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :catch_73
    move-exception p1

    .line 129
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No such algorithm: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static blacklist publicKeyEncodeUncompressedForm(Ljava/security/PublicKey;)[B
    .registers 8

    .line 54
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    .line 57
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_b4

    .line 60
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_ac

    .line 64
    :try_start_1e
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 79
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object v0

    .line 80
    array-length v2, v0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_a3

    const-string v3, " which is unexpected"

    const/16 v4, 0x20

    if-gt v2, v4, :cond_84

    .line 83
    const/4 v2, 0x0

    move v5, v2

    :goto_38
    :try_start_38
    array-length v6, v0

    rsub-int/lit8 v6, v6, 0x20

    if-ge v5, v6, :cond_43

    .line 84
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 86
    :cond_43
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 88
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Landroid/security/identity/Util;->stripLeadingZeroes([B)[B

    move-result-object p0

    .line 89
    array-length v0, p0

    if-gt v0, v4, :cond_65

    .line 92
    move v0, v2

    :goto_52
    array-length v3, p0

    rsub-int/lit8 v3, v3, 0x20

    if-ge v0, v3, :cond_5d

    .line 93
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 95
    :cond_5d
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 96
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 90
    :cond_65
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "yBytes is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_84
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xBytes is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_a3} :catch_a3

    .line 97
    :catch_a3
    move-exception p0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected IOException"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 61
    :cond_ac
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Y is negative"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_b4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "X is negative"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist stripLeadingZeroes([B)[B
    .registers 6

    .line 40
    const/4 v0, 0x0

    move v1, v0

    .line 41
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_c

    aget-byte v2, p0, v1

    if-nez v2, :cond_c

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 44
    :cond_c
    array-length v2, p0

    sub-int/2addr v2, v1

    .line 45
    new-array v2, v2, [B

    .line 46
    nop

    .line 47
    :goto_11
    array-length v3, p0

    if-ge v1, v3, :cond_1f

    .line 48
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    aput-byte v1, v2, v0

    move v0, v3

    move v1, v4

    goto :goto_11

    .line 50
    :cond_1f
    return-object v2
.end method
