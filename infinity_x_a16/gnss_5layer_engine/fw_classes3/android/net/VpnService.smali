.class public Landroid/net/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnService$Callback;,
        Landroid/net/VpnService$Builder;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"

.field public static final whitelist SERVICE_META_DATA_SUPPORTS_ALWAYS_ON:Ljava/lang/String; = "android.net.VpnService.SUPPORTS_ALWAYS_ON"


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcheck(Ljava/net/InetAddress;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckNonPrefixBytes(Ljava/net/InetAddress;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/VpnService;->checkNonPrefixBytes(Ljava/net/InetAddress;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/net/IVpnManager;
    .registers 1

    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static greylist-max-o check(Ljava/net/InetAddress;I)V
    .registers 4

    .line 460
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_32

    .line 463
    instance-of v0, p0, Ljava/net/Inet4Address;

    const-string v1, "Bad prefixLength"

    if-eqz v0, :cond_19

    .line 464
    if-ltz p1, :cond_13

    const/16 p0, 0x20

    if-gt p1, p0, :cond_13

    goto :goto_23

    .line 465
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 467
    :cond_19
    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_2a

    .line 468
    if-ltz p1, :cond_24

    const/16 p0, 0x80

    if-gt p1, p0, :cond_24

    .line 474
    :goto_23
    return-void

    .line 469
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 472
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported family"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 461
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist checkNonPrefixBytes(Ljava/net/InetAddress;I)V
    .registers 3

    .line 477
    new-instance v0, Landroid/net/IpPrefix;

    invoke-direct {v0, p0, p1}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 478
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 481
    return-void

    .line 479
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getService()Landroid/net/IVpnManager;
    .registers 1

    .line 179
    nop

    .line 180
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist prepare(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    .line 208
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_15

    if-eqz p0, :cond_14

    .line 209
    return-object v2

    .line 213
    :cond_14
    goto :goto_16

    .line 211
    :catch_15
    move-exception p0

    .line 214
    :goto_16
    invoke-static {}, Lcom/android/internal/net/VpnConfig;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist prepareAndAuthorize(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 231
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 235
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 236
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p0}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 237
    invoke-interface {v0, v2, v1, p0}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 239
    :cond_16
    const/4 v2, 0x1

    invoke-interface {v0, v1, p0, v2}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 242
    goto :goto_1c

    .line 240
    :catch_1b
    move-exception p0

    .line 243
    :goto_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o addAddress(Ljava/net/InetAddress;I)Z
    .registers 4

    .line 304
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 306
    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/net/IVpnManager;->addVpnAddress(Ljava/lang/String;I)Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return p1

    .line 307
    :catch_10
    move-exception p1

    .line 308
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final whitelist isAlwaysOn()Z
    .registers 2

    .line 390
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnApp()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 391
    :catch_9
    move-exception v0

    .line 392
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist isLockdownEnabled()Z
    .registers 2

    .line 405
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/IVpnManager;->isCallerCurrentAlwaysOnVpnLockdownApp()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 406
    :catch_9
    move-exception v0

    .line 407
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 421
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    const-string v1, "android.net.VpnService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 422
    new-instance p1, Landroid/net/VpnService$Callback;

    invoke-direct {p1, p0, v0}, Landroid/net/VpnService$Callback;-><init>(Landroid/net/VpnService;Landroid/net/VpnService-IA;)V

    return-object p1

    .line 424
    :cond_15
    return-object v0
.end method

.method public whitelist onRevoke()V
    .registers 1

    .line 439
    invoke-virtual {p0}, Landroid/net/VpnService;->stopSelf()V

    .line 440
    return-void
.end method

.method public whitelist protect(I)Z
    .registers 2

    .line 260
    invoke-static {p1}, Lcom/android/internal/net/NetworkUtilsInternal;->protectFromVpn(I)Z

    move-result p1

    return p1
.end method

.method public whitelist protect(Ljava/net/DatagramSocket;)Z
    .registers 2

    .line 281
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/VpnService;->protect(I)Z

    move-result p1

    return p1
.end method

.method public whitelist protect(Ljava/net/Socket;)Z
    .registers 2

    .line 270
    invoke-virtual {p1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/VpnService;->protect(I)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o removeAddress(Ljava/net/InetAddress;I)Z
    .registers 4

    .line 334
    invoke-static {p1, p2}, Landroid/net/VpnService;->check(Ljava/net/InetAddress;I)V

    .line 336
    :try_start_3
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/net/IVpnManager;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return p1

    .line 337
    :catch_10
    move-exception p1

    .line 338
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public whitelist setUnderlyingNetworks([Landroid/net/Network;)Z
    .registers 3

    .line 376
    :try_start_0
    invoke-static {}, Landroid/net/VpnService;->getService()Landroid/net/IVpnManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 377
    :catch_9
    move-exception p1

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
