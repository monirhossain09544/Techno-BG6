.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidUserSysTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "[J>;"
    }
.end annotation


# static fields
.field private static final blacklist REMOVE_UID_PROC_FILE:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private final blacklist mBuffer:[J

.field private final blacklist mUsrSysTime:[J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V
    .registers 4

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V

    .line 212
    const/4 p1, 0x4

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    .line 214
    const/4 p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    .line 228
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3

    .line 217
    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(ZLcom/android/internal/os/Clock;)V

    .line 218
    return-void
.end method

.method public constructor blacklist <init>(ZLcom/android/internal/os/Clock;)V
    .registers 4

    .line 221
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcStringReader;->getUserSysTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;ZLcom/android/internal/os/Clock;)V

    .line 212
    const/4 p1, 0x4

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    .line 214
    const/4 p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    .line 222
    return-void
.end method

.method private blacklist removeUidsFromKernelModule(II)V
    .registers 8

    .line 309
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing uids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 311
    :try_start_26
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_58
    .catchall {:try_start_26 .. :try_end_2d} :catchall_56

    .line 312
    :try_start_2d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_48
    .catchall {:try_start_2d .. :try_end_48} :catchall_4c

    .line 314
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_58
    .catchall {:try_start_48 .. :try_end_4b} :catchall_56

    goto :goto_81

    .line 311
    :catchall_4c
    move-exception v2

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v1

    :try_start_52
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw v2
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_58
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 318
    :catchall_56
    move-exception p1

    goto :goto_86

    .line 314
    :catch_58
    move-exception v1

    .line 315
    :try_start_59
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to remove uids "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " from uid_cputime module"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_59 .. :try_end_81} :catchall_56

    .line 318
    :goto_81
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 319
    nop

    .line 320
    return-void

    .line 318
    :goto_86
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 319
    throw p1
.end method


# virtual methods
.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mThrottle:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    .line 271
    if-nez v0, :cond_12

    .line 284
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 272
    :cond_11
    return-void

    .line 275
    :cond_12
    :goto_12
    :try_start_12
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 276
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    invoke-static {v1, v3}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3e

    .line 277
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    goto :goto_12

    .line 280
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v3, v3, v2

    const/4 v5, 0x0

    aput-wide v3, v1, v5

    .line 281
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    const/4 v4, 0x2

    aget-wide v3, v3, v4

    aput-wide v3, v1, v2

    .line 282
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v3, v1, v5

    long-to-int v1, v3

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    invoke-interface {p1, v1, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_12 .. :try_end_5a} :catchall_61

    goto :goto_12

    .line 284
    :cond_5b
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 285
    :cond_60
    return-void

    .line 270
    :catchall_61
    move-exception p1

    if-eqz v0, :cond_6c

    :try_start_64
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6c
    :goto_6c
    throw p1
.end method

.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;Z)V"
        }
    .end annotation

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, " s="

    iget-object v3, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mReader:Lcom/android/internal/os/KernelCpuProcStringReader;

    iget-boolean v4, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mThrottle:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_13

    if-eqz p2, :cond_11

    goto :goto_13

    :cond_11
    move v4, v5

    goto :goto_14

    :cond_13
    :goto_13
    move v4, v6

    :goto_14
    invoke-virtual {v3, v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v3

    .line 233
    if-nez v3, :cond_20

    .line 265
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 234
    :cond_1f
    return-void

    .line 237
    :cond_20
    :goto_20
    :try_start_20
    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->nextLine()Ljava/nio/CharBuffer;

    move-result-object v4

    if-eqz v4, :cond_ec

    .line 238
    iget-object v7, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    invoke-static {v4, v7}, Lcom/android/internal/os/KernelCpuProcStringReader;->asLongs(Ljava/nio/CharBuffer;[J)I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_4c

    .line 239
    iget-object v7, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid line: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    goto :goto_20

    .line 242
    :cond_4c
    iget-object v4, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v7, v4, v5

    long-to-int v4, v7

    .line 243
    iget-object v7, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 244
    const/4 v8, 0x2

    if-nez v7, :cond_63

    .line 245
    new-array v7, v8, [J

    .line 246
    iget-object v9, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v9, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    :cond_63
    iget-object v9, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v9, v9, v6

    .line 249
    iget-object v11, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mBuffer:[J

    aget-wide v11, v11, v8

    .line 250
    iget-object v8, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v13, v7, v5

    sub-long v13, v9, v13

    aput-wide v13, v8, v5

    .line 251
    iget-object v8, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v13, v7, v6

    sub-long v13, v11, v13

    aput-wide v13, v8, v6

    .line 253
    iget-object v8, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v13, v8, v5

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    if-ltz v8, :cond_a6

    iget-object v8, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v13, v8, v6

    cmp-long v8, v13, v15

    if-gez v8, :cond_8e

    goto :goto_a6

    .line 257
    :cond_8e
    iget-object v8, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v13, v8, v5

    cmp-long v8, v13, v15

    if-gtz v8, :cond_9e

    iget-object v8, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    aget-wide v13, v8, v6

    cmp-long v8, v13, v15

    if-lez v8, :cond_e6

    .line 258
    :cond_9e
    if-eqz v1, :cond_e6

    .line 259
    iget-object v8, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mUsrSysTime:[J

    invoke-interface {v1, v4, v8}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    goto :goto_e6

    .line 254
    :cond_a6
    :goto_a6
    iget-object v8, v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->mTag:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Negative user/sys time delta for UID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "\nPrev times: u="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v13, v7, v5

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v13, v7, v6

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, " Curr times: u="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_e6
    :goto_e6
    aput-wide v9, v7, v5

    .line 263
    aput-wide v11, v7, v6
    :try_end_ea
    .catchall {:try_start_20 .. :try_end_ea} :catchall_f2

    .line 264
    goto/16 :goto_20

    .line 265
    :cond_ec
    if-eqz v3, :cond_f1

    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V

    .line 266
    :cond_f1
    return-void

    .line 232
    :catchall_f2
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_fe

    :try_start_f6
    invoke-virtual {v3}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;->close()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_fa

    goto :goto_fe

    :catchall_fa
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fe
    :goto_fe
    throw v1
.end method

.method public blacklist removeUid(I)V
    .registers 2

    .line 289
    invoke-super {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader;->removeUid(I)V

    .line 290
    invoke-direct {p0, p1, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->removeUidsFromKernelModule(II)V

    .line 291
    return-void
.end method

.method public blacklist removeUidsInRange(II)V
    .registers 3

    .line 295
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader;->removeUidsInRange(II)V

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->removeUidsFromKernelModule(II)V

    .line 297
    return-void
.end method
