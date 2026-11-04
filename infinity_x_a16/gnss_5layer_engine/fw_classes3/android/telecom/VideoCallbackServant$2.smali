.class Landroid/telecom/VideoCallbackServant$2;
.super Lcom/android/internal/telecom/IVideoCallback$Stub;
.source "VideoCallbackServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/VideoCallbackServant;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 112
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist changeCallDataUsage(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 146
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 147
    iget-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {p1}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method

.method public blacklist changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 156
    return-void
.end method

.method public blacklist changePeerDimensions(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 138
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 139
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 140
    iget-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {p1}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 141
    return-void
.end method

.method public blacklist changeVideoQuality(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public blacklist handleCallSessionEvent(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 131
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 132
    iget-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {p1}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public blacklist receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public blacklist receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 122
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 123
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 124
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Landroid/telecom/VideoCallbackServant$2;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-static {p1}, Landroid/telecom/VideoCallbackServant;->-$$Nest$fgetmHandler(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 126
    return-void
.end method
