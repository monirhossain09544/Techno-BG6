.class Landroid/security/identity/CredstorePresentationSession;
.super Landroid/security/identity/PresentationSession;
.source "CredstorePresentationSession.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredstorePresentationSession"


# instance fields
.field private blacklist mBinder:Landroid/security/identity/ISession;

.field private blacklist mCipherSuite:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCredentialCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/security/identity/CredstoreIdentityCredential;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEphemeralKeyPair:Ljava/security/KeyPair;

.field private blacklist mFeatureVersion:I

.field private blacklist mOperationHandle:J

.field private blacklist mOperationHandleSet:Z

.field private blacklist mSessionTranscript:[B

.field private blacklist mStore:Landroid/security/identity/CredstoreIdentityCredentialStore;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/security/identity/CredstoreIdentityCredentialStore;Landroid/security/identity/ISession;I)V
    .registers 9

    .line 57
    invoke-direct {p0}, Landroid/security/identity/PresentationSession;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    .line 48
    iput-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z

    .line 50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    .line 51
    iput v0, p0, Landroid/security/identity/CredstorePresentationSession;->mFeatureVersion:I

    .line 58
    iput-object p1, p0, Landroid/security/identity/CredstorePresentationSession;->mContext:Landroid/content/Context;

    .line 59
    iput p2, p0, Landroid/security/identity/CredstorePresentationSession;->mCipherSuite:I

    .line 60
    iput-object p3, p0, Landroid/security/identity/CredstorePresentationSession;->mStore:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 61
    iput-object p4, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    .line 62
    iput p5, p0, Landroid/security/identity/CredstorePresentationSession;->mFeatureVersion:I

    .line 63
    return-void
.end method

.method private blacklist ensureEphemeralKeyPair()V
    .registers 6

    .line 66
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    if-eqz v0, :cond_5

    .line 67
    return-void

    .line 78
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0}, Landroid/security/identity/ISession;->getEphemeralKeyPair()[B

    move-result-object v0

    .line 79
    const-string v1, "ephemeralKey"

    .line 80
    const/4 v2, 0x0

    new-array v2, v2, [C

    .line 82
    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 83
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 85
    invoke-virtual {v3, v1, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    .line 87
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v2, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;
    :try_end_33
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_33} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_33} :catch_35
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_33} :catch_35

    .line 101
    nop

    .line 102
    return-void

    .line 94
    :catch_35
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 91
    :catch_3e
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist getCredentialData(Ljava/lang/String;Landroid/security/identity/CredentialDataRequest;)Landroid/security/identity/CredentialDataResult;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/NoAuthenticationKeyAvailableException;,
            Landroid/security/identity/InvalidReaderSignatureException;,
            Landroid/security/identity/InvalidRequestMessageException;,
            Landroid/security/identity/EphemeralPublicKeyNotFoundException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/identity/CredstoreIdentityCredential;

    .line 148
    if-nez v0, :cond_39

    .line 149
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    .line 150
    invoke-interface {v0, p1}, Landroid/security/identity/ISession;->getCredentialForPresentation(Ljava/lang/String;)Landroid/security/identity/ICredential;

    move-result-object v5

    .line 151
    new-instance v1, Landroid/security/identity/CredstoreIdentityCredential;

    iget-object v2, p0, Landroid/security/identity/CredstorePresentationSession;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/security/identity/CredstorePresentationSession;->mCipherSuite:I

    iget v7, p0, Landroid/security/identity/CredstorePresentationSession;->mFeatureVersion:I

    move-object v6, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/security/identity/CredstoreIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/security/identity/ICredential;Landroid/security/identity/CredstorePresentationSession;I)V

    .line 154
    iget-object p1, v6, Landroid/security/identity/CredstorePresentationSession;->mCredentialCache:Ljava/util/Map;

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isAllowUsingExhaustedKeys()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/security/identity/CredstoreIdentityCredential;->setAllowUsingExhaustedKeys(Z)V

    .line 157
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isAllowUsingExpiredKeys()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/security/identity/CredstoreIdentityCredential;->setAllowUsingExpiredKeys(Z)V

    .line 158
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->isIncrementUseCount()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/security/identity/CredstoreIdentityCredential;->setIncrementKeyUsageCount(Z)V

    move-object v0, v1

    goto :goto_3a

    .line 148
    :cond_39
    move-object v6, p0

    .line 161
    :goto_3a
    nop

    .line 162
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getRequestMessage()[B

    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getDeviceSignedEntriesToRequest()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v6, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 165
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getReaderSignature()[B

    move-result-object v3

    .line 161
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/security/identity/CredstoreIdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object p1

    .line 169
    nop

    .line 170
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getRequestMessage()[B

    move-result-object v1

    .line 171
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getIssuerSignedEntriesToRequest()Ljava/util/Map;

    move-result-object v2

    iget-object v3, v6, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B

    .line 173
    invoke-virtual {p2}, Landroid/security/identity/CredentialDataRequest;->getReaderSignature()[B

    move-result-object p2

    .line 169
    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/security/identity/CredstoreIdentityCredential;->getEntries([BLjava/util/Map;[B[B)Landroid/security/identity/ResultData;

    move-result-object p2

    .line 175
    new-instance v0, Landroid/security/identity/CredstoreCredentialDataResult;

    invoke-direct {v0, p1, p2}, Landroid/security/identity/CredstoreCredentialDataResult;-><init>(Landroid/security/identity/ResultData;Landroid/security/identity/ResultData;)V
    :try_end_65
    .catch Landroid/security/identity/SessionTranscriptMismatchException; {:try_start_0 .. :try_end_65} :catch_94
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_65} :catch_8a
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_65} :catch_66

    return-object v0

    .line 181
    :catch_66
    move-exception v0

    move-object p1, v0

    .line 182
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6f

    .line 183
    const/4 p1, 0x0

    return-object p1

    .line 185
    :cond_6f
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 179
    :catch_8a
    move-exception v0

    move-object p1, v0

    .line 180
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected RemoteException "

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 177
    :catch_94
    move-exception v0

    move-object p1, v0

    .line 178
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected "

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public blacklist getCredstoreOperationHandle()J
    .registers 5

    .line 199
    iget-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z

    if-nez v0, :cond_37

    .line 201
    :try_start_4
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0}, Landroid/security/identity/ISession;->getAuthChallenge()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandleSet:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_2e
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_f} :catch_10

    .line 212
    goto :goto_37

    .line 205
    :catch_10
    move-exception v0

    .line 206
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 210
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 203
    :catch_2e
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 214
    :cond_37
    :goto_37
    iget-wide v0, p0, Landroid/security/identity/CredstorePresentationSession;->mOperationHandle:J

    return-wide v0
.end method

.method public whitelist getEphemeralKeyPair()Ljava/security/KeyPair;
    .registers 2

    .line 106
    invoke-direct {p0}, Landroid/security/identity/CredstorePresentationSession;->ensureEphemeralKeyPair()V

    .line 107
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mEphemeralKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public whitelist setReaderEphemeralPublicKey(Ljava/security/PublicKey;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 114
    nop

    .line 115
    :try_start_1
    invoke-static {p1}, Landroid/security/identity/Util;->publicKeyEncodeUncompressedForm(Ljava/security/PublicKey;)[B

    move-result-object p1

    .line 116
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0, p1}, Landroid/security/identity/ISession;->setReaderEphemeralPublicKey([B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_28
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_a} :catch_c

    .line 122
    nop

    .line 123
    return-void

    .line 119
    :catch_c
    move-exception p1

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 117
    :catch_28
    move-exception p1

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected RemoteException "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setSessionTranscript([B)V
    .registers 5

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstorePresentationSession;->mBinder:Landroid/security/identity/ISession;

    invoke-interface {v0, p1}, Landroid/security/identity/ISession;->setSessionTranscript([B)V

    .line 129
    iput-object p1, p0, Landroid/security/identity/CredstorePresentationSession;->mSessionTranscript:[B
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_7} :catch_9

    .line 135
    nop

    .line 136
    return-void

    .line 132
    :catch_9
    move-exception p1

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 130
    :catch_25
    move-exception p1

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected RemoteException "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
