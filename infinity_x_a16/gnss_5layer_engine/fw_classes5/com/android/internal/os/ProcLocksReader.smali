.class public Lcom/android/internal/os/ProcLocksReader;
.super Ljava/lang/Object;
.source "ProcLocksReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;
    }
.end annotation


# instance fields
.field private final blacklist mPath:Ljava/lang/String;

.field private blacklist mPids:Landroid/util/IntArray;

.field private blacklist mReader:Lcom/android/internal/util/ProcFileReader;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    .line 41
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    .line 44
    const-string v0, "/proc/locks"

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    .line 41
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    .line 48
    iput-object p1, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    nop

    .line 75
    nop

    .line 77
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    if-nez v0, :cond_15

    .line 78
    new-instance v0, Lcom/android/internal/util/ProcFileReader;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    goto :goto_1a

    .line 80
    :cond_15
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->rewind()V

    .line 83
    :goto_1a
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    const-wide/16 v0, -0x1

    .line 84
    :goto_21
    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9f

    .line 85
    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProcFileReader;->nextLong(Z)J

    move-result-wide v4

    .line 86
    cmp-long v2, v4, v0

    if-nez v2, :cond_5b

    .line 88
    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 89
    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 90
    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 91
    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 93
    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    .line 94
    if-lez v2, :cond_55

    .line 95
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    .line 98
    :cond_55
    iget-object v2, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_21

    .line 101
    :cond_5b
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-le v0, v3, :cond_6d

    .line 102
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-interface {p1, v0}, Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;->onBlockingFileLock(Landroid/util/IntArray;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 107
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 108
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 109
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    .line 111
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v0

    .line 112
    if-lez v0, :cond_98

    .line 113
    iget-object v1, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_92

    .line 114
    iget-object v1, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_98

    .line 116
    :cond_92
    iget-object v1, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/IntArray;->set(II)V

    .line 119
    :cond_98
    :goto_98
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v0}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 120
    move-wide v0, v4

    goto :goto_21

    .line 124
    :cond_9f
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-le v0, v3, :cond_ac

    .line 125
    iget-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-interface {p1, v0}, Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;->onBlockingFileLock(Landroid/util/IntArray;)V

    .line 127
    :cond_ac
    return-void
.end method
