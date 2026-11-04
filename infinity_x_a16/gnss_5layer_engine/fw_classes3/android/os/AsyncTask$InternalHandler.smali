.class Landroid/os/AsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Looper;)V
    .registers 2

    .line 780
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 781
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 786
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncTask$AsyncTaskResult;

    .line 787
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_1e

    goto :goto_1d

    .line 793
    :pswitch_a
    iget-object p1, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mTask:Landroid/os/AsyncTask;

    iget-object v0, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_1d

    .line 790
    :pswitch_12
    iget-object p1, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mTask:Landroid/os/AsyncTask;

    iget-object v0, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Landroid/os/AsyncTask;->-$$Nest$mfinish(Landroid/os/AsyncTask;Ljava/lang/Object;)V

    .line 791
    nop

    .line 796
    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method
