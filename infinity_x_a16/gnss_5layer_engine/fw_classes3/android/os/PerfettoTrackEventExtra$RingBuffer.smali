.class final Landroid/os/PerfettoTrackEventExtra$RingBuffer;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RingBuffer"
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

.field private final blacklist mKeyArray:[I

.field private final blacklist mValueArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private blacklist mWriteEnd:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mWriteEnd:I

    .line 94
    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mCapacity:I

    .line 95
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mKeyArray:[I

    .line 96
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mValueArray:[Ljava/lang/Object;

    .line 97
    return-void
.end method


# virtual methods
.method public blacklist get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mCapacity:I

    if-ge v0, v1, :cond_13

    .line 107
    iget-object v1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mKeyArray:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_10

    .line 108
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mValueArray:[Ljava/lang/Object;

    aget-object p1, p1, v0

    return-object p1

    .line 106
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist put(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mKeyArray:[I

    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mWriteEnd:I

    aput p1, v0, v1

    .line 101
    iget-object p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mValueArray:[Ljava/lang/Object;

    iget v0, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mWriteEnd:I

    aput-object p2, p1, v0

    .line 102
    iget p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mWriteEnd:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mCapacity:I

    rem-int/2addr p1, p2

    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$RingBuffer;->mWriteEnd:I

    .line 103
    return-void
.end method
