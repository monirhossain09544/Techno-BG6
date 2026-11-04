.class public Lcom/android/internal/os/TransferPipe;
.super Ljava/lang/Object;
.source "TransferPipe.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TransferPipe$Caller;
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field static final blacklist DEFAULT_TIMEOUT:J = 0x1388L

.field static final blacklist TAG:Ljava/lang/String; = "TransferPipe"


# instance fields
.field blacklist mBufferPrefix:Ljava/lang/String;

.field blacklist mComplete:Z

.field blacklist mEndTime:J

.field blacklist mFailure:Ljava/lang/String;

.field final blacklist mFds:[Landroid/os/ParcelFileDescriptor;

.field blacklist mOutFd:Ljava/io/FileDescriptor;

.field final blacklist mThread:Ljava/lang/Thread;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const-string v0, "TransferPipe"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/TransferPipe;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    .line 73
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    .line 74
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static blacklist dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static varargs blacklist dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_6
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {p0, v3, p1}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 109
    aget-object p0, v0, v2

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 110
    const/4 p0, 0x0

    aput-object p0, v0, v2

    .line 112
    const/16 p0, 0x1000

    new-array p0, p0, [B

    .line 113
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_60

    .line 114
    :try_start_20
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_56

    .line 116
    :goto_2b
    :try_start_2b
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_4c

    .line 117
    const/4 v5, -0x1

    if-ne v4, v5, :cond_48

    .line 118
    nop

    .line 123
    :try_start_33
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 125
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_56

    .line 126
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_60

    .line 128
    aget-object p1, v0, v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 129
    aget-object p1, v0, v2

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 125
    return-object p0

    .line 121
    :cond_48
    :try_start_48
    invoke-virtual {p1, p0, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    .line 122
    goto :goto_2b

    .line 114
    :catchall_4c
    move-exception p0

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v3

    :try_start_52
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 113
    :catchall_56
    move-exception p0

    :try_start_57
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p1

    :try_start_5c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 128
    :catchall_60
    move-exception p0

    aget-object p1, v0, v1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 129
    aget-object p1, v0, v2

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 130
    throw p0
.end method

.method static blacklist go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const-wide/16 v5, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/TransferPipe;->go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 136
    return-void
.end method

.method static blacklist go(Lcom/android/internal/os/TransferPipe$Caller;Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_e

    .line 143
    :try_start_8
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 145
    goto :goto_d

    .line 144
    :catch_c
    move-exception p0

    .line 146
    :goto_d
    return-void

    .line 149
    :cond_e
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 150
    :try_start_13
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, p1, v1, p3, p4}, Lcom/android/internal/os/TransferPipe$Caller;->go(Landroid/os/IInterface;Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p2, p5, p6}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_25

    .line 152
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V

    .line 153
    return-void

    .line 149
    :catchall_25
    move-exception p0

    :try_start_26
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw p0
.end method

.method static blacklist goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/os/TransferPipe;->goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V

    .line 158
    return-void
.end method

.method static blacklist goDump(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    instance-of v0, p0, Landroid/os/Binder;

    if-eqz v0, :cond_a

    .line 165
    :try_start_4
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 167
    goto :goto_9

    .line 166
    :catch_8
    move-exception p0

    .line 168
    :goto_9
    return-void

    .line 171
    :cond_a
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V

    .line 172
    :try_start_f
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Landroid/os/IBinder;->dumpAsync(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    .line 174
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V

    .line 175
    return-void

    .line 171
    :catchall_21
    move-exception p0

    :try_start_22
    invoke-virtual {v0}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 233
    return-void
.end method

.method blacklist closeFd(I)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    if-eqz v0, :cond_14

    .line 223
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_e

    .line 225
    goto :goto_f

    .line 224
    :catch_e
    move-exception v0

    .line 226
    :goto_f
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 228
    :cond_14
    return-void
.end method

.method protected blacklist getNewOutputStream()Ljava/io/OutputStream;
    .registers 3

    .line 243
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method blacklist getReadFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist getWriteFd()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFds:[Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist go(Ljava/io/FileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V

    .line 179
    return-void
.end method

.method public blacklist go(Ljava/io/FileDescriptor;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_50

    .line 184
    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mOutFd:Ljava/io/FileDescriptor;

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    .line 191
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 193
    iget-object p1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 195
    :goto_13
    iget-object p1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez p1, :cond_3b

    iget-boolean p1, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    if-nez p1, :cond_3b

    .line 196
    iget-wide p1, p0, Lcom/android/internal/os/TransferPipe;->mEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_4d

    sub-long/2addr p1, v0

    .line 197
    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_2e

    .line 204
    :try_start_28
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4d

    .line 206
    goto :goto_2d

    .line 205
    :catch_2c
    move-exception p1

    .line 207
    :goto_2d
    goto :goto_13

    .line 199
    :cond_2e
    :try_start_2e
    iget-object p1, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 200
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Timeout"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 210
    :cond_3b
    iget-object p1, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    if-nez p1, :cond_45

    .line 213
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_4d

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 216
    nop

    .line 217
    return-void

    .line 211
    :cond_45
    :try_start_45
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :catchall_4d
    move-exception p1

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 215
    :catchall_50
    move-exception p1

    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 216
    throw p1
.end method

.method public blacklist kill()V
    .registers 2

    .line 236
    monitor-enter p0

    .line 237
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/TransferPipe;->closeFd(I)V

    .line 239
    monitor-exit p0

    .line 240
    return-void

    .line 239
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public whitelist test-api run()V
    .registers 14

    .line 248
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 252
    monitor-enter p0

    .line 253
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getReadFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 254
    if-nez v1, :cond_14

    .line 255
    const-string v0, "TransferPipe"

    const-string v1, "Pipe has been closed..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-exit p0

    return-void

    .line 258
    :cond_14
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/os/TransferPipe;->getNewOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 260
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_97

    .line 263
    nop

    .line 264
    nop

    .line 265
    iget-object v3, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_31

    .line 266
    iget-object v3, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v5, v4

    goto :goto_33

    .line 265
    :cond_31
    const/4 v3, 0x0

    move v5, v4

    .line 271
    :goto_33
    :try_start_33
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_76

    .line 273
    const/4 v7, 0x0

    if-nez v3, :cond_40

    .line 274
    invoke-virtual {v1, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_33

    .line 276
    :cond_40
    nop

    .line 277
    move v8, v7

    move v9, v8

    :goto_43
    if-ge v8, v6, :cond_6f

    .line 278
    aget-byte v10, v0, v8

    const/16 v11, 0xa

    if-eq v10, v11, :cond_6d

    .line 279
    if-le v8, v9, :cond_52

    .line 280
    sub-int v10, v8, v9

    invoke-virtual {v1, v0, v9, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 282
    :cond_52
    nop

    .line 283
    if-eqz v5, :cond_5b

    .line 284
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 285
    move v5, v7

    move v9, v8

    goto :goto_5c

    .line 283
    :cond_5b
    move v9, v8

    .line 288
    :cond_5c
    :goto_5c
    add-int/2addr v9, v4

    .line 289
    if-ge v9, v6, :cond_63

    aget-byte v10, v0, v9

    if-ne v10, v11, :cond_5c

    .line 290
    :cond_63
    if-ge v9, v6, :cond_6a

    .line 291
    move v5, v9

    move v9, v8

    move v8, v5

    move v5, v4

    goto :goto_6d

    .line 290
    :cond_6a
    move v12, v9

    move v9, v8

    move v8, v12

    .line 277
    :cond_6d
    :goto_6d
    add-int/2addr v8, v4

    goto :goto_43

    .line 295
    :cond_6f
    if-le v6, v9, :cond_75

    .line 296
    sub-int/2addr v6, v9

    invoke-virtual {v1, v0, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 298
    :cond_75
    goto :goto_33

    .line 301
    :cond_76
    iget-object v0, p0, Lcom/android/internal/os/TransferPipe;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_7b} :catch_87

    .line 310
    nop

    .line 312
    monitor-enter p0

    .line 313
    :try_start_7d
    iput-boolean v4, p0, Lcom/android/internal/os/TransferPipe;->mComplete:Z

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 315
    monitor-exit p0

    .line 316
    return-void

    .line 315
    :catchall_84
    move-exception v0

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_84

    throw v0

    .line 304
    :catch_87
    move-exception v0

    .line 305
    monitor-enter p0

    .line 306
    :try_start_89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TransferPipe;->mFailure:Ljava/lang/String;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 308
    monitor-exit p0

    return-void

    .line 309
    :catchall_94
    move-exception v0

    monitor-exit p0
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_94

    throw v0

    .line 260
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v0
.end method

.method public blacklist setBufferPrefix(Ljava/lang/String;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/internal/os/TransferPipe;->mBufferPrefix:Ljava/lang/String;

    .line 87
    return-void
.end method
