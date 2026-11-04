.class Landroid/os/PowerManager$4;
.super Landroid/os/IThermalStatusListener$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager;->addThermalStatusListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
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

    .line 3200
    iput-object p2, p0, Landroid/os/PowerManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$4;->val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    invoke-direct {p0}, Landroid/os/IThermalStatusListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onStatusChange$0(Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V
    .registers 2

    .line 3205
    invoke-interface {p0, p1}, Landroid/os/PowerManager$OnThermalStatusChangedListener;->onThermalStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist onStatusChange(I)V
    .registers 7

    .line 3203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3205
    :try_start_4
    iget-object v2, p0, Landroid/os/PowerManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/os/PowerManager$4;->val$listener:Landroid/os/PowerManager$OnThermalStatusChangedListener;

    new-instance v4, Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/os/PowerManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 3207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3208
    nop

    .line 3209
    return-void

    .line 3207
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3208
    throw p1
.end method
