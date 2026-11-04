.class public abstract Landroid/security/keystore2/AndroidKeyStorePublicKey;
.super Landroid/security/keystore2/AndroidKeyStoreKey;
.source "AndroidKeyStorePublicKey.java"

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field private final blacklist mCertificate:[B

.field private final blacklist mCertificateChain:[B

.field private final blacklist mEncoded:[B


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;[BLjava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 14

    .line 41
    iget-object v0, p2, Landroid/system/keystore2/KeyMetadata;->key:Landroid/system/keystore2/KeyDescriptor;

    iget-wide v3, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iget-object v5, p2, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/security/keystore2/AndroidKeyStoreKey;-><init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 42
    iget-object p1, p2, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    iput-object p1, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    .line 43
    iget-object p1, p2, Landroid/system/keystore2/KeyMetadata;->certificateChain:[B

    iput-object p1, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    .line 44
    iput-object p3, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mEncoded:[B

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 89
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 90
    return v0

    .line 92
    :cond_4
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 93
    return v2

    .line 100
    :cond_c
    check-cast p1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    .line 102
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    iget-object v3, p1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    iget-object p1, p1, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    return v0
.end method

.method public blacklist getCertificate()[B
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    return-object v0
.end method

.method public blacklist getCertificateChain()[B
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 67
    const-string v0, "X.509"

    return-object v0
.end method

.method abstract blacklist getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 78
    nop

    .line 80
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 81
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificate:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 82
    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStorePublicKey;->mCertificateChain:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    return v0
.end method
