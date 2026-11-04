.class public Landroid/service/trust/TrustAgentService;
.super Landroid/app/Service;
.source "TrustAgentService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;,
        Landroid/service/trust/TrustAgentService$ConfigurationData;,
        Landroid/service/trust/TrustAgentService$TokenState;,
        Landroid/service/trust/TrustAgentService$GrantTrustFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final greylist-max-o EXTRA_TOKEN_HANDLE:Ljava/lang/String; = "token_handle"

.field private static final greylist-max-o EXTRA_TOKEN_REMOVED_RESULT:Ljava/lang/String; = "token_removed_result"

.field private static final greylist-max-o EXTRA_TOKEN_STATE:Ljava/lang/String; = "token_state"

.field private static final greylist-max-o EXTRA_USER_HANDLE:Ljava/lang/String; = "user_handle"

.field public static final whitelist FLAG_GRANT_TRUST_DISMISS_KEYGUARD:I = 0x2

.field public static final whitelist FLAG_GRANT_TRUST_DISPLAY_MESSAGE:I = 0x8

.field public static final whitelist FLAG_GRANT_TRUST_INITIATED_BY_USER:I = 0x1

.field public static final whitelist FLAG_GRANT_TRUST_TEMPORARY_AND_RENEWABLE:I = 0x4

.field private static final greylist-max-o MSG_CONFIGURE:I = 0x2

.field private static final greylist-max-o MSG_DEVICE_LOCKED:I = 0x4

.field private static final greylist-max-o MSG_DEVICE_UNLOCKED:I = 0x5

.field private static final greylist-max-o MSG_ESCROW_TOKEN_ADDED:I = 0x7

.field private static final greylist-max-o MSG_ESCROW_TOKEN_REMOVED:I = 0x9

.field private static final greylist-max-o MSG_ESCROW_TOKEN_STATE_RECEIVED:I = 0x8

.field private static final greylist-max-o MSG_TRUST_TIMEOUT:I = 0x3

.field private static final greylist-max-o MSG_UNLOCK_ATTEMPT:I = 0x1

.field private static final greylist-max-o MSG_UNLOCK_LOCKOUT:I = 0x6

.field private static final blacklist MSG_USER_MAY_REQUEST_UNLOCK:I = 0xb

.field private static final blacklist MSG_USER_REQUESTED_UNLOCK:I = 0xa

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.trust.TrustAgentService"

.field public static final whitelist TOKEN_STATE_ACTIVE:I = 0x1

.field public static final whitelist TOKEN_STATE_INACTIVE:I = 0x0

.field public static final whitelist TRUST_AGENT_META_DATA:Ljava/lang/String; = "android.service.trust.trustagent"


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private greylist-max-o mManagingTrust:Z

.field private greylist-max-o mPendingGrantTrustTask:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$uD3DsiDrofELvUQyVd18HwpW1H4(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/trust/TrustAgentService;->lambda$grantTrust$1(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;
    .registers 1

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmManagingTrust(Landroid/service/trust/TrustAgentService;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/trust/TrustAgentService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    .line 220
    new-instance v0, Landroid/service/trust/TrustAgentService$1;

    invoke-direct {v0, p0}, Landroid/service/trust/TrustAgentService$1;-><init>(Landroid/service/trust/TrustAgentService;)V

    iput-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic blacklist lambda$grantTrust$0(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .registers 2

    .line 489
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$grantTrust$1(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .registers 5

    .line 486
    if-eqz p1, :cond_c

    .line 489
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    :cond_c
    return-void
.end method

.method private greylist-max-o onError(Ljava/lang/String;)V
    .registers 5

    .line 415
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void
.end method


# virtual methods
.method public final whitelist addEscrowToken([BLandroid/os/UserHandle;)V
    .registers 5

    .line 566
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_19

    .line 572
    :try_start_7
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v1, p1, p2}, Landroid/service/trust/ITrustAgentServiceCallback;->addEscrowToken([BI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_28

    .line 575
    goto :goto_17

    .line 573
    :catch_11
    move-exception p1

    .line 574
    :try_start_12
    const-string p1, "calling addEscrowToken"

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 576
    :goto_17
    monitor-exit v0

    .line 577
    return-void

    .line 568
    :cond_19
    iget-object p1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string p2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Trust agent is not connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 576
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JI)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    .line 452
    return-void
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "JI",
            "Ljava/util/function/Consumer<",
            "Landroid/service/trust/GrantTrustResult;",
            ">;)V"
        }
    .end annotation

    .line 477
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_3
    iget-boolean v0, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eqz v0, :cond_3b

    .line 484
    new-instance v7, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v7}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 485
    new-instance v0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p5}, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;-><init>(Landroid/service/trust/TrustAgentService;Ljava/util/function/Consumer;)V

    invoke-virtual {v7, v0}, Lcom/android/internal/infra/AndroidFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    .line 493
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_43

    if-eqz v0, :cond_2b

    .line 495
    :try_start_18
    iget-object v2, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/service/trust/ITrustAgentServiceCallback;->grantTrust(Ljava/lang/CharSequence;JILcom/android/internal/infra/AndroidFuture;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_24
    .catchall {:try_start_18 .. :try_end_23} :catchall_43

    .line 498
    :goto_23
    goto :goto_39

    .line 496
    :catch_24
    move-exception v0

    .line 497
    :try_start_25
    const-string p1, "calling enableTrust()"

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    goto :goto_23

    .line 502
    :cond_2b
    move-wide v4, p2

    move v6, p4

    new-instance v2, Landroid/service/trust/TrustAgentService$2;

    move-object v3, p0

    move-object v8, p5

    move v7, v6

    move-wide v5, v4

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/service/trust/TrustAgentService$2;-><init>(Landroid/service/trust/TrustAgentService;Ljava/lang/CharSequence;JILjava/util/function/Consumer;)V

    iput-object v2, v3, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 509
    :goto_39
    monitor-exit v1

    .line 510
    return-void

    .line 479
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot grant trust if agent is not managing trust. Call setManagingTrust(true) first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 509
    :catchall_43
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_43

    throw p1
.end method

.method public final whitelist grantTrust(Ljava/lang/CharSequence;JZ)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/trust/TrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    .line 442
    return-void
.end method

.method public final whitelist isEscrowTokenActive(JLandroid/os/UserHandle;)V
    .registers 6

    .line 589
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_19

    .line 595
    :try_start_7
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-interface {v1, p1, p2, p3}, Landroid/service/trust/ITrustAgentServiceCallback;->isEscrowTokenActive(JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_28

    .line 598
    goto :goto_17

    .line 596
    :catch_11
    move-exception p1

    .line 597
    :try_start_12
    const-string p1, "calling isEscrowTokenActive"

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 599
    :goto_17
    monitor-exit v0

    .line 600
    return-void

    .line 591
    :cond_19
    iget-object p1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string p2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Trust agent is not connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 599
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public final whitelist lockUser()V
    .registers 2

    .line 664
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    if-eqz v0, :cond_10

    .line 666
    :try_start_4
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v0}, Landroid/service/trust/ITrustAgentServiceCallback;->lockUser()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 669
    goto :goto_10

    .line 667
    :catch_a
    move-exception v0

    .line 668
    const-string v0, "calling lockUser"

    invoke-direct {p0, v0}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 671
    :cond_10
    :goto_10
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 701
    new-instance p1, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService-IA;)V

    return-object p1
.end method

.method public whitelist onConfigure(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;)Z"
        }
    .end annotation

    .line 429
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist onCreate()V
    .registers 6

    .line 286
    const-string v0, "android.permission.BIND_TRUST_AGENT"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 287
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    :try_start_e
    invoke-virtual {p0}, Landroid/service/trust/TrustAgentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 290
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 297
    goto :goto_64

    .line 291
    :cond_20
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not declared with the permission \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_47} :catch_47

    .line 295
    :catch_47
    move-exception v0

    .line 296
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get ServiceInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_64
    return-void
.end method

.method public whitelist onDeviceLocked()V
    .registers 1

    .line 358
    return-void
.end method

.method public whitelist onDeviceUnlockLockout(J)V
    .registers 3

    .line 380
    return-void
.end method

.method public whitelist onDeviceUnlocked()V
    .registers 1

    .line 365
    return-void
.end method

.method public whitelist onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .registers 5

    .line 392
    return-void
.end method

.method public whitelist onEscrowTokenRemoved(JZ)V
    .registers 4

    .line 412
    return-void
.end method

.method public whitelist onEscrowTokenStateReceived(JI)V
    .registers 4

    .line 402
    return-void
.end method

.method public whitelist onTrustTimeout()V
    .registers 1

    .line 351
    return-void
.end method

.method public whitelist onUnlockAttempt(Z)V
    .registers 2

    .line 307
    return-void
.end method

.method public whitelist onUserMayRequestUnlock()V
    .registers 1

    .line 320
    return-void
.end method

.method public whitelist onUserRequestedUnlock(Z)V
    .registers 2

    .line 341
    return-void
.end method

.method public final whitelist removeEscrowToken(JLandroid/os/UserHandle;)V
    .registers 6

    .line 612
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_19

    .line 618
    :try_start_7
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-interface {v1, p1, p2, p3}, Landroid/service/trust/ITrustAgentServiceCallback;->removeEscrowToken(JI)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_28

    .line 621
    goto :goto_17

    .line 619
    :catch_11
    move-exception p1

    .line 620
    :try_start_12
    const-string p1, "callling removeEscrowToken"

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 622
    :goto_17
    monitor-exit v0

    .line 623
    return-void

    .line 614
    :cond_19
    iget-object p1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string p2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Trust agent is not connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 622
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public final whitelist revokeTrust()V
    .registers 3

    .line 516
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_a

    .line 518
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/trust/TrustAgentService;->mPendingGrantTrustTask:Ljava/lang/Runnable;

    .line 520
    :cond_a
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    if-eqz v1, :cond_1a

    .line 522
    :try_start_e
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1}, Landroid/service/trust/ITrustAgentServiceCallback;->revokeTrust()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14
    .catchall {:try_start_e .. :try_end_13} :catchall_1c

    .line 525
    goto :goto_1a

    .line 523
    :catch_14
    move-exception v1

    .line 524
    :try_start_15
    const-string v1, "calling revokeTrust()"

    invoke-direct {p0, v1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 527
    :cond_1a
    :goto_1a
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public final whitelist setManagingTrust(Z)V
    .registers 4

    .line 539
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-boolean v1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    if-eq v1, p1, :cond_19

    .line 541
    iput-boolean p1, p0, Landroid/service/trust/TrustAgentService;->mManagingTrust:Z

    .line 542
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    if-eqz v1, :cond_19

    .line 544
    :try_start_d
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 547
    goto :goto_19

    .line 545
    :catch_13
    move-exception p1

    .line 546
    :try_start_14
    const-string p1, "calling setManagingTrust()"

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 550
    :cond_19
    :goto_19
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public final whitelist showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    .registers 4

    .line 682
    if-eqz p1, :cond_29

    .line 685
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_5
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_26

    if-eqz v1, :cond_17

    .line 691
    :try_start_9
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-interface {v1, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->showKeyguardErrorMessage(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_26

    .line 694
    goto :goto_15

    .line 692
    :catch_f
    move-exception p1

    .line 693
    :try_start_10
    const-string p1, "calling showKeyguardErrorMessage"

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 695
    :goto_15
    monitor-exit v0

    .line 696
    return-void

    .line 687
    :cond_17
    iget-object p1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string v1, "Cannot show message because service is not connected to framework."

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Trust agent is not connected"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 695
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_26

    throw p1

    .line 683
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist unlockUserWithToken(J[BLandroid/os/UserHandle;)V
    .registers 7

    .line 634
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/service/trust/TrustAgentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 635
    invoke-virtual {v0, p4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 636
    iget-object p1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string p2, "User already unlocked"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 640
    :cond_17
    iget-object v0, p0, Landroid/service/trust/TrustAgentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_1a
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_3f

    if-eqz v1, :cond_30

    .line 646
    :try_start_1e
    iget-object v1, p0, Landroid/service/trust/TrustAgentService;->mCallback:Landroid/service/trust/ITrustAgentServiceCallback;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/service/trust/ITrustAgentServiceCallback;->unlockUserWithToken(J[BI)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_3f

    .line 649
    goto :goto_2e

    .line 647
    :catch_28
    move-exception p1

    .line 648
    :try_start_29
    const-string p1, "calling unlockUserWithToken"

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService;->onError(Ljava/lang/String;)V

    .line 650
    :goto_2e
    monitor-exit v0

    .line 651
    return-void

    .line 642
    :cond_30
    iget-object p1, p0, Landroid/service/trust/TrustAgentService;->TAG:Ljava/lang/String;

    const-string p2, "Cannot add escrow token if the agent is not connecting to framework"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Trust agent is not connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 650
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_3f

    throw p1
.end method
