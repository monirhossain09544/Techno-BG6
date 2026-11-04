.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 996
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    .line 997
    return-void
.end method


# virtual methods
.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1006
    if-nez p1, :cond_8

    .line 1008
    return-void

    .line 1011
    :cond_8
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1012
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 1014
    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    .line 1016
    if-eqz p1, :cond_22

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    goto :goto_22

    .line 1018
    :cond_1a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Wrong version of key store."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1022
    :cond_22
    :goto_22
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v6, v1, [B

    .line 1024
    const/16 v2, 0x14

    const-string v3, "Key store corrupted."

    if-ne v1, v2, :cond_8a

    .line 1029
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1031
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 1033
    if-ltz v7, :cond_84

    const/high16 v1, 0x10000

    if-gt v7, v1, :cond_84

    .line 1039
    if-nez p1, :cond_41

    .line 1041
    const-string p1, "OldPBEWithSHAAndTwofish-CBC"

    move-object v3, p1

    goto :goto_44

    .line 1045
    :cond_41
    const-string p1, "PBEWithSHAAndTwofish-CBC"

    move-object v3, p1

    .line 1048
    :goto_44
    const/4 v4, 0x2

    move-object v2, p0

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 1049
    new-instance p2, Ljavax/crypto/CipherInputStream;

    invoke-direct {p2, v0, p1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 1051
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 1052
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/org/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 1054
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 1057
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 1058
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1062
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    .line 1063
    invoke-static {p2, p1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 1065
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 1070
    return-void

    .line 1067
    :cond_77
    iget-object p1, v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    .line 1068
    new-instance p1, Ljava/io/IOException;

    const-string p2, "KeyStore integrity check failed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1035
    :cond_84
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1026
    :cond_8a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    if-eqz p1, :cond_21

    .line 1107
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1108
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 1110
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_15

    .line 1111
    if-eqz p1, :cond_15

    if-eq p1, v3, :cond_15

    .line 1112
    return v2

    .line 1115
    :cond_15
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [B

    .line 1117
    const/16 v0, 0x14

    if-eq p1, v0, :cond_20

    .line 1118
    return v2

    .line 1121
    :cond_20
    return v3

    .line 1105
    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "input stream must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1077
    const/16 p1, 0x14

    new-array v5, p1, [B

    .line 1078
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit16 v6, v1, 0x400

    .line 1080
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1082
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1083
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1084
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 1085
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1087
    const-string v2, "PBEWithSHAAndTwofish-CBC"

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 1089
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, v0, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1090
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 1092
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v0, p2, p1}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1094
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object p1

    .line 1096
    invoke-virtual {p2, p1}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1098
    invoke-virtual {p2}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1099
    return-void
.end method
