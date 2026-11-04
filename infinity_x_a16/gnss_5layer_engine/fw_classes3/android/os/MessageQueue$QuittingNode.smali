.class final Landroid/os/MessageQueue$QuittingNode;
.super Landroid/os/MessageQueue$StackNode;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QuittingNode"
.end annotation


# instance fields
.field blacklist mBottomOfStack:Landroid/os/MessageQueue$StateNode;

.field volatile blacklist mNext:Landroid/os/MessageQueue$StackNode;

.field final blacklist mRemoveAll:Z

.field final blacklist mTS:J


# direct methods
.method constructor blacklist <init>(Z)V
    .registers 4

    .line 2562
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/MessageQueue$StackNode;-><init>(I)V

    .line 2563
    if-eqz p1, :cond_10

    .line 2564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue$QuittingNode;->mTS:J

    .line 2565
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/os/MessageQueue$QuittingNode;->mRemoveAll:Z

    goto :goto_17

    .line 2567
    :cond_10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/MessageQueue$QuittingNode;->mTS:J

    .line 2568
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/os/MessageQueue$QuittingNode;->mRemoveAll:Z

    .line 2570
    :goto_17
    return-void
.end method
