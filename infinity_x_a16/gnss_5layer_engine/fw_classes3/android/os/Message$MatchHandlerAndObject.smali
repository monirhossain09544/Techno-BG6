.class final Landroid/os/Message$MatchHandlerAndObject;
.super Landroid/os/Message$MessageCompare;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MatchHandlerAndObject"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 872
    invoke-direct {p0}, Landroid/os/Message$MessageCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 8

    .line 876
    iget-object p3, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p3, p2, :cond_c

    if-eqz p4, :cond_a

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne p1, p4, :cond_c

    .line 877
    :cond_a
    const/4 p1, 0x1

    return p1

    .line 879
    :cond_c
    const/4 p1, 0x0

    return p1
.end method
