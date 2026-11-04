.class final Landroid/os/Message$MatchHandlerAndObjectEquals;
.super Landroid/os/Message$MessageCompare;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MatchHandlerAndObjectEquals"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 887
    invoke-direct {p0}, Landroid/os/Message$MessageCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 8

    .line 891
    iget-object p3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, p2, :cond_10

    if-eqz p4, :cond_e

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 892
    :cond_e
    const/4 p1, 0x1

    return p1

    .line 894
    :cond_10
    const/4 p1, 0x0

    return p1
.end method
