.class Landroid/telecom/CallStreamingService$1;
.super Landroid/os/Handler;
.source "CallStreamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallStreamingService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallStreamingService;Landroid/os/Looper;)V
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

    .line 72
    iput-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 75
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    .line 76
    const-string p1, "handleMessage: null adapter!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return-void

    .line 80
    :cond_16
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9a

    goto/16 :goto_98

    .line 101
    :pswitch_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 102
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 103
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telecom/StreamingCall;->requestStreamingState(I)V

    .line 104
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-virtual {v0, p1}, Landroid/telecom/CallStreamingService;->onCallStreamingStateChanged(I)V

    goto :goto_98

    .line 95
    :pswitch_3c
    const-string p1, "MSG_CALL_STREAMING_STOPPED"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmCall(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCall;)V

    .line 97
    iget-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p1, v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmStreamingCallAdapter(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCallAdapter;)V

    .line 98
    iget-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-virtual {p1}, Landroid/telecom/CallStreamingService;->onCallStreamingStopped()V

    .line 99
    goto :goto_98

    .line 89
    :pswitch_54
    const-string v0, "MSG_CALL_STREAMING_STARTED"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telecom/StreamingCall;

    invoke-static {v0, p1}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmCall(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCall;)V

    .line 91
    iget-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {p1}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object p1

    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmStreamingCallAdapter(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCallAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/StreamingCall;->setAdapter(Landroid/telecom/StreamingCallAdapter;)V

    .line 92
    iget-object p1, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    invoke-static {v0}, Landroid/telecom/CallStreamingService;->-$$Nest$fgetmCall(Landroid/telecom/CallStreamingService;)Landroid/telecom/StreamingCall;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/CallStreamingService;->onCallStreamingStarted(Landroid/telecom/StreamingCall;)V

    .line 93
    goto :goto_98

    .line 82
    :pswitch_7f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_98

    .line 83
    const-string v0, "MSG_SET_STREAMING_CALL_ADAPTER"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Landroid/telecom/CallStreamingService$1;->this$0:Landroid/telecom/CallStreamingService;

    new-instance v1, Landroid/telecom/StreamingCallAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telecom/IStreamingCallAdapter;

    invoke-direct {v1, p1}, Landroid/telecom/StreamingCallAdapter;-><init>(Lcom/android/internal/telecom/IStreamingCallAdapter;)V

    invoke-static {v0, v1}, Landroid/telecom/CallStreamingService;->-$$Nest$fputmStreamingCallAdapter(Landroid/telecom/CallStreamingService;Landroid/telecom/StreamingCallAdapter;)V

    .line 110
    :cond_98
    :goto_98
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_54
        :pswitch_3c
        :pswitch_1d
    .end packed-switch
.end method
