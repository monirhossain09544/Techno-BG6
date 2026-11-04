.class public final Landroid/security/FileIntegrityManager;
.super Ljava/lang/Object;
.source "FileIntegrityManager.java"


# annotations
.annotation runtime Landroid/annotation/RestrictedForEnvironment;
    environments = {
        "SDK Runtime"
    }
    from = 0x22
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/security/IFileIntegrityService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/security/IFileIntegrityService;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/security/FileIntegrityManager;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    .line 57
    return-void
.end method


# virtual methods
.method public whitelist getFsVerityDigest(Ljava/io/File;)[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->getFsverityDigest(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist isApkVeritySupported()Z
    .registers 2

    .line 74
    invoke-static {}, Lcom/android/internal/security/VerityUtils;->isFsVeritySupported()Z

    move-result v0

    return v0
.end method

.method public whitelist isAppSourceCertificateTrusted(Ljava/security/cert/X509Certificate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist setupFsVerity(Ljava/io/File;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 121
    const/high16 v0, 0x30000000

    :try_start_8
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_49

    .line 122
    :try_start_c
    iget-object v1, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    invoke-interface {v1, v0}, Landroid/security/IFileIntegrityService;->createAuthToken(Landroid/os/ParcelFileDescriptor;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_3d

    .line 123
    if-eqz v0, :cond_17

    :try_start_14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_49

    .line 125
    :cond_17
    nop

    .line 128
    :try_start_18
    iget-object v0, p0, Landroid/security/FileIntegrityManager;->mService:Landroid/security/IFileIntegrityService;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Landroid/security/FileIntegrityManager;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {v0, v1, p1, v2}, Landroid/security/IFileIntegrityService;->setupFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 130
    if-eqz p1, :cond_35

    .line 131
    new-instance v0, Landroid/system/ErrnoException;

    const-string/jumbo v1, "setupFsVerity"

    invoke-direct {v0, v1, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_35} :catch_37

    .line 135
    :cond_35
    nop

    .line 136
    return-void

    .line 133
    :catch_37
    move-exception p1

    .line 134
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 121
    :catchall_3d
    move-exception p1

    if-eqz v0, :cond_48

    :try_start_40
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v0

    :try_start_45
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw p1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_49

    .line 123
    :catch_49
    move-exception p1

    .line 124
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 116
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expect an absolute path"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
