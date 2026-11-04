.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;
.super Ljava/lang/Object;
.source "PerfettoTrackEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectsPool"
.end annotation


# instance fields
.field public final blacklist mFieldDoublePool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldDouble;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mFieldInt64Pool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldInt64;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mFieldNestedPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldNested;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mFieldStringPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$FieldString;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mProtoPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Proto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldInt64Pool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    .line 69
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldDoublePool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    .line 70
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldStringPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    .line 71
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldNestedPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    .line 72
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mProtoPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist reset()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldInt64Pool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->reset()V

    .line 77
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldDoublePool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->reset()V

    .line 78
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldStringPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->reset()V

    .line 79
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mFieldNestedPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->reset()V

    .line 80
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsPool;->mProtoPool:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;

    invoke-virtual {v0}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->reset()V

    .line 81
    return-void
.end method
