.class public Lcom/android/internal/midi/EventScheduler;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/EventScheduler$FastEventQueue;,
        Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    }
.end annotation


# static fields
.field public static final blacklist NANOS_PER_MILLI:J = 0xf4240L


# instance fields
.field private blacklist mClosed:Z

.field protected volatile blacklist mEventBuffer:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/midi/EventScheduler$FastEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMaxPoolSize:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .line 33
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 9

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/midi/EventScheduler;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 156
    monitor-enter v0

    .line 157
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .line 158
    if-nez v1, :cond_4f

    .line 159
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_31

    .line 160
    :cond_25
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 161
    :goto_31
    new-instance v3, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-direct {v3, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 162
    iget-object v4, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-gez p1, :cond_4e

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 168
    :cond_4e
    goto :goto_52

    .line 169
    :cond_4f
    invoke-virtual {v1, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 171
    :goto_52
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public blacklist addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-nez v0, :cond_c

    .line 140
    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-direct {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    goto :goto_1b

    .line 143
    :cond_c
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/midi/EventScheduler;->mMaxPoolSize:I

    if-ge v0, v1, :cond_1b

    .line 144
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 146
    :cond_1b
    :goto_1b
    return-void
.end method

.method public blacklist close()V
    .registers 3

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/midi/EventScheduler;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 257
    monitor-enter v0

    .line 258
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method protected blacklist flush()V
    .registers 2

    .line 248
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    .line 249
    return-void
.end method

.method protected blacklist getLock()Ljava/lang/Object;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 6

    .line 192
    nop

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/midi/EventScheduler;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 194
    monitor-enter v0

    .line 195
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 196
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 198
    cmp-long p1, v1, p1

    if-gtz p1, :cond_23

    .line 199
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object p1

    goto :goto_24

    .line 202
    :cond_23
    const/4 p1, 0x0

    :goto_24
    monitor-exit v0

    .line 204
    return-object p1

    .line 202
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public blacklist removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 3

    .line 126
    nop

    .line 127
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    .line 128
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    goto :goto_16

    .line 130
    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method protected blacklist removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .line 178
    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 179
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_1c
    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object p1

    .line 182
    return-object p1
.end method

.method public blacklist waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 216
    nop

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/midi/EventScheduler;->getLock()Ljava/lang/Object;

    move-result-object v0

    .line 218
    monitor-enter v0

    .line 219
    :goto_6
    :try_start_6
    iget-boolean v1, p0, Lcom/android/internal/midi/EventScheduler;->mClosed:Z

    if-nez v1, :cond_43

    .line 220
    nop

    .line 221
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    const-wide/32 v2, 0x7fffffff

    if-nez v1, :cond_3d

    .line 222
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 223
    iget-object v1, p0, Lcom/android/internal/midi/EventScheduler;->mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 225
    cmp-long v1, v6, v4

    if-gtz v1, :cond_2f

    .line 226
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/midi/EventScheduler;->removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v1

    .line 227
    goto :goto_44

    .line 230
    :cond_2f
    sub-long/2addr v6, v4

    .line 233
    const-wide/32 v4, 0xf4240

    div-long/2addr v6, v4

    const-wide/16 v4, 0x1

    add-long/2addr v6, v4

    .line 235
    cmp-long v1, v6, v2

    if-lez v1, :cond_3c

    .line 236
    goto :goto_3d

    .line 235
    :cond_3c
    move-wide v2, v6

    .line 240
    :cond_3d
    :goto_3d
    long-to-int v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 241
    goto :goto_6

    .line 219
    :cond_43
    const/4 v1, 0x0

    .line 242
    :goto_44
    monitor-exit v0

    .line 243
    return-object v1

    .line 242
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_46

    throw v1
.end method
