.class public Lcom/android/internal/os/BinderLatencyBuckets;
.super Ljava/lang/Object;
.source "BinderLatencyBuckets.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BinderLatencyBuckets"


# instance fields
.field private final blacklist mBuckets:[I


# direct methods
.method public constructor blacklist <init>(IIF)V
    .registers 12

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    new-array v1, p1, [I

    .line 41
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 44
    int-to-double v3, p2

    .line 48
    move p2, v0

    :goto_c
    if-ge p2, p1, :cond_3a

    .line 50
    float-to-double v5, p3

    mul-double/2addr v3, v5

    .line 52
    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v5, v3, v5

    if-lez v5, :cond_27

    .line 54
    const-string p1, "BinderLatencyBuckets"

    const-string p3, "Attempted to create a bucket larger than maxint"

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {v1, v2, p2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    .line 56
    return-void

    .line 59
    :cond_27
    double-to-int v5, v3

    add-int/lit8 v6, p2, -0x1

    aget v7, v1, v6

    if-le v5, v7, :cond_31

    .line 61
    aput v5, v1, p2

    goto :goto_36

    .line 64
    :cond_31
    aget v5, v1, v6

    add-int/2addr v5, v0

    aput v5, v1, p2

    .line 66
    :goto_36
    nop

    .line 48
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 68
    :cond_3a
    iput-object v1, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist getBuckets()[I
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    return-object v0
.end method

.method public blacklist sampleToBucket(I)I
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-lt p1, v0, :cond_f

    .line 74
    iget-object p1, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    array-length p1, p1

    return p1

    .line 82
    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    .line 83
    if-gez p1, :cond_1b

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    goto :goto_1d

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    :goto_1d
    return p1
.end method
