.class Landroid/telecom/Call$8;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Call;->fireCallDestroyed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telecom/Call;

.field final synthetic blacklist val$call:Landroid/telecom/Call;

.field final synthetic blacklist val$callback:Landroid/telecom/Call$Callback;

.field final synthetic blacklist val$record:Landroid/telecom/CallbackRecord;


# direct methods
.method constructor blacklist <init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2923
    iput-object p1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    iput-object p2, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iput-object p3, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    iput-object p4, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 2926
    nop

    .line 2927
    nop

    .line 2929
    :try_start_2
    iget-object v0, p0, Landroid/telecom/Call$8;->val$callback:Landroid/telecom/Call$Callback;

    iget-object v1, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Callback;->onCallDestroyed(Landroid/telecom/Call;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_9} :catch_b

    .line 2932
    const/4 v0, 0x0

    goto :goto_d

    .line 2930
    :catch_b
    move-exception v0

    .line 2931
    nop

    .line 2933
    :goto_d
    iget-object v1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    monitor-enter v1

    .line 2934
    :try_start_10
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v2}, Landroid/telecom/Call;->-$$Nest$fgetmCallbackRecords(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/telecom/Call$8;->val$record:Landroid/telecom/CallbackRecord;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2935
    iget-object v2, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v2}, Landroid/telecom/Call;->-$$Nest$fgetmCallbackRecords(Landroid/telecom/Call;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2936
    const/4 v2, 0x1

    goto :goto_2a

    .line 2935
    :cond_29
    const/4 v2, 0x0

    .line 2938
    :goto_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_3c

    .line 2939
    if-eqz v2, :cond_38

    .line 2940
    iget-object v1, p0, Landroid/telecom/Call$8;->this$0:Landroid/telecom/Call;

    invoke-static {v1}, Landroid/telecom/Call;->-$$Nest$fgetmPhone(Landroid/telecom/Call;)Landroid/telecom/Phone;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/Call$8;->val$call:Landroid/telecom/Call;

    invoke-virtual {v1, v2}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 2942
    :cond_38
    if-nez v0, :cond_3b

    .line 2945
    return-void

    .line 2943
    :cond_3b
    throw v0

    .line 2938
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method
