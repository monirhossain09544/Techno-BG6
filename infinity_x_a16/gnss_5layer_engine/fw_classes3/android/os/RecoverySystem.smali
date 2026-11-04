.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;,
        Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_EUICC_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.action.EUICC_FACTORY_RESET"

.field private static final blacklist ACTION_EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS:Ljava/lang/String; = "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

.field public static final greylist-max-o BLOCK_MAP_FILE:Ljava/io/File;

.field private static final greylist-max-o DEFAULT_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x7530L

.field private static final blacklist DEFAULT_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0xafc8L

.field private static final greylist-max-o DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final blacklist LAST_INSTALL_PATH:Ljava/lang/String; = "last_install"

.field private static final greylist-max-o LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final greylist-max-o LOG_FILE:Ljava/io/File;

.field private static final greylist-max-o LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final greylist-max-o MAX_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0xea60L

.field private static final blacklist MAX_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x15f90L

.field private static final greylist-max-o MIN_EUICC_FACTORY_RESET_TIMEOUT_MILLIS:J = 0x1388L

.field private static final blacklist MIN_EUICC_REMOVING_INVISIBLE_PROFILES_TIMEOUT_MILLIS:J = 0x3a98L

.field private static final blacklist PACKAGE_NAME_EUICC_DATA_MANAGEMENT_CALLBACK:Ljava/lang/String; = "android"

.field private static final greylist-max-o PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final greylist-max-o RECOVERY_DIR:Ljava/io/File;

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_INVALID_PACKAGE_NAME:I = 0x7d0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_LSKF_NOT_CAPTURED:I = 0xbb8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESUME_ON_REBOOT_REBOOT_ERROR_NONE:I = 0x0

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_PROVIDER_PREPARATION_FAILURE:I = 0x1388
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_SLOT_MISMATCH:I = 0xfa0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESUME_ON_REBOOT_REBOOT_ERROR_UNSPECIFIED:I = 0x3e8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RecoverySystem"

.field public static final greylist-max-o UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final greylist-max-o UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static final greylist-max-o sRequestLock:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 108
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 109
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 130
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "block.map"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 138
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 146
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1545
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IRecoverySystem;)V
    .registers 2

    .line 1550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1551
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1552
    return-void
.end method

.method private blacklist allocateSpaceForUpdate(Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1430
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->allocateSpaceForUpdate(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static varargs blacklist bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1309
    sget-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1312
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_21

    aget-object v3, p1, v2

    .line 1313
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1321
    :cond_21
    const-string/jumbo p1, "recovery"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RecoverySystem;

    .line 1322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 1324
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reboot failed (no permissions?)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist cancelScheduledUpdate(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RecoverySystem;

    .line 864
    invoke-direct {p0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 867
    return-void

    .line 865
    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string v0, "cancel scheduled update failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o clearBcb()Z
    .registers 2

    .line 1438
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0}, Landroid/os/IRecoverySystem;->clearBcb()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1439
    :catch_7
    move-exception v0

    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist clearLskf(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1482
    :catch_7
    move-exception p1

    .line 1483
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not clear LSKF"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static whitelist clearPrepareForUnattendedUpdate(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 738
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/RecoverySystem;->clearLskf(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 741
    return-void

    .line 739
    :cond_14
    new-instance p0, Ljava/io/IOException;

    const-string v0, "could not reset unattended update state"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 236
    if-nez p0, :cond_9

    .line 237
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 239
    :cond_9
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 241
    :try_start_e
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 242
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 243
    :goto_18
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 244
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 245
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_40

    .line 247
    :try_start_28
    invoke-virtual {p0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_36

    .line 249
    :try_start_31
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 250
    nop

    .line 251
    goto :goto_18

    .line 249
    :catchall_36
    move-exception p0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 250
    throw p0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_40

    .line 253
    :cond_3b
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 254
    nop

    .line 255
    return-object v0

    .line 253
    :catchall_40
    move-exception p0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 254
    throw p0
.end method

.method public static greylist-max-o handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1335
    const-string p0, "RecoverySystem"

    .line 1337
    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const-string v2, "...\n"

    const/high16 v3, -0x10000

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_e

    .line 1342
    goto :goto_1d

    .line 1340
    :catch_e
    move-exception v1

    .line 1341
    const-string v2, "Error reading recovery log"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 1338
    :catch_15
    move-exception v1

    .line 1339
    const-string v1, "No recovery log file"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    nop

    .line 1346
    :goto_1c
    move-object v1, v0

    :goto_1d
    sget-object v2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .line 1347
    const/4 v3, 0x0

    if-nez v2, :cond_7b

    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1348
    nop

    .line 1350
    :try_start_2f
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-static {v4, v3, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_35} :catch_36

    .line 1353
    goto :goto_3c

    .line 1351
    :catch_36
    move-exception v4

    .line 1352
    const-string v5, "Error reading uncrypt file"

    invoke-static {p0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1357
    :goto_3c
    if-eqz v0, :cond_7b

    const-string v4, "/data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 1358
    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 1361
    :cond_65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_7b
    :goto_7b
    sget-object p0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    .line 1373
    nop

    :goto_82
    if-eqz p0, :cond_cd

    array-length v0, p0

    if-ge v3, v0, :cond_cd

    .line 1375
    aget-object v0, p0, v3

    const-string v4, "last_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ca

    aget-object v0, p0, v3

    const-string v4, "last_install"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    goto :goto_ca

    .line 1376
    :cond_9c
    if-eqz v2, :cond_ad

    aget-object v0, p0, v3

    sget-object v4, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    goto :goto_ca

    .line 1377
    :cond_ad
    if-eqz v2, :cond_be

    aget-object v0, p0, v3

    sget-object v4, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    goto :goto_ca

    .line 1379
    :cond_be
    new-instance v0, Ljava/io/File;

    sget-object v4, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v5, p0, v3

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1373
    :cond_ca
    :goto_ca
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 1382
    :cond_cd
    return-object v1
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    .line 567
    return-void
.end method

.method public static whitelist installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    sget-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_3
    sget-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 591
    sget-object v1, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 593
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 594
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v2, "_s.zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 602
    const-string v3, "/data/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b1

    .line 603
    if-eqz p2, :cond_58

    .line 604
    sget-object p2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_49

    goto :goto_a9

    .line 605
    :cond_49
    const-string p0, "RecoverySystem"

    const-string p1, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to find block map file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 610
    :cond_58
    new-instance p2, Ljava/io/FileWriter;

    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {p2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_19f

    .line 612
    :try_start_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_ac

    .line 614
    :try_start_75
    invoke-virtual {p2}, Ljava/io/FileWriter;->close()V

    .line 615
    nop

    .line 618
    sget-object p2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p2

    if-eqz p2, :cond_8a

    sget-object p2, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 619
    invoke-virtual {p2, v1, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p2

    if-nez p2, :cond_a4

    .line 620
    :cond_8a
    const-string p2, "RecoverySystem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting permission for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_a4
    sget-object p2, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 628
    :goto_a9
    const-string v1, "@/cache/recovery/block.map"

    goto :goto_b1

    .line 614
    :catchall_ac
    move-exception p0

    invoke-virtual {p2}, Ljava/io/FileWriter;->close()V

    .line 615
    throw p0

    .line 631
    :cond_b1
    :goto_b1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--locale="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 636
    if-eqz v2, :cond_111

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "--security\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 640
    :cond_111
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 642
    invoke-direct {v1, p2}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result p2
    :try_end_11e
    .catchall {:try_start_75 .. :try_end_11e} :catchall_19f

    if-eqz p2, :cond_197

    .line 646
    :try_start_120
    invoke-direct {v1, p1}, Landroid/os/RecoverySystem;->allocateSpaceForUpdate(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_127

    .line 654
    goto :goto_14e

    .line 647
    :cond_127
    invoke-direct {v1}, Landroid/os/RecoverySystem;->clearBcb()Z

    .line 648
    new-instance p2, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to allocate space for update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 649
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_147} :catch_147
    .catchall {:try_start_120 .. :try_end_147} :catchall_19f

    .line 651
    :catch_147
    move-exception p1

    .line 652
    :try_start_148
    invoke-direct {v1}, Landroid/os/RecoverySystem;->clearBcb()Z

    .line 653
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 657
    :goto_14e
    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 658
    const-string/jumbo p2, "recovery-update"

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 662
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 663
    invoke-virtual {p0, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_18c

    .line 664
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ",quiescent"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 667
    :cond_18c
    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 669
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Reboot failed (no permissions?)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 643
    :cond_197
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Setup BCB failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 670
    :catchall_19f
    move-exception p0

    monitor-exit v0
    :try_end_1a1
    .catchall {:try_start_148 .. :try_end_1a1} :catchall_19f

    throw p0
.end method

.method private blacklist isLskfCaptured(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1496
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1497
    :catch_7
    move-exception p1

    .line 1498
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not get LSKF capture state"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static whitelist isPreparedForUnattendedUpdate(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 786
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/RecoverySystem;->isLskfCaptured(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static whitelist prepareForUnattendedUpdate(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    if-eqz p1, :cond_37

    .line 709
    const-class p1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 710
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 715
    const-string/jumbo p1, "recovery"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RecoverySystem;

    .line 716
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Landroid/os/RecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 719
    return-void

    .line 717
    :cond_26
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "preparation for update failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 711
    :cond_2f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to request LSKF because the device doesn\'t have a lock screen. "

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 706
    :cond_37
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "updateToken == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    .line 547
    return-void
.end method

.method public static whitelist processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 487
    const-string v0, "/data/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 488
    return-void

    .line 491
    :cond_d
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 492
    nop

    .line 493
    if-eqz p2, :cond_2b

    .line 495
    if-eqz p3, :cond_1c

    .line 496
    goto :goto_25

    .line 498
    :cond_1c
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 500
    :goto_25
    new-instance p0, Landroid/os/RecoverySystem$2;

    invoke-direct {p0, p3, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    goto :goto_2c

    .line 493
    :cond_2b
    const/4 p0, 0x0

    .line 522
    :goto_2c
    invoke-direct {v0, p1, p0}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 525
    return-void

    .line 523
    :cond_33
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "process package failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    const-class v0, Landroid/os/RecoverySystem;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Landroid/os/RecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static whitelist rebootAndApply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    if-eqz p1, :cond_1f

    .line 765
    const-string/jumbo p1, "recovery"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RecoverySystem;

    .line 767
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Landroid/os/RecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_16

    .line 771
    return-void

    .line 769
    :cond_16
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "system not prepared to apply update"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 763
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "updateToken == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1201
    const-string/jumbo v0, "rescueparty"

    const-string v1, "RecoverySystem"

    .line 1202
    nop

    .line 1204
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_8
    const-string/jumbo v4, "vold"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_23

    .line 1205
    if-eqz v4, :cond_1c

    .line 1206
    :try_start_15
    invoke-interface {v4}, Landroid/os/IVold;->needsCheckpoint()Z

    move-result v5

    goto :goto_22

    .line 1210
    :catch_1a
    move-exception v5

    goto :goto_25

    .line 1208
    :cond_1c
    const-string v5, "Failed to get vold"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_1a

    move v5, v2

    .line 1212
    :goto_22
    goto :goto_2b

    .line 1210
    :catch_23
    move-exception v4

    move-object v4, v3

    .line 1211
    :goto_25
    const-string v5, "Failed to check for checkpointing"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 1216
    :goto_2b
    if-eqz v5, :cond_49

    .line 1218
    :try_start_2d
    invoke-interface {v4, v0, v2}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 1219
    const-string p1, "Rescue Party requested wipe. Aborting update"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_35} :catch_36

    .line 1224
    goto :goto_48

    .line 1220
    :catch_36
    move-exception p1

    .line 1221
    const-string p1, "Rescue Party requested wipe. Rebooting instead."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string/jumbo p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 1223
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 1225
    :goto_48
    return-void

    .line 1228
    :cond_49
    nop

    .line 1229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_69

    .line 1229
    :cond_68
    move-object p1, v3

    .line 1233
    :goto_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1234
    const-string v1, "--prompt_and_wipe_data"

    filled-new-array {v3, v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1235
    return-void
.end method

.method private greylist-max-o rebootRecoveryWithCommand(Ljava/lang/String;)V
    .registers 3

    .line 1450
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1452
    goto :goto_7

    .line 1451
    :catch_6
    move-exception p1

    .line 1453
    :goto_7
    return-void
.end method

.method public static whitelist rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    nop

    .line 1275
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_20

    .line 1275
    :cond_1f
    const/4 p2, 0x0

    .line 1279
    :goto_20
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--wipe_package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1282
    const-string v1, "--wipe_ab"

    filled-new-array {v1, p1, p2, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1283
    return-void
.end method

.method public static whitelist rebootWipeCache(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 1243
    return-void
.end method

.method public static greylist-max-o rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1247
    nop

    .line 1248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 1248
    :cond_1f
    const/4 p1, 0x0

    .line 1252
    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    const-string v1, "--wipe_cache"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1254
    return-void
.end method

.method public static whitelist rebootWipeUserData(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 885
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 891
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 898
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V

    .line 904
    return-void
.end method

.method public static greylist-max-o rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZZ)V

    .line 910
    return-void
.end method

.method public static blacklist rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 938
    nop

    .line 939
    const-string v1, "dynamic_system"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/image/DynamicSystemManager;

    .line 940
    if-nez p3, :cond_26

    const-string/jumbo p3, "no_factory_reset"

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1e

    goto :goto_26

    .line 941
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Wiping data is not allowed for this user."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 944
    :cond_26
    :goto_26
    invoke-virtual {v1}, Landroid/os/image/DynamicSystemManager;->isInUse()Z

    move-result p3

    if-nez p3, :cond_dc

    .line 947
    new-instance p3, Landroid/os/ConditionVariable;

    invoke-direct {p3}, Landroid/os/ConditionVariable;-><init>()V

    .line 949
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    const/high16 v0, 0x11000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 952
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v4, Landroid/os/RecoverySystem$3;

    invoke-direct {v4, p3}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "android.permission.MASTER_CLEAR"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 962
    invoke-virtual {p3}, Landroid/os/ConditionVariable;->block()V

    .line 964
    const-class p0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 965
    if-eqz p4, :cond_61

    .line 966
    const-string p0, "android"

    invoke-static {v0, p0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_64

    .line 968
    :cond_61
    invoke-static {v0, p0}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V

    .line 971
    :goto_64
    nop

    .line 972
    const/4 p0, 0x0

    if-eqz p1, :cond_6b

    .line 973
    const-string p1, "--shutdown_after"

    goto :goto_6c

    .line 972
    :cond_6b
    move-object p1, p0

    .line 976
    :goto_6c
    nop

    .line 977
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b1

    .line 978
    const-string/jumbo p3, "yyyy-MM-ddTHH:mm:ssZ"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 979
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--reason="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_b2

    .line 977
    :cond_b1
    move-object p2, p0

    .line 982
    :goto_b2
    nop

    .line 983
    if-eqz p5, :cond_b7

    .line 984
    const-string p0, "--keep_memtag_mode"

    .line 987
    :cond_b7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--locale="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 988
    const-string p4, "--wipe_data"

    filled-new-array {p1, p4, p2, p3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 989
    return-void

    .line 945
    :cond_dc
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Wiping data is not allowed while in DSU mode."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IRecoverySystem;->rebootWithLskf(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1510
    :catch_7
    move-exception p1

    .line 1511
    new-instance p2, Ljava/io/IOException;

    const-string p3, "could not reboot for update"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private blacklist rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->rebootWithLskfAssumeSlotSwitch(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1524
    :catch_7
    move-exception p1

    .line 1525
    new-instance p2, Ljava/io/IOException;

    const-string v0, "could not reboot for update"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static greylist-max-o recursiveDelete(Ljava/io/File;)V
    .registers 5

    .line 1389
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1390
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 1391
    const/4 v1, 0x0

    :goto_b
    if-eqz v0, :cond_1d

    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 1392
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1393
    invoke-static {v2}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 1391
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1397
    :cond_1d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "RecoverySystem"

    if-nez v0, :cond_3c

    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 1400
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :goto_52
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Landroid/telephony/euicc/EuiccManager;)V
    .registers 6

    .line 1075
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1076
    const-string v1, "euicc_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "RecoverySystem"

    if-nez v0, :cond_15

    .line 1079
    const-string p0, "Skip removing eUICC invisible profiles as it is not provisioned."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1081
    :cond_15
    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_69

    .line 1085
    :cond_1e
    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 1086
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 1087
    nop

    .line 1088
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 1089
    if-eqz v0, :cond_63

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_63

    .line 1093
    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1095
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1096
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    :cond_5e
    goto :goto_3d

    .line 1099
    :cond_5f
    invoke-static {p0, v1, p1}, Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z

    .line 1100
    return-void

    .line 1090
    :cond_63
    :goto_63
    const-string p0, "Skip removing eUICC invisible profiles as no available profiles found."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    return-void

    .line 1082
    :cond_69
    :goto_69
    const-string p0, "Skip removing eUICC invisible profiles as eUICC manager is not available."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return-void
.end method

.method private static blacklist removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/telephony/euicc/EuiccManager;",
            ")Z"
        }
    .end annotation

    .line 1104
    const/4 v0, 0x1

    const-string v1, "RecoverySystem"

    if-eqz p1, :cond_118

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_118

    .line 1108
    :cond_d
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1109
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1111
    new-instance v5, Landroid/os/RecoverySystem$5;

    invoke-direct {v5, v3, v2}, Landroid/os/RecoverySystem$5;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 1129
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1130
    const-string v8, "android"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    const/high16 v8, 0xc000000

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {p0, v4, v6, v8, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1137
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1138
    invoke-virtual {v8, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    new-instance v7, Landroid/os/HandlerThread;

    const-string v9, "euiccRemovingSubsReceiverThread"

    invoke-direct {v7, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1142
    new-instance v9, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1143
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 1144
    const/4 v11, 0x0

    invoke-virtual {v10, v5, v8, v11, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    .line 1147
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove invisible subscription "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1149
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from card "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1150
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1147
    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result v10

    invoke-virtual {p2, v10}, Landroid/telephony/euicc/EuiccManager;->createForCardId(I)Landroid/telephony/euicc/EuiccManager;

    move-result-object v10

    .line 1152
    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v10, v9, v6}, Landroid/telephony/euicc/EuiccManager;->deleteSubscription(ILandroid/app/PendingIntent;)V

    .line 1153
    goto :goto_5c

    .line 1155
    :cond_a0
    nop

    .line 1156
    :try_start_a1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v6, "euicc_removing_invisible_profiles_timeout_millis"

    .line 1155
    const-wide/32 v8, 0xafc8

    invoke-static {p2, v6, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1159
    const-wide/16 v10, 0x3a98

    cmp-long p2, v8, v10

    if-gez p2, :cond_b6

    .line 1160
    move-wide v8, v10

    goto :goto_be

    .line 1161
    :cond_b6
    const-wide/32 v10, 0x15f90

    cmp-long p2, v8, v10

    if-lez p2, :cond_be

    .line 1162
    move-wide v8, v10

    .line 1164
    :cond_be
    :goto_be
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_d8

    .line 1165
    const-string p1, "Timeout removing invisible euicc profiles."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_cb} :catch_f2
    .catchall {:try_start_a1 .. :try_end_cb} :catchall_f0

    .line 1166
    nop

    .line 1173
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1174
    nop

    .line 1175
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1166
    return v4

    .line 1173
    :cond_d8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1174
    nop

    .line 1175
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1178
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_ee

    goto :goto_ef

    :cond_ee
    move v0, v4

    :goto_ef
    return v0

    .line 1173
    :catchall_f0
    move-exception p1

    goto :goto_10c

    .line 1168
    :catch_f2
    move-exception p1

    .line 1169
    :try_start_f3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 1170
    const-string p2, "Removing invisible euicc profiles interrupted"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_f3 .. :try_end_ff} :catchall_f0

    .line 1171
    nop

    .line 1173
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1174
    nop

    .line 1175
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1171
    return v4

    .line 1173
    :goto_10c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1174
    nop

    .line 1175
    invoke-virtual {v7}, Landroid/os/HandlerThread;->quit()Z

    .line 1177
    throw p1

    .line 1105
    :cond_118
    :goto_118
    const-string p0, "There are no eUICC invisible profiles needed to be removed."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return v0
.end method

.method private blacklist requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1463
    const-string v0, "Package<%s> requesting LSKF"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverySystem"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :try_start_f
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->requestLskf(Ljava/lang/String;Landroid/content/IntentSender;)Z

    move-result p1

    .line 1466
    const-string p2, "LSKF Request isValid = %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_26} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_26} :catch_27

    .line 1467
    return p1

    .line 1468
    :catch_27
    move-exception p1

    .line 1469
    new-instance p2, Ljava/io/IOException;

    const-string v0, "could not request LSKF capture"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static greylist-max-o sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1534
    const/4 v0, 0x0

    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1535
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1536
    return-object p0
.end method

.method public static whitelist scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 826
    const-string v0, "_s.zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 830
    const-string v1, "/data/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 831
    const-string p1, "@/cache/recovery/block.map"

    .line 834
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--update_package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 839
    if-eqz v0, :cond_72

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "--security\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 843
    :cond_72
    const-string/jumbo v0, "recovery"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RecoverySystem;

    .line 844
    invoke-direct {p0, p1}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_82

    .line 847
    return-void

    .line 845
    :cond_82
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "schedule update on boot failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o setupBcb(Ljava/lang/String;)Z
    .registers 3

    .line 1420
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1421
    :catch_7
    move-exception p1

    .line 1423
    const/4 p1, 0x0

    return p1
.end method

.method private greylist-max-o uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .registers 4

    .line 1409
    :try_start_0
    iget-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v0, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 1410
    :catch_7
    move-exception p1

    .line 1412
    const/4 p1, 0x0

    return p1
.end method

.method public static whitelist verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 289
    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 291
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    move-object/from16 v3, p0

    invoke-direct {v6, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 294
    const/4 v0, 0x0

    if-eqz v7, :cond_1a

    .line 295
    invoke-interface {v7, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 298
    :cond_1a
    const-wide/16 v8, 0x6

    sub-long v8, v1, v8

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 299
    const/4 v3, 0x6

    new-array v8, v3, [B

    .line 300
    invoke-virtual {v6, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 302
    const/4 v9, 0x2

    aget-byte v10, v8, v9

    const/4 v11, -0x1

    if-ne v10, v11, :cond_147

    const/4 v10, 0x3

    aget-byte v12, v8, v10

    if-ne v12, v11, :cond_147

    .line 306
    const/4 v11, 0x4

    aget-byte v12, v8, v11

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x5

    aget-byte v14, v8, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v12, v14

    .line 307
    aget-byte v14, v8, v0

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x1

    aget-byte v8, v8, v15

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v14

    .line 309
    add-int/lit8 v14, v12, 0x16

    move/from16 p0, v0

    new-array v0, v14, [B

    .line 310
    move/from16 v16, v9

    move/from16 v17, v10

    int-to-long v9, v14

    sub-long v9, v1, v9

    invoke-virtual {v6, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 311
    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 315
    aget-byte v9, v0, p0

    const/16 v10, 0x50

    if-ne v9, v10, :cond_13e

    aget-byte v9, v0, v15

    const/16 v11, 0x4b

    if-ne v9, v11, :cond_13e

    aget-byte v9, v0, v16

    if-ne v9, v13, :cond_13e

    aget-byte v9, v0, v17

    if-ne v9, v3, :cond_13e

    .line 320
    const/4 v9, 0x4

    :goto_73
    add-int/lit8 v15, v14, -0x3

    if-ge v9, v15, :cond_9a

    .line 321
    aget-byte v15, v0, v9

    if-ne v15, v10, :cond_96

    add-int/lit8 v15, v9, 0x1

    aget-byte v15, v0, v15

    if-ne v15, v11, :cond_96

    add-int/lit8 v15, v9, 0x2

    aget-byte v15, v0, v15

    if-ne v15, v13, :cond_96

    add-int/lit8 v15, v9, 0x3

    aget-byte v15, v0, v15

    if-eq v15, v3, :cond_8e

    goto :goto_96

    .line 323
    :cond_8e
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "EOCD marker found after start of EOCD"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_96
    :goto_96
    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    goto :goto_73

    .line 328
    :cond_9a
    new-instance v9, Lsun/security/pkcs/PKCS7;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    sub-int/2addr v14, v8

    invoke-direct {v3, v0, v14, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v9, v3}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    .line 333
    invoke-virtual {v9}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_135

    array-length v3, v0

    if-eqz v3, :cond_135

    .line 337
    aget-object v0, v0, p0

    .line 338
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 340
    invoke-virtual {v9}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v3

    .line 341
    if-eqz v3, :cond_12c

    array-length v8, v3

    if-eqz v8, :cond_12c

    .line 344
    aget-object v8, v3, p0

    .line 348
    nop

    .line 350
    if-nez p2, :cond_c5

    sget-object v3, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    goto :goto_c7

    :cond_c5
    move-object/from16 v3, p2

    .line 349
    :goto_c7
    invoke-static {v3}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v3

    .line 351
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_cf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 352
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-interface {v10, v0}, Ljava/security/PublicKey;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e8

    .line 353
    nop

    .line 354
    const/4 v0, 0x1

    goto :goto_eb

    .line 356
    :cond_e8
    goto :goto_cf

    .line 351
    :cond_e9
    move/from16 v0, p0

    .line 357
    :goto_eb
    if-eqz v0, :cond_123

    .line 363
    const-wide/16 v10, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 364
    nop

    .line 365
    new-instance v0, Landroid/os/RecoverySystem$1;

    move v3, v12

    invoke-direct/range {v0 .. v7}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    invoke-virtual {v9, v8, v0}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v0

    .line 410
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 411
    if-eqz v7, :cond_108

    .line 412
    const/16 v2, 0x64

    invoke-interface {v7, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V
    :try_end_108
    .catchall {:try_start_10 .. :try_end_108} :catchall_150

    .line 415
    :cond_108
    if-nez v1, :cond_11a

    .line 419
    if-eqz v0, :cond_111

    .line 423
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 424
    nop

    .line 425
    return-void

    .line 420
    :cond_111
    :try_start_111
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature digest verification failed"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_11a
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "verification was interrupted"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_123
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature doesn\'t match any trusted key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_12c
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature contains no signedData"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_135
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "signature contains no certificates"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_13e
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (bad footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_147
    new-instance v0, Ljava/security/SignatureException;

    const-string/jumbo v1, "no signature in file (no footer)"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_150
    .catchall {:try_start_111 .. :try_end_150} :catchall_150

    .line 423
    :catchall_150
    move-exception v0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 424
    throw v0
.end method

.method public static whitelist verifyPackageCompatibility(Ljava/io/File;)Z
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist verifyPackageCompatibility(Ljava/io/InputStream;)Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist-max-o wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 12

    .line 999
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1000
    const-string v1, "euicc_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const-string v3, "RecoverySystem"

    if-nez v0, :cond_16

    .line 1003
    const-string p0, "Skipping eUICC wipe/retain as it is not provisioned"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return v1

    .line 1007
    :cond_16
    const-string v0, "euicc"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 1009
    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 1010
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1011
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1013
    new-instance v5, Landroid/os/RecoverySystem$4;

    invoke-direct {v5, v1, v4}, Landroid/os/RecoverySystem$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    .line 1031
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.internal.action.EUICC_FACTORY_RESET"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    const/high16 p1, 0xc000000

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {p0, v2, v6, p1, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1039
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1040
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1041
    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "euiccWipeFinishReceiverThread"

    invoke-direct {v7, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 1043
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v8, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1044
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 1045
    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1046
    invoke-virtual {v0, p1}, Landroid/telephony/euicc/EuiccManager;->eraseSubscriptions(Landroid/app/PendingIntent;)V

    .line 1048
    nop

    .line 1049
    :try_start_6e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "euicc_factory_reset_timeout_millis"

    .line 1048
    const-wide/16 v6, 0x7530

    invoke-static {p1, v0, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1052
    const-wide/16 v8, 0x1388

    cmp-long p1, v6, v8

    if-gez p1, :cond_82

    .line 1053
    move-wide v6, v8

    goto :goto_8a

    .line 1054
    :cond_82
    const-wide/32 v8, 0xea60

    cmp-long p1, v6, v8

    if-lez p1, :cond_8a

    .line 1055
    move-wide v6, v8

    .line 1057
    :cond_8a
    :goto_8a
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_a0

    .line 1058
    const-string p1, "Timeout wiping eUICC data."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_97} :catch_af
    .catchall {:try_start_6e .. :try_end_97} :catchall_ad

    .line 1059
    nop

    .line 1066
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1059
    return v2

    .line 1066
    :cond_a0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1067
    nop

    .line 1068
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0

    .line 1066
    :catchall_ad
    move-exception p1

    goto :goto_c5

    .line 1061
    :catch_af
    move-exception p1

    .line 1062
    :try_start_b0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1063
    const-string v0, "Wiping eUICC data interrupted"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_b0 .. :try_end_bc} :catchall_ad

    .line 1064
    nop

    .line 1066
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1064
    return v2

    .line 1066
    :goto_c5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1067
    throw p1

    .line 1070
    :cond_cd
    return v2
.end method


# virtual methods
.method public blacklist wipePartitionToExt4()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1299
    nop

    .line 1300
    const-string v0, "--wipe_data\n--reformat_data=ext4"

    invoke-direct {p0, v0}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 1301
    return-void
.end method
