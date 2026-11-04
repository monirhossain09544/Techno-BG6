.class Landroid/pocket/PocketManager$PocketLockTimeout;
.super Ljava/lang/Object;
.source "PocketManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pocket/PocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PocketLockTimeout"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/pocket/PocketManager;


# direct methods
.method constructor blacklist <init>(Landroid/pocket/PocketManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Landroid/pocket/PocketManager$PocketLockTimeout;->this$0:Landroid/pocket/PocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 205
    iget-object v0, p0, Landroid/pocket/PocketManager$PocketLockTimeout;->this$0:Landroid/pocket/PocketManager;

    invoke-static {v0}, Landroid/pocket/PocketManager;->-$$Nest$fgetmTelecomManager(Landroid/pocket/PocketManager;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_19

    .line 206
    iget-object v0, p0, Landroid/pocket/PocketManager$PocketLockTimeout;->this$0:Landroid/pocket/PocketManager;

    invoke-static {v0}, Landroid/pocket/PocketManager;->-$$Nest$fgetmPowerManager(Landroid/pocket/PocketManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 207
    :cond_19
    iget-object v0, p0, Landroid/pocket/PocketManager$PocketLockTimeout;->this$0:Landroid/pocket/PocketManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/pocket/PocketManager;->-$$Nest$fputmPocketViewTimerActive(Landroid/pocket/PocketManager;Z)V

    .line 208
    return-void
.end method
