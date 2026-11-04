.class public Landroid/security/keystore2/AndroidKeyStoreKey;
.super Ljava/lang/Object;
.source "AndroidKeyStoreKey.java"

# interfaces
.implements Ljava/security/Key;


# instance fields
.field private final blacklist mAlgorithm:Ljava/lang/String;

.field private final blacklist mAuthorizations:[Landroid/system/keystore2/Authorization;

.field private final blacklist mDescriptor:Landroid/system/keystore2/KeyDescriptor;

.field private final blacklist mKeyId:J

.field private final blacklist mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;


# direct methods
.method public constructor blacklist <init>(Landroid/system/keystore2/KeyDescriptor;J[Landroid/system/keystore2/Authorization;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    .line 61
    iput-wide p2, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    .line 62
    iput-object p4, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAuthorizations:[Landroid/system/keystore2/Authorization;

    .line 63
    iput-object p5, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 119
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 120
    return v0

    .line 122
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 123
    return v1

    .line 125
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 126
    return v1

    .line 128
    :cond_13
    check-cast p1, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 129
    iget-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iget-wide v4, p1, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    return v0
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getAuthorizations()[Landroid/system/keystore2/Authorization;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mAuthorizations:[Landroid/system/keystore2/Authorization;

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .registers 4

    .line 72
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 73
    iget-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 74
    const/4 v1, 0x4

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 75
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 76
    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 77
    return-object v0
.end method

.method blacklist getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mSecurityLevel:Landroid/security/KeyStoreSecurityLevel;

    return-object v0
.end method

.method blacklist getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mDescriptor:Landroid/system/keystore2/KeyDescriptor;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 109
    nop

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 112
    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 113
    mul-int/2addr v0, v1

    iget-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKey;->mKeyId:J

    const-wide/16 v3, -0x1

    and-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 114
    return v0
.end method
