.class public Landroid/os/RedactingFileDescriptor;
.super Ljava/lang/Object;
.source "RedactingFileDescriptor.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "RedactingFileDescriptor"


# instance fields
.field private final blacklist mCallback:Landroid/os/ProxyFileDescriptorCallback;

.field private volatile blacklist mFreeOffsets:[J

.field private blacklist mInner:Ljava/io/FileDescriptor;

.field private blacklist mOuter:Landroid/os/ParcelFileDescriptor;

.field private volatile blacklist mRedactRanges:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFreeOffsets(Landroid/os/RedactingFileDescriptor;)[J
    .registers 1

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor;->mFreeOffsets:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInner(Landroid/os/RedactingFileDescriptor;)Ljava/io/FileDescriptor;
    .registers 1

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRedactRanges(Landroid/os/RedactingFileDescriptor;)[J
    .registers 1

    iget-object p0, p0, Landroid/os/RedactingFileDescriptor;->mRedactRanges:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRedactRanges(Landroid/os/RedactingFileDescriptor;[J)V
    .registers 2

    iput-object p1, p0, Landroid/os/RedactingFileDescriptor;->mRedactRanges:[J

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/io/File;I[J[J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    .line 50
    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    .line 149
    new-instance v0, Landroid/os/RedactingFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RedactingFileDescriptor$1;-><init>(Landroid/os/RedactingFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RedactingFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 55
    invoke-static {p4}, Landroid/os/RedactingFileDescriptor;->checkRangesArgument([J)[J

    move-result-object p4

    iput-object p4, p0, Landroid/os/RedactingFileDescriptor;->mRedactRanges:[J

    .line 56
    iput-object p5, p0, Landroid/os/RedactingFileDescriptor;->mFreeOffsets:[J

    .line 60
    :try_start_17
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-static {p3}, Landroid/os/FileUtils;->translateModePfdToPosix(I)I

    move-result p4

    .line 60
    const/4 p5, 0x0

    invoke-static {p2, p4, p5}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p0, Landroid/os/RedactingFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    .line 62
    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iget-object p2, p0, Landroid/os/RedactingFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 63
    invoke-virtual {p1, p3, p2}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/os/RedactingFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;
    :try_end_36
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_36} :catch_3b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_39

    .line 66
    nop

    .line 71
    nop

    .line 72
    return-void

    .line 67
    :catch_39
    move-exception p1

    goto :goto_41

    .line 64
    :catch_3b
    move-exception p1

    .line 65
    :try_start_3c
    invoke-virtual {p1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_39

    .line 68
    :goto_41
    iget-object p2, p0, Landroid/os/RedactingFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 69
    iget-object p2, p0, Landroid/os/RedactingFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 70
    throw p1
.end method

.method private static blacklist checkRangesArgument([J)[J
    .registers 6

    .line 75
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1f

    .line 78
    const/4 v0, 0x0

    :goto_6
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1e

    .line 79
    aget-wide v1, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-wide v3, p0, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_18

    .line 78
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 80
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 83
    :cond_1e
    return-object p0

    .line 76
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist open(Landroid/content/Context;Ljava/io/File;I[J[J)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Landroid/os/RedactingFileDescriptor;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/RedactingFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/File;I[J[J)V

    iget-object p0, v0, Landroid/os/RedactingFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public static blacklist removeRange([JJJ)[J
    .registers 11

    .line 114
    cmp-long v0, p1, p3

    if-nez v0, :cond_5

    .line 115
    return-object p0

    .line 116
    :cond_5
    if-gtz v0, :cond_9b

    .line 120
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    .line 121
    const/4 v1, 0x0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_9a

    .line 122
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1d

    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p0, v2

    cmp-long v2, p3, v2

    if-ltz v2, :cond_1d

    goto/16 :goto_96

    .line 124
    :cond_1d
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4b

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, p0, v2

    cmp-long v3, p3, v3

    if-gtz v3, :cond_4b

    .line 126
    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 127
    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    aget-wide v4, p0, v1

    aput-wide v4, v0, v3

    .line 128
    array-length v3, v0

    add-int/lit8 v3, v3, -0x3

    aput-wide p1, v0, v3

    .line 129
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aput-wide p3, v0, v3

    .line 130
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, p0, v2

    aput-wide v4, v0, v3

    goto :goto_96

    .line 133
    :cond_4b
    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 134
    aget-wide v2, p0, v1

    cmp-long v2, p3, v2

    if-ltz v2, :cond_6c

    add-int/lit8 v2, v1, 0x1

    aget-wide v2, p0, v2

    cmp-long v2, p3, v2

    if-gtz v2, :cond_6c

    .line 135
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-wide v3, p0, v1

    invoke-static {v3, v4, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aput-wide v3, v0, v2

    goto :goto_73

    .line 137
    :cond_6c
    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget-wide v3, p0, v1

    aput-wide v3, v0, v2

    .line 139
    :goto_73
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-ltz v2, :cond_8d

    add-int/lit8 v2, v1, 0x1

    aget-wide v3, p0, v2

    cmp-long v3, p1, v3

    if-gtz v3, :cond_8d

    .line 140
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, p0, v2

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    aput-wide v4, v0, v3

    goto :goto_96

    .line 142
    :cond_8d
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p0, v3

    aput-wide v3, v0, v2

    .line 121
    :goto_96
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_a

    .line 146
    :cond_9a
    return-object v0

    .line 117
    :cond_9b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
