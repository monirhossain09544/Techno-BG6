.class public Lcom/android/internal/os/FuseAppLoop;
.super Ljava/lang/Object;
.source "FuseAppLoop.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/FuseAppLoop$BytesMap;,
        Lcom/android/internal/os/FuseAppLoop$CallbackEntry;,
        Lcom/android/internal/os/FuseAppLoop$Args;,
        Lcom/android/internal/os/FuseAppLoop$BytesMapEntry;,
        Lcom/android/internal/os/FuseAppLoop$UnmountedException;
    }
.end annotation


# static fields
.field private static final greylist-max-o ARGS_POOL_SIZE:I = 0x32

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o FUSE_FSYNC:I = 0x14

.field private static final greylist-max-o FUSE_GETATTR:I = 0x3

.field private static final greylist-max-o FUSE_LOOKUP:I = 0x1

.field private static final greylist-max-o FUSE_MAX_WRITE:I = 0x20000

.field private static final greylist-max-o FUSE_OK:I = 0x0

.field private static final greylist-max-o FUSE_OPEN:I = 0xe

.field private static final greylist-max-o FUSE_READ:I = 0xf

.field private static final greylist-max-o FUSE_RELEASE:I = 0x12

.field private static final greylist-max-o FUSE_WRITE:I = 0x10

.field private static final greylist-max-o MIN_INODE:I = 0x2

.field public static final greylist-max-o ROOT_INODE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FuseAppLoop"

.field private static final greylist-max-o sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final greylist-max-o mArgsPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/os/FuseAppLoop$Args;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

.field private final greylist-max-o mCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/FuseAppLoop$CallbackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInstance:J

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mMountPointId:I

.field private greylist-max-o mNextInode:I

.field private final greylist-max-o mThread:Ljava/lang/Thread;


# direct methods
.method public static synthetic blacklist $r8$lambda$3Zdnny2txgddSCyL57ulZnRAeEg(Lcom/android/internal/os/FuseAppLoop;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/FuseAppLoop;->lambda$new$0()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    const-string v0, "FuseAppLoop"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/FuseAppLoop;->DEBUG:Z

    .line 46
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$1;

    invoke-direct {v0}, Lcom/android/internal/os/FuseAppLoop$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Lcom/android/internal/os/FuseAppLoop$BytesMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;-><init>(Lcom/android/internal/os/FuseAppLoop-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 80
    iput p1, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    .line 81
    if-nez p3, :cond_29

    .line 82
    sget-object p3, Lcom/android/internal/os/FuseAppLoop;->sDefaultThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 84
    :cond_29
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/FuseAppLoop;->native_new(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 85
    new-instance p1, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/internal/os/FuseAppLoop$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/FuseAppLoop;)V

    invoke-interface {p3, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    .line 93
    iget-object p1, p0, Lcom/android/internal/os/FuseAppLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method private static greylist-max-o checkInode(J)I
    .registers 9

    .line 329
    const-wide/32 v4, 0x7fffffff

    const-string v6, "checkInode"

    const-wide/16 v2, 0x2

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 330
    long-to-int p0, v0

    return p0
.end method

.method private greylist-max-o getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 297
    if-eqz p1, :cond_f

    .line 300
    return-object p1

    .line 298
    :cond_f
    new-instance p1, Landroid/system/ErrnoException;

    const-string p2, "getCallbackEntryOrThrowLocked"

    sget v0, Landroid/system/OsConstants;->ENOENT:I

    invoke-direct {p1, p2, v0}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private static greylist-max-o getError(Ljava/lang/Exception;)I
    .registers 2

    .line 285
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_e

    .line 286
    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    .line 287
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    if-eq p0, v0, :cond_e

    .line 288
    neg-int p0, p0

    return p0

    .line 291
    :cond_e
    sget p0, Landroid/system/OsConstants;->EBADF:I

    neg-int p0, p0

    return p0
.end method

.method private synthetic blacklist lambda$new$0()V
    .registers 4

    .line 86
    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/FuseAppLoop;->native_start(J)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_8
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/FuseAppLoop;->native_delete(J)V

    .line 89
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    .line 90
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v1}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->clear()V

    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private greylist-max-r onCommand(IJJJI[B)V
    .registers 13

    .line 238
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_12

    .line 242
    new-instance v1, Lcom/android/internal/os/FuseAppLoop$Args;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseAppLoop$Args;-><init>(Lcom/android/internal/os/FuseAppLoop-IA;)V

    goto :goto_1a

    .line 244
    :cond_12
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 246
    :goto_1a
    iput-wide p2, v1, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 247
    iput-wide p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 248
    iput-wide p6, v1, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 249
    iput p8, v1, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 250
    iput-object p9, v1, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 251
    invoke-direct {p0, p4, p5}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object p4

    iput-object p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 252
    iget-object p4, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object p4, p4, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    iget-object p5, v1, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    iget-object p5, p5, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->handler:Landroid/os/Handler;

    .line 253
    const/4 p6, 0x0

    invoke-static {p5, p1, p6, p6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 252
    invoke-virtual {p4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 258
    goto :goto_52

    .line 254
    :cond_3e
    new-instance p1, Landroid/system/ErrnoException;

    const-string p4, "onCommand"

    sget p5, Landroid/system/OsConstants;->EBADF:I

    invoke-direct {p1, p4, p5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_48} :catch_4a
    .catchall {:try_start_3 .. :try_end_48} :catchall_48

    .line 259
    :catchall_48
    move-exception p1

    goto :goto_54

    .line 256
    :catch_4a
    move-exception p1

    .line 257
    :try_start_4b
    invoke-static {p1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 259
    :goto_52
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_48

    throw p1
.end method

.method private greylist-max-r onOpen(JJ)[B
    .registers 15

    .line 266
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_3
    invoke-direct {p0, p3, p4}, Lcom/android/internal/os/FuseAppLoop;->getCallbackEntryOrThrowLocked(J)Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    move-result-object v0

    .line 269
    iget-boolean v2, v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    if-nez v2, :cond_27

    .line 272
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    .line 273
    iget-wide v4, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J
    :try_end_15
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_15} :catch_38
    .catchall {:try_start_3 .. :try_end_15} :catchall_35

    move-object v3, p0

    move-wide v6, p1

    move-wide v8, p3

    :try_start_18
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyOpen(JJJ)V

    .line 274
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->opened:Z

    .line 275
    iget-object p1, v3, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->startUsing(J)[B

    move-result-object p1
    :try_end_24
    .catch Landroid/system/ErrnoException; {:try_start_18 .. :try_end_24} :catch_33
    .catchall {:try_start_18 .. :try_end_24} :catchall_35

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_35

    return-object p1

    .line 279
    :cond_26
    goto :goto_43

    .line 270
    :cond_27
    move-object v3, p0

    move-wide v6, p1

    :try_start_29
    new-instance p1, Landroid/system/ErrnoException;

    const-string p2, "onOpen"

    sget p3, Landroid/system/OsConstants;->EMFILE:I

    invoke-direct {p1, p2, p3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_33
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_33} :catch_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_35

    .line 277
    :catch_33
    move-exception v0

    goto :goto_3b

    .line 281
    :catchall_35
    move-exception v0

    move-object p1, v0

    goto :goto_46

    .line 277
    :catch_38
    move-exception v0

    move-object v3, p0

    move-wide v6, p1

    :goto_3b
    move-object p1, v0

    .line 278
    :try_start_3c
    invoke-static {p1}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result p1

    invoke-direct {p0, v6, v7, p1}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 280
    :goto_43
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    .line 281
    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_35

    throw p1
.end method

.method private greylist-max-o recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V
    .registers 4

    .line 305
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_f

    .line 306
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mArgsPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_f
    return-void
.end method

.method private greylist-max-o replySimpleLocked(JI)V
    .registers 11

    .line 312
    iget-wide v0, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 313
    iget-wide v2, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 315
    :cond_10
    return-void
.end method


# virtual methods
.method public greylist-max-o getMountPointId()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    return v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 19

    .line 150
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lcom/android/internal/os/FuseAppLoop$Args;

    .line 151
    iget-object v2, v10, Lcom/android/internal/os/FuseAppLoop$Args;->entry:Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    .line 152
    iget-wide v7, v10, Lcom/android/internal/os/FuseAppLoop$Args;->inode:J

    .line 153
    iget-wide v4, v10, Lcom/android/internal/os/FuseAppLoop$Args;->unique:J

    .line 154
    iget v3, v10, Lcom/android/internal/os/FuseAppLoop$Args;->size:I

    .line 155
    iget-wide v11, v10, Lcom/android/internal/os/FuseAppLoop$Args;->offset:J

    .line 156
    iget-object v6, v10, Lcom/android/internal/os/FuseAppLoop$Args;->data:[B

    .line 159
    :try_start_15
    iget v9, v0, Landroid/os/Message;->what:I

    const-wide/16 v13, 0x0

    sparse-switch v9, :sswitch_data_114

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_e0

    .line 200
    :sswitch_20
    iget-object v0, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onFsync()V

    .line 201
    iget-object v7, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_f9

    .line 202
    :try_start_28
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v2, v13

    if-eqz v0, :cond_34

    .line 203
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 205
    :cond_34
    invoke-direct {v1, v10}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 206
    monitor-exit v7

    .line 207
    goto/16 :goto_dc

    .line 206
    :catchall_3a
    move-exception v0

    monitor-exit v7
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v0

    .line 209
    :sswitch_3d
    iget-object v0, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onRelease()V

    .line 210
    iget-object v9, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_f9

    .line 211
    :try_start_45
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v2, v13

    if-eqz v0, :cond_51

    .line 212
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replySimple(JJI)V

    .line 214
    :cond_51
    iget-object v0, v1, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-static {v7, v8}, Lcom/android/internal/os/FuseAppLoop;->checkInode(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 215
    iget-object v0, v1, Lcom/android/internal/os/FuseAppLoop;->mBytesMap:Lcom/android/internal/os/FuseAppLoop$BytesMap;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/FuseAppLoop$BytesMap;->stopUsing(J)V

    .line 216
    invoke-direct {v1, v10}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 217
    monitor-exit v9

    .line 218
    goto/16 :goto_dc

    .line 217
    :catchall_65
    move-exception v0

    monitor-exit v9
    :try_end_67
    .catchall {:try_start_45 .. :try_end_67} :catchall_65

    :try_start_67
    throw v0

    .line 191
    :sswitch_68
    iget-object v0, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v11, v12, v3, v6}, Landroid/os/ProxyFileDescriptorCallback;->onWrite(JI[B)I

    move-result v6

    .line 192
    iget-object v7, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_71} :catch_f9

    .line 193
    :try_start_71
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v2, v13

    if-eqz v0, :cond_7c

    .line 194
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/FuseAppLoop;->native_replyWrite(JJI)V

    .line 196
    :cond_7c
    invoke-direct {v1, v10}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 197
    monitor-exit v7

    .line 198
    goto :goto_dc

    .line 197
    :catchall_81
    move-exception v0

    monitor-exit v7
    :try_end_83
    .catchall {:try_start_71 .. :try_end_83} :catchall_81

    :try_start_83
    throw v0

    .line 181
    :sswitch_84
    iget-object v0, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0, v11, v12, v3, v6}, Landroid/os/ProxyFileDescriptorCallback;->onRead(JI[B)I

    move-result v0

    .line 183
    iget-object v8, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8d} :catch_f9

    .line 184
    :try_start_8d
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v2, v2, v13

    if-eqz v2, :cond_9a

    .line 185
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    move-object v7, v6

    move v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/FuseAppLoop;->native_replyRead(JJI[B)V

    .line 187
    :cond_9a
    invoke-direct {v1, v10}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 188
    monitor-exit v8

    .line 189
    goto :goto_dc

    .line 188
    :catchall_9f
    move-exception v0

    monitor-exit v8
    :try_end_a1
    .catchall {:try_start_8d .. :try_end_a1} :catchall_9f

    :try_start_a1
    throw v0

    .line 171
    :sswitch_a2
    iget-object v0, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v2

    .line 172
    iget-object v11, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ab} :catch_f9

    .line 173
    move-wide v15, v13

    :try_start_ac
    iget-wide v13, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v13, v15

    if-eqz v0, :cond_b9

    .line 174
    move-wide v6, v7

    move-wide v8, v2

    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyGetAttr(JJJJ)V

    .line 176
    :cond_b9
    invoke-direct {v1, v10}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 177
    monitor-exit v11

    .line 178
    goto :goto_dc

    .line 177
    :catchall_be
    move-exception v0

    monitor-exit v11
    :try_end_c0
    .catchall {:try_start_ac .. :try_end_c0} :catchall_be

    :try_start_c0
    throw v0

    .line 161
    :sswitch_c1
    move-wide v6, v7

    move-wide v15, v13

    iget-object v0, v2, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;->callback:Landroid/os/ProxyFileDescriptorCallback;

    invoke-virtual {v0}, Landroid/os/ProxyFileDescriptorCallback;->onGetSize()J

    move-result-wide v8

    .line 162
    iget-object v11, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cc} :catch_f9

    .line 163
    :try_start_cc
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    cmp-long v0, v2, v15

    if-eqz v0, :cond_d7

    .line 164
    iget-wide v2, v1, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/os/FuseAppLoop;->native_replyLookup(JJJJ)V

    .line 166
    :cond_d7
    invoke-direct {v1, v10}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 167
    monitor-exit v11

    .line 168
    nop

    .line 228
    :goto_dc
    goto :goto_10f

    .line 167
    :catchall_dd
    move-exception v0

    monitor-exit v11
    :try_end_df
    .catchall {:try_start_cc .. :try_end_df} :catchall_dd

    :try_start_df
    throw v0

    .line 220
    :goto_e0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown FUSE command: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_f9} :catch_f9

    .line 222
    :catch_f9
    move-exception v0

    .line 223
    iget-object v2, v1, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_fd
    const-string v3, "FuseAppLoop"

    const-string v6, ""

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    invoke-static {v0}, Lcom/android/internal/os/FuseAppLoop;->getError(Ljava/lang/Exception;)I

    move-result v0

    invoke-direct {v1, v4, v5, v0}, Lcom/android/internal/os/FuseAppLoop;->replySimpleLocked(JI)V

    .line 226
    invoke-direct {v1, v10}, Lcom/android/internal/os/FuseAppLoop;->recycleLocked(Lcom/android/internal/os/FuseAppLoop$Args;)V

    .line 227
    monitor-exit v2

    .line 230
    :goto_10f
    const/4 v0, 0x1

    return v0

    .line 227
    :catchall_111
    move-exception v0

    monitor-exit v2
    :try_end_113
    .catchall {:try_start_fd .. :try_end_113} :catchall_111

    throw v0

    :sswitch_data_114
    .sparse-switch
        0x1 -> :sswitch_c1
        0x3 -> :sswitch_a2
        0xf -> :sswitch_84
        0x10 -> :sswitch_68
        0x12 -> :sswitch_3d
        0x14 -> :sswitch_20
    .end sparse-switch
.end method

.method native greylist-max-o native_delete(J)V
.end method

.method native greylist-max-o native_new(I)J
.end method

.method native greylist-max-o native_replyGetAttr(JJJJ)V
.end method

.method native greylist-max-o native_replyLookup(JJJJ)V
.end method

.method native greylist-max-o native_replyOpen(JJJ)V
.end method

.method native greylist-max-o native_replyRead(JJI[B)V
.end method

.method native greylist-max-o native_replySimple(JJI)V
.end method

.method native greylist-max-o native_replyWrite(JJI)V
.end method

.method native greylist-max-o native_start(J)V
.end method

.method public greylist-max-o registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    .line 102
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const v2, 0x7ffffffd

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_18

    move v1, v4

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    const-string v2, "Too many opened files."

    .line 101
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 104
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-eqz v1, :cond_37

    move v3, v4

    :cond_37
    const-string v1, "Handler must be different from the current thread"

    .line 103
    invoke-static {v3, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 106
    iget-wide v1, p0, Lcom/android/internal/os/FuseAppLoop;->mInstance:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_70

    .line 111
    :cond_44
    iget v1, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 112
    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 113
    iget v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    if-gez v2, :cond_52

    .line 114
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/os/FuseAppLoop;->mNextInode:I

    .line 116
    :cond_52
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_44

    .line 117
    nop

    .line 120
    iget-object v2, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;

    new-instance v4, Landroid/os/Handler;

    .line 121
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v4, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {v3, p1, v4}, Lcom/android/internal/os/FuseAppLoop$CallbackEntry;-><init>(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)V

    .line 120
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    monitor-exit v0

    return v1

    .line 107
    :cond_70
    new-instance p1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget p2, p0, Lcom/android/internal/os/FuseAppLoop;->mMountPointId:I

    invoke-direct {p1, p2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw p1

    .line 123
    :catchall_78
    move-exception p1

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw p1
.end method

.method public greylist-max-o unregisterCallback(I)V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/internal/os/FuseAppLoop;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/FuseAppLoop;->mCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
