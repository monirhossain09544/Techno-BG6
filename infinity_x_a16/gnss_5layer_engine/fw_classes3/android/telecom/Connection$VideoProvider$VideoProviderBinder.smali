.class final Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
.super Lcom/android/internal/telecom/IVideoProvider$Stub;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1688
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o addVideoCallback(Landroid/os/IBinder;)V
    .registers 4

    .line 1690
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1691
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1692
    return-void
.end method

.method public greylist-max-o removeVideoCallback(Landroid/os/IBinder;)V
    .registers 4

    .line 1695
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1696
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1697
    return-void
.end method

.method public greylist-max-o requestCallDataUsage()V
    .registers 3

    .line 1753
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1754
    return-void
.end method

.method public greylist-max-o requestCameraCapabilities()V
    .registers 3

    .line 1749
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1750
    return-void
.end method

.method public greylist-max-o sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 4

    .line 1737
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1738
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1739
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1740
    iget-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {p1}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1741
    return-void
.end method

.method public greylist-max-o sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 4

    .line 1744
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1745
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1746
    return-void
.end method

.method public greylist-max-o setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1702
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1703
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1707
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1712
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1715
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1716
    iget-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {p1}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1717
    return-void
.end method

.method public greylist-max-o setDeviceOrientation(I)V
    .registers 5

    .line 1728
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1729
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1730
    return-void
.end method

.method public greylist-max-o setDisplaySurface(Landroid/view/Surface;)V
    .registers 4

    .line 1724
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1725
    return-void
.end method

.method public greylist-max-o setPauseImage(Landroid/net/Uri;)V
    .registers 4

    .line 1757
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1758
    return-void
.end method

.method public greylist-max-o setPreviewSurface(Landroid/view/Surface;)V
    .registers 4

    .line 1720
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1721
    return-void
.end method

.method public greylist-max-o setZoom(F)V
    .registers 4

    .line 1733
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1734
    return-void
.end method
