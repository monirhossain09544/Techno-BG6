.class Landroid/os/FileObserver$ObserverThread;
.super Ljava/lang/Thread;
.source "FileObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/FileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverThread"
.end annotation


# instance fields
.field private final blacklist mRealObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o m_fd:I

.field private greylist-max-o m_observers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 111
    const-string v0, "FileObserver"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/FileObserver$ObserverThread;->m_observers:Ljava/util/HashMap;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    .line 112
    invoke-direct {p0}, Landroid/os/FileObserver$ObserverThread;->init()I

    move-result v0

    iput v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    .line 113
    return-void
.end method

.method private native greylist-max-o init()I
.end method

.method private native greylist-max-o observe(I)V
.end method

.method private native blacklist startWatching(I[Ljava/lang/String;I[I)V
.end method

.method private native blacklist stopWatching(I[I)V
.end method


# virtual methods
.method public greylist-max-r onEvent(IILjava/lang/String;)V
    .registers 6

    .line 156
    nop

    .line 158
    iget-object v0, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 159
    :try_start_4
    iget-object v1, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 160
    if-eqz v1, :cond_1d

    .line 161
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/FileObserver;

    .line 162
    if-nez v1, :cond_1e

    .line 163
    iget-object p2, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 164
    monitor-exit v0

    return-void

    .line 160
    :cond_1d
    const/4 v1, 0x0

    .line 167
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_3f

    .line 170
    if-eqz v1, :cond_3e

    .line 172
    :try_start_21
    invoke-virtual {v1, p2, p3}, Landroid/os/FileObserver;->onEvent(ILjava/lang/String;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    .line 175
    goto :goto_3e

    .line 173
    :catchall_25
    move-exception p1

    .line 174
    const-string p2, "FileObserver"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled exception in FileObserver "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_3e
    :goto_3e
    return-void

    .line 167
    :catchall_3f
    move-exception p1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public whitelist test-api run()V
    .registers 2

    .line 116
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0}, Landroid/os/FileObserver$ObserverThread;->observe(I)V

    .line 117
    return-void
.end method

.method public blacklist startWatching(Ljava/util/List;ILandroid/os/FileObserver;)[I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I",
            "Landroid/os/FileObserver;",
            ")[I"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 122
    new-array v1, v0, [Ljava/lang/String;

    .line 123
    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_19

    .line 124
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 126
    :cond_19
    new-array p1, v0, [I

    .line 127
    const/4 v3, -0x1

    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 129
    iget v3, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v3, v1, p2, p1}, Landroid/os/FileObserver$ObserverThread;->startWatching(I[Ljava/lang/String;I[I)V

    .line 131
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 133
    iget-object p3, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    monitor-enter p3

    .line 134
    nop

    :goto_2d
    if-ge v2, v0, :cond_3b

    :try_start_2f
    aget v1, p1, v2

    .line 135
    if-ltz v1, :cond_38

    .line 136
    iget-object v3, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 139
    :cond_3b
    monitor-exit p3

    .line 141
    return-object p1

    .line 139
    :goto_3d
    monitor-exit p3
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_3f

    throw p1

    :catchall_3f
    move-exception p1

    goto :goto_3d
.end method

.method public blacklist stopWatching([I)V
    .registers 7

    .line 145
    iget v0, p0, Landroid/os/FileObserver$ObserverThread;->m_fd:I

    invoke-direct {p0, v0, p1}, Landroid/os/FileObserver$ObserverThread;->stopWatching(I[I)V

    .line 146
    iget-object v0, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 147
    :try_start_8
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget v3, p1, v2

    .line 148
    iget-object v4, p0, Landroid/os/FileObserver$ObserverThread;->mRealObservers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 150
    :cond_16
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw p1
.end method
