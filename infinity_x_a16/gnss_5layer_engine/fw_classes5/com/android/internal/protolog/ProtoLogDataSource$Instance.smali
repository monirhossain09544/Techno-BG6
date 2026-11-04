.class public Lcom/android/internal/protolog/ProtoLogDataSource$Instance;
.super Landroid/tracing/perfetto/DataSourceInstance;
.source "ProtoLogDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;,
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;,
        Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;
    }
.end annotation


# instance fields
.field private final blacklist mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

.field private final blacklist mInstanceIndex:I

.field private final blacklist mOnFlush:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;

.field private final blacklist mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

.field private final blacklist mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfig(Lcom/android/internal/protolog/ProtoLogDataSource$Instance;)Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/tracing/perfetto/DataSource;ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/tracing/perfetto/DataSource<",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$TlsState;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$IncrementalState;",
            ">;I",
            "Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;",
            "Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;",
            ")V"
        }
    .end annotation

    .line 422
    invoke-direct {p0, p1, p2}, Landroid/tracing/perfetto/DataSourceInstance;-><init>(Landroid/tracing/perfetto/DataSource;I)V

    .line 423
    iput p2, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    .line 424
    iput-object p4, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    .line 425
    iput-object p5, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnFlush:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;

    .line 426
    iput-object p6, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    .line 427
    iput-object p3, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    .line 428
    return-void
.end method


# virtual methods
.method public blacklist onFlush(Landroid/tracing/perfetto/FlushCallbackArguments;)V
    .registers 2

    .line 437
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnFlush:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;

    invoke-interface {p1}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingFlushCallback;->onTracingFlush()V

    .line 438
    return-void
.end method

.method public blacklist onStart(Landroid/tracing/perfetto/StartCallbackArguments;)V
    .registers 4

    .line 432
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStart:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;

    iget v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStartCallback;->onTracingInstanceStart(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    .line 433
    return-void
.end method

.method public blacklist onStop(Landroid/tracing/perfetto/StopCallbackArguments;)V
    .registers 4

    .line 442
    iget-object p1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mOnStop:Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;

    iget v0, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mInstanceIndex:I

    iget-object v1, p0, Lcom/android/internal/protolog/ProtoLogDataSource$Instance;->mConfig:Lcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;

    invoke-interface {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogDataSource$Instance$TracingInstanceStopCallback;->onTracingInstanceStop(ILcom/android/internal/protolog/ProtoLogDataSource$ProtoLogConfig;)V

    .line 443
    return-void
.end method
