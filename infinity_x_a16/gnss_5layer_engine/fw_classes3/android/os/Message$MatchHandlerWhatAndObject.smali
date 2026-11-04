.class public final Landroid/os/Message$MatchHandlerWhatAndObject;
.super Landroid/os/Message$MessageCompare;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchHandlerWhatAndObject"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 794
    invoke-direct {p0}, Landroid/os/Message$MessageCompare;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 8

    .line 798
    iget-object p5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne p5, p2, :cond_10

    iget p2, p1, Landroid/os/Message;->what:I

    if-ne p2, p3, :cond_10

    if-eqz p4, :cond_e

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne p1, p4, :cond_10

    .line 799
    :cond_e
    const/4 p1, 0x1

    return p1

    .line 801
    :cond_10
    const/4 p1, 0x0

    return p1
.end method
