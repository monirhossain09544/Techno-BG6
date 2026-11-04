.class final Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;
.super Landroid/proximity/IProximityResultCallback$Stub;
.source "AuthenticationPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/authenticationpolicy/AuthenticationPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProximityResultCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mProximityResultCallback:Landroid/proximity/IProximityResultCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$eP6ICt-bePtAdbccC29sP3b6PMQ(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->lambda$onError$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$q-OT6DTe5WnmcQRsp7wUc5s1ZSE(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->lambda$onSuccess$1(I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Handler;Landroid/proximity/IProximityResultCallback;)V
    .registers 3

    .line 583
    invoke-direct {p0}, Landroid/proximity/IProximityResultCallback$Stub;-><init>()V

    .line 584
    iput-object p1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 585
    iput-object p2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->mProximityResultCallback:Landroid/proximity/IProximityResultCallback;

    .line 586
    return-void
.end method

.method private synthetic blacklist lambda$onError$0(I)V
    .registers 7

    .line 591
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 593
    :try_start_4
    iget-object v2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->mProximityResultCallback:Landroid/proximity/IProximityResultCallback;

    invoke-interface {v2, p1}, Landroid/proximity/IProximityResultCallback;->onError(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 597
    :goto_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 598
    goto :goto_29

    .line 597
    :catchall_d
    move-exception p1

    goto :goto_2a

    .line 594
    :catch_f
    move-exception p1

    .line 595
    :try_start_10
    const-string v2, "AuthenticationPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown when proximity callback invoked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_d

    goto :goto_9

    .line 599
    :goto_29
    return-void

    .line 597
    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 598
    throw p1
.end method

.method private synthetic blacklist lambda$onSuccess$1(I)V
    .registers 7

    .line 605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 607
    :try_start_4
    iget-object v2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->mProximityResultCallback:Landroid/proximity/IProximityResultCallback;

    invoke-interface {v2, p1}, Landroid/proximity/IProximityResultCallback;->onSuccess(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_f
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 611
    :goto_9
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    goto :goto_29

    .line 611
    :catchall_d
    move-exception p1

    goto :goto_2a

    .line 608
    :catch_f
    move-exception p1

    .line 609
    :try_start_10
    const-string v2, "AuthenticationPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception thrown when proximity callback invoked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_d

    goto :goto_9

    .line 613
    :goto_29
    return-void

    .line 611
    :goto_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    throw p1
.end method


# virtual methods
.method public blacklist onError(I)V
    .registers 4

    .line 590
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 4

    .line 604
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$ProximityResultCallbackWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    return-void
.end method
