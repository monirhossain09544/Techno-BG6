.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
.super Landroid/os/Handler;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_ON_FINISH:I = 0x4

.field public static final greylist-max-o MSG_ON_KILL:I = 0x5

.field public static final greylist-max-o MSG_ON_LAYOUT:I = 0x2

.field public static final greylist-max-o MSG_ON_START:I = 0x1

.field public static final greylist-max-o MSG_ON_WRITE:I = 0x3


# instance fields
.field final synthetic blacklist this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
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

    .line 1036
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 1037
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1038
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1042
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_8a

    .line 1111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :pswitch_20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {p1}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 1105
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1106
    :try_start_2e
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$mdestroyLocked(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    .line 1107
    monitor-exit v1

    .line 1108
    goto :goto_89

    .line 1107
    :catchall_35
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_35

    throw p1

    .line 1077
    :pswitch_39
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1078
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintDocumentAdapter;

    .line 1079
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, [Landroid/print/PageRange;

    .line 1080
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 1081
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/os/CancellationSignal;

    .line 1082
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 1083
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1093
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 1094
    goto :goto_89

    .line 1052
    :pswitch_58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1053
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/print/PrintDocumentAdapter;

    .line 1054
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/print/PrintAttributes;

    .line 1055
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/print/PrintAttributes;

    .line 1056
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/CancellationSignal;

    .line 1057
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 1058
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 1059
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1072
    invoke-virtual/range {v1 .. v6}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    .line 1074
    goto :goto_89

    .line 1048
    :pswitch_81
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/print/PrintDocumentAdapter;

    invoke-virtual {p1}, Landroid/print/PrintDocumentAdapter;->onStart()V

    .line 1049
    nop

    .line 1115
    :goto_89
    return-void

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_81
        :pswitch_58
        :pswitch_39
        :pswitch_20
    .end packed-switch
.end method
