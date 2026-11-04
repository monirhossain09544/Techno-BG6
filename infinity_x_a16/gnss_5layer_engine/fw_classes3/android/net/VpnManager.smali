.class public Landroid/net/VpnManager;
.super Ljava/lang/Object;
.source "VpnManager.java"


# annotations
.annotation runtime Landroid/annotation/RestrictedForEnvironment;
    environments = {
        "SDK Runtime"
    }
    from = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/VpnManager$VpnType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_VPN_MANAGER_EVENT:Ljava/lang/String; = "android.net.action.VPN_MANAGER_EVENT"

.field public static final whitelist CATEGORY_EVENT_ALWAYS_ON_STATE_CHANGED:Ljava/lang/String; = "android.net.category.EVENT_ALWAYS_ON_STATE_CHANGED"

.field public static final whitelist CATEGORY_EVENT_DEACTIVATED_BY_USER:Ljava/lang/String; = "android.net.category.EVENT_DEACTIVATED_BY_USER"

.field public static final whitelist CATEGORY_EVENT_IKE_ERROR:Ljava/lang/String; = "android.net.category.EVENT_IKE_ERROR"

.field public static final whitelist CATEGORY_EVENT_NETWORK_ERROR:Ljava/lang/String; = "android.net.category.EVENT_NETWORK_ERROR"

.field public static final whitelist ERROR_CLASS_NOT_RECOVERABLE:I = 0x1

.field public static final whitelist ERROR_CLASS_RECOVERABLE:I = 0x2

.field public static final whitelist ERROR_CODE_NETWORK_IO:I = 0x3

.field public static final whitelist ERROR_CODE_NETWORK_LOST:I = 0x2

.field public static final whitelist ERROR_CODE_NETWORK_PROTOCOL_TIMEOUT:I = 0x1

.field public static final whitelist ERROR_CODE_NETWORK_UNKNOWN_HOST:I = 0x0

.field public static final whitelist EXTRA_ERROR_CLASS:Ljava/lang/String; = "android.net.extra.ERROR_CLASS"

.field public static final whitelist EXTRA_ERROR_CODE:Ljava/lang/String; = "android.net.extra.ERROR_CODE"

.field public static final whitelist EXTRA_SESSION_KEY:Ljava/lang/String; = "android.net.extra.SESSION_KEY"

.field public static final whitelist EXTRA_TIMESTAMP_MILLIS:Ljava/lang/String; = "android.net.extra.TIMESTAMP_MILLIS"

.field public static final whitelist EXTRA_UNDERLYING_LINK_PROPERTIES:Ljava/lang/String; = "android.net.extra.UNDERLYING_LINK_PROPERTIES"

.field public static final whitelist EXTRA_UNDERLYING_NETWORK:Ljava/lang/String; = "android.net.extra.UNDERLYING_NETWORK"

.field public static final whitelist EXTRA_UNDERLYING_NETWORK_CAPABILITIES:Ljava/lang/String; = "android.net.extra.UNDERLYING_NETWORK_CAPABILITIES"

.field public static final whitelist EXTRA_VPN_PROFILE_STATE:Ljava/lang/String; = "android.net.extra.VPN_PROFILE_STATE"

.field public static final blacklist NOTIFICATION_CHANNEL_VPN:Ljava/lang/String; = "VPN"

.field public static final blacklist TYPE_VPN_LEGACY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist TYPE_VPN_NONE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist TYPE_VPN_OEM:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist TYPE_VPN_OEM_LEGACY:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist TYPE_VPN_OEM_SERVICE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist TYPE_VPN_PLATFORM:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist TYPE_VPN_SERVICE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/net/IVpnManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/IVpnManager;)V
    .registers 4

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const-string v0, "missing Context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    .line 364
    const-string p1, "missing IVpnManager"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/IVpnManager;

    iput-object p1, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    .line 365
    return-void
.end method

.method private static blacklist getIntentForConfirmation()Landroid/content/Intent;
    .registers 3

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 351
    return-object v0
.end method


# virtual methods
.method public whitelist deleteProvisionedVpnProfile()V
    .registers 3

    .line 413
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->deleteVpnProfile(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 416
    nop

    .line 417
    return-void

    .line 414
    :catch_d
    move-exception v0

    .line 415
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist factoryReset()V
    .registers 2

    .line 492
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0}, Landroid/net/IVpnManager;->factoryReset()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 495
    nop

    .line 496
    return-void

    .line 493
    :catch_7
    move-exception v0

    .line 494
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getAllLegacyVpns()[Lcom/android/internal/net/VpnProfile;
    .registers 2

    .line 830
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0}, Landroid/net/IVpnManager;->getAllLegacyVpns()[Lcom/android/internal/net/VpnProfile;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 831
    :catch_7
    move-exception v0

    .line 832
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .registers 3

    .line 610
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 611
    :catch_7
    move-exception p1

    .line 612
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAppExclusionList(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 681
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IVpnManager;->getAppExclusionList(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 682
    :catch_7
    move-exception p1

    .line 683
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getFromVpnProfileStore(Ljava/lang/String;)[B
    .registers 3

    .line 761
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getFromVpnProfileStore(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 762
    :catch_7
    move-exception p1

    .line 763
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .registers 3

    .line 708
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 709
    :catch_7
    move-exception p1

    .line 710
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getProvisionedVpnProfileState()Landroid/net/VpnProfileState;
    .registers 3

    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 480
    :catch_d
    move-exception v0

    .line 481
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .registers 3

    .line 464
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 465
    :catch_7
    move-exception p1

    .line 466
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getVpnLockdownAllowlist(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 696
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->getVpnLockdownAllowlist(I)Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 697
    :catch_7
    move-exception p1

    .line 698
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isAlwaysOnVpnPackageSupportedForUser(ILjava/lang/String;)Z
    .registers 4

    .line 560
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IVpnManager;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 561
    :catch_7
    move-exception p1

    .line 562
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isVpnLockdownEnabled(I)Z
    .registers 3

    .line 624
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->isVpnLockdownEnabled(I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 625
    :catch_7
    move-exception p1

    .line 626
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist listFromVpnProfileStore(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 819
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->listFromVpnProfileStore(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 820
    :catch_7
    move-exception p1

    .line 821
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    .line 515
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IVpnManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 516
    :catch_7
    move-exception p1

    .line 517
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist provisionVpnProfile(Landroid/net/PlatformVpnProfile;)Landroid/content/Intent;
    .registers 4

    .line 387
    :try_start_0
    invoke-virtual {p1}, Landroid/net/PlatformVpnProfile;->toVpnProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object p1
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_4} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_21

    .line 393
    nop

    .line 397
    :try_start_5
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/IVpnManager;->provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z

    move-result p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_1b

    if-eqz p1, :cond_15

    .line 398
    const/4 p1, 0x0

    return-object p1

    .line 402
    :cond_15
    nop

    .line 403
    invoke-static {}, Landroid/net/VpnManager;->getIntentForConfirmation()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 400
    :catch_1b
    move-exception p1

    .line 401
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 388
    :catch_21
    move-exception p1

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to serialize PlatformVpnProfile"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist putIntoVpnProfileStore(Ljava/lang/String;[B)Z
    .registers 4

    .line 781
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IVpnManager;->putIntoVpnProfileStore(Ljava/lang/String;[B)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 782
    :catch_7
    move-exception p1

    .line 783
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist removeFromVpnProfileStore(Ljava/lang/String;)Z
    .registers 3

    .line 799
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->removeFromVpnProfileStore(Ljava/lang/String;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 800
    :catch_7
    move-exception p1

    .line 801
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 591
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/net/IVpnManager;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 593
    :catch_7
    move-exception p1

    .line 594
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 656
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IVpnManager;->setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 657
    :catch_7
    move-exception p1

    .line 658
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setVpnPackageAuthorization(Ljava/lang/String;II)V
    .registers 5

    .line 537
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IVpnManager;->setVpnPackageAuthorization(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 540
    nop

    .line 541
    return-void

    .line 538
    :catch_7
    move-exception p1

    .line 539
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .registers 3

    .line 724
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0, p1}, Landroid/net/IVpnManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 727
    nop

    .line 728
    return-void

    .line 725
    :catch_7
    move-exception p1

    .line 726
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist startProvisionedVpnProfile()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    invoke-virtual {p0}, Landroid/net/VpnManager;->startProvisionedVpnProfileSession()Ljava/lang/String;

    .line 446
    return-void
.end method

.method public whitelist startProvisionedVpnProfileSession()Ljava/lang/String;
    .registers 3

    .line 429
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->startVpnProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 430
    :catch_d
    move-exception v0

    .line 431
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist stopProvisionedVpnProfile()V
    .registers 3

    .line 451
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    iget-object v1, p0, Landroid/net/VpnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/IVpnManager;->stopVpnProfile(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 454
    nop

    .line 455
    return-void

    .line 452
    :catch_d
    move-exception v0

    .line 453
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist updateLockdownVpn()Z
    .registers 2

    .line 742
    :try_start_0
    iget-object v0, p0, Landroid/net/VpnManager;->mService:Landroid/net/IVpnManager;

    invoke-interface {v0}, Landroid/net/IVpnManager;->updateLockdownVpn()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 743
    :catch_7
    move-exception v0

    .line 744
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
