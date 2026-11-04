.class public final Landroid/os/SharedMemory;
.super Ljava/lang/Object;
.source "SharedMemory.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SharedMemory$MemoryRegistration;,
        Landroid/os/SharedMemory$Closer;,
        Landroid/os/SharedMemory$Unmapper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PROT_MASK:I


# instance fields
.field private greylist-max-o mCleaner:Lsun/misc/Cleaner;

.field private final greylist-max-o mFileDescriptor:Ljava/io/FileDescriptor;

.field private final greylist-max-o mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

.field private final greylist-max-o mSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 116
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_EXEC:I

    or-int/2addr v0, v1

    sget v1, Landroid/system/OsConstants;->PROT_NONE:I

    or-int/2addr v0, v1

    sput v0, Landroid/os/SharedMemory;->PROT_MASK:I

    .line 311
    new-instance v0, Landroid/os/SharedMemory$1;

    invoke-direct {v0}, Landroid/os/SharedMemory$1;-><init>()V

    sput-object v0, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/io/FileDescriptor;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_49

    .line 54
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 58
    iput-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 59
    iget-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {p1}, Landroid/os/SharedMemory;->nGetSize(Ljava/io/FileDescriptor;)I

    move-result p1

    iput p1, p0, Landroid/os/SharedMemory;->mSize:I

    .line 60
    iget p1, p0, Landroid/os/SharedMemory;->mSize:I

    if-lez p1, :cond_39

    .line 64
    new-instance p1, Landroid/os/SharedMemory$MemoryRegistration;

    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/os/SharedMemory$MemoryRegistration;-><init>(ILandroid/os/SharedMemory-IA;)V

    iput-object p1, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    .line 65
    iget-object p1, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    new-instance v0, Landroid/os/SharedMemory$Closer;

    iget-object v2, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 66
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    iget-object v3, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-direct {v0, v2, v3, v1}, Landroid/os/SharedMemory$Closer;-><init>(ILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory-IA;)V

    .line 65
    invoke-static {p1, v0}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object p1

    iput-object p1, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 67
    return-void

    .line 61
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FileDescriptor is not a valid ashmem fd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to create SharedMemory from closed FileDescriptor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to create SharedMemory from a null FileDescriptor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor blacklist <init>(Ljava/io/FileDescriptor;Landroid/os/SharedMemory-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private greylist-max-o checkOpen()V
    .registers 3

    .line 91
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    return-void

    .line 92
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SharedMemory is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Ljava/lang/String;I)Landroid/os/SharedMemory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 84
    if-lez p1, :cond_c

    .line 87
    new-instance v0, Landroid/os/SharedMemory;

    invoke-static {p0, p1}, Landroid/os/SharedMemory;->nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 85
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be greater than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist fromFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;
    .registers 2

    .line 111
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 112
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 113
    new-instance p0, Landroid/os/SharedMemory;

    invoke-direct {p0, v0}, Landroid/os/SharedMemory;-><init>(Ljava/io/FileDescriptor;)V

    return-object p0
.end method

.method private static native greylist-max-o nCreate(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nGetSize(Ljava/io/FileDescriptor;)I
.end method

.method private static native greylist-max-o nSetProt(Ljava/io/FileDescriptor;I)I
.end method

.method public static whitelist unmap(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 263
    instance-of v0, p0, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_8

    .line 264
    invoke-static {p0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 269
    return-void

    .line 266
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer wasn\'t created by #map(int, int, int); can\'t unmap"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greylist-max-o validateProt(I)V
    .registers 2

    .line 120
    sget v0, Landroid/os/SharedMemory;->PROT_MASK:I

    not-int v0, v0

    and-int/2addr p0, v0

    if-nez p0, :cond_7

    .line 123
    return-void

    .line 121
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid prot value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 279
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 280
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    if-eqz v0, :cond_12

    .line 281
    iget-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SharedMemory;->mCleaner:Lsun/misc/Cleaner;

    .line 284
    :cond_12
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getFd()I
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method

.method public blacklist getFdDup()Landroid/os/ParcelFileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public whitelist getSize()I
    .registers 2

    .line 190
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 191
    iget v0, p0, Landroid/os/SharedMemory;->mSize:I

    return v0
.end method

.method public whitelist map(III)Ljava/nio/ByteBuffer;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 237
    move/from16 v1, p2

    move/from16 v4, p3

    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 238
    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 239
    if-ltz v1, :cond_56

    .line 242
    if-lez v4, :cond_4e

    .line 245
    add-int v2, v1, v4

    iget v3, p0, Landroid/os/SharedMemory;->mSize:I

    if-gt v2, v3, :cond_45

    .line 248
    int-to-long v7, v4

    sget v10, Landroid/system/OsConstants;->MAP_SHARED:I

    iget-object v11, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    int-to-long v12, v1

    const-wide/16 v5, 0x0

    move v9, p1

    invoke-static/range {v5 .. v13}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v2

    .line 249
    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    and-int/2addr v1, p1

    if-nez v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    move v7, v1

    .line 250
    new-instance v1, Landroid/os/SharedMemory$Unmapper;

    iget-object v5, p0, Landroid/os/SharedMemory;->mMemoryRegistration:Landroid/os/SharedMemory$MemoryRegistration;

    invoke-virtual {v5}, Landroid/os/SharedMemory$MemoryRegistration;->acquire()Landroid/os/SharedMemory$MemoryRegistration;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/os/SharedMemory$Unmapper;-><init>(JILandroid/os/SharedMemory$MemoryRegistration;Landroid/os/SharedMemory-IA;)V

    .line 251
    new-instance v4, Ljava/nio/DirectByteBuffer;

    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    move-object v5, v1

    move v6, v7

    move/from16 v1, p3

    invoke-direct/range {v0 .. v6}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V

    return-object v0

    .line 246
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset + length must not exceed getSize()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist mapReadOnly()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 219
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist mapReadWrite()Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 205
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    sget v1, Landroid/system/OsConstants;->PROT_WRITE:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/os/SharedMemory;->mSize:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/SharedMemory;->map(III)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setProtect(I)Z
    .registers 3

    .line 151
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 152
    invoke-static {p1}, Landroid/os/SharedMemory;->validateProt(I)V

    .line 153
    iget-object v0, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/os/SharedMemory;->nSetProt(Ljava/io/FileDescriptor;I)I

    move-result p1

    .line 154
    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 293
    invoke-direct {p0}, Landroid/os/SharedMemory;->checkOpen()V

    .line 294
    iget-object p2, p0, Landroid/os/SharedMemory;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 295
    return-void
.end method
