.class final Landroid/os/Message$MatchHandlerWhatAndObjectEquals;
.super Landroid/os/Message$MessageCompare;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MatchHandlerWhatAndObjectEquals"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 811
    invoke-direct {p0}, Landroid/os/Message$MessageCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 8

    .line 815
    iget-object p5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p5, p2, :cond_14

    iget p2, p1, Landroid/os/Message;->what:I

    if-ne p2, p3, :cond_14

    if-eqz p4, :cond_12

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 816
    :cond_12
    const/4 p1, 0x1

    return p1

    .line 818
    :cond_14
    const/4 p1, 0x0

    return p1
.end method
