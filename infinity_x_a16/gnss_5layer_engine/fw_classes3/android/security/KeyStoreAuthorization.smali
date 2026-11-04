.class public Landroid/security/KeyStoreAuthorization;
.super Ljava/lang/Object;
.source "KeyStoreAuthorization.java"


# static fields
.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreAuthorization"

.field private static final blacklist sInstance:Landroid/security/KeyStoreAuthorization;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/security/KeyStoreAuthorization;

    invoke-direct {v0}, Landroid/security/KeyStoreAuthorization;-><init>()V

    sput-object v0, Landroid/security/KeyStoreAuthorization;->sInstance:Landroid/security/KeyStoreAuthorization;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Landroid/security/KeyStoreAuthorization;
    .registers 1

    .line 44
    sget-object v0, Landroid/security/KeyStoreAuthorization;->sInstance:Landroid/security/KeyStoreAuthorization;

    return-object v0
.end method

.method private blacklist getService()Landroid/security/authorization/IKeystoreAuthorization;
    .registers 2

    .line 51
    nop

    .line 52
    const-string v0, "android.security.authorization"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/security/authorization/IKeystoreAuthorization$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I
    .registers 4

    .line 62
    const-string v0, "addAuthToken"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 64
    :try_start_5
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/security/authorization/IKeystoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_c} :catch_12
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_c} :catch_e

    .line 65
    const/4 p1, 0x0

    return p1

    .line 69
    :catch_e
    move-exception p1

    .line 70
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    return p1

    .line 66
    :catch_12
    move-exception p1

    .line 67
    const-string v0, "KeyStoreAuthorization"

    const-string v1, "Can not connect to keystore"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 p1, 0x4

    return p1
.end method

.method public blacklist addAuthToken([B)I
    .registers 2

    .line 80
    invoke-static {p1}, Landroid/security/AuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/security/keymint/HardwareAuthToken;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/security/KeyStoreAuthorization;->addAuthToken(Landroid/hardware/security/keymint/HardwareAuthToken;)I

    move-result p1

    return p1
.end method

.method public blacklist getLastAuthTime(J[I)J
    .registers 7

    .line 157
    const-wide/16 v0, -0x1

    :try_start_2
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->getLastAuthTime(J[I)J

    move-result-wide p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_a} :catch_18
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_a} :catch_b

    return-wide p1

    .line 161
    :catch_b
    move-exception p1

    .line 163
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_12

    .line 166
    return-wide v0

    .line 164
    :cond_12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 158
    :catch_18
    move-exception p1

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error getting last auth time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyStoreAuthorization"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-wide v0
.end method

.method public blacklist onDeviceLocked(I[JZ)I
    .registers 5

    .line 114
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 116
    :try_start_3
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/security/authorization/IKeystoreAuthorization;->onDeviceLocked(I[JZ)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_a} :catch_c

    .line 117
    const/4 p1, 0x0

    return p1

    .line 121
    :catch_c
    move-exception p1

    .line 122
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    return p1

    .line 118
    :catch_10
    move-exception p1

    .line 119
    const-string p2, "KeyStoreAuthorization"

    const-string p3, "Can not connect to keystore"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 p1, 0x4

    return p1
.end method

.method public blacklist onDeviceUnlocked(I[B)I
    .registers 4

    .line 92
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 94
    :try_start_3
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/security/authorization/IKeystoreAuthorization;->onDeviceUnlocked(I[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_a} :catch_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_a} :catch_c

    .line 95
    const/4 p1, 0x0

    return p1

    .line 99
    :catch_c
    move-exception p1

    .line 100
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    return p1

    .line 96
    :catch_10
    move-exception p1

    .line 97
    const-string p2, "KeyStoreAuthorization"

    const-string v0, "Can not connect to keystore"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    const/4 p1, 0x4

    return p1
.end method

.method public blacklist onUserStorageLocked(I)I
    .registers 4

    .line 136
    const-string v0, "KeyStoreAuthorization"

    :try_start_2
    invoke-direct {p0}, Landroid/security/KeyStoreAuthorization;->getService()Landroid/security/authorization/IKeystoreAuthorization;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/security/authorization/IKeystoreAuthorization;->onUserStorageLocked(I)V
    :try_end_9
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    .line 137
    const/4 p1, 0x0

    return p1

    .line 141
    :catch_b
    move-exception p1

    .line 142
    const-string v1, "Can not connect to keystore"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/4 p1, 0x4

    return p1

    .line 138
    :catch_13
    move-exception p1

    .line 139
    const-string/jumbo v1, "onUserStorageLocked failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    return p1
.end method
