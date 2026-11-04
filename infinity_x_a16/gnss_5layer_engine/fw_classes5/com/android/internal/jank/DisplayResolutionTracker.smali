.class public Lcom/android/internal/jank/DisplayResolutionTracker;
.super Ljava/lang/Object;
.source "DisplayResolutionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;,
        Lcom/android/internal/jank/DisplayResolutionTracker$Resolution;
    }
.end annotation


# static fields
.field public static final blacklist RESOLUTION_FHD:I = 0x3

.field public static final blacklist RESOLUTION_HD:I = 0x2

.field public static final blacklist RESOLUTION_QHD:I = 0x4

.field public static final blacklist RESOLUTION_SD:I = 0x1

.field public static final blacklist RESOLUTION_UNKNOWN:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mManager:Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;

.field private final blacklist mResolutions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateDisplay(Lcom/android/internal/jank/DisplayResolutionTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/DisplayResolutionTracker;->updateDisplay(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/internal/jank/DisplayResolutionTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/DisplayResolutionTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 2

    .line 74
    invoke-static {p1}, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;->getDefault(Landroid/os/Handler;)Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/jank/DisplayResolutionTracker;-><init>(Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker;->mResolutions:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/android/internal/jank/DisplayResolutionTracker;->mManager:Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;

    .line 80
    iget-object p1, p0, Lcom/android/internal/jank/DisplayResolutionTracker;->mManager:Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;

    new-instance v0, Lcom/android/internal/jank/DisplayResolutionTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/DisplayResolutionTracker$1;-><init>(Lcom/android/internal/jank/DisplayResolutionTracker;)V

    invoke-interface {p1, v0}, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 96
    return-void
.end method

.method public static blacklist getResolution(Landroid/view/DisplayInfo;)I
    .registers 3

    .line 124
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 125
    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 126
    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_31

    const/16 v1, 0x500

    if-ge p0, v1, :cond_19

    goto :goto_31

    .line 128
    :cond_19
    const/16 v1, 0x438

    if-lt v0, v1, :cond_2f

    const/16 v1, 0x780

    if-ge p0, v1, :cond_22

    goto :goto_2f

    .line 130
    :cond_22
    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_2d

    const/16 v0, 0xa00

    if-ge p0, v0, :cond_2b

    goto :goto_2d

    .line 133
    :cond_2b
    const/4 p0, 0x4

    return p0

    .line 131
    :cond_2d
    :goto_2d
    const/4 p0, 0x3

    return p0

    .line 129
    :cond_2f
    :goto_2f
    const/4 p0, 0x2

    return p0

    .line 127
    :cond_31
    :goto_31
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist updateDisplay(I)V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker;->mManager:Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/jank/DisplayResolutionTracker$DisplayInterface;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 100
    if-nez v0, :cond_9

    .line 101
    return-void

    .line 103
    :cond_9
    invoke-static {v0}, Lcom/android/internal/jank/DisplayResolutionTracker;->getResolution(Landroid/view/DisplayInfo;)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/android/internal/jank/DisplayResolutionTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/jank/DisplayResolutionTracker;->mResolutions:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_1b
    move-exception p1

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw p1
.end method


# virtual methods
.method public blacklist getResolution(I)I
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/android/internal/jank/DisplayResolutionTracker;->mResolutions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
