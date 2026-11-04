.class Lcom/android/internal/app/AbstractResolverComparator$1;
.super Landroid/os/Handler;
.source "AbstractResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_44

    .line 93
    :pswitch_9
    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object p1, p1, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {p1}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    .line 95
    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {p1}, Lcom/android/internal/app/AbstractResolverComparator;->-$$Nest$fgetmChooserActivityLogger(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 96
    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-static {p1}, Lcom/android/internal/app/AbstractResolverComparator;->-$$Nest$fgetmChooserActivityLogger(Lcom/android/internal/app/AbstractResolverComparator;)Lcom/android/internal/app/ChooserActivityLogger;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/app/ChooserActivityLogger;->logSharesheetAppShareRankingTimeout()V

    goto :goto_44

    .line 82
    :pswitch_28
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object v0, v0, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 83
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AbstractResolverComparator;->handleResultMessage(Landroid/os/Message;)V

    .line 84
    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    iget-object p1, p1, Lcom/android/internal/app/AbstractResolverComparator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$1;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-virtual {p1}, Lcom/android/internal/app/AbstractResolverComparator;->afterCompute()V

    .line 103
    :cond_44
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_28
        :pswitch_9
    .end packed-switch
.end method
