.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "Zygote"


# instance fields
.field private final blacklist abiList:Ljava/lang/String;

.field private blacklist isEof:Z

.field private final greylist mSocket:Landroid/net/LocalSocket;

.field private final greylist mSocketOutStream:Ljava/io/DataOutputStream;

.field private final greylist peer:Landroid/net/Credentials;


# direct methods
.method constructor blacklist <init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 83
    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    .line 85
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 87
    iget-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 90
    :try_start_19
    iget-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_36

    .line 94
    nop

    .line 96
    iget-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result p1

    if-ne p1, p2, :cond_2e

    .line 99
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    .line 100
    return-void

    .line 97
    :cond_2e
    new-instance p1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string p2, "Only system UID is allowed to connect to Zygote."

    invoke-direct {p1, p2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :catch_36
    move-exception p1

    .line 92
    const-string p2, "Zygote"

    const-string v0, "Cannot read peer credentials"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    throw p1
.end method

.method private blacklist handleAbiListQuery()V
    .registers 4

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->abiList:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 324
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    .line 327
    nop

    .line 328
    return-void

    .line 325
    :catch_15
    move-exception v0

    .line 326
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handleApiDenylistExemptions(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 4

    .line 416
    new-instance v0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/ZygoteConnection;->stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method private blacklist handleBootCompleted()V
    .registers 4

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_b

    .line 346
    nop

    .line 348
    invoke-static {}, Ldalvik/system/VMRuntime;->bootCompleted()V

    .line 349
    return-void

    .line 344
    :catch_b
    move-exception v0

    .line 345
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handleChildProc(Lcom/android/internal/os/ZygoteArguments;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;
    .registers 10

    .line 515
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 517
    const-string v0, "Zygote"

    invoke-static {p1, v0}, Lcom/android/internal/os/Zygote;->setAppProcessName(Lcom/android/internal/os/ZygoteArguments;Ljava/lang/String;)V

    .line 520
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 521
    iget-object v0, p1, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 530
    if-nez p3, :cond_1f

    .line 531
    iget p2, p1, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    iget-object p3, p1, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    iget-object p1, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3, p1, v0}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[J[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    .line 535
    :cond_1f
    iget-object p1, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/os/ZygoteInit;->childZygoteInit([Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1

    .line 522
    :cond_26
    iget-object v0, p1, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    .line 524
    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    .line 522
    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 528
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WrapperInit.execApplication unexpectedly returned"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist handleHiddenApiAccessLogSampleRate(Lcom/android/internal/os/ZygoteServer;II)Ljava/lang/Runnable;
    .registers 5

    .line 452
    new-instance v0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/ZygoteConnection;->stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method private blacklist handleParentProc(ILjava/io/FileDescriptor;)V
    .registers 22

    .line 549
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "Error reading pid from wrapped process, child may have died"

    const-string v4, "Zygote"

    if-lez v2, :cond_f

    .line 550
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    .line 553
    :cond_f
    nop

    .line 554
    const/4 v5, 0x0

    if-eqz v0, :cond_f9

    if-lez v2, :cond_f9

    .line 555
    nop

    .line 561
    const/4 v7, 0x1

    :try_start_17
    new-array v8, v7, [Landroid/system/StructPollfd;

    new-instance v9, Landroid/system/StructPollfd;

    invoke-direct {v9}, Landroid/system/StructPollfd;-><init>()V

    aput-object v9, v8, v5

    .line 565
    const/4 v9, 0x4

    new-array v10, v9, [B

    .line 567
    nop

    .line 568
    nop

    .line 569
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    const/16 v13, 0x4e20

    move v14, v5

    move v15, v13

    .line 571
    :goto_2d
    if-ge v14, v9, :cond_85

    if-lez v15, :cond_85

    .line 572
    aget-object v6, v8, v5

    iput-object v0, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 573
    aget-object v6, v8, v5

    sget v9, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v9, v9

    iput-short v9, v6, Landroid/system/StructPollfd;->events:S

    .line 574
    aget-object v6, v8, v5

    iput-short v5, v6, Landroid/system/StructPollfd;->revents:S

    .line 575
    aget-object v6, v8, v5

    const/4 v9, 0x0

    iput-object v9, v6, Landroid/system/StructPollfd;->userData:Ljava/lang/Object;

    .line 577
    invoke-static {v8, v15}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v6

    .line 578
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 579
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_a8

    move v15, v5

    move/from16 v18, v6

    sub-long v5, v16, v11

    move/from16 v16, v15

    :try_start_56
    sget-object v15, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 580
    invoke-virtual {v9, v5, v6, v15}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    long-to-int v5, v5

    .line 583
    rsub-int v15, v5, 0x4e20

    .line 585
    if-lez v18, :cond_7a

    .line 586
    aget-object v5, v8, v16

    iget-short v5, v5, Landroid/system/StructPollfd;->revents:S

    sget v6, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_87

    .line 588
    invoke-static {v0, v10, v14, v7}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 589
    if-ltz v5, :cond_72

    .line 592
    add-int/2addr v14, v5

    .line 593
    goto :goto_81

    .line 590
    :cond_72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v5, "Some error"

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_7a
    if-nez v18, :cond_81

    .line 598
    const-string v5, "Timed out waiting for child."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_81
    :goto_81
    move/from16 v5, v16

    const/4 v9, 0x4

    goto :goto_2d

    .line 571
    :cond_85
    move/from16 v16, v5

    .line 602
    :cond_87
    const/4 v0, 0x4

    if-ne v14, v0, :cond_9c

    .line 603
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 604
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_98} :catch_9a

    move v5, v0

    goto :goto_9d

    .line 610
    :catch_9a
    move-exception v0

    goto :goto_ab

    .line 602
    :cond_9c
    const/4 v5, -0x1

    .line 607
    :goto_9d
    const/4 v6, -0x1

    if-ne v5, v6, :cond_a7

    .line 608
    :try_start_a0
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_a7

    .line 610
    :catch_a4
    move-exception v0

    move v6, v5

    goto :goto_ac

    .line 612
    :cond_a7
    :goto_a7
    goto :goto_b0

    .line 610
    :catch_a8
    move-exception v0

    move/from16 v16, v5

    :goto_ab
    const/4 v6, -0x1

    .line 611
    :goto_ac
    invoke-static {v4, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 616
    :goto_b0
    if-lez v5, :cond_fb

    .line 617
    move v0, v5

    .line 618
    :goto_b3
    if-lez v0, :cond_bc

    if-eq v0, v2, :cond_bc

    .line 619
    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v0

    goto :goto_b3

    .line 621
    :cond_bc
    if-lez v0, :cond_d8

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrapped process has pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    nop

    .line 624
    move v2, v5

    move v5, v7

    goto :goto_fd

    .line 626
    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " innerPid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fb

    .line 554
    :cond_f9
    move/from16 v16, v5

    .line 634
    :cond_fb
    :goto_fb
    move/from16 v5, v16

    :goto_fd
    :try_start_fd
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 635
    iget-object v0, v1, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_107} :catch_109

    .line 638
    nop

    .line 639
    return-void

    .line 636
    :catch_109
    move-exception v0

    .line 637
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handlePidQuery()V
    .registers 4

    .line 332
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 335
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_1b

    .line 338
    nop

    .line 339
    return-void

    .line 336
    :catch_1b
    move-exception v0

    .line 337
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handlePreload()V
    .registers 4

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->isPreloadComplete()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 360
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_16

    .line 362
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->preload()V

    .line 363
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    .line 367
    :goto_16
    nop

    .line 368
    return-void

    .line 365
    :catch_18
    move-exception v0

    .line 366
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error writing to command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist handleUsapPoolStatusChange(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;
    .registers 4

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/os/ZygoteServer;->setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;

    move-result-object p2

    .line 424
    if-nez p2, :cond_f

    .line 425
    iget-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_12

    .line 427
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    .line 430
    :goto_12
    return-object p2

    .line 431
    :catch_13
    move-exception p1

    .line 432
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error writing to command socket"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic blacklist lambda$handleApiDenylistExemptions$0([Ljava/lang/String;)V
    .registers 1

    .line 417
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->setApiDenylistExemptions([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleHiddenApiAccessLogSampleRate$1(II)V
    .registers 3

    .line 453
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 454
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiAccessLogSampleRate(I)V

    .line 455
    invoke-static {p0, p1}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->setHiddenApiAccessLogSampleRates(II)V

    .line 457
    invoke-static {}, Lcom/android/internal/os/StatsdHiddenApiUsageLogger;->getInstance()Lcom/android/internal/os/StatsdHiddenApiUsageLogger;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->setHiddenApiUsageLogger(Ldalvik/system/VMRuntime$HiddenApiUsageLogger;)V

    .line 458
    return-void
.end method

.method private blacklist setChildPgid(I)V
    .registers 3

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v0}, Landroid/net/Credentials;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/system/Os;->getpgid(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/system/Os;->setpgid(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_d} :catch_e

    .line 652
    goto :goto_16

    .line 645
    :catch_e
    move-exception p1

    .line 650
    const-string p1, "Zygote"

    const-string v0, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_16
    return-void
.end method

.method private blacklist stateChangeWithUsapPoolReset(Lcom/android/internal/os/ZygoteServer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 5

    .line 373
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_3e

    const-string v1, "Zygote"

    if-eqz v0, :cond_10

    .line 374
    :try_start_8
    const-string v0, "Emptying USAP Pool due to state change."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    .line 378
    :cond_10
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 380
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_37

    .line 381
    iget-object p2, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 383
    invoke-virtual {p2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    .line 382
    invoke-virtual {p1, p2, v0}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object p2

    .line 385
    if-eqz p2, :cond_32

    .line 386
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    .line 387
    return-object p2

    .line 389
    :cond_32
    const-string p1, "Finished refilling USAP Pool after state change."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_37
    iget-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3c} :catch_3e

    .line 395
    const/4 p1, 0x0

    return-object p1

    .line 396
    :catch_3e
    move-exception p1

    .line 397
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Error writing to command socket"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method protected blacklist canPreloadApp()Z
    .registers 2

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method greylist closeSocket()V
    .registers 4

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 491
    goto :goto_e

    .line 488
    :catch_6
    move-exception v0

    .line 489
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    :goto_e
    return-void
.end method

.method blacklist getFileDescriptor()Ljava/io/FileDescriptor;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSocketOutputStream()Ljava/io/DataOutputStream;
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    return-object v0
.end method

.method protected blacklist handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    .registers 3

    .line 478
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Zygote does not support app preloading"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist isClosedByPeer()Z
    .registers 2

    .line 495
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z

    return v0
.end method

.method protected blacklist isPreloadComplete()Z
    .registers 2

    .line 466
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete()Z

    move-result v0

    return v0
.end method

.method protected blacklist preload()V
    .registers 1

    .line 462
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->lazyPreload()V

    .line 463
    return-void
.end method

.method blacklist processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;
    .registers 30

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Lcom/android/internal/os/ZygoteCommandBuffer;

    iget-object v4, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteCommandBuffer;-><init>(Landroid/net/LocalSocket;)V

    .line 126
    :goto_d
    :try_start_d
    invoke-static {v3}, Lcom/android/internal/os/ZygoteArguments;->getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;

    move-result-object v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_26d
    .catchall {:try_start_d .. :try_end_11} :catchall_26a

    .line 130
    nop

    .line 131
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1d

    .line 132
    :try_start_16
    iput-boolean v5, v0, Lcom/android/internal/os/ZygoteConnection;->isEof:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_26a

    .line 133
    nop

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 133
    return-object v6

    .line 137
    :cond_1d
    nop

    .line 138
    nop

    .line 140
    :try_start_1f
    iget-boolean v7, v4, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v7, :cond_2b

    .line 141
    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection;->handleBootCompleted()V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_26a

    .line 142
    nop

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 142
    return-object v6

    .line 145
    :cond_2b
    :try_start_2b
    iget-boolean v7, v4, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-eqz v7, :cond_37

    .line 146
    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection;->handleAbiListQuery()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_26a

    .line 147
    nop

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 147
    return-object v6

    .line 150
    :cond_37
    :try_start_37
    iget-boolean v7, v4, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v7, :cond_43

    .line 151
    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection;->handlePidQuery()V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_26a

    .line 152
    nop

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 152
    return-object v6

    .line 155
    :cond_43
    :try_start_43
    iget-boolean v7, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    const/4 v8, -0x1

    if-nez v7, :cond_237

    iget-object v7, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-nez v7, :cond_237

    iget v7, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    if-ne v7, v8, :cond_237

    iget v7, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-eq v7, v8, :cond_56

    .line 160
    goto/16 :goto_237

    .line 163
    :cond_56
    iget-boolean v7, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    if-eqz v7, :cond_62

    .line 164
    invoke-direct {v0}, Lcom/android/internal/os/ZygoteConnection;->handlePreload()V
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_26a

    .line 165
    nop

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 165
    return-object v6

    .line 168
    :cond_62
    :try_start_62
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->canPreloadApp()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_9f

    iget-object v7, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v7, :cond_9f

    .line 169
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    iget-object v2, v4, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 171
    array-length v4, v1

    invoke-virtual {v2, v1, v9, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 172
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 173
    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 175
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 176
    if-eqz v1, :cond_97

    .line 177
    invoke-virtual {v0, v1}, Lcom/android/internal/os/ZygoteConnection;->handlePreloadApp(Landroid/content/pm/ApplicationInfo;)V
    :try_end_92
    .catchall {:try_start_62 .. :try_end_92} :catchall_26a

    .line 181
    nop

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 181
    return-object v6

    .line 179
    :cond_97
    :try_start_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to deserialize --preload-app"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_9f
    iget-wide v10, v4, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-nez v7, :cond_208

    iget-wide v10, v4, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    cmp-long v7, v10, v12

    if-nez v7, :cond_208

    .line 192
    iget-object v7, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v4, v7}, Lcom/android/internal/os/Zygote;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    .line 193
    iget-object v7, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v4, v7}, Lcom/android/internal/os/Zygote;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteArguments;Landroid/net/Credentials;)V

    .line 195
    invoke-static {v4}, Lcom/android/internal/os/Zygote;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 196
    invoke-static {v4}, Lcom/android/internal/os/Zygote;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteArguments;)V

    .line 198
    nop

    .line 200
    iget-object v7, v4, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-eqz v7, :cond_ce

    .line 201
    iget-object v7, v4, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    sget-object v10, Lcom/android/internal/os/Zygote;->INT_ARRAY_2D:[[I

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    move-object v11, v7

    goto :goto_cf

    .line 200
    :cond_ce
    move-object v11, v6

    .line 204
    :goto_cf
    nop

    .line 206
    iget-object v7, v4, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_97 .. :try_end_d2} :catchall_26a

    if-eqz v7, :cond_fb

    .line 208
    :try_start_d4
    sget v7, Landroid/system/OsConstants;->O_CLOEXEC:I

    invoke-static {v7}, Landroid/system/Os;->pipe2(I)[Ljava/io/FileDescriptor;

    move-result-object v7

    .line 209
    aget-object v10, v7, v5

    .line 210
    aget-object v7, v7, v9

    .line 211
    sget v12, Landroid/system/OsConstants;->F_SETFD:I

    invoke-static {v10, v12, v9}, Landroid/system/Os;->fcntlInt(Ljava/io/FileDescriptor;II)I

    .line 212
    invoke-virtual {v10}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v12

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v13

    filled-new-array {v12, v13}, [I

    move-result-object v12
    :try_end_ef
    .catch Landroid/system/ErrnoException; {:try_start_d4 .. :try_end_ef} :catch_f2
    .catchall {:try_start_d4 .. :try_end_ef} :catchall_26a

    .line 216
    move-object/from16 v16, v12

    goto :goto_ff

    .line 213
    :catch_f2
    move-exception v0

    .line 214
    :try_start_f3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to set up pipe for invoke-with"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 206
    :cond_fb
    move-object v7, v6

    move-object v10, v7

    move-object/from16 v16, v10

    .line 231
    :goto_ff
    const/4 v12, 0x2

    new-array v15, v12, [I

    aput v8, v15, v9

    aput v8, v15, v5

    .line 233
    iget-object v8, v0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 235
    if-eqz v8, :cond_114

    .line 236
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v8

    aput v8, v15, v9

    .line 239
    :cond_114
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 241
    if-eqz v8, :cond_120

    .line 242
    invoke-virtual {v8}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v8

    aput v8, v15, v5

    .line 245
    :cond_120
    iget-object v5, v4, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v5, :cond_165

    iget-boolean v5, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-nez v5, :cond_165

    if-eqz v2, :cond_165

    iget-object v5, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    .line 246
    invoke-virtual {v5}, Landroid/net/Credentials;->getUid()I

    move-result v5

    const/16 v8, 0x3e8

    if-eq v5, v8, :cond_135

    goto :goto_165

    .line 284
    :cond_135
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    .line 285
    nop

    .line 286
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    .line 287
    invoke-virtual {v6}, Landroid/net/Credentials;->getUid()I

    move-result v6

    iget-object v7, v0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v7}, Lcom/android/internal/os/Zygote;->minChildUid(Landroid/net/Credentials;)I

    move-result v7

    move-object v8, v5

    move v5, v6

    move v6, v7

    iget-object v7, v4, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    move-object v9, v8

    iget-boolean v8, v4, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    .line 285
    move-object v4, v9

    invoke-static/range {v3 .. v8}, Lcom/android/internal/os/Zygote;->forkSimpleApps(Lcom/android/internal/os/ZygoteCommandBuffer;Ljava/io/FileDescriptor;IILjava/lang/String;Z)Ljava/lang/Runnable;

    move-result-object v4

    .line 289
    if-nez v4, :cond_15d

    .line 292
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    .line 294
    goto/16 :goto_d

    .line 297
    :cond_15d
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V
    :try_end_160
    .catchall {:try_start_f3 .. :try_end_160} :catchall_26a

    .line 298
    nop

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 298
    return-object v4

    .line 247
    :cond_165
    :goto_165
    :try_start_165
    const-string v5, "Zygote"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resorting to Java fork code; multipleOK = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    iget-object v8, v4, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-eqz v8, :cond_17d

    const-string v8, "; invokeWith used"

    goto :goto_17f

    :cond_17d
    const-string v8, ""

    :goto_17f
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object v2, v7

    iget v7, v4, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iget v8, v4, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iget-object v9, v4, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    move-object v5, v10

    iget v10, v4, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    iget v12, v4, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iget-object v13, v4, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    iget-object v14, v4, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    move-object/from16 v26, v6

    iget-boolean v6, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    move-object/from16 p2, v2

    iget-object v2, v4, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v4, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    move-object/from16 v19, v2

    iget-boolean v2, v4, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    move/from16 v20, v2

    iget-object v2, v4, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v4, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    move-object/from16 v22, v2

    iget-boolean v2, v4, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    move/from16 v23, v2

    iget-boolean v2, v4, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    move/from16 v24, v2

    iget-boolean v2, v4, Lcom/android/internal/os/ZygoteArguments;->mBindMountSyspropOverrides:Z

    move/from16 v25, v2

    move/from16 v17, v6

    move-object/from16 v2, p2

    invoke-static/range {v7 .. v25}, Lcom/android/internal/os/Zygote;->forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[IZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Ljava/lang/String;ZZZ)I

    move-result v6
    :try_end_1c8
    .catchall {:try_start_165 .. :try_end_1c8} :catchall_26a

    .line 261
    if-nez v6, :cond_1e9

    .line 263
    :try_start_1ca
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->setForkChild()V

    .line 265
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    .line 266
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1d3
    .catchall {:try_start_1ca .. :try_end_1d3} :catchall_1ff

    .line 267
    nop

    .line 269
    :try_start_1d4
    iget-boolean v1, v4, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    invoke-direct {v0, v4, v5, v1}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteArguments;Ljava/io/FileDescriptor;Z)Ljava/lang/Runnable;

    move-result-object v0
    :try_end_1da
    .catchall {:try_start_1d4 .. :try_end_1da} :catchall_1e4

    .line 280
    :try_start_1da
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 281
    invoke-static/range {v26 .. v26}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1e0
    .catchall {:try_start_1da .. :try_end_1e0} :catchall_26a

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 269
    return-object v0

    .line 280
    :catchall_1e4
    move-exception v0

    move-object v6, v5

    move-object/from16 v2, v26

    goto :goto_201

    .line 274
    :cond_1e9
    :try_start_1e9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1ec
    .catchall {:try_start_1e9 .. :try_end_1ec} :catchall_1ff

    .line 275
    nop

    .line 276
    :try_start_1ed
    invoke-direct {v0, v6, v2}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(ILjava/io/FileDescriptor;)V
    :try_end_1f0
    .catchall {:try_start_1ed .. :try_end_1f0} :catchall_1fb

    .line 277
    nop

    .line 280
    :try_start_1f1
    invoke-static/range {v26 .. v26}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 281
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1f7
    .catchall {:try_start_1f1 .. :try_end_1f7} :catchall_26a

    .line 302
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 277
    return-object v26

    .line 280
    :catchall_1fb
    move-exception v0

    move-object/from16 v6, v26

    goto :goto_201

    :catchall_1ff
    move-exception v0

    move-object v6, v5

    :goto_201
    :try_start_201
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 281
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 282
    throw v0

    .line 186
    :cond_208
    new-instance v0, Lcom/android/internal/os/ZygoteSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client may not specify capabilities: permitted=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, v4, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    .line 187
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effective=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v4, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    .line 189
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_237
    .catchall {:try_start_201 .. :try_end_237} :catchall_26a

    .line 302
    :cond_237
    :goto_237
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V

    .line 304
    iget-boolean v2, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    if-eqz v2, :cond_245

    .line 305
    iget-boolean v2, v4, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ZygoteConnection;->handleUsapPoolStatusChange(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 307
    :cond_245
    iget-object v2, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    if-eqz v2, :cond_250

    .line 308
    iget-object v2, v4, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ZygoteConnection;->handleApiDenylistExemptions(Lcom/android/internal/os/ZygoteServer;[Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 311
    :cond_250
    iget v2, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    if-ne v2, v8, :cond_261

    iget v2, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    if-eq v2, v8, :cond_259

    goto :goto_261

    .line 317
    :cond_259
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Shouldn\'t get here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 313
    :cond_261
    :goto_261
    iget v2, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    iget v3, v4, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/ZygoteConnection;->handleHiddenApiAccessLogSampleRate(Lcom/android/internal/os/ZygoteServer;II)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    .line 123
    :catchall_26a
    move-exception v0

    move-object v1, v0

    goto :goto_276

    .line 128
    :catch_26d
    move-exception v0

    .line 129
    :try_start_26e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IOException on command socket"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_276
    .catchall {:try_start_26e .. :try_end_276} :catchall_26a

    .line 123
    :goto_276
    :try_start_276
    invoke-virtual {v3}, Lcom/android/internal/os/ZygoteCommandBuffer;->close()V
    :try_end_279
    .catchall {:try_start_276 .. :try_end_279} :catchall_27a

    goto :goto_27e

    :catchall_27a
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27e
    throw v1
.end method
