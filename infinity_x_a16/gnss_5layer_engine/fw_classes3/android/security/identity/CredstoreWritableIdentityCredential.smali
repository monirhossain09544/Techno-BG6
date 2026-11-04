.class Landroid/security/identity/CredstoreWritableIdentityCredential;
.super Landroid/security/identity/WritableIdentityCredential;
.source "CredstoreWritableIdentityCredential.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredstoreWritableIdentityCredential"


# instance fields
.field private blacklist mBinder:Landroid/security/identity/IWritableCredential;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCredentialName:Ljava/lang/String;

.field private blacklist mDocType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/security/identity/IWritableCredential;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Landroid/security/identity/WritableIdentityCredential;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mDocType:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mCredentialName:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mBinder:Landroid/security/identity/IWritableCredential;

    .line 49
    return-void
.end method

.method private static blacklist getRootSid()J
    .registers 4

    .line 167
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    .line 168
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 172
    return-wide v0

    .line 169
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Secure lock screen must be enabled to create credentials requiring user authentication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist personalize(Landroid/security/identity/IWritableCredential;Landroid/security/identity/PersonalizationData;)[B
    .registers 18

    .line 88
    nop

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/security/identity/PersonalizationData;->getAccessControlProfiles()Ljava/util/Collection;

    move-result-object v0

    .line 91
    nop

    .line 92
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/security/identity/AccessControlProfileParcel;

    .line 93
    nop

    .line 94
    nop

    .line 95
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/security/identity/AccessControlProfile;

    .line 96
    new-instance v6, Landroid/security/identity/AccessControlProfileParcel;

    invoke-direct {v6}, Landroid/security/identity/AccessControlProfileParcel;-><init>()V

    aput-object v6, v1, v3

    .line 97
    aget-object v6, v1, v3

    invoke-virtual {v5}, Landroid/security/identity/AccessControlProfile;->getAccessControlProfileId()Landroid/security/identity/AccessControlProfileId;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/identity/AccessControlProfileId;->getId()I

    move-result v7

    iput v7, v6, Landroid/security/identity/AccessControlProfileParcel;->id:I

    .line 98
    invoke-virtual {v5}, Landroid/security/identity/AccessControlProfile;->getReaderCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 99
    if-eqz v6, :cond_4c

    .line 101
    :try_start_3a
    aget-object v7, v1, v3

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    iput-object v6, v7, Landroid/security/identity/AccessControlProfileParcel;->readerCertificate:[B
    :try_end_42
    .catch Ljava/security/cert/CertificateException; {:try_start_3a .. :try_end_42} :catch_43

    .line 104
    goto :goto_52

    .line 102
    :catch_43
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error encoding reader certificate"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :cond_4c
    aget-object v6, v1, v3

    new-array v7, v2, [B

    iput-object v7, v6, Landroid/security/identity/AccessControlProfileParcel;->readerCertificate:[B

    .line 108
    :goto_52
    aget-object v6, v1, v3

    invoke-virtual {v5}, Landroid/security/identity/AccessControlProfile;->isUserAuthenticationRequired()Z

    move-result v7

    iput-boolean v7, v6, Landroid/security/identity/AccessControlProfileParcel;->userAuthenticationRequired:Z

    .line 109
    aget-object v6, v1, v3

    invoke-virtual {v5}, Landroid/security/identity/AccessControlProfile;->getUserAuthenticationTimeout()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/security/identity/AccessControlProfileParcel;->userAuthenticationTimeoutMillis:J

    .line 110
    invoke-virtual {v5}, Landroid/security/identity/AccessControlProfile;->isUserAuthenticationRequired()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 111
    const/4 v4, 0x1

    .line 113
    :cond_69
    add-int/lit8 v3, v3, 0x1

    .line 114
    goto :goto_15

    .line 116
    :cond_6c
    invoke-virtual/range {p1 .. p1}, Landroid/security/identity/PersonalizationData;->getNamespaces()Ljava/util/Collection;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Landroid/security/identity/EntryNamespaceParcel;

    .line 119
    nop

    .line 120
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 121
    nop

    .line 122
    move-object/from16 v7, p1

    invoke-virtual {v7, v6}, Landroid/security/identity/PersonalizationData;->getNamespaceData(Ljava/lang/String;)Landroid/security/identity/PersonalizationData$NamespaceData;

    move-result-object v8

    .line 124
    new-instance v9, Landroid/security/identity/EntryNamespaceParcel;

    invoke-direct {v9}, Landroid/security/identity/EntryNamespaceParcel;-><init>()V

    aput-object v9, v3, v5

    .line 125
    aget-object v9, v3, v5

    iput-object v6, v9, Landroid/security/identity/EntryNamespaceParcel;->namespaceName:Ljava/lang/String;

    .line 127
    invoke-virtual {v8}, Landroid/security/identity/PersonalizationData$NamespaceData;->getEntryNames()Ljava/util/Collection;

    move-result-object v6

    .line 128
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v9

    new-array v9, v9, [Landroid/security/identity/EntryParcel;

    .line 129
    nop

    .line 130
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v10, v2

    :goto_aa
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_fb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 131
    new-instance v12, Landroid/security/identity/EntryParcel;

    invoke-direct {v12}, Landroid/security/identity/EntryParcel;-><init>()V

    aput-object v12, v9, v10

    .line 132
    aget-object v12, v9, v10

    iput-object v11, v12, Landroid/security/identity/EntryParcel;->name:Ljava/lang/String;

    .line 133
    aget-object v12, v9, v10

    invoke-virtual {v8, v11}, Landroid/security/identity/PersonalizationData$NamespaceData;->getEntryValue(Ljava/lang/String;)[B

    move-result-object v13

    iput-object v13, v12, Landroid/security/identity/EntryParcel;->value:[B

    .line 134
    nop

    .line 135
    invoke-virtual {v8, v11}, Landroid/security/identity/PersonalizationData$NamespaceData;->getAccessControlProfileIds(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v11

    .line 136
    aget-object v12, v9, v10

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v13

    new-array v13, v13, [I

    iput-object v13, v12, Landroid/security/identity/EntryParcel;->accessControlProfileIds:[I

    .line 137
    nop

    .line 138
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v2

    :goto_de
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/security/identity/AccessControlProfileId;

    .line 139
    aget-object v14, v9, v10

    iget-object v14, v14, Landroid/security/identity/EntryParcel;->accessControlProfileIds:[I

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v13}, Landroid/security/identity/AccessControlProfileId;->getId()I

    move-result v13

    aput v13, v14, v12

    .line 140
    move v12, v15

    goto :goto_de

    .line 141
    :cond_f8
    add-int/lit8 v10, v10, 0x1

    .line 142
    goto :goto_aa

    .line 143
    :cond_fb
    aget-object v6, v3, v5

    iput-object v9, v6, Landroid/security/identity/EntryNamespaceParcel;->entries:[Landroid/security/identity/EntryParcel;

    .line 144
    add-int/lit8 v5, v5, 0x1

    .line 145
    goto/16 :goto_7c

    .line 150
    :cond_103
    nop

    .line 151
    if-eqz v4, :cond_10b

    .line 152
    invoke-static {}, Landroid/security/identity/CredstoreWritableIdentityCredential;->getRootSid()J

    move-result-wide v4

    goto :goto_10d

    .line 151
    :cond_10b
    const-wide/16 v4, 0x0

    .line 155
    :goto_10d
    move-object/from16 v0, p0

    :try_start_10f
    invoke-interface {v0, v1, v3, v4, v5}, Landroid/security/identity/IWritableCredential;->personalize([Landroid/security/identity/AccessControlProfileParcel;[Landroid/security/identity/EntryNamespaceParcel;J)[B

    move-result-object v0
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_113} :catch_130
    .catch Landroid/os/ServiceSpecificException; {:try_start_10f .. :try_end_113} :catch_114

    .line 157
    return-object v0

    .line 160
    :catch_114
    move-exception v0

    .line 161
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

    .line 158
    :catch_130
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist getCredentialKeyCertificateChain([B)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mBinder:Landroid/security/identity/IWritableCredential;

    invoke-interface {v0, p1}, Landroid/security/identity/IWritableCredential;->getCredentialKeyCertificateChain([B)[B

    move-result-object p1

    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_58
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_b} :catch_3c

    .line 57
    nop

    .line 59
    :try_start_c
    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 60
    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p1
    :try_end_16
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_16} :catch_33
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_58
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_16} :catch_3c

    .line 63
    nop

    .line 65
    :try_start_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    .line 67
    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_20

    .line 69
    :cond_32
    return-object v0

    .line 61
    :catch_33
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error decoding certificates"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3c} :catch_58
    .catch Landroid/os/ServiceSpecificException; {:try_start_17 .. :try_end_3c} :catch_3c

    .line 72
    :catch_3c
    move-exception p1

    .line 73
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

    .line 70
    :catch_58
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected RemoteException "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist personalize(Landroid/security/identity/PersonalizationData;)[B
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/security/identity/CredstoreWritableIdentityCredential;->mBinder:Landroid/security/identity/IWritableCredential;

    invoke-static {v0, p1}, Landroid/security/identity/CredstoreWritableIdentityCredential;->personalize(Landroid/security/identity/IWritableCredential;Landroid/security/identity/PersonalizationData;)[B

    move-result-object p1

    return-object p1
.end method
