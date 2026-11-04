.class Lcom/android/internal/statusbar/NetworkTraffic$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/statusbar/NetworkTraffic;->manageNetworkCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/statusbar/NetworkTraffic;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/statusbar/NetworkTraffic;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$2;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5

    .line 304
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 305
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 306
    new-instance v1, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/statusbar/NetworkTraffic$LinkPropertiesHolder;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$2;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmTrafficHandler(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 308
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 4

    .line 312
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 313
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 314
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$2;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmTrafficHandler(Lcom/android/internal/statusbar/NetworkTraffic;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method
