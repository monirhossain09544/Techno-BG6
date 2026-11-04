.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;
.super Ljava/lang/Object;
.source "PerfettoTrackEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyInitObjects"
.end annotation


# instance fields
.field private blacklist mCounterDouble:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;

.field private blacklist mCounterInt64:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;

.field private blacklist mFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

.field private final blacklist mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

.field private blacklist mTerminatingFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mCounterInt64:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;

    .line 104
    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mCounterDouble:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;

    .line 105
    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    .line 106
    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mTerminatingFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    .line 111
    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    return-void
.end method


# virtual methods
.method public blacklist getCounterDouble()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mCounterDouble:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;

    if-nez v0, :cond_d

    .line 123
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mCounterDouble:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;

    .line 125
    :cond_d
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mCounterDouble:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterDouble;

    return-object v0
.end method

.method public blacklist getCounterInt64()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mCounterInt64:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;

    if-nez v0, :cond_d

    .line 116
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mCounterInt64:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;

    .line 118
    :cond_d
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mCounterInt64:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$CounterInt64;

    return-object v0
.end method

.method public blacklist getFlow()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    if-nez v0, :cond_d

    .line 130
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    .line 132
    :cond_d
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    return-object v0
.end method

.method public blacklist getTerminatingFlow()Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mTerminatingFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    if-nez v0, :cond_d

    .line 137
    new-instance v0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mNativeMemoryCleaner:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;

    invoke-direct {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;-><init>(Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;)V

    iput-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mTerminatingFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    .line 139
    :cond_d
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$LazyInitObjects;->mTerminatingFlow:Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventExtra$Flow;

    return-object v0
.end method
