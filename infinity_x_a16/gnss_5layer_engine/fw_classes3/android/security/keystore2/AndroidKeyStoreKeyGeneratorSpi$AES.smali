.class public Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;
.super Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AES"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 58
    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;-><init>(II)V

    .line 59
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 65
    iget p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    const/16 p2, 0x80

    if-eq p1, p2, :cond_37

    iget p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    const/16 p2, 0xc0

    if-eq p1, p2, :cond_37

    iget p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    const/16 p2, 0x100

    if-ne p1, p2, :cond_16

    goto :goto_37

    .line 66
    :cond_16
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported key size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;->mKeySizeBits:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ". Supported: 128, 192, 256."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_37
    :goto_37
    return-void
.end method
