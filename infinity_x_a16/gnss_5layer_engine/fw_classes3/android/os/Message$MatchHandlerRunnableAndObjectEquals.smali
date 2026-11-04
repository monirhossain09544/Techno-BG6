.class final Landroid/os/Message$MatchHandlerRunnableAndObjectEquals;
.super Landroid/os/Message$MessageCompare;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MatchHandlerRunnableAndObjectEquals"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 856
    invoke-direct {p0}, Landroid/os/Message$MessageCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 8

    .line 860
    iget-object p3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, p2, :cond_14

    iget-object p2, p1, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne p2, p5, :cond_14

    if-eqz p4, :cond_12

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 861
    :cond_12
    const/4 p1, 0x1

    return p1

    .line 863
    :cond_14
    const/4 p1, 0x0

    return p1
.end method
