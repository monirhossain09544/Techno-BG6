.class final Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;
.super Lcom/android/internal/inputmethod/ImeTracing;
.source "ImeTracingPerfettoImpl.java"


# instance fields
.field private final blacklist mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

.field private final blacklist mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mTracingSessionsCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor blacklist <init>()V
    .registers 6

    .line 53
    invoke-direct {p0}, Lcom/android/internal/inputmethod/ImeTracing;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mTracingSessionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Landroid/tracing/inputmethod/InputMethodDataSource;

    iget-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mTracingSessionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    iget-object v2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mTracingSessionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-direct {v0, v3, v4}, Landroid/tracing/inputmethod/InputMethodDataSource;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    .line 54
    sget-object v0, Landroid/tracing/perfetto/InitArguments;->DEFAULTS:Landroid/tracing/perfetto/InitArguments;

    invoke-static {v0}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 55
    new-instance v0, Landroid/tracing/perfetto/DataSourceParams$Builder;

    invoke-direct {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;-><init>()V

    .line 57
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setBufferExhaustedPolicy(I)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v0

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setNoFlush(Z)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Landroid/tracing/perfetto/DataSourceParams$Builder;->setWillNotifyOnStop(Z)Landroid/tracing/perfetto/DataSourceParams$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/tracing/perfetto/DataSourceParams$Builder;->build()Landroid/tracing/perfetto/DataSourceParams;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    invoke-virtual {v1, v0}, Landroid/tracing/inputmethod/InputMethodDataSource;->register(Landroid/tracing/perfetto/DataSourceParams;)V

    .line 63
    return-void
.end method

.method static synthetic blacklist lambda$triggerClientDump$0(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[BLandroid/tracing/perfetto/TracingContext;)V
    .registers 10

    .line 84
    invoke-virtual {p3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p3

    .line 85
    const-wide v0, 0x10400000008L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 86
    nop

    .line 87
    const-wide v0, 0x10b00000070L

    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 88
    nop

    .line 89
    const-wide v2, 0x10b00000001L

    invoke-virtual {p3, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 90
    const-wide v4, 0x10900000002L

    invoke-virtual {p3, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 91
    nop

    .line 92
    const-wide v4, 0x10b00000003L

    invoke-virtual {p3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 93
    invoke-virtual {p1, p3, p2}, Landroid/view/inputmethod/InputMethodManager;->dumpDebug(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 94
    invoke-virtual {p3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 95
    invoke-virtual {p3, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 96
    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 97
    return-void
.end method

.method static synthetic blacklist lambda$triggerManagerServiceDump$2(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;Landroid/tracing/perfetto/TracingContext;)V
    .registers 9

    .line 148
    invoke-virtual {p2}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p2

    .line 149
    const-wide v0, 0x10400000008L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 150
    nop

    .line 151
    const-wide v0, 0x10b00000070L

    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 152
    nop

    .line 153
    const-wide v2, 0x10b00000003L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 154
    const-wide v4, 0x10900000002L

    invoke-virtual {p2, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 155
    const/4 p0, 0x0

    invoke-interface {p1, p2, p0}, Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;->dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 156
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 157
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 158
    return-void
.end method

.method static synthetic blacklist lambda$triggerServiceDump$1(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[BLandroid/tracing/perfetto/TracingContext;)V
    .registers 10

    .line 118
    invoke-virtual {p3}, Landroid/tracing/perfetto/TracingContext;->newTracePacket()Landroid/util/proto/ProtoOutputStream;

    move-result-object p3

    .line 119
    const-wide v0, 0x10400000008L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 120
    nop

    .line 121
    const-wide v0, 0x10b00000070L

    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 122
    nop

    .line 123
    const-wide v2, 0x10b00000002L

    invoke-virtual {p3, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 124
    const-wide v4, 0x10900000002L

    invoke-virtual {p3, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 125
    invoke-interface {p1, p3, p2}, Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;->dumpToProto(Landroid/util/proto/ProtoOutputStream;[B)V

    .line 126
    invoke-virtual {p3, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 127
    invoke-virtual {p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 128
    return-void
.end method


# virtual methods
.method public blacklist addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 3

    .line 183
    return-void
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mTracingSessionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist startTrace(Ljava/io/PrintWriter;)V
    .registers 2

    .line 173
    return-void
.end method

.method public blacklist stopTrace(Ljava/io/PrintWriter;)V
    .registers 2

    .line 178
    return-void
.end method

.method public blacklist triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V
    .registers 7

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3e

    .line 73
    :cond_d
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 74
    return-void

    .line 77
    :cond_18
    if-nez p2, :cond_1b

    .line 78
    return-void

    .line 82
    :cond_1b
    :try_start_1b
    const-string v0, "inputmethod_client_dump"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    new-instance v1, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    invoke-virtual {v0, v1}, Landroid/tracing/inputmethod/InputMethodDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_34

    .line 99
    iget-object p1, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 101
    nop

    .line 102
    return-void

    .line 99
    :catchall_34
    move-exception p1

    iget-object p2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsClientDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 101
    throw p1

    .line 70
    :cond_3e
    :goto_3e
    return-void
.end method

.method public blacklist triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V
    .registers 6

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3b

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 142
    return-void

    .line 146
    :cond_18
    :try_start_18
    const-string v0, "inputmethod_manager_service_dump"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    new-instance v1, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    invoke-virtual {v0, v1}, Landroid/tracing/inputmethod/InputMethodDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_31

    .line 160
    iget-object p1, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 162
    nop

    .line 163
    return-void

    .line 160
    :catchall_31
    move-exception p1

    iget-object p2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsManagerServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 162
    throw p1

    .line 138
    :cond_3b
    :goto_3b
    return-void
.end method

.method public blacklist triggerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V
    .registers 7

    .line 107
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3b

    .line 111
    :cond_d
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_18

    .line 112
    return-void

    .line 116
    :cond_18
    :try_start_18
    const-string v0, "inputmethod_service_dump"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mDataSource:Landroid/tracing/inputmethod/InputMethodDataSource;

    new-instance v1, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;[B)V

    invoke-virtual {v0, v1}, Landroid/tracing/inputmethod/InputMethodDataSource;->trace(Landroid/tracing/perfetto/TraceFunction;)V
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_31

    .line 130
    iget-object p1, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :catchall_31
    move-exception p1

    iget-object p2, p0, Lcom/android/internal/inputmethod/ImeTracingPerfettoImpl;->mIsServiceDumpInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 132
    throw p1

    .line 108
    :cond_3b
    :goto_3b
    return-void
.end method
