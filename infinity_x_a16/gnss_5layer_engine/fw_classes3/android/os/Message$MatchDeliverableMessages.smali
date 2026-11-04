.class final Landroid/os/Message$MatchDeliverableMessages;
.super Landroid/os/Message$MessageCompare;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MatchDeliverableMessages"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 945
    invoke-direct {p0}, Landroid/os/Message$MessageCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 8

    .line 949
    iget-wide p1, p1, Landroid/os/Message;->when:J

    cmp-long p1, p1, p6

    if-gtz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
