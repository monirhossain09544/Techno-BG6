.class Lcom/android/internal/statusbar/NetworkTraffic$5;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"

# interfaces
.implements Lcom/android/internal/statusbar/CustomStatusBarItem$VisibilityReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/NetworkTraffic;
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

    .line 355
    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$5;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onVisibilityChanged(Z)V
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$5;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmNetworkTrafficIsVisible(Lcom/android/internal/statusbar/NetworkTraffic;)Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 358
    iget-object v0, p0, Lcom/android/internal/statusbar/NetworkTraffic$5;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {v0, p1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmNetworkTrafficIsVisible(Lcom/android/internal/statusbar/NetworkTraffic;Z)V

    .line 359
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$5;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$mupdateViewState(Lcom/android/internal/statusbar/NetworkTraffic;)V

    .line 361
    :cond_12
    return-void
.end method
