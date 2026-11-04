.class Lcom/android/internal/statusbar/NetworkTraffic$3;
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

    .line 329
    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$3;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .registers 2

    .line 332
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$3;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$mupdateViewState(Lcom/android/internal/statusbar/NetworkTraffic;)V

    .line 333
    return-void
.end method

.method public whitelist onLost(Landroid/net/Network;)V
    .registers 2

    .line 337
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$3;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$mupdateViewState(Lcom/android/internal/statusbar/NetworkTraffic;)V

    .line 338
    return-void
.end method
