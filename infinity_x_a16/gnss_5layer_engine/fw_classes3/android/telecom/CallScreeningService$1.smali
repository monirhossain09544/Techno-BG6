.class Landroid/telecom/CallScreeningService$1;
.super Landroid/os/Handler;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/CallScreeningService;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/CallScreeningService;Landroid/os/Looper;)V
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

    .line 130
    iput-object p1, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6e

    goto :goto_6d

    .line 135
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 137
    :try_start_a
    iget-object v0, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telecom/ICallScreeningAdapter;

    invoke-static {v0, v1}, Landroid/telecom/CallScreeningService;->-$$Nest$fputmCallScreeningAdapter(Landroid/telecom/CallScreeningService;Lcom/android/internal/telecom/ICallScreeningAdapter;)V

    .line 138
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/ParcelableCall;

    .line 139
    invoke-static {v0}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v0

    .line 140
    iget-object v1, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    invoke-virtual {v1, v0}, Landroid/telecom/CallScreeningService;->onScreenCall(Landroid/telecom/Call$Details;)V

    .line 141
    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getCallDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_65

    .line 142
    iget-object v1, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    invoke-static {v1}, Landroid/telecom/CallScreeningService;->-$$Nest$fgetmCallScreeningAdapter(Landroid/telecom/CallScreeningService;)Lcom/android/internal/telecom/ICallScreeningAdapter;

    move-result-object v1

    .line 143
    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/telecom/CallScreeningService$1;->this$0:Landroid/telecom/CallScreeningService;

    .line 144
    invoke-virtual {v3}, Landroid/telecom/CallScreeningService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/telecom/ICallScreeningAdapter;->onScreeningResponse(Ljava/lang/String;Landroid/content/ComponentName;Landroid/telecom/CallScreeningService$ParcelableCallResponse;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_48} :catch_4b
    .catchall {:try_start_a .. :try_end_48} :catchall_49

    goto :goto_65

    .line 150
    :catchall_49
    move-exception v0

    goto :goto_69

    .line 147
    :catch_4b
    move-exception v0

    .line 148
    :try_start_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when screening call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_4c .. :try_end_65} :catchall_49

    .line 150
    :cond_65
    :goto_65
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 151
    goto :goto_6d

    .line 150
    :goto_69
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 151
    throw v0

    .line 154
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
