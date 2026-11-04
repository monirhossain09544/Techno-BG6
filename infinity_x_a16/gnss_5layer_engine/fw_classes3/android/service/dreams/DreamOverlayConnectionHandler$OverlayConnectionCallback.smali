.class final Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;
.super Ljava/lang/Object;
.source "DreamOverlayConnectionHandler.java"

# interfaces
.implements Lcom/android/internal/util/ObservableServiceConnection$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamOverlayConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayConnectionCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
        "Landroid/service/dreams/IDreamOverlay;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mClientCallback:Landroid/service/dreams/IDreamOverlayClientCallback;

.field final synthetic blacklist this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/service/dreams/DreamOverlayConnectionHandler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance p1, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback$1;

    invoke-direct {p1, p0}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback$1;-><init>(Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;)V

    iput-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->mClientCallback:Landroid/service/dreams/IDreamOverlayClientCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/DreamOverlayConnectionHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;-><init>(Landroid/service/dreams/DreamOverlayConnectionHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnected(Lcom/android/internal/util/ObservableServiceConnection;Landroid/service/dreams/IDreamOverlay;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;",
            "Landroid/service/dreams/IDreamOverlay;",
            ")V"
        }
    .end annotation

    .line 187
    :try_start_0
    iget-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->mClientCallback:Landroid/service/dreams/IDreamOverlayClientCallback;

    invoke-interface {p2, p1}, Landroid/service/dreams/IDreamOverlay;->getClient(Landroid/service/dreams/IDreamOverlayClientCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 190
    goto :goto_e

    .line 188
    :catch_6
    move-exception p1

    .line 189
    const-string p2, "DreamOverlayConnection"

    const-string v0, "could not get DreamOverlayClient"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :goto_e
    return-void
.end method

.method public bridge synthetic blacklist onConnected(Lcom/android/internal/util/ObservableServiceConnection;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 169
    check-cast p2, Landroid/service/dreams/IDreamOverlay;

    invoke-virtual {p0, p1, p2}, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->onConnected(Lcom/android/internal/util/ObservableServiceConnection;Landroid/service/dreams/IDreamOverlay;)V

    return-void
.end method

.method public blacklist onDisconnected(Lcom/android/internal/util/ObservableServiceConnection;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;I)V"
        }
    .end annotation

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dream overlay disconnected, reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DreamOverlayConnection"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$fputmClient(Landroid/service/dreams/DreamOverlayConnectionHandler;Landroid/service/dreams/IDreamOverlayClient;)V

    .line 200
    iget-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-static {p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamOverlayConnectionHandler;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-static {p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$fgetmOnDisconnected(Landroid/service/dreams/DreamOverlayConnectionHandler;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 202
    iget-object p1, p0, Landroid/service/dreams/DreamOverlayConnectionHandler$OverlayConnectionCallback;->this$0:Landroid/service/dreams/DreamOverlayConnectionHandler;

    invoke-static {p1}, Landroid/service/dreams/DreamOverlayConnectionHandler;->-$$Nest$fgetmOnDisconnected(Landroid/service/dreams/DreamOverlayConnectionHandler;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 204
    :cond_39
    return-void
.end method
