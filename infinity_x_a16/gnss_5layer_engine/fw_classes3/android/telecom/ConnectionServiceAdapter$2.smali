.class Landroid/telecom/ConnectionServiceAdapter$2;
.super Landroid/os/ResultReceiver;
.source "ConnectionServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionServiceAdapter;->queryLocation(Ljava/lang/String;JLjava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 817
    iput-object p3, p0, Landroid/telecom/ConnectionServiceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telecom/ConnectionServiceAdapter$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;Landroid/os/Bundle;)V
    .registers 4

    .line 823
    const-string v0, "android.telecom.extra.KEY_QUERY_LOCATION"

    const-class v1, Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;Landroid/os/Bundle;)V
    .registers 4

    .line 826
    const-string v0, "QueryLocationErrorKey"

    const-class v1, Landroid/telecom/QueryLocationException;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/QueryLocationException;

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 820
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 822
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 823
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telecom/ConnectionServiceAdapter$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/Bundle;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    .line 826
    :cond_13
    iget-object p1, p0, Landroid/telecom/ConnectionServiceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapter$2;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v1, Landroid/telecom/ConnectionServiceAdapter$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p2}, Landroid/telecom/ConnectionServiceAdapter$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/Bundle;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 830
    :goto_1f
    return-void
.end method
