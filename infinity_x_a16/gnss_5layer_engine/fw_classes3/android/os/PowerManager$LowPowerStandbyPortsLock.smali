.class public final Landroid/os/PowerManager$LowPowerStandbyPortsLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LowPowerStandbyPortsLock"
.end annotation


# instance fields
.field private blacklist mHeld:Z

.field private final blacklist mPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/os/PowerManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)V"
        }
    .end annotation

    .line 4212
    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4213
    iput-object p2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mPorts:Ljava/util/List;

    .line 4214
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    .line 4215
    return-void
.end method


# virtual methods
.method public whitelist acquire()V
    .registers 5

    .line 4220
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4222
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mPorts:Ljava/util/List;

    .line 4223
    invoke-static {v3}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 4222
    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->acquireLowPowerStandbyPorts(Landroid/os/IBinder;Ljava/util/List;)V

    .line 4224
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_1a
    .catchall {:try_start_3 .. :try_end_15} :catchall_18

    .line 4227
    nop

    .line 4228
    :try_start_16
    monitor-exit v0

    .line 4229
    return-void

    .line 4228
    :catchall_18
    move-exception v1

    goto :goto_20

    .line 4225
    :catch_1a
    move-exception v1

    .line 4226
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4228
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_18

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 4

    .line 4251
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4252
    :try_start_3
    iget-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z

    if-eqz v1, :cond_11

    .line 4253
    const-string v1, "PowerManager"

    const-string v2, "LowPowerStandbyPorts finalized while still held"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->release()V

    .line 4256
    :cond_11
    monitor-exit v0

    .line 4257
    return-void

    .line 4256
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist release()V
    .registers 4

    .line 4239
    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 4241
    :try_start_3
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->releaseLowPowerStandbyPorts(Landroid/os/IBinder;)V

    .line 4242
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_14
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 4245
    nop

    .line 4246
    :try_start_10
    monitor-exit v0

    .line 4247
    return-void

    .line 4246
    :catchall_12
    move-exception v1

    goto :goto_1a

    .line 4243
    :catch_14
    move-exception v1

    .line 4244
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4246
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_12

    throw v1
.end method
