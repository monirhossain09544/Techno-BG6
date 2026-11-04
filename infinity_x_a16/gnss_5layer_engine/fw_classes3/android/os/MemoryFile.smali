.class public Landroid/os/MemoryFile;
.super Ljava/lang/Object;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MemoryFile$MemoryInputStream;,
        Landroid/os/MemoryFile$MemoryOutputStream;
    }
.end annotation


# static fields
.field private static greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mAllowPurging:Z

.field private greylist-max-o mMapping:Ljava/nio/ByteBuffer;

.field private greylist-max-o mSharedMemory:Landroid/os/SharedMemory;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSharedMemory(Landroid/os/MemoryFile;)Landroid/os/SharedMemory;
    .registers 1

    iget-object p0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    const-string v0, "MemoryFile"

    sput-object v0, Landroid/os/MemoryFile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 66
    :try_start_6
    invoke-static {p1, p2}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1

    iput-object p1, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    .line 67
    iget-object p1, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_14} :catch_15

    .line 70
    goto :goto_19

    .line 68
    :catch_15
    move-exception p1

    .line 69
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 71
    :goto_19
    return-void
.end method

.method private greylist-max-o beginAccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Landroid/os/MemoryFile;->checkActive()V

    .line 105
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    if-eqz v0, :cond_1d

    .line 106
    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 107
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MemoryFile has been purged"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1d
    :goto_1d
    return-void
.end method

.method private greylist-max-o checkActive()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 101
    return-void

    .line 99
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "MemoryFile has been deactivated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o endAccess()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    .line 116
    :cond_e
    return-void
.end method

.method public static greylist getSize(Ljava/io/FileDescriptor;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-static {p0}, Landroid/os/MemoryFile;->native_get_size(Ljava/io/FileDescriptor;)I

    move-result p0

    return p0
.end method

.method private static native greylist native_get_size(Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-r native_pin(Ljava/io/FileDescriptor;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public declared-synchronized whitelist allowPurging(Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 154
    :try_start_1
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    .line 155
    if-eq v0, p1, :cond_15

    .line 156
    iget-object v1, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-nez p1, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-static {v1, v2}, Landroid/os/MemoryFile;->native_pin(Ljava/io/FileDescriptor;Z)Z

    .line 157
    iput-boolean p1, p0, Landroid/os/MemoryFile;->mAllowPurging:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 159
    :cond_15
    monitor-exit p0

    return v0

    .line 153
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public whitelist close()V
    .registers 2

    .line 78
    invoke-virtual {p0}, Landroid/os/MemoryFile;->deactivate()V

    .line 79
    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 80
    return-void
.end method

.method greylist deactivate()V
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_c

    .line 92
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    .line 95
    :cond_c
    return-void
.end method

.method public greylist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .registers 3

    .line 168
    new-instance v0, Landroid/os/MemoryFile$MemoryInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile-IA;)V

    return-object v0
.end method

.method public whitelist getOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 177
    new-instance v0, Landroid/os/MemoryFile$MemoryOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/MemoryFile$MemoryOutputStream;-><init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile-IA;)V

    return-object v0
.end method

.method public whitelist isPurgingAllowed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    iget-boolean v0, p0, Landroid/os/MemoryFile;->mAllowPurging:Z

    return v0
.end method

.method public whitelist length()I
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/os/MemoryFile;->mSharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getSize()I

    move-result v0

    return v0
.end method

.method public whitelist readBytes([BIII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Landroid/os/MemoryFile;->beginAccess()V

    .line 195
    :try_start_3
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget-object p2, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 198
    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    .line 199
    nop

    .line 200
    return p4

    .line 198
    :catchall_12
    move-exception p1

    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    .line 199
    throw p1
.end method

.method public whitelist writeBytes([BIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Landroid/os/MemoryFile;->beginAccess()V

    .line 217
    :try_start_3
    iget-object v0, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 218
    iget-object p3, p0, Landroid/os/MemoryFile;->mMapping:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, p2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    .line 220
    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    .line 221
    nop

    .line 222
    return-void

    .line 220
    :catchall_12
    move-exception p1

    invoke-direct {p0}, Landroid/os/MemoryFile;->endAccess()V

    .line 221
    throw p1
.end method
