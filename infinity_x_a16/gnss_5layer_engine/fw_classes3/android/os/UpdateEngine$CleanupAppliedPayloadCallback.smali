.class Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;
.super Landroid/os/IUpdateEngineCallback$Stub;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CleanupAppliedPayloadCallback"
.end annotation


# instance fields
.field private blacklist mCompleted:Z

.field private blacklist mErrorCode:I

.field private blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetResult(Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;)I
    .registers 1

    invoke-direct {p0}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->getResult()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 615
    invoke-direct {p0}, Landroid/os/IUpdateEngineCallback$Stub;-><init>()V

    .line 616
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z

    .line 618
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/UpdateEngine-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;-><init>()V

    return-void
.end method

.method private blacklist getResult()I
    .registers 3

    .line 620
    iget-object v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-nez v1, :cond_f

    .line 623
    :try_start_7
    iget-object v1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_13

    goto :goto_e

    .line 624
    :catch_d
    move-exception v1

    .line 626
    :goto_e
    goto :goto_3

    .line 628
    :cond_f
    :try_start_f
    iget v1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    monitor-exit v0

    return v1

    .line 629
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public blacklist onPayloadApplicationComplete(I)V
    .registers 3

    .line 638
    iget-object v0, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_3
    iput p1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mErrorCode:I

    .line 640
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mCompleted:Z

    .line 641
    iget-object p1, p0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 642
    monitor-exit v0

    .line 643
    return-void

    .line 642
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public blacklist onStatusUpdate(IF)V
    .registers 3

    .line 634
    return-void
.end method
