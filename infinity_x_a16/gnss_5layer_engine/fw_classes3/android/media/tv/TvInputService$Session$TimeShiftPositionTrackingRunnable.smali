.class final Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeShiftPositionTrackingRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService$Session;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2330
    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/TvInputService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;-><init>(Landroid/media/tv/TvInputService$Session;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 7

    .line 2333
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetStartPosition()J

    move-result-wide v0

    .line 2334
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmStartPositionMs(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmStartPositionMs(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_26

    .line 2336
    :cond_1c
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fputmStartPositionMs(Landroid/media/tv/TvInputService$Session;J)V

    .line 2337
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$mnotifyTimeShiftStartPositionChanged(Landroid/media/tv/TvInputService$Session;J)V

    .line 2339
    :cond_26
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->onTimeShiftGetCurrentPosition()J

    move-result-wide v0

    .line 2340
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmStartPositionMs(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_6a

    .line 2341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cannot be earlier than start position ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmStartPositionMs(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "). Reset to the start position."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvInputService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmStartPositionMs(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v0

    .line 2346
    :cond_6a
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmCurrentPositionMs(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7e

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmCurrentPositionMs(Landroid/media/tv/TvInputService$Session;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_88

    .line 2348
    :cond_7e
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fputmCurrentPositionMs(Landroid/media/tv/TvInputService$Session;J)V

    .line 2349
    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2, v0, v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$mnotifyTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputService$Session;J)V

    .line 2351
    :cond_88
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v0, v0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmTimeShiftPositionTrackingRunnable(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2352
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    iget-object v0, v0, Landroid/media/tv/TvInputService$Session;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;->this$0:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-$$Nest$fgetmTimeShiftPositionTrackingRunnable(Landroid/media/tv/TvInputService$Session;)Landroid/media/tv/TvInputService$Session$TimeShiftPositionTrackingRunnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2354
    return-void
.end method
