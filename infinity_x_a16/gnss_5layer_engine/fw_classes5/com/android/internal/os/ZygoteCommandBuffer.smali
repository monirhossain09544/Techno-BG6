.class Lcom/android/internal/os/ZygoteCommandBuffer;
.super Ljava/lang/Object;
.source "ZygoteCommandBuffer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private blacklist mNativeBuffer:J

.field private final blacklist mNativeSocket:I

.field private final blacklist mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocket;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    .line 62
    if-nez p1, :cond_b

    .line 63
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeSocket:I

    goto :goto_17

    .line 65
    :cond_b
    iget-object p1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    iput p1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeSocket:I

    .line 67
    :goto_17
    iget p1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeSocket:I

    invoke-static {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->getNativeBuffer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    .line 68
    return-void
.end method

.method constructor blacklist <init>([Ljava/lang/String;)V
    .registers 4

    .line 75
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/LocalSocket;

    invoke-direct {p0, v0}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->setCommand([Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private static native blacklist freeNativeBuffer(J)V
.end method

.method private static native blacklist getNativeBuffer(I)J
.end method

.method private static native blacklist insert(JLjava/lang/String;)V
.end method

.method private static native blacklist nativeForkRepeatedly(JIIILjava/lang/String;ZZ)Z
.end method

.method private static native blacklist nativeGetCount(J)I
.end method

.method private static native blacklist nativeNextArg(J)Ljava/lang/String;
.end method

.method private static native blacklist nativeReadFullyAndReset(J)V
.end method

.method private blacklist setCommand([Ljava/lang/String;)V
    .registers 7

    .line 119
    array-length v0, p1

    .line 120
    iget-wide v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/internal/os/ZygoteCommandBuffer;->insert(JLjava/lang/String;)V

    .line 121
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    .line 122
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v3, v4, v2}, Lcom/android/internal/os/ZygoteCommandBuffer;->insert(JLjava/lang/String;)V

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 125
    :cond_18
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 89
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->freeNativeBuffer(J)V

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    .line 91
    return-void
.end method

.method blacklist forkRepeatedly(Ljava/io/FileDescriptor;IILjava/lang/String;Z)Z
    .registers 17

    .line 170
    :try_start_0
    const-string v0, "sys.use_fifo_ui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    move v2, v1

    .line 171
    :goto_c
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    .line 173
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/os/Flags;->zygoteEarlyFifoBoost()Z

    move-result v0

    if-eqz v0, :cond_1a

    move v10, v2

    goto :goto_1b

    :cond_1a
    move v10, v1

    .line 171
    :goto_1b
    move v6, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    invoke-static/range {v3 .. v10}, Lcom/android/internal/os/ZygoteCommandBuffer;->nativeForkRepeatedly(JIIILjava/lang/String;ZZ)Z

    move-result p2
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2d

    .line 175
    iget-object p3, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 176
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 171
    return p2

    .line 175
    :catchall_2d
    move-exception v0

    move-object p2, v0

    iget-object p3, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {p3}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 176
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 177
    throw p2
.end method

.method blacklist getCount()I
    .registers 3

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nativeGetCount(J)I

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    .line 108
    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 105
    return v0

    .line 108
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 109
    throw v0
.end method

.method blacklist nextArg()Ljava/lang/String;
    .registers 3

    .line 134
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nativeNextArg(J)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    .line 136
    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 134
    return-object v0

    .line 136
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 137
    throw v0
.end method

.method blacklist readFullyAndReset()V
    .registers 3

    .line 144
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mNativeBuffer:J

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nativeReadFullyAndReset(J)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 146
    iget-object v0, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 147
    nop

    .line 148
    return-void

    .line 146
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteCommandBuffer;->mSocket:Landroid/net/LocalSocket;

    invoke-static {v1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 147
    throw v0
.end method
