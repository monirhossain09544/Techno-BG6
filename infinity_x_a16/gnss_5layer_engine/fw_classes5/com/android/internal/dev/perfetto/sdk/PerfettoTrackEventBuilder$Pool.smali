.class final Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;
.super Ljava/lang/Object;
.source "PerfettoTrackEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCapacity:I

.field private blacklist mIdx:I

.field private final blacklist mValueArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mIdx:I

    .line 662
    iput p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mCapacity:I

    .line 663
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mValueArray:[Ljava/lang/Object;

    .line 664
    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 671
    iget v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mIdx:I

    iget v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mCapacity:I

    if-lt v0, v1, :cond_b

    .line 672
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 674
    :cond_b
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mValueArray:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mIdx:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1d

    .line 675
    iget-object v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mValueArray:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mIdx:I

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    .line 677
    :cond_1d
    iget-object p1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mValueArray:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mIdx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mIdx:I

    aget-object p1, p1, v0

    return-object p1
.end method

.method public blacklist reset()V
    .registers 2

    .line 667
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/dev/perfetto/sdk/PerfettoTrackEventBuilder$Pool;->mIdx:I

    .line 668
    return-void
.end method
