.class Landroid/os/health/SystemHealthManager$2;
.super Landroid/os/ResultReceiver;
.source "SystemHealthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/health/SystemHealthManager;->getPowerMonitorReadings(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$onResult:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$powerMonitorsArray:[Landroid/os/PowerMonitor;


# direct methods
.method constructor blacklist <init>(Landroid/os/health/SystemHealthManager;Landroid/os/Handler;[Landroid/os/PowerMonitor;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 564
    iput-object p3, p0, Landroid/os/health/SystemHealthManager$2;->val$powerMonitorsArray:[Landroid/os/PowerMonitor;

    iput-object p4, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Landroid/os/PowerMonitorReadings;)V
    .registers 2

    .line 573
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V
    .registers 2

    .line 586
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    .line 567
    if-nez p1, :cond_33

    .line 568
    new-instance p1, Landroid/os/PowerMonitorReadings;

    iget-object v0, p0, Landroid/os/health/SystemHealthManager$2;->val$powerMonitorsArray:[Landroid/os/PowerMonitor;

    .line 569
    const-string v1, "energy"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 570
    const-string/jumbo v2, "timestamps"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v2

    .line 571
    const-string v3, "granularity"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/os/PowerMonitorReadings;-><init>([Landroid/os/PowerMonitor;[J[JI)V

    .line 572
    iget-object p2, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_2d

    .line 573
    iget-object p2, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/os/health/SystemHealthManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Landroid/os/health/SystemHealthManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/PowerMonitorReadings;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_32

    .line 575
    :cond_2d
    iget-object p2, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    invoke-interface {p2, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 577
    :goto_32
    goto :goto_6d

    .line 579
    :cond_33
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3e

    .line 580
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported power monitor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_57

    .line 582
    :cond_3e
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized result code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    .line 585
    :goto_57
    iget-object p2, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_68

    .line 586
    iget-object p2, p0, Landroid/os/health/SystemHealthManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/os/health/SystemHealthManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Landroid/os/health/SystemHealthManager$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/RuntimeException;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6d

    .line 588
    :cond_68
    iget-object p2, p0, Landroid/os/health/SystemHealthManager$2;->val$onResult:Landroid/os/OutcomeReceiver;

    invoke-interface {p2, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 591
    :goto_6d
    return-void
.end method
