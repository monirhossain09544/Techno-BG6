.class Landroid/os/PowerManager$3;
.super Landroid/os/IScreenTimeoutPolicyListener$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager;->addScreenTimeoutPolicyListener(ILjava/util/concurrent/Executor;Landroid/os/PowerManager$ScreenTimeoutPolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/os/PowerManager$ScreenTimeoutPolicyListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$ScreenTimeoutPolicyListener;)V
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

    .line 1968
    iput-object p2, p0, Landroid/os/PowerManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$3;->val$listener:Landroid/os/PowerManager$ScreenTimeoutPolicyListener;

    invoke-direct {p0}, Landroid/os/IScreenTimeoutPolicyListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onScreenTimeoutPolicyChanged$0(Landroid/os/PowerManager$ScreenTimeoutPolicyListener;I)V
    .registers 2

    .line 1973
    invoke-interface {p0, p1}, Landroid/os/PowerManager$ScreenTimeoutPolicyListener;->onScreenTimeoutPolicyChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist onScreenTimeoutPolicyChanged(I)V
    .registers 7

    .line 1970
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1972
    :try_start_4
    iget-object v2, p0, Landroid/os/PowerManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/os/PowerManager$3;->val$listener:Landroid/os/PowerManager$ScreenTimeoutPolicyListener;

    new-instance v4, Landroid/os/PowerManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/os/PowerManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$ScreenTimeoutPolicyListener;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 1975
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    nop

    .line 1977
    return-void

    .line 1975
    :catchall_15
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    throw p1
.end method
