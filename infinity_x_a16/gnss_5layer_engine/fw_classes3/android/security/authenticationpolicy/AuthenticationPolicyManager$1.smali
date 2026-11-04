.class Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;
.super Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener$Stub;
.source "AuthenticationPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->registerSecureLockDeviceStatusListener(Ljava/util/concurrent/Executor;Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;


# direct methods
.method constructor blacklist <init>(Landroid/security/authenticationpolicy/AuthenticationPolicyManager;Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 307
    iput-object p1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->this$0:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    iput-object p2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$listener:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;

    iput-object p3, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSecureLockDeviceAvailableStatusChanged$1(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;I)V
    .registers 2

    .line 339
    invoke-interface {p0, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;->onSecureLockDeviceAvailableStatusChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onSecureLockDeviceEnabledStatusChanged$0(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;Z)V
    .registers 2

    .line 320
    invoke-interface {p0, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;->onSecureLockDeviceEnabledStatusChanged(Z)V

    return-void
.end method


# virtual methods
.method public blacklist onSecureLockDeviceAvailableStatusChanged(I)V
    .registers 7

    .line 329
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->this$0:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    invoke-static {v0}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->-$$Nest$fgetmSecureLockDeviceStatusListeners(Landroid/security/authenticationpolicy/AuthenticationPolicyManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$listener:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 330
    invoke-static {}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$listener:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no longer registered. Skipping onSecureLockDeviceAvailableStatusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthenticationPolicyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3e
    return-void

    .line 336
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    :try_start_43
    iget-object v2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$listener:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;

    new-instance v4, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_54

    .line 341
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :catchall_54
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    throw p1
.end method

.method public blacklist onSecureLockDeviceEnabledStatusChanged(Z)V
    .registers 7

    .line 310
    iget-object v0, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->this$0:Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    invoke-static {v0}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->-$$Nest$fgetmSecureLockDeviceStatusListeners(Landroid/security/authenticationpolicy/AuthenticationPolicyManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$listener:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 311
    invoke-static {}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$listener:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " no longer registered. Skipping onSecureLockDeviceEnabledStatusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AuthenticationPolicyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_3e
    return-void

    .line 317
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    :try_start_43
    iget-object v2, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1;->val$listener:Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;

    new-instance v4, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/security/authenticationpolicy/AuthenticationPolicyManager$SecureLockDeviceStatusListener;Z)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_54

    .line 322
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :catchall_54
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw p1
.end method
