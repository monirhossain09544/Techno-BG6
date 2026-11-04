.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;
.super Ljava/lang/Object;
.source "PerfettoTrackEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectsCache"
.end annotation


# instance fields
.field public final blacklist mArgBoolCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgBool;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mArgDoubleCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgDouble;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mArgInt64Cache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgInt64;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mArgStringCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$ArgString;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mCounterTrackCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterTrack;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist mNamedTrackCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer<",
            "Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$NamedTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mNamedTrackCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    .line 94
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mCounterTrackCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    .line 95
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgInt64Cache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    .line 96
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgBoolCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    .line 97
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgDoubleCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    .line 98
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$ObjectsCache;->mArgStringCache:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$RingBuffer;

    .line 99
    return-void
.end method
