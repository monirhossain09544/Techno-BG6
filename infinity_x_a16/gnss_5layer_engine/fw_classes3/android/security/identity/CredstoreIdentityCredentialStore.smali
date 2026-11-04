.class Landroid/security/identity/CredstoreIdentityCredentialStore;
.super Landroid/security/identity/IdentityCredentialStore;
.source "CredstoreIdentityCredentialStore.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CredstoreIdentityCredentialStore"

.field private static blacklist sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

.field private static blacklist sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFeatureVersion:I

.field private blacklist mStore:Landroid/security/identity/ICredentialStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 86
    const/4 v0, 0x0

    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 87
    sput-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/security/identity/ICredentialStore;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Landroid/security/identity/IdentityCredentialStore;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    .line 51
    iput-object p1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    .line 53
    iget-object p1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getFeatureVersion(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mFeatureVersion:I

    .line 54
    return-void
.end method

.method public static blacklist getDirectAccessInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2

    .line 99
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    if-nez v0, :cond_b

    .line 100
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;

    move-result-object p0

    sput-object p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 103
    :cond_b
    sget-object p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDirectAccess:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-object p0
.end method

.method static blacklist getFeatureVersion(Landroid/content/Context;)I
    .registers 5

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 36
    const-string v0, "android.hardware.identity_credential"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 37
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    .line 38
    const/4 v1, 0x0

    :goto_11
    array-length v2, p0

    if-ge v1, v2, :cond_24

    .line 39
    aget-object v2, p0, v1

    .line 40
    iget-object v3, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 41
    iget p0, v2, Landroid/content/pm/FeatureInfo;->version:I

    return p0

    .line 38
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 47
    :cond_24
    const p0, 0x31519

    return p0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/security/identity/IdentityCredentialStore;
    .registers 2

    .line 90
    sget-object v0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    if-nez v0, :cond_b

    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/security/identity/CredstoreIdentityCredentialStore;->getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;

    move-result-object p0

    sput-object p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    .line 94
    :cond_b
    sget-object p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->sInstanceDefault:Landroid/security/identity/CredstoreIdentityCredentialStore;

    return-object p0
.end method

.method static blacklist getInstanceForType(Landroid/content/Context;I)Landroid/security/identity/CredstoreIdentityCredentialStore;
    .registers 4

    .line 58
    nop

    .line 60
    const-string v0, "android.security.identity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/security/identity/ICredentialStoreFactory$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/identity/ICredentialStoreFactory;

    move-result-object v0

    .line 61
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 63
    return-object v1

    .line 66
    :cond_f
    nop

    .line 68
    :try_start_10
    invoke-interface {v0, p1}, Landroid/security/identity/ICredentialStoreFactory;->getCredentialStore(I)Landroid/security/identity/ICredentialStore;

    move-result-object p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_40
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_14} :catch_1e

    .line 78
    nop

    .line 79
    if-nez p1, :cond_18

    .line 80
    return-object v1

    .line 83
    :cond_18
    new-instance v0, Landroid/security/identity/CredstoreIdentityCredentialStore;

    invoke-direct {v0, p0, p1}, Landroid/security/identity/CredstoreIdentityCredentialStore;-><init>(Landroid/content/Context;Landroid/security/identity/ICredentialStore;)V

    return-object v0

    .line 71
    :catch_1e
    move-exception p0

    .line 72
    iget p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    .line 73
    return-object v1

    .line 75
    :cond_25
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected ServiceSpecificException with code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 69
    :catch_40
    move-exception p0

    .line 70
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected RemoteException "

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public whitelist createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/WritableIdentityCredential;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/AlreadyPersonalizedException;,
            Landroid/security/identity/DocTypeNotSupportedException;
        }
    .end annotation

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1, p2}, Landroid/security/identity/ICredentialStore;->createCredential(Ljava/lang/String;Ljava/lang/String;)Landroid/security/identity/IWritableCredential;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/security/identity/CredstoreWritableIdentityCredential;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p2, v0}, Landroid/security/identity/CredstoreWritableIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/security/identity/IWritableCredential;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_49
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 129
    :catch_e
    move-exception p1

    .line 130
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3f

    .line 132
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_24

    .line 133
    new-instance p2, Landroid/security/identity/DocTypeNotSupportedException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/security/identity/DocTypeNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 135
    :cond_24
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

    .line 131
    :cond_3f
    new-instance p2, Landroid/security/identity/AlreadyPersonalizedException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/security/identity/AlreadyPersonalizedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 127
    :catch_49
    move-exception p1

    .line 128
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected RemoteException "

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist createPresentationSession(I)Landroid/security/identity/PresentationSession;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1}, Landroid/security/identity/ICredentialStore;->createPresentationSession(I)Landroid/security/identity/ISession;

    move-result-object v5

    .line 190
    new-instance v1, Landroid/security/identity/CredstorePresentationSession;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    iget v6, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mFeatureVersion:I

    move-object v4, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/security/identity/CredstorePresentationSession;-><init>(Landroid/content/Context;ILandroid/security/identity/CredstoreIdentityCredentialStore;Landroid/security/identity/ISession;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_3e
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 194
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 195
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    .line 196
    new-instance v0, Landroid/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 198
    :cond_23
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

    .line 192
    :catch_3e
    move-exception v0

    move-object p1, v0

    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected RemoteException "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist deleteCredentialByName(Ljava/lang/String;)[B
    .registers 5

    .line 165
    nop

    .line 168
    :try_start_1
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/security/identity/ICredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object p1
    :try_end_8
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_8} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_33

    .line 174
    goto :goto_12

    .line 170
    :catch_9
    move-exception p1

    .line 171
    :try_start_a
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_11

    .line 172
    return-object v1

    .line 171
    :cond_11
    move-object p1, v1

    .line 175
    :goto_12
    invoke-interface {p1}, Landroid/security/identity/ICredential;->deleteCredential()[B

    move-result-object p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_33
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_16} :catch_17

    .line 176
    return-object p1

    .line 179
    :catch_17
    move-exception p1

    .line 180
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

    .line 177
    :catch_33
    move-exception p1

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected RemoteException "

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/IdentityCredential;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/identity/CipherSuiteNotSupportedException;
        }
    .end annotation

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0, p1, p2}, Landroid/security/identity/ICredentialStore;->getCredentialByName(Ljava/lang/String;I)Landroid/security/identity/ICredential;

    move-result-object v5

    .line 147
    new-instance v1, Landroid/security/identity/CredstoreIdentityCredential;

    iget-object v2, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mFeatureVersion:I

    const/4 v6, 0x0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Landroid/security/identity/CredstoreIdentityCredential;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/security/identity/ICredential;Landroid/security/identity/CredstorePresentationSession;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_46
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 151
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 152
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1c

    .line 153
    const/4 p1, 0x0

    return-object p1

    .line 154
    :cond_1c
    iget p2, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2b

    .line 155
    new-instance p2, Landroid/security/identity/CipherSuiteNotSupportedException;

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/security/identity/CipherSuiteNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 157
    :cond_2b
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

    .line 149
    :catch_46
    move-exception v0

    move-object p1, v0

    .line 150
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected RemoteException "

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist getSupportedDocTypes()[Ljava/lang/String;
    .registers 5

    .line 110
    :try_start_0
    iget-object v0, p0, Landroid/security/identity/CredstoreIdentityCredentialStore;->mStore:Landroid/security/identity/ICredentialStore;

    invoke-interface {v0}, Landroid/security/identity/ICredentialStore;->getSecurityHardwareInfo()Landroid/security/identity/SecurityHardwareInfoParcel;

    move-result-object v0

    .line 111
    iget-object v0, v0, Landroid/security/identity/SecurityHardwareInfoParcel;->supportedDocTypes:[Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_25
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 114
    :catch_9
    move-exception v0

    .line 115
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

    .line 112
    :catch_25
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected RemoteException "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
