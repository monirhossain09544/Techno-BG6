.class public Landroid/security/KeyStore2;
.super Ljava/lang/Object;
.source "KeyStore2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore2$CheckedRemoteRequest;
    }
.end annotation


# static fields
.field private static final blacklist KEYSTORE2_SERVICE_NAME:Ljava/lang/String; = "android.system.keystore2.IKeystoreService/default"

.field private static final blacklist KEYSTORE_ENGINE_GRANT_ALIAS_PREFIX:Ljava/lang/String; = "ks2_keystore-engine_grant_id:0x"

.field static final blacklist KEYSTORE_OPERATION_CREATION_MAY_FAIL:J = 0xa206cc8L

.field private static final blacklist RECOVERY_GRACE_PERIOD_MS:I = 0x32

.field private static final blacklist RECOVERY_MAX_ATTEMPTS:I = 0x2

.field private static final blacklist RECOVERY_MAX_RETRY_MS:I = 0xbb8

.field private static final blacklist RECOVERY_RETRY_SLEEP_MS:I = 0x32

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStore"


# instance fields
.field private blacklist mBinder:Landroid/system/keystore2/IKeystoreService;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    .line 140
    return-void
.end method

.method public static blacklist getInstance()Landroid/security/KeyStore2;
    .registers 1

    .line 143
    new-instance v0, Landroid/security/KeyStore2;

    invoke-direct {v0}, Landroid/security/KeyStore2;-><init>()V

    return-object v0
.end method

.method static blacklist getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;
    .registers 4

    .line 391
    if-lez p0, :cond_4e

    .line 393
    sparse-switch p0, :sswitch_data_64

    .line 420
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 417
    :sswitch_f
    new-instance v0, Landroid/security/KeyStoreException;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;I)V

    return-object v0

    .line 411
    :sswitch_16
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 408
    :sswitch_1e
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 406
    :sswitch_26
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 403
    :sswitch_2e
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 401
    :sswitch_36
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 398
    :sswitch_3e
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 395
    :sswitch_46
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 425
    :cond_4e
    packed-switch p0, :pswitch_data_86

    .line 433
    new-instance v0, Landroid/security/KeyStoreException;

    .line 434
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 433
    return-object v0

    .line 429
    :pswitch_5b
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1, p1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_64
    .sparse-switch
        0x2 -> :sswitch_46
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_36
        0x6 -> :sswitch_2e
        0x7 -> :sswitch_26
        0x8 -> :sswitch_1e
        0x11 -> :sswitch_16
        0x16 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_86
    .packed-switch -0x10
        :pswitch_5b
    .end packed-switch
.end method

.method private declared-synchronized blacklist getService(Z)Landroid/system/keystore2/IKeystoreService;
    .registers 3

    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_13

    .line 155
    :cond_7
    const-string p1, "android.system.keystore2.IKeystoreService/default"

    .line 156
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 155
    invoke-static {p1}, Landroid/system/keystore2/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreService;

    move-result-object p1

    iput-object p1, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    .line 158
    :cond_13
    iget-object p1, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    if-eqz p1, :cond_24

    .line 163
    iget-object p1, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;

    invoke-interface {p1}, Landroid/system/keystore2/IKeystoreService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 164
    iget-object p1, p0, Landroid/security/KeyStore2;->mBinder:Landroid/system/keystore2/IKeystoreService;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2c

    monitor-exit p0

    return-object p1

    .line 159
    :cond_24
    :try_start_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not connect to Keystore service. Keystore may have crashed or not been initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method protected static blacklist interruptedPreservingSleep(J)V
    .registers 7

    .line 357
    nop

    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    add-long/2addr v1, p0

    const/4 p0, 0x0

    .line 362
    :goto_b
    :try_start_b
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_14} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_14} :catch_15

    .line 363
    goto :goto_17

    .line 366
    :catch_15
    move-exception p1

    .line 369
    nop

    .line 372
    :goto_17
    if-eqz p0, :cond_20

    .line 373
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 375
    :cond_20
    return-void

    .line 364
    :catch_21
    move-exception p0

    .line 365
    nop

    .line 370
    const/4 p0, 0x1

    goto :goto_b
.end method

.method public static blacklist keystoreEngineGrantString2KeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 4

    .line 231
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 232
    const/4 v1, 0x1

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 233
    nop

    .line 234
    const-string v1, "ks2_keystore-engine_grant_id:0x"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 233
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 235
    const/4 p0, 0x0

    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 236
    iput-object p0, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 237
    return-object v0
.end method

.method static synthetic blacklist lambda$delete$0(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 172
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$deleteKey$8(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V

    .line 343
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getKeyEntry$5(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/IKeystoreService;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getNumberOfEntries$9(IJLandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->getNumberOfEntries(IJ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getSecurityLevel$6(ILandroid/system/keystore2/IKeystoreService;)Landroid/security/KeyStoreSecurityLevel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    new-instance v0, Landroid/security/KeyStoreSecurityLevel;

    .line 306
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getSecurityLevel(I)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 305
    return-object v0
.end method

.method static synthetic blacklist lambda$getSupplementaryAttestationInfo$10(ILandroid/system/keystore2/IKeystoreService;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-interface {p1, p0}, Landroid/system/keystore2/IKeystoreService;->getSupplementaryAttestationInfo(I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$grant$3(Landroid/system/keystore2/KeyDescriptor;IILandroid/system/keystore2/IKeystoreService;)Landroid/system/keystore2/KeyDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$list$1(IJLandroid/system/keystore2/IKeystoreService;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->listEntries(IJ)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$listBatch$2(IJLjava/lang/String;Landroid/system/keystore2/IKeystoreService;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/system/keystore2/IKeystoreService;->listEntriesBatched(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$ungrant$4(Landroid/system/keystore2/KeyDescriptor;ILandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-interface {p2, p0, p1}, Landroid/system/keystore2/IKeystoreService;->ungrant(Landroid/system/keystore2/KeyDescriptor;I)V

    .line 275
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$updateSubcomponents$7(Landroid/system/keystore2/KeyDescriptor;[B[BLandroid/system/keystore2/IKeystoreService;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    invoke-interface {p3, p0, p1, p2}, Landroid/system/keystore2/IKeystoreService;->updateSubcomponent(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    .line 326
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist makeKeystoreEngineGrantString(J)Ljava/lang/String;
    .registers 3

    .line 219
    const-string v0, "ks2_keystore-engine_grant_id:0x"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s%016X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method blacklist delete(Landroid/system/keystore2/KeyDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 170
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda7;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public blacklist deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 339
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 341
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda4;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method public blacklist getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 289
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 291
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda9;-><init>(Landroid/system/keystore2/KeyDescriptor;)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyEntryResponse;

    return-object p1
.end method

.method public blacklist getNumberOfEntries(IJ)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 351
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 353
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda0;-><init>(IJ)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public blacklist getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 304
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/security/KeyStoreSecurityLevel;

    return-object p1
.end method

.method public blacklist getSupplementaryAttestationInfo(I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 386
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroid/security/KeyStore2$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public blacklist grant(Landroid/system/keystore2/KeyDescriptor;II)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 256
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda10;-><init>(Landroid/system/keystore2/KeyDescriptor;II)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    return-object p1
.end method

.method blacklist handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/security/KeyStore2$CheckedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 111
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/security/KeyStore2;->getService(Z)Landroid/system/keystore2/IKeystoreService;

    move-result-object v3

    .line 113
    :goto_9
    const-string v4, "Keystore2 unavailable"

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ge v2, v6, :cond_73

    .line 115
    :try_start_f
    invoke-interface {p1, v3}, Landroid/security/KeyStore2$CheckedRemoteRequest;->execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;

    move-result-object p1
    :try_end_13
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_13} :catch_67
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return-object p1

    .line 118
    :catch_14
    move-exception v3

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 120
    add-int/lit8 v2, v2, 0x1

    const-string v9, "KeyStore"

    if-ge v2, v6, :cond_47

    const-wide/16 v10, 0xbb8

    cmp-long v6, v7, v10

    if-gez v6, :cond_47

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keystore2 transaction failed, retrying after 50ms. elapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/security/KeyStore2;->interruptedPreservingSleep(J)V

    .line 124
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/security/KeyStore2;->getService(Z)Landroid/system/keystore2/IKeystoreService;

    move-result-object v3

    .line 125
    goto :goto_9

    .line 127
    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Keystore2 unavailable or stalled. elapsed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    new-instance p1, Landroid/security/KeyStoreException;

    .line 129
    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v5, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 116
    :catch_67
    move-exception p1

    .line 117
    iget v0, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/security/KeyStore2;->getKeyStoreException(ILjava/lang/String;)Landroid/security/KeyStoreException;

    move-result-object p1

    throw p1

    .line 132
    :cond_73
    new-instance p1, Landroid/security/KeyStoreException;

    invoke-direct {p1, v5, v4}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public blacklist list(IJ)[Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 182
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;-><init>(IJ)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/system/keystore2/KeyDescriptor;

    return-object p1
.end method

.method public blacklist listBatch(IJLjava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 192
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/security/KeyStore2$$ExternalSyntheticLambda6;-><init>(IJLjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/system/keystore2/KeyDescriptor;

    return-object p1
.end method

.method public blacklist ungrant(Landroid/system/keystore2/KeyDescriptor;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 273
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Landroid/security/KeyStore2$$ExternalSyntheticLambda2;-><init>(Landroid/system/keystore2/KeyDescriptor;I)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method public blacklist updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 324
    new-instance v0, Landroid/security/KeyStore2$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2, p3}, Landroid/security/KeyStore2$$ExternalSyntheticLambda8;-><init>(Landroid/system/keystore2/KeyDescriptor;[B[B)V

    invoke-virtual {p0, v0}, Landroid/security/KeyStore2;->handleRemoteExceptionWithRetry(Landroid/security/KeyStore2$CheckedRemoteRequest;)Ljava/lang/Object;

    .line 328
    return-void
.end method
