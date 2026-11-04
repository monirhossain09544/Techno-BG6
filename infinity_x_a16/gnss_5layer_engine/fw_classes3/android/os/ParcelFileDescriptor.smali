.class public Landroid/os/ParcelFileDescriptor;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelFileDescriptor$OnCloseListener;,
        Landroid/os/ParcelFileDescriptor$Status;,
        Landroid/os/ParcelFileDescriptor$FileDescriptorDetachedException;,
        Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;,
        Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_STATUS:I = 0x400

.field public static final whitelist MODE_APPEND:I = 0x2000000

.field public static final whitelist MODE_CREATE:I = 0x8000000

.field public static final whitelist MODE_READ_ONLY:I = 0x10000000

.field public static final whitelist MODE_READ_WRITE:I = 0x30000000

.field public static final whitelist MODE_TRUNCATE:I = 0x4000000

.field public static final whitelist MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MODE_WRITE_ONLY:I = 0x20000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ParcelFileDescriptor"


# instance fields
.field private volatile greylist-max-o mClosed:Z

.field private greylist-max-o mCommFd:Ljava/io/FileDescriptor;

.field private final greylist-max-o mFd:Ljava/io/FileDescriptor;

.field private final blacklist mGuard:Landroid/util/CloseGuard;

.field private greylist-max-o mStatus:Landroid/os/ParcelFileDescriptor$Status;

.field private greylist-max-o mStatusBuf:[B

.field private final greylist-max-o mWrapped:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcloseInternal(Ljava/io/FileDescriptor;)V
    .registers 1

    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->closeInternal(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smreadCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1147
    new-instance v0, Landroid/os/ParcelFileDescriptor$2;

    invoke-direct {v0}, Landroid/os/ParcelFileDescriptor$2;-><init>()V

    sput-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Landroid/util/CloseGuard;->get()Landroid/util/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Landroid/util/CloseGuard;

    .line 184
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    .line 185
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    .line 186
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 187
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 188
    return-void
.end method

.method public constructor greylist <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 194
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .registers 4

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Landroid/util/CloseGuard;->get()Landroid/util/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Landroid/util/CloseGuard;

    .line 198
    if-eqz p1, :cond_28

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    .line 202
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    .line 203
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {p1, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 205
    iput-object p2, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 206
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_20

    .line 207
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {p1, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 210
    :cond_20
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Landroid/util/CloseGuard;

    const-string p2, "close"

    invoke-virtual {p1, p2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 211
    return-void

    .line 199
    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "FileDescriptor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static whitelist adoptFd(I)Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 434
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 435
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 437
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object p0
.end method

.method private static blacklist closeInternal(Ljava/io/FileDescriptor;)V
    .registers 1

    .line 361
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 362
    return-void
.end method

.method private greylist-max-o closeWithStatus(ILjava/lang/String;)V
    .registers 4

    .line 846
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-eqz v0, :cond_5

    return-void

    .line 847
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 848
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_11

    .line 849
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 852
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    .line 853
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->closeInternal(Ljava/io/FileDescriptor;)V

    .line 854
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 855
    return-void
.end method

.method private static greylist-max-o createCommSocketPair()[Ljava/io/FileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 611
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 612
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_SEQPACKET:I

    sget v4, Landroid/system/OsConstants;->SOCK_CLOEXEC:I

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v4

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 613
    invoke-static {v0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 614
    invoke-static {v1, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 615
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/FileDescriptor;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v2

    .line 616
    :catch_28
    move-exception v0

    .line 617
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist createPipe()[Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    :try_start_0
    sget v0, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v0

    invoke-static {v0}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 516
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    filled-new-array {v1, v2}, [Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1e
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object v0

    .line 519
    :catch_1f
    move-exception v0

    .line 520
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist createReliablePipe()[Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 537
    sget v1, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v1

    invoke-static {v1}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 538
    new-instance v2, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    aget-object v3, v0, v3

    invoke-direct {v2, v4, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    aget-object v0, v0, v4

    invoke-direct {v3, v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    filled-new-array {v2, v3}, [Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_26
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_26} :catch_27

    return-object v0

    .line 541
    :catch_27
    move-exception v0

    .line 542
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist createReliableSocketPair()[Landroid/os/ParcelFileDescriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createReliableSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createReliableSocketPair(I)[Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 593
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 594
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .line 595
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v4, Landroid/system/OsConstants;->SOCK_CLOEXEC:I

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v4

    or-int/2addr p0, v4

    const/4 v4, 0x0

    invoke-static {v3, p0, v4, v1, v2}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 596
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    aget-object v3, v0, v4

    invoke-direct {p0, v1, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    filled-new-array {p0, v1}, [Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_2e
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    .line 599
    :catch_2f
    move-exception p0

    .line 600
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static whitelist createSocketPair()[Landroid/os/ParcelFileDescriptor;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createSocketPair(I)[Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 562
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 563
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_CLOEXEC:I

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v3

    or-int/2addr p0, v3

    const/4 v3, 0x0

    invoke-static {v2, p0, v3, v0, v1}, Landroid/system/Os;->socketpair(IIILjava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 564
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    filled-new-array {p0, v0}, [Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_25} :catch_26

    return-object p0

    .line 567
    :catch_26
    move-exception p0

    .line 568
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static whitelist dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    :try_start_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 373
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->isAtLeastQ()Z

    move-result v1

    if-eqz v1, :cond_e

    sget v1, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    goto :goto_10

    :cond_e
    sget v1, Landroid/system/OsConstants;->F_DUPFD:I

    :goto_10
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result p0

    .line 374
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 375
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1d} :catch_1e

    return-object p0

    .line 376
    :catch_1e
    move-exception p0

    .line 377
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static greylist fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 635
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 636
    :cond_4
    new-instance v1, Landroid/os/MemoryFile;

    array-length v2, p0

    invoke-direct {v1, p1, v2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 638
    :try_start_a
    array-length p1, p0

    if-lez p1, :cond_12

    .line 639
    array-length p1, p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v2, p1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 641
    :cond_12
    invoke-virtual {v1}, Landroid/os/MemoryFile;->deactivate()V

    .line 642
    invoke-virtual {v1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 643
    if-eqz p0, :cond_1f

    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_23

    .line 645
    :cond_1f
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 643
    return-object v0

    .line 645
    :catchall_23
    move-exception p0

    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 646
    throw p0
.end method

.method public static whitelist fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 500
    invoke-virtual {p0}, Ljava/net/DatagramSocket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 502
    if-eqz p0, :cond_12

    :try_start_6
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_13

    .line 503
    :catch_b
    move-exception p0

    .line 504
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 502
    :cond_12
    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method

.method public static whitelist fromFd(I)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 407
    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 410
    :try_start_8
    new-instance p0, Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/io/FileDescriptor;-><init>()V

    .line 411
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->isAtLeastQ()Z

    move-result v1

    if-eqz v1, :cond_16

    sget v1, Landroid/system/OsConstants;->F_DUPFD_CLOEXEC:I

    goto :goto_18

    :cond_16
    sget v1, Landroid/system/OsConstants;->F_DUPFD:I

    :goto_18
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    move-result v0

    .line 412
    invoke-virtual {p0, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 413
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_25} :catch_26

    return-object v0

    .line 414
    :catch_26
    move-exception p0

    .line 415
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static greylist-max-o fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    if-eqz p1, :cond_2c

    .line 306
    if-eqz p2, :cond_24

    .line 310
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createCommSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 311
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, p0, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 312
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    .line 313
    const/4 p1, 0x1

    aget-object v0, v0, p1

    new-instance v2, Landroid/os/ParcelFileDescriptor$1;

    invoke-direct {v2, p0, p2}, Landroid/os/ParcelFileDescriptor$1;-><init>(Landroid/os/MessageQueue;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    invoke-virtual {p0, v0, p1, v2}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 334
    return-object v1

    .line 307
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Handler must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 466
    invoke-virtual {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 468
    if-eqz p0, :cond_12

    :try_start_6
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_13

    .line 469
    :catch_b
    move-exception p0

    .line 470
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 468
    :cond_12
    const/4 p0, 0x0

    :goto_13
    return-object p0
.end method

.method public static blacklist getFile(Ljava/io/FileDescriptor;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/self/fd/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 693
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 694
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISCHR(I)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_4d

    .line 697
    :cond_34
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a regular file or character device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_4d
    :goto_4d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_52} :catch_53

    return-object v0

    .line 699
    :catch_53
    move-exception p0

    .line 700
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private greylist-max-o getOrCreateStatusBuffer()[B
    .registers 2

    .line 866
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    if-nez v0, :cond_a

    .line 867
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    .line 869
    :cond_a
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatusBuf:[B

    return-object v0
.end method

.method private static blacklist ifAtLeastQ(I)I
    .registers 2

    .line 1259
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->isAtLeastQ()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static blacklist isAtLeastQ()Z
    .registers 2

    .line 1255
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 233
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 234
    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 236
    :cond_8
    new-instance p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object p1
.end method

.method public static whitelist open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    if-eqz p2, :cond_19

    .line 269
    if-eqz p3, :cond_11

    .line 273
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 274
    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 276
    :cond_c
    invoke-static {p0, p2, p3}, Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 270
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Handler must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o openInternal(Ljava/io/File;I)Ljava/io/FileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 338
    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_42

    const/high16 v0, 0x2000000

    and-int/2addr v0, p1

    if-nez v0, :cond_42

    const/high16 v0, 0x4000000

    and-int/2addr v0, p1

    if-nez v0, :cond_42

    const/high16 v0, 0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_42

    if-eqz p0, :cond_42

    .line 340
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParcelFileDescriptor.open is called with w without t or a or r, which will have a different behavior beginning in Android Q.\nMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFilename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    const-string v1, "ParcelFileDescriptor"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfQuiet(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_42
    invoke-static {p1}, Landroid/os/FileUtils;->translateModePfdToPosix(I)I

    move-result v0

    sget v1, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->ifAtLeastQ(I)I

    move-result v1

    or-int/2addr v0, v1

    .line 348
    sget v1, Landroid/system/OsConstants;->S_IRWXU:I

    sget v2, Landroid/system/OsConstants;->S_IRWXG:I

    or-int/2addr v1, v2

    .line 349
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_59

    sget v2, Landroid/system/OsConstants;->S_IROTH:I

    or-int/2addr v1, v2

    .line 350
    :cond_59
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_60

    sget p1, Landroid/system/OsConstants;->S_IWOTH:I

    or-int/2addr v1, p1

    .line 352
    :cond_60
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 354
    :try_start_64
    invoke-static {p0, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_68
    .catch Landroid/system/ErrnoException; {:try_start_64 .. :try_end_68} :catch_69

    return-object p0

    .line 355
    :catch_69
    move-exception p0

    .line 356
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static whitelist parseMode(Ljava/lang/String;)I
    .registers 1

    .line 679
    invoke-static {p0}, Landroid/os/FileUtils;->translateModeStringToPosix(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/os/FileUtils;->translateModePosixToPfd(I)I

    move-result p0

    return p0
.end method

.method private static greylist-max-o readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    .registers 8

    .line 928
    const-string v0, "Failed to read status; assuming dead"

    const-string v1, "ParcelFileDescriptor"

    const/4 v2, -0x2

    :try_start_5
    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p0, p1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p0

    .line 929
    if-nez p0, :cond_13

    .line 931
    new-instance p0, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {p0, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    return-object p0

    .line 933
    :cond_13
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v4, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v3

    .line 934
    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 935
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x4

    sub-int/2addr p0, v5

    invoke-direct {v4, p1, v5, p0}, Ljava/lang/String;-><init>([BII)V

    .line 936
    new-instance p0, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {p0, v3, v4}, Landroid/os/ParcelFileDescriptor$Status;-><init>(ILjava/lang/String;)V

    return-object p0

    .line 938
    :cond_29
    new-instance p0, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {p0, v3}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V
    :try_end_2e
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_2e} :catch_39
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_2e} :catch_2f

    return-object p0

    .line 948
    :catch_2f
    move-exception p0

    .line 949
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    new-instance p0, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {p0, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    return-object p0

    .line 940
    :catch_39
    move-exception p0

    .line 941
    iget p1, p0, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EAGAIN:I

    if-ne p1, v3, :cond_42

    .line 943
    const/4 p0, 0x0

    return-object p0

    .line 945
    :cond_42
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    new-instance p0, Landroid/os/ParcelFileDescriptor$Status;

    invoke-direct {p0, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    return-object p0
.end method

.method public static whitelist wrap(Landroid/os/ParcelFileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 295
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 296
    invoke-static {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->fromFd(Ljava/io/FileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o writeCommStatusAndClose(ILjava/lang/String;)V
    .registers 10

    .line 873
    const-string v0, "Failed to report status"

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    const-string v2, "ParcelFileDescriptor"

    if-nez v1, :cond_21

    .line 875
    if-eqz p2, :cond_20

    .line 876
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to inform peer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_20
    return-void

    .line 881
    :cond_21
    const/4 v1, 0x2

    if-ne p1, v1, :cond_29

    .line 882
    const-string v1, "Peer expected signal when closed; unable to deliver after detach"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_29
    const/4 v1, -0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_35

    .line 920
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->closeInternal(Ljava/io/FileDescriptor;)V

    .line 921
    iput-object v3, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 886
    return-void

    .line 890
    :cond_35
    :try_start_35
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    .line 893
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_84

    if-eqz v1, :cond_4d

    .line 920
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->closeInternal(Ljava/io/FileDescriptor;)V

    .line 921
    iput-object v3, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 893
    return-void

    .line 896
    :cond_4d
    :try_start_4d
    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v1

    .line 897
    nop

    .line 899
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x0

    invoke-static {v1, v5, p1, v4}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    .line 900
    nop

    .line 902
    const/4 p1, 0x4

    if-eqz p2, :cond_6b

    .line 903
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 904
    array-length v4, p2

    array-length v6, v1

    sub-int/2addr v6, p1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 905
    invoke-static {p2, v5, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 906
    add-int/2addr p1, v4

    .line 910
    :cond_6b
    iget-object p2, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {p2, v1, v5, p1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_70
    .catch Landroid/system/ErrnoException; {:try_start_4d .. :try_end_70} :catch_76
    .catch Ljava/io/InterruptedIOException; {:try_start_4d .. :try_end_70} :catch_71
    .catchall {:try_start_4d .. :try_end_70} :catchall_84

    goto :goto_7a

    .line 914
    :catch_71
    move-exception p1

    .line 916
    :try_start_72
    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7b

    .line 911
    :catch_76
    move-exception p1

    .line 913
    invoke-static {v2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_84

    .line 917
    :goto_7a
    nop

    .line 920
    :goto_7b
    iget-object p1, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->closeInternal(Ljava/io/FileDescriptor;)V

    .line 921
    iput-object v3, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 922
    nop

    .line 923
    return-void

    .line 920
    :catchall_84
    move-exception p1

    iget-object p2, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->closeInternal(Ljava/io/FileDescriptor;)V

    .line 921
    iput-object v3, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    .line 922
    throw p1
.end method


# virtual methods
.method public whitelist canDetectErrors()Z
    .registers 2

    .line 961
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 962
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    move-result v0

    return v0

    .line 964
    :cond_b
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public whitelist checkError()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 984
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_a

    .line 985
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->checkError()V

    .line 1005
    return-void

    .line 987
    :cond_a
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    if-nez v0, :cond_26

    .line 988
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1a

    .line 989
    const-string v0, "ParcelFileDescriptor"

    const-string v1, "Peer didn\'t provide a comm channel; unable to check for errors"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void

    .line 995
    :cond_1a
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Landroid/os/ParcelFileDescriptor;->getOrCreateStatusBuffer()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    .line 998
    :cond_26
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    iget v0, v0, Landroid/os/ParcelFileDescriptor$Status;->status:I

    if-nez v0, :cond_31

    goto :goto_38

    .line 1002
    :cond_31
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mStatus:Landroid/os/ParcelFileDescriptor$Status;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1000
    :cond_38
    :goto_38
    return-void
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 812
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    .line 814
    :try_start_4
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 816
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 817
    goto :goto_17

    .line 816
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 817
    throw v0

    .line 819
    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    .line 821
    :goto_17
    return-void
.end method

.method public whitelist closeWithError(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    .line 833
    :try_start_4
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 835
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 836
    goto :goto_18

    .line 835
    :catchall_d
    move-exception p1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 836
    throw p1

    .line 838
    :cond_12
    if-eqz p1, :cond_19

    .line 841
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    .line 843
    :goto_18
    return-void

    .line 839
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1111
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 1112
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0

    .line 1114
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist detachFd()I
    .registers 4

    .line 788
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 789
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    return v0

    .line 791
    :cond_b
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_26

    .line 794
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->acquireRawFd(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 795
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/os/ParcelFileDescriptor;->writeCommStatusAndClose(ILjava/lang/String;)V

    .line 796
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    .line 797
    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V

    .line 798
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 799
    return v0

    .line 792
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist dup()Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 389
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 391
    :cond_b
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1093
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_7

    .line 1094
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 1096
    :cond_7
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_10

    .line 1097
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 1100
    :cond_10
    :try_start_10
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_19

    .line 1102
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1e

    .line 1105
    :cond_19
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1106
    nop

    .line 1107
    return-void

    .line 1105
    :catchall_1e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1106
    throw v0
.end method

.method public whitelist getFd()I
    .registers 3

    .line 766
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 767
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    return v0

    .line 769
    :cond_b
    iget-boolean v0, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez v0, :cond_16

    .line 772
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0

    .line 770
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 710
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 711
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0

    .line 713
    :cond_b
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist getStatSize()J
    .registers 6

    .line 722
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 723
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    return-wide v0

    .line 726
    :cond_b
    const-wide/16 v0, -0x1

    :try_start_d
    iget-object v2, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v2

    .line 727
    iget v3, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v3}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v3

    if-nez v3, :cond_25

    iget v3, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v3}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    .line 730
    :cond_24
    return-wide v0

    .line 728
    :cond_25
    :goto_25
    iget-wide v0, v2, Landroid/system/StructStat;->st_size:J
    :try_end_27
    .catch Landroid/system/ErrnoException; {:try_start_d .. :try_end_27} :catch_28

    return-wide v0

    .line 732
    :catch_28
    move-exception v2

    .line 733
    const-string v3, "ParcelFileDescriptor"

    const-string v4, "fstat() failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    return-wide v0
.end method

.method public greylist-max-o releaseResources()V
    .registers 1

    .line 863
    return-void
.end method

.method public greylist seekTo(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 747
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J

    move-result-wide p1

    return-wide p1

    .line 750
    :cond_b
    :try_start_b
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, p1, p2, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide p1
    :try_end_13
    .catch Landroid/system/ErrnoException; {:try_start_b .. :try_end_13} :catch_14

    return-wide p1

    .line 751
    :catch_14
    move-exception p1

    .line 752
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1084
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    .line 1085
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1087
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ParcelFileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1125
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    .line 1127
    :try_start_4
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mWrapped:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 1129
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 1130
    goto :goto_3b

    .line 1129
    :catchall_d
    move-exception p1

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->releaseResources()V

    .line 1130
    throw p1

    .line 1132
    :cond_12
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 1133
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1135
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mCommFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_2e

    .line 1137
    :cond_25
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    iget-object v0, p0, Landroid/os/ParcelFileDescriptor;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1140
    :goto_2e
    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_3b

    iget-boolean p1, p0, Landroid/os/ParcelFileDescriptor;->mClosed:Z

    if-nez p1, :cond_3b

    .line 1142
    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/os/ParcelFileDescriptor;->closeWithStatus(ILjava/lang/String;)V

    .line 1145
    :cond_3b
    :goto_3b
    return-void
.end method
