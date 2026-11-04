.class final Landroid/os/MessageQueue$FindLastMessage;
.super Landroid/os/Message$MessageCompare;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FindLastMessage"
.end annotation


# instance fields
.field blacklist lastMsg:Landroid/os/Message;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1116
    invoke-direct {p0}, Landroid/os/Message$MessageCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 8

    .line 1121
    iget-object p2, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz p2, :cond_14

    iget-object p2, p0, Landroid/os/MessageQueue$FindLastMessage;->lastMsg:Landroid/os/Message;

    if-eqz p2, :cond_12

    iget-object p2, p0, Landroid/os/MessageQueue$FindLastMessage;->lastMsg:Landroid/os/Message;

    iget-wide p2, p2, Landroid/os/Message;->when:J

    iget-wide p4, p1, Landroid/os/Message;->when:J

    cmp-long p2, p2, p4

    if-gtz p2, :cond_14

    .line 1122
    :cond_12
    iput-object p1, p0, Landroid/os/MessageQueue$FindLastMessage;->lastMsg:Landroid/os/Message;

    .line 1124
    :cond_14
    const/4 p1, 0x0

    return p1
.end method
