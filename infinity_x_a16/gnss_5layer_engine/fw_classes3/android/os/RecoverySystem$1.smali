.class Landroid/os/RecoverySystem$1;
.super Ljava/io/InputStream;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist lastPercent:I

.field blacklist lastPublishTime:J

.field blacklist soFar:J

.field blacklist toRead:J

.field final synthetic blacklist val$commentSize:I

.field final synthetic blacklist val$fileLen:J

.field final synthetic blacklist val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic blacklist val$raf:Ljava/io/RandomAccessFile;

.field final synthetic blacklist val$startTimeMillis:J


# direct methods
.method constructor blacklist <init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V
    .registers 8

    .line 365
    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    iput p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    iput-wide p4, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    iput-object p6, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    iput-object p7, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 368
    iget-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    iget p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    int-to-long p3, p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x2

    sub-long/2addr p1, p3

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->toRead:J

    .line 369
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->soFar:J

    .line 371
    const/4 p1, 0x0

    iput p1, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    .line 372
    iget-wide p1, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    return-void
.end method


# virtual methods
.method public whitelist test-api read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_a

    .line 382
    return v1

    .line 384
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 385
    return v1

    .line 388
    :cond_15
    nop

    .line 389
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 390
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->toRead:J

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 392
    :cond_26
    iget-object v0, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    .line 393
    iget-wide p2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    .line 395
    iget-object p2, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    if-eqz p2, :cond_5c

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 397
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 398
    iget v1, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    if-le v0, v1, :cond_5c

    iget-wide v1, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_5c

    .line 400
    iput v0, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    .line 401
    iput-wide p2, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    .line 402
    iget-object p2, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    iget p3, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    invoke-interface {p2, p3}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 406
    :cond_5c
    return p1
.end method
