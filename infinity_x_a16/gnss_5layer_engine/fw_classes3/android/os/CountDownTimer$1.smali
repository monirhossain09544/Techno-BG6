.class Landroid/os/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/CountDownTimer;


# direct methods
.method constructor blacklist <init>(Landroid/os/CountDownTimer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 134
    iget-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    monitor-enter p1

    .line 135
    :try_start_3
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v0}, Landroid/os/CountDownTimer;->-$$Nest$fgetmCancelled(Landroid/os/CountDownTimer;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 136
    monitor-exit p1

    return-void

    .line 139
    :cond_d
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v0}, Landroid/os/CountDownTimer;->-$$Nest$fgetmStopTimeInFuture(Landroid/os/CountDownTimer;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 141
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_24

    .line 142
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->onFinish()V

    goto :goto_60

    .line 144
    :cond_24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 145
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v6, v0, v1}, Landroid/os/CountDownTimer;->onTick(J)V

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 151
    iget-object v4, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v4}, Landroid/os/CountDownTimer;->-$$Nest$fgetmCountdownInterval(Landroid/os/CountDownTimer;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_44

    .line 153
    sub-long/2addr v0, v6

    .line 157
    cmp-long v4, v0, v2

    if-gez v4, :cond_42

    goto :goto_58

    :cond_42
    move-wide v2, v0

    goto :goto_58

    .line 159
    :cond_44
    iget-object v0, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v0}, Landroid/os/CountDownTimer;->-$$Nest$fgetmCountdownInterval(Landroid/os/CountDownTimer;)J

    move-result-wide v0

    sub-long/2addr v0, v6

    .line 163
    :goto_4b
    cmp-long v4, v0, v2

    if-gez v4, :cond_57

    iget-object v4, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-static {v4}, Landroid/os/CountDownTimer;->-$$Nest$fgetmCountdownInterval(Landroid/os/CountDownTimer;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_4b

    :cond_57
    move-wide v2, v0

    .line 166
    :goto_58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 168
    :goto_60
    monitor-exit p1

    .line 169
    return-void

    .line 168
    :catchall_62
    move-exception v0

    monitor-exit p1
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v0
.end method
