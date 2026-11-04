.class Lcom/android/internal/util/ScreenshotHelper$3;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ScreenshotHelper;->takeScreenshotInternal(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/ScreenshotHelper;

.field final synthetic blacklist val$completionConsumer:Ljava/util/function/Consumer;

.field final synthetic blacklist val$handler:Landroid/os/Handler;

.field final synthetic blacklist val$mScreenshotTimeout:Ljava/lang/Runnable;

.field final synthetic blacklist val$msg:Landroid/os/Message;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Message;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 175
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    iput-object p2, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 178
    iget-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {p1}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 179
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eq v0, p0, :cond_11

    .line 180
    monitor-exit p1

    return-void

    .line 182
    :cond_11
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0, p2}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fputmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/IBinder;)V

    .line 183
    new-instance p2, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_4c

    .line 186
    :try_start_21
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$msg:Landroid/os/Message;

    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_4c

    .line 192
    goto :goto_4a

    .line 187
    :catch_27
    move-exception p2

    .line 188
    :try_start_28
    const-string v0, "ScreenshotHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t take screenshot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p2, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    if-eqz p2, :cond_4a

    .line 190
    iget-object p2, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$completionConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 193
    :cond_4a
    :goto_4a
    monitor-exit p1

    .line 194
    return-void

    .line 193
    :catchall_4c
    move-exception p2

    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_28 .. :try_end_4e} :catchall_4c

    throw p2
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 198
    iget-object p1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {p1}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 199
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 200
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$mresetConnection(Lcom/android/internal/util/ScreenshotHelper;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 203
    const-string v0, "ScreenshotHelper"

    const-string v1, "Screenshot service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper$3;->val$mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$3;->this$0:Lcom/android/internal/util/ScreenshotHelper;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelper;->-$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/ScreenshotHelper;)V

    .line 208
    :cond_31
    monitor-exit p1

    .line 209
    return-void

    .line 208
    :catchall_33
    move-exception v0

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v0
.end method
