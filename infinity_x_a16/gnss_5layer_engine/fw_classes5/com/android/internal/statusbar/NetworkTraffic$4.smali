.class Lcom/android/internal/statusbar/NetworkTraffic$4;
.super Ljava/lang/Object;
.source "NetworkTraffic.java"

# interfaces
.implements Lcom/android/internal/statusbar/CustomStatusBarItem$DarkReceiver;


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

    .line 346
    iput-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$4;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDarkChanged(Ljava/util/ArrayList;FI)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;FI)V"
        }
    .end annotation

    .line 348
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$4;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p1, p3}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fputmIconTint(Lcom/android/internal/statusbar/NetworkTraffic;I)V

    .line 349
    iget-object p1, p0, Lcom/android/internal/statusbar/NetworkTraffic$4;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    iget-object p2, p0, Lcom/android/internal/statusbar/NetworkTraffic$4;->this$0:Lcom/android/internal/statusbar/NetworkTraffic;

    invoke-static {p2}, Lcom/android/internal/statusbar/NetworkTraffic;->-$$Nest$fgetmIconTint(Lcom/android/internal/statusbar/NetworkTraffic;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/statusbar/NetworkTraffic;->setTextColor(I)V

    .line 350
    return-void
.end method

.method public blacklist setFillColors(II)V
    .registers 3

    .line 351
    return-void
.end method
