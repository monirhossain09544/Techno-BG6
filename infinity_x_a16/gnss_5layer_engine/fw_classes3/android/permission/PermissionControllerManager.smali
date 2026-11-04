.class public final Landroid/permission/PermissionControllerManager;
.super Ljava/lang/Object;
.source "PermissionControllerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;,
        Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;,
        Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;,
        Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;,
        Landroid/permission/PermissionControllerManager$HibernationEligibilityFlag;,
        Landroid/permission/PermissionControllerManager$CountPermissionAppsFlag;,
        Landroid/permission/PermissionControllerManager$Reason;
    }
.end annotation


# static fields
.field private static final blacklist CHUNK_SIZE:I = 0x1000

.field public static final whitelist COUNT_ONLY_WHEN_GRANTED:I = 0x1

.field public static final whitelist COUNT_WHEN_SYSTEM:I = 0x2

.field public static final whitelist HIBERNATION_ELIGIBILITY_ELIGIBLE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HIBERNATION_ELIGIBILITY_EXEMPT_BY_SYSTEM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HIBERNATION_ELIGIBILITY_EXEMPT_BY_USER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist HIBERNATION_ELIGIBILITY_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REASON_INSTALLER_POLICY_VIOLATION:I = 0x2

.field public static final whitelist REASON_MALWARE:I = 0x1

.field private static final blacklist REQUEST_TIMEOUT_MILLIS:J

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist UNBIND_TIMEOUT_MILLIS:J

.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sRemoteServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread;",
            ">;",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/permission/IPermissionController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mRemoteService:Lcom/android/internal/infra/ServiceConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/permission/IPermissionController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$OAORQ7ETNZpZfw4mhvhDYjplsxU(Landroid/permission/PermissionControllerManager;Ljava/lang/String;Ljava/util/List;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/permission/PermissionControllerManager;->lambda$revokeSelfPermissionsOnKill$38(Ljava/lang/String;Ljava/util/List;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$ZNZXR9TD1f-Ar4c5fcWcaB0UTok(Landroid/permission/PermissionControllerManager;Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/permission/PermissionControllerManager;->lambda$revokeRuntimePermissions$0(Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$sV-Xg1_T9EH_oiZVVEFmcOEwpRE(Landroid/permission/PermissionControllerManager;Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/permission/PermissionControllerManager;->lambda$revokeSelfPermissionsOnKill$39(Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetREQUEST_TIMEOUT_MILLIS()J
    .registers 2

    sget-wide v0, Landroid/permission/PermissionControllerManager;->REQUEST_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetUNBIND_TIMEOUT_MILLIS()J
    .registers 2

    sget-wide v0, Landroid/permission/PermissionControllerManager;->UNBIND_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 83
    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    .line 85
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    sput-wide v0, Landroid/permission/PermissionControllerManager;->REQUEST_TIMEOUT_MILLIS:J

    .line 86
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v0, v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    sput-wide v0, Landroid/permission/PermissionControllerManager;->UNBIND_TIMEOUT_MILLIS:J

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/permission/PermissionControllerManager;->sLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 15

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    sget-object v1, Landroid/permission/PermissionControllerManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_6
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 251
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    sget-object v2, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/infra/ServiceConnector;

    .line 253
    if-nez v2, :cond_9d

    .line 254
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.permission.PermissionControllerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_71

    .line 264
    new-instance v4, Landroid/permission/PermissionControllerManager$1;

    .line 265
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v6

    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.permission.PermissionControllerService"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v9

    new-instance v10, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda31;

    invoke-direct {v10}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda31;-><init>()V

    const/4 v8, 0x0

    move-object v5, p0

    move-object v11, p2

    invoke-direct/range {v4 .. v11}, Landroid/permission/PermissionControllerManager$1;-><init>(Landroid/permission/PermissionControllerManager;Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;Landroid/os/Handler;)V

    .line 286
    sget-object p2, Landroid/permission/PermissionControllerManager;->sRemoteServices:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    goto :goto_9f

    .line 259
    :cond_71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No PermissionController package ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    sget-object p2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 253
    :cond_9d
    move-object v5, p0

    move-object v11, p2

    .line 289
    :goto_9f
    iput-object v2, v5, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    .line 290
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_6 .. :try_end_a2} :catchall_a7

    .line 292
    iput-object p1, v5, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    .line 293
    iput-object v11, v5, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 294
    return-void

    .line 290
    :catchall_a7
    move-exception v0

    move-object p1, v0

    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a7

    throw p1
.end method

.method private varargs blacklist enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V
    .registers 6

    .line 303
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 304
    iget-object v3, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 306
    return-void

    .line 303
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 310
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At lest one of the following permissions is required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$applyStagedRuntimePermissionBackup$10(Ljava/lang/String;Landroid/os/UserHandle;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 513
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 515
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V

    .line 517
    return-object v0
.end method

.method static synthetic blacklist lambda$applyStagedRuntimePermissionBackup$11(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 8

    .line 519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 521
    if-eqz p3, :cond_27

    .line 522
    :try_start_6
    sget-object p2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error restoring delayed permissions for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_34

    .line 525
    :cond_27
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 526
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 525
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_39

    .line 529
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    nop

    .line 531
    return-void

    .line 529
    :catchall_39
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    throw p0
.end method

.method static synthetic blacklist lambda$countPermissionApps$18(Ljava/util/List;ILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 623
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 624
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->countPermissionApps(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    .line 625
    return-object v0
.end method

.method static synthetic blacklist lambda$countPermissionApps$19(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;)V
    .registers 4

    .line 627
    if-eqz p0, :cond_e

    .line 628
    sget-object p2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error counting permission apps"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;->onCountPermissionApps(I)V

    goto :goto_15

    .line 631
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;->onCountPermissionApps(I)V

    .line 633
    :goto_15
    return-void
.end method

.method static synthetic blacklist lambda$countPermissionApps$20(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 5

    .line 626
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p3, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda29;-><init>(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic blacklist lambda$dump$12(Landroid/permission/IPermissionController;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    invoke-interface {p0}, Landroid/permission/IPermissionController;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method static synthetic blacklist lambda$dump$13(Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 542
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda30;

    invoke-direct {v0, p2, p0, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda30;-><init>(Landroid/permission/IPermissionController;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)Ljava/lang/Runnable;

    move-result-object p0

    .line 544
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 542
    invoke-static {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getAppPermissions$14(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 569
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 571
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getAppPermissions(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 572
    return-object v0
.end method

.method static synthetic blacklist lambda$getAppPermissions$15(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;)V
    .registers 4

    .line 574
    if-eqz p0, :cond_11

    .line 575
    sget-object p2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error getting app permission"

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    goto :goto_18

    .line 578
    :cond_11
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;->onGetAppPermissions(Ljava/util/List;)V

    .line 580
    :goto_18
    return-void
.end method

.method static synthetic blacklist lambda$getAppPermissions$16(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;Ljava/lang/Throwable;)V
    .registers 5

    .line 573
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;

    invoke-direct {v0, p3, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda40;-><init>(Ljava/lang/Throwable;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getGroupOfPlatformPermission$32(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 826
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getGroupOfPlatformPermission(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 827
    return-object v0
.end method

.method static synthetic blacklist lambda$getGroupOfPlatformPermission$33(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .line 829
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 831
    if-eqz p3, :cond_23

    .line 832
    :try_start_6
    sget-object p2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get group of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 833
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_26

    .line 835
    :cond_23
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_2b

    .line 838
    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 839
    nop

    .line 840
    return-void

    .line 838
    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 839
    throw p0
.end method

.method static synthetic blacklist lambda$getHibernationEligibility$36(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 888
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 889
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getHibernationEligibility(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 890
    return-object v0
.end method

.method static synthetic blacklist lambda$getHibernationEligibility$37(Ljava/util/function/IntConsumer;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 5

    .line 892
    if-eqz p2, :cond_e

    .line 893
    sget-object p1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error getting hibernation eligibility"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    const/4 p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1d

    .line 896
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 898
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    .line 900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 901
    nop

    .line 903
    :goto_1d
    return-void

    .line 900
    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 901
    throw p0
.end method

.method static synthetic blacklist lambda$getPermissionUsages$21(ZJLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 656
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 658
    invoke-interface {p3, p0, p1, p2, v0}, Landroid/permission/IPermissionController;->getPermissionUsages(ZJLcom/android/internal/infra/AndroidFuture;)V

    .line 659
    return-object v0
.end method

.method static synthetic blacklist lambda$getPermissionUsages$22(Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;Ljava/util/List;Ljava/lang/Throwable;)V
    .registers 5

    .line 661
    if-eqz p2, :cond_11

    .line 662
    sget-object p1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error getting permission usages"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;->onPermissionUsageResult(Ljava/util/List;)V

    goto :goto_21

    .line 665
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 667
    nop

    .line 668
    :try_start_16
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 667
    invoke-interface {p0, p1}, Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;->onPermissionUsageResult(Ljava/util/List;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_22

    .line 670
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    nop

    .line 673
    :goto_21
    return-void

    .line 670
    :catchall_22
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    throw p0
.end method

.method static synthetic blacklist lambda$getPlatformPermissionsForGroup$30(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 792
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 793
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getPlatformPermissionsForGroup(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 794
    return-object v0
.end method

.method static synthetic blacklist lambda$getPlatformPermissionsForGroup$31(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/List;Ljava/lang/Throwable;)V
    .registers 8

    .line 796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 798
    if-eqz p3, :cond_27

    .line 799
    :try_start_6
    sget-object p2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get permissions of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2a

    .line 802
    :cond_27
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_2f

    .line 805
    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    nop

    .line 807
    return-void

    .line 805
    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    throw p0
.end method

.method static synthetic blacklist lambda$getPrivilegesDescriptionStringForProfile$25(Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 725
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 726
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 727
    return-object v0
.end method

.method static synthetic blacklist lambda$getPrivilegesDescriptionStringForProfile$26(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 729
    if-eqz p2, :cond_e

    .line 730
    sget-object p1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error from getPrivilegesDescriptionStringForProfile"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_11

    .line 733
    :cond_e
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 735
    :goto_11
    return-void
.end method

.method static synthetic blacklist lambda$getRuntimePermissionBackup$4(Landroid/permission/IPermissionController;Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 437
    invoke-interface {p0, p1, p2}, Landroid/permission/IPermissionController;->getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    .line 438
    return-void
.end method

.method static synthetic blacklist lambda$getRuntimePermissionBackup$5(Landroid/os/UserHandle;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 436
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1, p0}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda36;-><init>(Landroid/permission/IPermissionController;Landroid/os/UserHandle;)V

    invoke-static {v0}, Lcom/android/internal/infra/RemoteStream;->receiveBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getRuntimePermissionBackup$6(Ljava/util/function/Consumer;[BLjava/lang/Throwable;)V
    .registers 4

    .line 439
    if-eqz p2, :cond_f

    .line 440
    sget-object p1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error getting permission backup"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_12

    .line 443
    :cond_f
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 445
    :goto_12
    return-void
.end method

.method static synthetic blacklist lambda$getUnusedAppCount$34(Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 855
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 856
    invoke-interface {p0, v0}, Landroid/permission/IPermissionController;->getUnusedAppCount(Lcom/android/internal/infra/AndroidFuture;)V

    .line 857
    return-object v0
.end method

.method static synthetic blacklist lambda$getUnusedAppCount$35(Ljava/util/function/IntConsumer;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .registers 5

    .line 859
    if-eqz p2, :cond_e

    .line 860
    sget-object p1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error getting unused app count"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1d

    .line 863
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 865
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    .line 867
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 868
    nop

    .line 870
    :goto_1d
    return-void

    .line 867
    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 868
    throw p0
.end method

.method static synthetic blacklist lambda$grantOrUpgradeDefaultRuntimePermissions$23(Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 690
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 692
    invoke-interface {p0, v0}, Landroid/permission/IPermissionController;->grantOrUpgradeDefaultRuntimePermissions(Lcom/android/internal/infra/AndroidFuture;)V

    .line 694
    return-object v0
.end method

.method static synthetic blacklist lambda$grantOrUpgradeDefaultRuntimePermissions$24(Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 4

    .line 696
    if-eqz p2, :cond_12

    .line 697
    sget-object p1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error granting or upgrading runtime permissions"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 698
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1f

    .line 700
    :cond_12
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 702
    :goto_1f
    return-void
.end method

.method static synthetic blacklist lambda$notifyOneTimePermissionSessionTimeout$29(Ljava/lang/String;ILandroid/permission/IPermissionController;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 773
    invoke-interface {p2, p0, p1}, Landroid/permission/IPermissionController;->notifyOneTimePermissionSessionTimeout(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic blacklist lambda$revokeRuntimePermission$17(Ljava/lang/String;Ljava/lang/String;Landroid/permission/IPermissionController;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 598
    invoke-interface {p2, p0, p1}, Landroid/permission/IPermissionController;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$revokeRuntimePermissions$0(Ljava/util/Map;ZILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 341
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    .line 343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 342
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 344
    goto :goto_d

    .line 346
    :cond_2e
    new-instance v5, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v5}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 348
    iget-object p1, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 348
    move v2, p2

    move v3, p3

    move-object v0, p4

    invoke-interface/range {v0 .. v5}, Landroid/permission/IPermissionController;->revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    .line 351
    return-object v5
.end method

.method static synthetic blacklist lambda$revokeRuntimePermissions$1(Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;Ljava/util/Map;Ljava/lang/Throwable;)V
    .registers 8

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 355
    if-eqz p2, :cond_26

    .line 356
    :try_start_6
    sget-object v2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure when revoking runtime permissions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;->onRevokeRuntimePermissions(Ljava/util/Map;)V

    goto :goto_29

    .line 359
    :cond_26
    invoke-virtual {p0, p1}, Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;->onRevokeRuntimePermissions(Ljava/util/Map;)V
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2e

    .line 362
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    nop

    .line 364
    return-void

    .line 362
    :catchall_2e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    throw p0
.end method

.method private synthetic blacklist lambda$revokeSelfPermissionsOnKill$38(Ljava/lang/String;Ljava/util/List;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 933
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 934
    iget-object v1, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDeviceId()I

    move-result v1

    invoke-interface {p3, p1, p2, v1, v0}, Landroid/permission/IPermissionController;->revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V

    .line 936
    return-object v0
.end method

.method private synthetic blacklist lambda$revokeSelfPermissionsOnKill$39(Ljava/util/List;Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 7

    .line 938
    if-eqz p4, :cond_3a

    .line 939
    sget-object p3, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to self revoke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " for package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", and device "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/permission/PermissionControllerManager;->mContext:Landroid/content/Context;

    .line 940
    invoke-virtual {p2}, Landroid/content/Context;->getDeviceId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 939
    invoke-static {p3, p1, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 943
    :cond_3a
    return-void
.end method

.method static synthetic blacklist lambda$setRuntimePermissionGrantStateByDeviceAdmin$2(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 394
    invoke-interface {p2, p0, p1, v0}, Landroid/permission/IPermissionController;->setRuntimePermissionGrantStateByDeviceAdminFromParams(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Lcom/android/internal/infra/AndroidFuture;)V

    .line 397
    return-object v0
.end method

.method static synthetic blacklist lambda$setRuntimePermissionGrantStateByDeviceAdmin$3(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 8

    .line 399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 401
    if-eqz p3, :cond_27

    .line 402
    :try_start_6
    sget-object p2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting permissions state for device admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_34

    .line 407
    :cond_27
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_39

    .line 410
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_39
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    throw p0
.end method

.method static synthetic blacklist lambda$stageAndApplyRuntimePermissionsBackup$7(Landroid/permission/IPermissionController;Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 474
    invoke-interface {p0, p1, p2}, Landroid/permission/IPermissionController;->stageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    .line 475
    return-void
.end method

.method static synthetic blacklist lambda$stageAndApplyRuntimePermissionsBackup$8(Landroid/os/UserHandle;[BLandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda28;

    invoke-direct {v0, p2, p0}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda28;-><init>(Landroid/permission/IPermissionController;Landroid/os/UserHandle;)V

    invoke-static {v0, p1}, Lcom/android/internal/infra/RemoteStream;->sendBytes(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;[B)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$stageAndApplyRuntimePermissionsBackup$9(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3

    .line 477
    if-eqz p1, :cond_9

    .line 478
    sget-object p0, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Error sending permission backup"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    :cond_9
    return-void
.end method

.method static synthetic blacklist lambda$updateUserSensitiveForApp$27(ILandroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 752
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 753
    invoke-interface {p1, p0, v0}, Landroid/permission/IPermissionController;->updateUserSensitiveForApp(ILcom/android/internal/infra/AndroidFuture;)V

    .line 754
    return-object v0
.end method

.method static synthetic blacklist lambda$updateUserSensitiveForApp$28(ILjava/lang/Void;Ljava/lang/Throwable;)V
    .registers 5

    .line 756
    if-eqz p2, :cond_1a

    .line 757
    sget-object p1, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error updating user_sensitive flags for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 503
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p4}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 518
    invoke-virtual {p2, v0, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 532
    return-void
.end method

.method public blacklist countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 617
    const-string/jumbo v0, "permissionNames"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 618
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 619
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    if-eqz p4, :cond_10

    goto :goto_12

    :cond_10
    iget-object p4, p0, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 622
    :goto_12
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;

    invoke-direct {p2, p4, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda7;-><init>(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;)V

    .line 626
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 634
    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5

    .line 541
    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda24;-><init>(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    sget-wide v0, Landroid/permission/PermissionControllerManager;->REQUEST_TIMEOUT_MILLIS:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 545
    invoke-virtual {p1, v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 548
    goto :goto_1b

    .line 546
    :catch_13
    move-exception p1

    .line 547
    sget-object p2, Landroid/permission/PermissionControllerManager;->TAG:Ljava/lang/String;

    const-string v0, "Could not get dump"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    :goto_1b
    return-void
.end method

.method public blacklist getAppPermissions(Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V
    .registers 6

    .line 564
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    if-eqz p3, :cond_9

    goto :goto_b

    :cond_9
    iget-object p3, p0, Landroid/permission/PermissionControllerManager;->mHandler:Landroid/os/Handler;

    .line 568
    :goto_b
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda37;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda37;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda38;

    invoke-direct {v0, p3, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda38;-><init>(Landroid/os/Handler;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;)V

    .line 573
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 581
    return-void
.end method

.method public blacklist getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 828
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 841
    return-void
.end method

.method public whitelist getHibernationEligibility(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 6

    .line 884
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;-><init>(Ljava/util/function/IntConsumer;)V

    .line 891
    invoke-virtual {p1, v0, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 904
    return-void
.end method

.method public blacklist getPermissionUsages(ZJLjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .registers 8

    .line 650
    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 651
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, p2, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda10;-><init>(ZJ)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda11;

    invoke-direct {p2, p5}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda11;-><init>(Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V

    .line 660
    invoke-virtual {p1, p2, p4}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 674
    return-void
.end method

.method public blacklist getPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 795
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 808
    return-void
.end method

.method public blacklist getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 724
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    .line 728
    invoke-virtual {p1, v0, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 736
    return-void
.end method

.method public whitelist getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "[B>;)V"
        }
    .end annotation

    .line 429
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda20;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda21;-><init>(Ljava/util/function/Consumer;)V

    .line 438
    invoke-virtual {p1, v0, p2}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 446
    return-void
.end method

.method public whitelist getUnusedAppCount(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 5

    .line 851
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda32;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda33;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda33;-><init>(Ljava/util/function/IntConsumer;)V

    .line 858
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 871
    return-void
.end method

.method public blacklist grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda34;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda35;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda35;-><init>(Ljava/util/function/Consumer;)V

    .line 695
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 703
    return-void
.end method

.method public blacklist notifyOneTimePermissionSessionTimeout(Ljava/lang/String;I)V
    .registers 5

    .line 773
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 775
    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 595
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda27;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda27;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 599
    return-void
.end method

.method public whitelist revokeRuntimePermissions(Ljava/util/Map;ZILjava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;ZI",
            "Ljava/util/concurrent/Executor;",
            "Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;",
            ")V"
        }
    .end annotation

    .line 328
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 332
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string/jumbo v2, "permissions"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 334
    goto :goto_11

    .line 337
    :cond_33
    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda14;-><init>(Landroid/permission/PermissionControllerManager;Ljava/util/Map;ZI)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;

    invoke-direct {p2, p5}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;-><init>(Landroid/permission/PermissionControllerManager$OnRevokeRuntimePermissionsCallback;)V

    .line 352
    invoke-virtual {p1, p2, p4}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 365
    return-void
.end method

.method public blacklist revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 932
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda22;-><init>(Landroid/permission/PermissionControllerManager;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p2, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda23;-><init>(Landroid/permission/PermissionControllerManager;Ljava/util/List;Ljava/lang/String;)V

    .line 937
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 944
    return-void
.end method

.method public blacklist setRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/permission/AdminPermissionControlParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 387
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 388
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v0, "Admin control params must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p2

    new-instance v0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1, p4}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 398
    invoke-virtual {p2, v0, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    .line 413
    return-void
.end method

.method public whitelist stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V
    .registers 5

    .line 466
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerManager;->enforceSomePermissionsGrantedToSelf([Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p2, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda12;-><init>(Landroid/os/UserHandle;[B)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    new-instance p2, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda13;-><init>()V

    .line 476
    invoke-virtual {p1, p2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 481
    return-void
.end method

.method public blacklist updateUserSensitive()V
    .registers 2

    .line 743
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/permission/PermissionControllerManager;->updateUserSensitiveForApp(I)V

    .line 744
    return-void
.end method

.method public blacklist updateUserSensitiveForApp(I)V
    .registers 4

    .line 751
    iget-object v0, p0, Landroid/permission/PermissionControllerManager;->mRemoteService:Lcom/android/internal/infra/ServiceConnector;

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/android/internal/infra/ServiceConnector;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 755
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 760
    return-void
.end method
