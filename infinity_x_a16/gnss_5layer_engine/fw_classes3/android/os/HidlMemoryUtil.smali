.class public final Landroid/os/HidlMemoryUtil;
.super Ljava/lang/Object;
.source "HidlMemoryUtil.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HidlMemoryUtil"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static blacklist byteArrayToHidlMemory([B)Landroid/os/HidlMemory;
    .registers 2

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/HidlMemoryUtil;->byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist byteArrayToHidlMemory([BLjava/lang/String;)Landroid/os/HidlMemory;
    .registers 5

    .line 73
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    array-length v0, p0

    if-nez v0, :cond_11

    .line 76
    new-instance p0, Landroid/os/HidlMemory;

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    const-string v2, "ashmem"

    invoke-direct {p0, v2, v0, v1, p1}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object p0

    .line 79
    :cond_11
    if-eqz p1, :cond_14

    goto :goto_16

    :cond_14
    :try_start_14
    const-string p1, ""

    :goto_16
    array-length v0, p0

    invoke-static {p1, v0}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1
    :try_end_1b
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_1b} :catch_3b

    .line 80
    :try_start_1b
    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 83
    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->sharedMemoryToHidlMemory(Landroid/os/SharedMemory;)Landroid/os/HidlMemory;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2f

    .line 84
    if-eqz p1, :cond_2e

    :try_start_2b
    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V
    :try_end_2e
    .catch Landroid/system/ErrnoException; {:try_start_2b .. :try_end_2e} :catch_3b

    .line 83
    :cond_2e
    return-object p0

    .line 79
    :catchall_2f
    move-exception p0

    if-eqz p1, :cond_3a

    :try_start_32
    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_3a

    :catchall_36
    move-exception p1

    :try_start_37
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    throw p0
    :try_end_3b
    .catch Landroid/system/ErrnoException; {:try_start_37 .. :try_end_3b} :catch_3b

    .line 84
    :catch_3b
    move-exception p0

    .line 85
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist byteListToHidlMemory(Ljava/util/List;)Landroid/os/HidlMemory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/os/HidlMemory;"
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/HidlMemoryUtil;->byteListToHidlMemory(Ljava/util/List;Ljava/lang/String;)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist byteListToHidlMemory(Ljava/util/List;Ljava/lang/String;)Landroid/os/HidlMemory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/HidlMemory;"
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 118
    new-instance p0, Landroid/os/HidlMemory;

    const-wide/16 v0, 0x0

    const/4 p1, 0x0

    const-string v2, "ashmem"

    invoke-direct {p0, v2, v0, v1, p1}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object p0

    .line 121
    :cond_14
    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    :try_start_17
    const-string p1, ""

    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object p1
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_21} :catch_56

    .line 122
    :try_start_21
    invoke-virtual {p1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    goto :goto_29

    .line 126
    :cond_3d
    invoke-static {v0}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 127
    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->sharedMemoryToHidlMemory(Landroid/os/SharedMemory;)Landroid/os/HidlMemory;

    move-result-object p0
    :try_end_44
    .catchall {:try_start_21 .. :try_end_44} :catchall_4a

    .line 128
    if-eqz p1, :cond_49

    :try_start_46
    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V
    :try_end_49
    .catch Landroid/system/ErrnoException; {:try_start_46 .. :try_end_49} :catch_56

    .line 127
    :cond_49
    return-object p0

    .line 121
    :catchall_4a
    move-exception p0

    if-eqz p1, :cond_55

    :try_start_4d
    invoke-virtual {p1}, Landroid/os/SharedMemory;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception p1

    :try_start_52
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_55
    :goto_55
    throw p0
    :try_end_56
    .catch Landroid/system/ErrnoException; {:try_start_52 .. :try_end_56} :catch_56

    .line 128
    :catch_56
    move-exception p0

    .line 129
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static blacklist fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;
    .registers 7

    .line 211
    const/4 v0, 0x1

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    move v1, v0

    :goto_9
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 212
    const-string v1, "ashmem"

    if-nez p0, :cond_19

    .line 213
    new-instance p0, Landroid/os/HidlMemory;

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object p0

    .line 216
    :cond_19
    :try_start_19
    new-instance v2, Landroid/os/NativeHandle;

    invoke-static {p0}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Landroid/os/NativeHandle;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 217
    new-instance p0, Landroid/os/HidlMemory;

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4, v2}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V
    :try_end_28
    .catch Landroid/system/ErrnoException; {:try_start_19 .. :try_end_28} :catch_29

    return-object p0

    .line 218
    :catch_29
    move-exception p0

    .line 219
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist getBuffer(Landroid/os/HidlMemory;)Ljava/nio/ByteBuffer;
    .registers 14

    .line 225
    :try_start_0
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    long-to-int v3, v0

    .line 227
    if-nez v3, :cond_f

    .line 228
    const/4 p0, 0x0

    new-array p0, p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 231
    :cond_f
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getHandle()Landroid/os/NativeHandle;

    move-result-object p0

    .line 233
    int-to-long v6, v3

    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    invoke-virtual {p0}, Landroid/os/NativeHandle;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    const-wide/16 v11, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v4 .. v12}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v4

    .line 235
    new-instance v2, Ljava/nio/DirectByteBuffer;

    invoke-virtual {p0}, Landroid/os/NativeHandle;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    new-instance v7, Landroid/os/HidlMemoryUtil$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4, v5, v3}, Landroid/os/HidlMemoryUtil$$ExternalSyntheticLambda0;-><init>(JI)V

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_33
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_33} :catch_34

    return-object v2

    .line 242
    :catch_34
    move-exception v0

    move-object p0, v0

    .line 243
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static blacklist hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B
    .registers 8

    .line 142
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    const-string v6, "Memory size"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 145
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ashmem"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v1

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 146
    :goto_2a
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 145
    const-string v5, "Unsupported memory type: %s"

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_42

    .line 149
    new-array p0, v1, [B

    return-object p0

    .line 152
    :cond_42
    invoke-static {p0}, Landroid/os/HidlMemoryUtil;->getBuffer(Landroid/os/HidlMemory;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 154
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 155
    return-object v0
.end method

.method public static blacklist hidlMemoryToByteList(Landroid/os/HidlMemory;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HidlMemory;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    const-string v6, "Memory size"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 171
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ashmem"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 172
    :goto_29
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 171
    const-string v4, "Unsupported memory type: %s"

    invoke-static {v0, v4, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Landroid/os/HidlMemory;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_44

    .line 175
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 178
    :cond_44
    invoke-static {p0}, Landroid/os/HidlMemoryUtil;->getBuffer(Landroid/os/HidlMemory;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    :goto_51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 182
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 184
    :cond_63
    return-object v0
.end method

.method static synthetic blacklist lambda$getBuffer$0(JI)V
    .registers 5

    .line 237
    int-to-long v0, p2

    :try_start_1
    invoke-static {p0, p1, v0, v1}, Landroid/system/Os;->munmap(JJ)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_4} :catch_5

    .line 240
    goto :goto_b

    .line 238
    :catch_5
    move-exception p0

    .line 239
    const-string p1, "HidlMemoryUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :goto_b
    return-void
.end method

.method public static blacklist sharedMemoryToHidlMemory(Landroid/os/SharedMemory;)Landroid/os/HidlMemory;
    .registers 5

    .line 195
    if-nez p0, :cond_d

    .line 196
    new-instance p0, Landroid/os/HidlMemory;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "ashmem"

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/os/HidlMemory;-><init>(Ljava/lang/String;JLandroid/os/NativeHandle;)V

    return-object p0

    .line 198
    :cond_d
    invoke-virtual {p0}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/SharedMemory;->getSize()I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/HidlMemoryUtil;->fileDescriptorToHidlMemory(Ljava/io/FileDescriptor;I)Landroid/os/HidlMemory;

    move-result-object p0

    return-object p0
.end method
