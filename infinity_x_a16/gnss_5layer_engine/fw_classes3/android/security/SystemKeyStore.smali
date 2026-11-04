.class public Landroid/security/SystemKeyStore;
.super Ljava/lang/Object;
.source "SystemKeyStore.java"


# static fields
.field private static final greylist-max-o KEY_FILE_EXTENSION:Ljava/lang/String; = ".sks"

.field private static final greylist-max-o SYSTEM_KEYSTORE_DIRECTORY:Ljava/lang/String; = "misc/systemkeys"

.field private static greylist-max-o mInstance:Landroid/security/SystemKeyStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/security/SystemKeyStore;

    invoke-direct {v0}, Landroid/security/SystemKeyStore;-><init>()V

    sput-object v0, Landroid/security/SystemKeyStore;->mInstance:Landroid/security/SystemKeyStore;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o getInstance()Landroid/security/SystemKeyStore;
    .registers 1

    .line 46
    sget-object v0, Landroid/security/SystemKeyStore;->mInstance:Landroid/security/SystemKeyStore;

    return-object v0
.end method

.method private greylist-max-o getKeyFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 108
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "misc/systemkeys"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".sks"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    return-object v1
.end method

.method public static greylist-max-o toHexString([B)Ljava/lang/String;
    .registers 6

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    array-length v0, p0

    .line 54
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_3b

    .line 57
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 63
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o deleteKey(Ljava/lang/String;)V
    .registers 3

    .line 129
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 132
    invoke-direct {p0, p1}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 138
    return-void

    .line 134
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public greylist-max-o generateNewKey(ILjava/lang/String;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 73
    invoke-static {}, Landroid/os/StrictMode;->noteDiskWrite()V

    .line 76
    invoke-direct {p0, p3}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 77
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 81
    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p2

    .line 82
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 83
    invoke-virtual {p2, p1, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 85
    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    .line 90
    :try_start_22
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    move-result p2

    if-eqz p2, :cond_45

    .line 94
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 95
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    invoke-static {p2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 98
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 99
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x180

    const/4 v0, -0x1

    invoke-static {p2, p3, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 103
    nop

    .line 104
    return-object p1

    .line 91
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_4b} :catch_4b

    .line 101
    :catch_4b
    move-exception p1

    .line 102
    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public greylist-max-o generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/SystemKeyStore;->generateNewKey(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o retrieveKey(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 121
    invoke-direct {p0, p1}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    .line 123
    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1}, Landroid/security/SystemKeyStore;->retrieveKey(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
