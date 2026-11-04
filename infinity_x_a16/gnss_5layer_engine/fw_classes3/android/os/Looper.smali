.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$Observer;,
        Landroid/os/Looper$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Looper"

.field private static greylist sMainLooper:Landroid/os/Looper;

.field private static blacklist sObserver:Landroid/os/Looper$Observer;

.field static final greylist sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInLoop:Z

.field private greylist mLogging:Landroid/util/Printer;

.field final greylist mQueue:Landroid/os/MessageQueue;

.field private blacklist mSlowDeliveryDetected:Z

.field private greylist-max-o mSlowDeliveryThresholdMs:J

.field private greylist-max-o mSlowDispatchThresholdMs:J

.field final greylist-max-o mThread:Ljava/lang/Thread;

.field private greylist-max-o mTraceTag:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 3

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 473
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 474
    return-void
.end method

.method public static blacklist clearMainLooperForTest()V
    .registers 2

    .line 176
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 177
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static blacklist dispatchMessage(Landroid/os/Message;)V
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 334
    return-void
.end method

.method public static whitelist getMainLooper()Landroid/os/Looper;
    .registers 2

    .line 152
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 153
    :try_start_3
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    .line 154
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static blacklist getThreadGroup()I
    .registers 1

    .line 403
    nop

    .line 405
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_10

    .line 406
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v0

    goto :goto_11

    .line 405
    :cond_10
    const/4 v0, -0x1

    .line 408
    :goto_11
    return v0
.end method

.method private static blacklist getThresholdOverride()I
    .registers 4

    .line 377
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_14

    .line 378
    const-string v0, "log.looper.any.main.slow"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 379
    if-ltz v0, :cond_14

    .line 380
    return v0

    .line 386
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log.looper."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 387
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".any.slow"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 388
    if-ltz v0, :cond_38

    .line 389
    return v0

    .line 392
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 393
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 394
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".slow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist getThresholdOverride$ravenwood()I
    .registers 1

    .line 399
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist loop()V
    .registers 5

    .line 344
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_29

    .line 348
    iget-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    if-eqz v1, :cond_11

    .line 349
    const-string v1, "Looper"

    const-string v2, "Loop again would have the queued messages be executed before this one completed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    .line 357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 362
    invoke-static {}, Landroid/os/Looper;->getThresholdOverride()I

    move-result v3

    .line 364
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    .line 367
    :cond_22
    invoke-static {v0, v1, v2, v3}, Landroid/os/Looper;->loopOnce(Landroid/os/Looper;JI)Z

    move-result v4

    if-nez v4, :cond_22

    .line 368
    return-void

    .line 346
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist loopOnce(Landroid/os/Looper;JI)Z
    .registers 28

    .line 197
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v2}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v10

    .line 198
    const/4 v2, 0x0

    if-nez v10, :cond_e

    .line 200
    return v2

    .line 203
    :cond_e
    invoke-static {}, Landroid/os/PerfettoTrace;->isMQCategoryEnabled()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 204
    sget-boolean v3, Landroid/os/PerfettoTrace;->IS_USE_SDK_TRACING_API_V3:Z

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x7d4

    const-string v8, "message_queue_receive"

    if-eqz v3, :cond_44

    .line 205
    sget-object v3, Landroid/os/PerfettoTrace;->MQ_CATEGORY_V3:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    invoke-static {v3, v8}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->begin(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;Ljava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->beginProto()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v3

    .line 208
    invoke-virtual {v3, v6, v7}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->beginNested(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v3

    iget-object v6, v10, Landroid/os/Message;->sendingThreadName:Ljava/lang/String;

    .line 209
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->addField(JLjava/lang/String;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->endNested()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->endProto()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v3

    iget-wide v4, v10, Landroid/os/Message;->eventId:J

    .line 212
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->setTerminatingFlow(J)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->emit()V

    goto :goto_69

    .line 215
    :cond_44
    sget-object v3, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    invoke-static {v3, v8}, Landroid/os/PerfettoTrace;->begin(Landroid/os/PerfettoTrace$Category;Ljava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 217
    invoke-virtual {v3, v6, v7}, Landroid/os/PerfettoTrackEventExtra$Builder;->beginNested(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    iget-object v6, v10, Landroid/os/Message;->sendingThreadName:Ljava/lang/String;

    .line 218
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PerfettoTrackEventExtra$Builder;->addField(JLjava/lang/String;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->endNested()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->endProto()Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    iget-wide v4, v10, Landroid/os/Message;->eventId:J

    .line 221
    invoke-virtual {v3, v4, v5}, Landroid/os/PerfettoTrackEventExtra$Builder;->setTerminatingFlow(J)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 227
    :cond_69
    :goto_69
    iget-object v11, v0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 228
    const-string v12, " "

    if-eqz v11, :cond_9d

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Dispatching to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 233
    :cond_9d
    sget-object v3, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    .line 235
    iget-wide v4, v0, Landroid/os/Looper;->mTraceTag:J

    .line 236
    iget-wide v6, v0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 237
    iget-wide v8, v0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 239
    if-ltz v1, :cond_a9

    const/4 v14, 0x1

    goto :goto_aa

    :cond_a9
    move v14, v2

    .line 240
    :goto_aa
    if-eqz v14, :cond_b0

    .line 241
    int-to-long v6, v1

    .line 242
    move-wide v8, v6

    move-wide v15, v8

    goto :goto_b1

    .line 240
    :cond_b0
    move-wide v15, v6

    .line 244
    :goto_b1
    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-gtz v1, :cond_bd

    if-eqz v14, :cond_ba

    goto :goto_bd

    :cond_ba
    move-wide/from16 v17, v6

    goto :goto_c7

    :cond_bd
    :goto_bd
    move-wide/from16 v17, v6

    iget-wide v6, v10, Landroid/os/Message;->when:J

    cmp-long v1, v6, v17

    if-lez v1, :cond_c7

    const/4 v1, 0x1

    goto :goto_c8

    :cond_c7
    :goto_c7
    move v1, v2

    .line 246
    :goto_c8
    cmp-long v6, v15, v17

    if-gtz v6, :cond_d1

    if-eqz v14, :cond_cf

    goto :goto_d1

    :cond_cf
    move v14, v2

    goto :goto_d2

    :cond_d1
    :goto_d1
    const/4 v14, 0x1

    .line 248
    :goto_d2
    if-nez v1, :cond_d9

    if-eqz v14, :cond_d7

    goto :goto_d9

    :cond_d7
    move v6, v2

    goto :goto_da

    :cond_d9
    :goto_d9
    const/4 v6, 0x1

    .line 249
    :goto_da
    nop

    .line 251
    cmp-long v7, v4, v17

    if-eqz v7, :cond_ee

    invoke-static {v4, v5}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v19

    if-eqz v19, :cond_ee

    .line 252
    iget-object v13, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v13, v10}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v5, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 255
    :cond_ee
    if-eqz v6, :cond_f5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    goto :goto_f7

    :cond_f5
    move-wide/from16 v20, v17

    .line 257
    :goto_f7
    nop

    .line 258
    if-eqz v3, :cond_ff

    .line 259
    invoke-interface {v3}, Landroid/os/Looper$Observer;->messageDispatchStarting()Ljava/lang/Object;

    move-result-object v6

    goto :goto_100

    .line 258
    :cond_ff
    const/4 v6, 0x0

    .line 261
    :goto_100
    iget v13, v10, Landroid/os/Message;->workSourceUid:I

    invoke-static {v13}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v22

    .line 263
    :try_start_106
    invoke-static {v10}, Landroid/os/Looper;->dispatchMessage(Landroid/os/Message;)V

    .line 264
    if-eqz v3, :cond_10e

    .line 265
    invoke-interface {v3, v6, v10}, Landroid/os/Looper$Observer;->messageDispatched(Ljava/lang/Object;Landroid/os/Message;)V

    .line 267
    :cond_10e
    if-eqz v14, :cond_114

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_114} :catch_209
    .catchall {:try_start_106 .. :try_end_114} :catchall_207

    .line 274
    :cond_114
    invoke-static/range {v22 .. v23}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 275
    if-eqz v7, :cond_11c

    .line 276
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 279
    :cond_11c
    const-string v13, "Looper"

    if-eqz v1, :cond_15a

    .line 280
    nop

    .line 282
    iget-boolean v1, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    if-eqz v1, :cond_130

    invoke-static {}, Landroid/os/Looper$NoImagePreloadHolder;->-$$Nest$sfgetsVerboseLogging()Z

    move-result v1

    if-eqz v1, :cond_12c

    goto :goto_130

    :cond_12c
    move v1, v2

    move-wide/from16 v5, v20

    goto :goto_13c

    .line 283
    :cond_130
    :goto_130
    iget-wide v5, v10, Landroid/os/Message;->when:J

    move-wide v3, v8

    const-string v9, "delivery"

    move-wide/from16 v7, v20

    invoke-static/range {v3 .. v10}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-result v1

    move-wide v5, v7

    .line 286
    :goto_13c
    iget-boolean v3, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    if-eqz v3, :cond_154

    .line 287
    if-nez v1, :cond_15c

    iget-wide v3, v10, Landroid/os/Message;->when:J

    sub-long v20, v5, v3

    const-wide/16 v3, 0xa

    cmp-long v1, v20, v3

    if-gtz v1, :cond_15c

    .line 288
    const-string v1, "Drained"

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput-boolean v2, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    goto :goto_15c

    .line 291
    :cond_154
    if-eqz v1, :cond_15c

    .line 294
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    goto :goto_15c

    .line 279
    :cond_15a
    move-wide/from16 v5, v20

    .line 297
    :cond_15c
    :goto_15c
    if-eqz v14, :cond_166

    .line 298
    const-string v9, "dispatch"

    move-wide v3, v15

    move-wide/from16 v7, v17

    invoke-static/range {v3 .. v10}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    .line 301
    :cond_166
    if-eqz v11, :cond_18a

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<<<<< Finished to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 307
    :cond_18a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 308
    cmp-long v2, p1, v0

    if-eqz v2, :cond_1e4

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread identity changed from 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while dispatching to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 312
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v13, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1e4
    invoke-static {}, Landroid/os/PerfettoTrace;->isMQCategoryEnabled()Z

    move-result v0

    if-eqz v0, :cond_201

    .line 316
    sget-boolean v0, Landroid/os/PerfettoTrace;->IS_USE_SDK_TRACING_API_V3:Z

    if-eqz v0, :cond_1f8

    .line 317
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY_V3:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;

    invoke-static {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace;->end(Lcom/android/internal/dev/perfetto/sdk/PerfettoTrace$Category;)Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;->emit()V

    goto :goto_201

    .line 321
    :cond_1f8
    sget-object v0, Landroid/os/PerfettoTrace;->MQ_CATEGORY:Landroid/os/PerfettoTrace$Category;

    invoke-static {v0}, Landroid/os/PerfettoTrace;->end(Landroid/os/PerfettoTrace$Category;)Landroid/os/PerfettoTrackEventExtra$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PerfettoTrackEventExtra$Builder;->emit()V

    .line 325
    :cond_201
    :goto_201
    invoke-virtual {v10}, Landroid/os/Message;->recycleUnchecked()V

    .line 327
    const/16 v19, 0x1

    return v19

    .line 274
    :catchall_207
    move-exception v0

    goto :goto_210

    .line 268
    :catch_209
    move-exception v0

    .line 269
    if-eqz v3, :cond_20f

    .line 270
    :try_start_20c
    invoke-interface {v3, v6, v10, v0}, Landroid/os/Looper$Observer;->dispatchingThrewException(Ljava/lang/Object;Landroid/os/Message;Ljava/lang/Exception;)V

    .line 272
    :cond_20f
    throw v0
    :try_end_210
    .catchall {:try_start_20c .. :try_end_210} :catchall_207

    .line 274
    :goto_210
    invoke-static/range {v22 .. v23}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 275
    if-eqz v7, :cond_218

    .line 276
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 278
    :cond_218
    throw v0
.end method

.method public static whitelist myLooper()Landroid/os/Looper;
    .registers 1

    .line 459
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static whitelist myQueue()Landroid/os/MessageQueue;
    .registers 1

    .line 468
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static whitelist prepare()V
    .registers 1

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 121
    return-void
.end method

.method private static greylist-max-o prepare(Z)V
    .registers 3

    .line 124
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 127
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 128
    return-void

    .line 125
    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Only one Looper may be created per thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist prepareMainLooper()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 140
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 141
    :try_start_7
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-nez v1, :cond_13

    .line 144
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 145
    monitor-exit v0

    .line 146
    return-void

    .line 142
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static blacklist setMainLooperForTest(Landroid/os/Looper;)V
    .registers 2

    .line 164
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 165
    :try_start_3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    sput-object p0, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static blacklist setObserver(Landroid/os/Looper$Observer;)V
    .registers 1

    .line 187
    sput-object p0, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    .line 188
    return-void
.end method

.method private static greylist-max-o showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z
    .registers 10

    .line 436
    sub-long/2addr p4, p2

    .line 437
    cmp-long p0, p4, p0

    const/4 p1, 0x0

    if-gez p0, :cond_7

    .line 438
    return p1

    .line 441
    :cond_7
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object p0

    .line 442
    invoke-static {}, Landroid/os/Looper;->getThreadGroup()I

    move-result p2

    invoke-static {p2}, Landroid/os/Looper;->threadGroupToString(I)Ljava/lang/String;

    move-result-object p2

    .line 443
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p3, v0, :cond_1f

    move p1, v1

    .line 446
    :cond_1f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Slow "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p6, " took "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "ms "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 447
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " app="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " main="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " group="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " h="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p7, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " c="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p7, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " m="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p7, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 446
    const-string p1, "Looper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return v1
.end method

.method private static blacklist threadGroupToString(I)Ljava/lang/String;
    .registers 1

    .line 412
    packed-switch p0, :pswitch_data_1e

    .line 430
    const-string p0, "UNKNOWN"

    return-object p0

    .line 428
    :pswitch_6
    const-string p0, "RESTRICTED"

    return-object p0

    .line 426
    :pswitch_9
    const-string p0, "RT_APP"

    return-object p0

    .line 424
    :pswitch_c
    const-string p0, "TOP_APP"

    return-object p0

    .line 422
    :pswitch_f
    const-string p0, "AUDIO_SYS"

    return-object p0

    .line 420
    :pswitch_12
    const-string p0, "AUDIO_APP"

    return-object p0

    .line 418
    :pswitch_15
    const-string p0, "SYSTEM"

    return-object p0

    .line 416
    :pswitch_18
    const-string p0, "FOREGROUND"

    return-object p0

    .line 414
    :pswitch_1b
    const-string p0, "BACKGROUND"

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 583
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 6

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 596
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 600
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 601
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 602
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 603
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v0, :cond_2e

    .line 604
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/MessageQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 606
    :cond_2e
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 607
    return-void
.end method

.method public whitelist getQueue()Landroid/os/MessageQueue;
    .registers 2

    .line 571
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public whitelist getThread()Ljava/lang/Thread;
    .registers 2

    .line 562
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public whitelist isCurrentThread()Z
    .registers 3

    .line 480
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist quit()V
    .registers 3

    .line 534
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 535
    return-void
.end method

.method public whitelist quitSafely()V
    .registers 3

    .line 553
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 554
    return-void
.end method

.method public whitelist setMessageLogging(Landroid/util/Printer;)V
    .registers 2

    .line 496
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 497
    return-void
.end method

.method public greylist-max-o setSlowLogThresholdMs(JJ)V
    .registers 5

    .line 510
    iput-wide p1, p0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 511
    iput-wide p3, p0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 512
    return-void
.end method

.method public greylist setTraceTag(J)V
    .registers 3

    .line 502
    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    .line 503
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 612
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    return-object v0
.end method
