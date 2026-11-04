.class final Landroid/os/Message$MatchBarrierToken;
.super Landroid/os/Message$MessageCompare;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MatchBarrierToken"
.end annotation


# instance fields
.field final blacklist mBarrierToken:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 931
    invoke-direct {p0}, Landroid/os/Message$MessageCompare;-><init>()V

    .line 932
    iput p1, p0, Landroid/os/Message$MatchBarrierToken;->mBarrierToken:I

    .line 933
    return-void
.end method


# virtual methods
.method public blacklist compareMessage(Landroid/os/Message;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Runnable;J)Z
    .registers 8

    .line 938
    iget-object p2, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez p2, :cond_c

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget p2, p0, Landroid/os/Message$MatchBarrierToken;->mBarrierToken:I

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
