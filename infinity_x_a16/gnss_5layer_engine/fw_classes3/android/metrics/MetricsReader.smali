.class public Landroid/metrics/MetricsReader;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/metrics/MetricsReader$LogReader;,
        Landroid/metrics/MetricsReader$Event;
    }
.end annotation


# instance fields
.field private greylist-max-o LOGTAGS:[I

.field private greylist-max-o mCheckpointTag:I

.field private greylist-max-o mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReader:Landroid/metrics/MetricsReader$LogReader;

.field private greylist-max-o mSeenQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 41
    const v0, 0x80004

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    .line 43
    new-instance v0, Landroid/metrics/MetricsReader$LogReader;

    invoke-direct {v0}, Landroid/metrics/MetricsReader$LogReader;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    return-void
.end method


# virtual methods
.method public whitelist checkpoint()V
    .registers 5

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 115
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget v1, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    invoke-virtual {v0, v1}, Landroid/metrics/MetricsReader$LogReader;->writeCheckpoint(I)V

    .line 117
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 118
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 119
    return-void
.end method

.method public whitelist hasNext()Z
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist next()Landroid/metrics/LogMaker;
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 144
    if-eqz v0, :cond_f

    .line 145
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 147
    :cond_f
    return-object v0
.end method

.method public whitelist read(J)V
    .registers 8

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    :try_start_5
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget-object v2, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/metrics/MetricsReader$LogReader;->readEvents([IJLjava/util/Collection;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_d

    .line 80
    goto :goto_11

    .line 78
    :catch_d
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    :goto_11
    iget-object p1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 82
    iget-object p1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/metrics/MetricsReader$Event;

    .line 84
    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getTimeMillis()J

    move-result-wide v0

    .line 85
    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 87
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_3a

    .line 88
    check-cast v2, [Ljava/lang/Object;

    goto :goto_41

    .line 91
    :cond_3a
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object v2, v3

    .line 94
    :goto_41
    new-instance v3, Landroid/metrics/LogMaker;

    invoke-direct {v3, v2}, Landroid/metrics/LogMaker;-><init>([Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v3, v0, v1}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 96
    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setUid(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 97
    invoke-virtual {p2}, Landroid/metrics/MetricsReader$Event;->getProcessId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setProcessId(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 98
    invoke-virtual {p2}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    const/16 v1, 0x398

    if-ne v0, v1, :cond_70

    .line 99
    invoke-virtual {p2}, Landroid/metrics/LogMaker;->getSubtype()I

    move-result p2

    iget v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    if-ne p2, v0, :cond_75

    .line 100
    iget-object p2, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    goto :goto_75

    .line 103
    :cond_70
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 105
    :cond_75
    :goto_75
    goto :goto_1f

    .line 106
    :cond_76
    return-void
.end method

.method public whitelist reset()V
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 131
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 132
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iput-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 133
    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 134
    return-void
.end method

.method public greylist-max-o setLogReader(Landroid/metrics/MetricsReader$LogReader;)V
    .registers 2

    .line 53
    iput-object p1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 54
    return-void
.end method
