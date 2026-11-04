.class public final Landroid/security/authenticationpolicy/AuthenticationPolicyManager;
.super Ljava/lang/Object;
.source "AuthenticationPolicyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;,
        Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;,
        Landroid/security/authenticationpolicy/AuthenticationPolicyManager$GetSecureLockDeviceAvailabilityRequestStatus;,
        Landroid/security/authenticationpolicy/AuthenticationPolicyManager$DisableSecureLockDeviceRequestStatus;,
        Landroid/security/authenticationpolicy/AuthenticationPolicyManager$EnableSecureLockDeviceRequestStatus;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final whitelist ERROR_ALREADY_ENABLED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_INSUFFICIENT_BIOMETRICS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_INVALID_PARAMS:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NOT_AUTHORIZED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_NO_BIOMETRICS_ENROLLED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_UNKNOWN:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_UNSUPPORTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "AuthenticationPolicyManager"


# instance fields
.field private final blacklist mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSecureLockDeviceStatusListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;",
            "Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener$Stub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSecureLockDeviceStatusListeners(Landroid/security/authenticationpolicy/AuthenticationPolicyManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mSecureLockDeviceStatusListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->DEBUG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 92
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/security/authenticationpolicy/IAuthenticationPolicyService;)V
    .registers 4

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mSecureLockDeviceStatusListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 245
    iput-object p1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mContext:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    .line 247
    return-void
.end method


# virtual methods
.method public blacklist cancelWatchRangingForRequestId(J)V
    .registers 4

    .line 556
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {v0, p1, p2}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->cancelWatchRangingForRequestId(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 559
    nop

    .line 560
    return-void

    .line 557
    :catch_7
    move-exception p1

    .line 558
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 485
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    iget-object v1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->disableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 486
    :catch_d
    move-exception p1

    .line 487
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 455
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    iget-object v1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->enableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 456
    :catch_d
    move-exception p1

    .line 457
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getSecureLockDeviceAvailability()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    iget-object v1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 420
    :catch_d
    move-exception v0

    .line 421
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isSecureLockDeviceEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 502
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->isSecureLockDeviceEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 503
    :catch_7
    move-exception v0

    .line 504
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isWatchRangingAvailable(Landroid/proximity/IProximityResultCallback;)V
    .registers 3

    .line 571
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {v0, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->isWatchRangingAvailable(Landroid/proximity/IProximityResultCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 574
    nop

    .line 575
    return-void

    .line 572
    :catch_7
    move-exception p1

    .line 573
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist registerSecureLockDeviceStatusListener(Ljava/util/concurrent/Executor;Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 297
    const-string v0, "Executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    const-string v0, "Listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mSecureLockDeviceStatusListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AuthenticationPolicyManager"

    if-eqz v0, :cond_1f

    .line 301
    sget-boolean p1, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->DEBUG:Z

    if-eqz p1, :cond_1e

    .line 302
    const-string/jumbo p1, "registerSecureLockDeviceStatusListener: listener already registered"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_1e
    return-void

    .line 307
    :cond_1f
    new-instance v0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;-><init>(Landroid/security/authenticationpolicy/AuthenticationPolicyManager;Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;Ljava/util/concurrent/Executor;)V

    .line 346
    iget-object p1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mSecureLockDeviceStatusListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    nop

    .line 349
    const/4 p1, 0x0

    :try_start_2b
    iget-object v2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    iget-object v3, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->registerSecureLockDeviceStatusListener(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V

    .line 351
    nop

    .line 352
    const/4 p1, 0x1

    sget-boolean v0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_52

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_52} :catch_56
    .catchall {:try_start_2b .. :try_end_52} :catchall_54

    .line 358
    :cond_52
    nop

    .line 364
    return-void

    .line 358
    :catchall_54
    move-exception v0

    goto :goto_5c

    .line 355
    :catch_56
    move-exception v0

    .line 356
    :try_start_57
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_54

    .line 358
    :goto_5c
    if-nez p1, :cond_80

    .line 359
    iget-object p1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mSecureLockDeviceStatusListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register listener "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "with service, removing from local map."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_80
    throw v0
.end method

.method public blacklist setSecureLockDeviceTestStatus(Z)V
    .registers 5

    .line 518
    :try_start_0
    const-string v0, "AuthenticationPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#setTestModeForSecureLockDevice(isTestMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {v0, p1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->setSecureLockDeviceTestStatus(Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_25

    .line 522
    nop

    .line 523
    return-void

    .line 520
    :catch_25
    move-exception p1

    .line 521
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist startWatchRangingForIdentityCheck(JLandroid/proximity/IProximityResultCallback;Landroid/os/Handler;)V
    .registers 7

    .line 539
    :try_start_0
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    new-instance v1, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;

    invoke-direct {v1, p4, p3}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;-><init>(Landroid/os/Handler;Landroid/proximity/IProximityResultCallback;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->startWatchRangingForIdentityCheck(JLandroid/proximity/IProximityResultCallback;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 544
    nop

    .line 545
    return-void

    .line 542
    :catch_c
    move-exception p1

    .line 543
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist unregisterSecureLockDeviceStatusListener(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 380
    const-string v0, "Listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mSecureLockDeviceStatusListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 382
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener$Stub;

    .line 384
    const-string v1, "AuthenticationPolicyManager"

    if-nez v0, :cond_18

    .line 385
    const-string/jumbo p1, "unregisterSecureLockDeviceStatusListener: listener not registered"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 390
    :cond_18
    :try_start_18
    iget-object v2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->mAuthenticationPolicyService:Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    invoke-interface {v2, v0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService;->unregisterSecureLockDeviceStatusListener(Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V

    .line 391
    sget-boolean v0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_37} :catch_39

    .line 396
    :cond_37
    nop

    .line 397
    return-void

    .line 394
    :catch_39
    move-exception p1

    .line 395
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
