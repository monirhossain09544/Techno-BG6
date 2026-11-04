.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;
.super Ljava/lang/Object;
.source "PerfettoNativeMemoryCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FreeNativeMemoryRunnable"
.end annotation


# instance fields
.field private final blacklist mAllocationStats:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

.field private final blacklist mClsName:Ljava/lang/String;

.field private final blacklist mFreeFunctionPtr:J

.field private final blacklist mPtr:J


# direct methods
.method public constructor blacklist <init>(JJLjava/lang/String;Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;)V
    .registers 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mPtr:J

    .line 51
    iput-wide p3, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mFreeFunctionPtr:J

    .line 52
    iput-object p5, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mClsName:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mAllocationStats:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mAllocationStats:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

    if-eqz v0, :cond_b

    .line 59
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mAllocationStats:Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;

    iget-object v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mClsName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$AllocationStats;->registerFree(Ljava/lang/String;)V

    .line 61
    :cond_b
    iget-wide v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mFreeFunctionPtr:J

    iget-wide v2, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner$FreeNativeMemoryRunnable;->mPtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/dev/perfetto/sdk/PerfettoNativeMemoryCleaner;->-$$Nest$smapplyNativeFunction(JJ)V

    .line 62
    return-void
.end method
