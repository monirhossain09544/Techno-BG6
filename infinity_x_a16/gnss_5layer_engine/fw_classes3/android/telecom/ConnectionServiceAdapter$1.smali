.class Landroid/telecom/ConnectionServiceAdapter$1;
.super Landroid/os/ResultReceiver;
.source "ConnectionServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionServiceAdapter;->requestCallEndpointChange(Ljava/lang/String;Landroid/telecom/CallEndpoint;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/ConnectionServiceAdapter;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 635
    iput-object p3, p0, Landroid/telecom/ConnectionServiceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telecom/ConnectionServiceAdapter$1;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;)V
    .registers 2

    .line 642
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Landroid/os/Bundle;)V
    .registers 4

    .line 644
    const-string v0, "ChangeErrorKey"

    const-class v1, Landroid/telecom/CallEndpointException;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/CallEndpointException;

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    .line 638
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 641
    if-nez p1, :cond_16

    .line 642
    :try_start_9
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Landroid/telecom/ConnectionServiceAdapter$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telecom/ConnectionServiceAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Landroid/telecom/ConnectionServiceAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_22

    .line 644
    :cond_16
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter$1;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telecom/ConnectionServiceAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, p2}, Landroid/telecom/ConnectionServiceAdapter$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/Bundle;)V

    invoke-interface {p1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_27

    .line 649
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    nop

    .line 651
    return-void

    .line 649
    :catchall_27
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    throw p1
.end method
