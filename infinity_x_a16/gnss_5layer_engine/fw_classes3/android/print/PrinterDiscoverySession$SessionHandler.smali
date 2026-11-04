.class final Landroid/print/PrinterDiscoverySession$SessionHandler;
.super Landroid/os/Handler;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterDiscoverySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/print/PrinterDiscoverySession;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrinterDiscoverySession;Landroid/os/Looper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    .line 270
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 271
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 276
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1a

    .line 283
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 284
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    invoke-static {v0, p1}, Landroid/print/PrinterDiscoverySession;->-$$Nest$mhandlePrintersRemoved(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V

    goto :goto_1a

    .line 278
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 279
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    invoke-static {v0, p1}, Landroid/print/PrinterDiscoverySession;->-$$Nest$mhandlePrintersAdded(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V

    .line 280
    nop

    .line 287
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
