.class Landroid/telecom/CallRedirectionService$1;
.super Landroid/os/Handler;
.source "CallRedirectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallRedirectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallRedirectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallRedirectionService;Landroid/os/Looper;)V
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

    .line 228
    iput-object p1, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_3c

    .line 243
    :pswitch_6
    iget-object p1, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    invoke-virtual {p1}, Landroid/telecom/CallRedirectionService;->onRedirectionTimeout()V

    goto :goto_3c

    .line 233
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 235
    :try_start_10
    iget-object v0, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    invoke-static {v0, v1}, Landroid/telecom/CallRedirectionService;->-$$Nest$fputmCallRedirectionAdapter(Landroid/telecom/CallRedirectionService;Lcom/android/internal/telecom/ICallRedirectionAdapter;)V

    .line 236
    iget-object v0, p0, Landroid/telecom/CallRedirectionService$1;->this$0:Landroid/telecom/CallRedirectionService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 237
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 236
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/telecom/CallRedirectionService;->onPlaceCall(Landroid/net/Uri;Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_37

    .line 239
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 240
    nop

    .line 241
    goto :goto_3c

    .line 239
    :catchall_37
    move-exception v0

    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 240
    throw v0

    .line 246
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
