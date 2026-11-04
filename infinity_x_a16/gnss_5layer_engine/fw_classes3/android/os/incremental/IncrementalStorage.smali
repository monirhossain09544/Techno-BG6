.class public final Landroid/os/incremental/IncrementalStorage;
.super Ljava/lang/Object;
.source "IncrementalStorage.java"


# static fields
.field private static final blacklist INCFS_MAX_ADD_DATA_SIZE:I = 0x80

.field private static final blacklist INCFS_MAX_HASH_SIZE:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalStorage"

.field private static final blacklist UUID_BYTE_SIZE:I = 0x10


# instance fields
.field private final blacklist mId:I

.field private final blacklist mService:Landroid/os/incremental/IIncrementalService;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/IIncrementalService;I)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    .line 53
    iput p2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    .line 54
    return-void
.end method

.method public static blacklist bytesToId([B)Ljava/util/UUID;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 462
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    .line 466
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 467
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 468
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 469
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0

    .line 463
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected array of size 16, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist idToBytes(Ljava/util/UUID;)[B
    .registers 4

    .line 445
    if-nez p0, :cond_6

    .line 446
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 448
    :cond_6
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 451
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist validateV4Signature([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    if-eqz p0, :cond_d5

    array-length v0, p0

    if-nez v0, :cond_7

    goto/16 :goto_d5

    .line 497
    :cond_7
    :try_start_7
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_cc

    .line 500
    nop

    .line 502
    invoke-virtual {p0}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 507
    iget-object v0, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v0}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v0

    .line 509
    iget-object p0, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {p0}, Landroid/os/incremental/V4Signature$SigningInfos;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;

    move-result-object p0

    .line 512
    iget v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8f

    .line 515
    iget-byte v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_74

    .line 518
    iget-object v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    if-eqz v1, :cond_52

    iget-object v1, v0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    array-length v1, v1

    if-gtz v1, :cond_33

    goto :goto_52

    .line 519
    :cond_33
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported salt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 521
    :cond_52
    :goto_52
    iget-object v0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_6b

    .line 524
    iget-object p0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    iget-object p0, p0, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    array-length p0, p0

    const/16 v0, 0x80

    if-gt p0, v0, :cond_63

    .line 528
    return-void

    .line 525
    :cond_63
    new-instance p0, Ljava/io/IOException;

    const-string v0, "additionalData has to be at most 128 bytes"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 522
    :cond_6b
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo v0, "rawRootHash has to be 32 bytes"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 516
    :cond_74
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported log2BlockSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 513
    :cond_8f
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported hashAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 503
    :cond_aa
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4 signature version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is not supported"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :catch_cc
    move-exception p0

    .line 499
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read v4 signature:"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 492
    :cond_d5
    :goto_d5
    return-void
.end method


# virtual methods
.method public blacklist bind(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public blacklist bind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 83
    if-ltz p1, :cond_c

    .line 88
    goto :goto_2a

    .line 84
    :cond_c
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind() failed with errno "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 86
    :catch_26
    move-exception p1

    .line 87
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 89
    :goto_2a
    return-void
.end method

.method public blacklist bindPermanent(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bindPermanent(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public blacklist bindPermanent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 114
    if-ltz p1, :cond_c

    .line 119
    goto :goto_2a

    .line 115
    :cond_c
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bind() permanent failed with errno "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 117
    :catch_26
    move-exception p1

    .line 118
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 120
    :goto_2a
    return-void
.end method

.method public blacklist configureNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/incremental/IIncrementalService;->configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    .line 547
    :catch_d
    move-exception v0

    move-object p1, v0

    .line 548
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 549
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist disallowReadLogs()V
    .registers 3

    .line 480
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->disallowReadLogs(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 483
    goto :goto_c

    .line 481
    :catch_8
    move-exception v0

    .line 482
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 484
    :goto_c
    return-void
.end method

.method public blacklist getFileMetadata(Ljava/lang/String;)[B
    .registers 4

    .line 377
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->getMetadataByPath(ILjava/lang/String;)[B

    move-result-object p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    .line 378
    :catch_9
    move-exception p1

    .line 379
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 380
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getFileMetadata(Ljava/util/UUID;)[B
    .registers 4

    .line 393
    :try_start_0
    invoke-static {p1}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object p1

    .line 394
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->getMetadataById(I[B)[B

    move-result-object p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    .line 395
    :catch_d
    move-exception p1

    .line 396
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 397
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getId()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    return v0
.end method

.method public blacklist getLoadingProgress()F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2}, Landroid/os/incremental/IIncrementalService;->getLoadingProgress(I)F

    move-result v1

    .line 357
    cmpg-float v2, v1, v0

    if-ltz v2, :cond_e

    .line 361
    return v1

    .line 358
    :cond_e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLoadingProgress() failed at querying loading progress, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-float v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_28} :catch_28

    .line 362
    :catch_28
    move-exception v1

    .line 363
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 364
    return v0
.end method

.method public blacklist getMetrics()Landroid/os/PersistableBundle;
    .registers 3

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->getMetrics(I)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 599
    :catch_9
    move-exception v0

    .line 600
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 601
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isFileFullyLoaded(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, p1}, Landroid/os/incremental/IIncrementalService;->isFileFullyLoaded(ILjava/lang/String;)I

    move-result p1

    .line 321
    if-ltz p1, :cond_f

    .line 324
    if-nez p1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 322
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFileFullyLoaded() failed, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_29

    .line 325
    :catch_29
    move-exception p1

    .line 326
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 327
    return v0
.end method

.method public blacklist isFullyLoaded()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2}, Landroid/os/incremental/IIncrementalService;->isFullyLoaded(I)I

    move-result v1

    .line 338
    if-ltz v1, :cond_f

    .line 342
    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 339
    :cond_f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFullyLoaded() failed at querying loading progress, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_29} :catch_29

    .line 343
    :catch_29
    move-exception v1

    .line 344
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 345
    return v0
.end method

.method public blacklist makeDirectories(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectories(ILjava/lang/String;)I

    move-result p1

    .line 163
    if-ltz p1, :cond_b

    .line 168
    goto :goto_29

    .line 164
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDirectory() failed with errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 166
    :catch_25
    move-exception p1

    .line 167
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 169
    :goto_29
    return-void
.end method

.method public blacklist makeDirectory(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectory(ILjava/lang/String;)I

    move-result p1

    .line 146
    if-ltz p1, :cond_b

    .line 151
    goto :goto_29

    .line 147
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDirectory() failed with errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 149
    :catch_25
    move-exception p1

    .line 150
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 152
    :goto_29
    return-void
.end method

.method public blacklist makeFile(Ljava/lang/String;JILjava/util/UUID;[B[B[B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    if-nez p5, :cond_d

    if-eqz p6, :cond_5

    goto :goto_d

    .line 186
    :cond_5
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File ID and metadata cannot both be null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_d
    :goto_d
    invoke-static {p7}, Landroid/os/incremental/IncrementalStorage;->validateV4Signature([B)V

    .line 189
    move-object v0, p6

    new-instance p6, Landroid/os/incremental/IncrementalNewFileParams;

    invoke-direct {p6}, Landroid/os/incremental/IncrementalNewFileParams;-><init>()V

    .line 190
    iput-wide p2, p6, Landroid/os/incremental/IncrementalNewFileParams;->size:J

    .line 191
    if-nez v0, :cond_1e

    const/4 p2, 0x0

    new-array p2, p2, [B

    goto :goto_1f

    :cond_1e
    move-object p2, v0

    :goto_1f
    iput-object p2, p6, Landroid/os/incremental/IncrementalNewFileParams;->metadata:[B

    .line 192
    invoke-static {p5}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object p2

    iput-object p2, p6, Landroid/os/incremental/IncrementalNewFileParams;->fileId:[B

    .line 193
    iput-object p7, p6, Landroid/os/incremental/IncrementalNewFileParams;->signature:[B

    .line 194
    iget-object p2, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget p3, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move p5, p4

    move-object p7, p8

    move-object p4, p1

    invoke-interface/range {p2 .. p7}, Landroid/os/incremental/IIncrementalService;->makeFile(ILjava/lang/String;ILandroid/os/incremental/IncrementalNewFileParams;[B)I

    move-result p1

    .line 195
    if-nez p1, :cond_37

    .line 200
    goto :goto_56

    .line 196
    :cond_37
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "makeFile() failed with errno "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    neg-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_51} :catch_51

    .line 198
    :catch_51
    move-exception v0

    move-object p1, v0

    .line 199
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 201
    :goto_56
    return-void
.end method

.method public blacklist makeFileFromRange(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Landroid/os/incremental/IIncrementalService;->makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I

    move-result p1

    .line 217
    if-ltz p1, :cond_f

    .line 222
    goto :goto_2e

    .line 218
    :cond_f
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "makeFileFromRange() failed, errno "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    neg-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_29

    .line 220
    :catch_29
    move-exception v0

    move-object p1, v0

    .line 221
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 223
    :goto_2e
    return-void
.end method

.method public blacklist makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result p2

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 238
    if-ltz p1, :cond_f

    .line 243
    goto :goto_2d

    .line 239
    :cond_f
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "makeLink() failed with errno "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    neg-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_29

    .line 241
    :catch_29
    move-exception p1

    .line 242
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 244
    :goto_2d
    return-void
.end method

.method public blacklist moveDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 298
    :try_start_b
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 300
    if-ltz p2, :cond_17

    .line 305
    goto :goto_35

    .line 301
    :cond_17
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveDir() failed at making bind mount, errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_31} :catch_31

    .line 303
    :catch_31
    move-exception p2

    .line 304
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 307
    :goto_35
    :try_start_35
    iget-object p2, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {p2, v0, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d

    .line 309
    goto :goto_3e

    .line 308
    :catch_3d
    move-exception p1

    .line 310
    :goto_3e
    return-void

    .line 295
    :cond_3f
    new-instance p1, Ljava/io/IOException;

    const-string p2, "moveDir() requires that destination dir already exists."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1, v2, p2}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result p2

    .line 273
    if-ltz p2, :cond_d

    .line 278
    goto :goto_2b

    .line 274
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveFile() failed at makeLink(), errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_27

    .line 276
    :catch_27
    move-exception p2

    .line 277
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 280
    :goto_2b
    :try_start_2b
    iget-object p2, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {p2, v0, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_33

    .line 282
    goto :goto_34

    .line 281
    :catch_33
    move-exception p1

    .line 283
    :goto_34
    return-void
.end method

.method public blacklist onInstallationComplete()V
    .registers 3

    .line 428
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->onInstallationComplete(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 431
    goto :goto_c

    .line 429
    :catch_8
    move-exception v0

    .line 430
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 432
    :goto_c
    return-void
.end method

.method public blacklist registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z
    .registers 4

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    .line 574
    :catch_9
    move-exception p1

    .line 575
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 576
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z
    .registers 13

    .line 413
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :try_start_3
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/incremental/IIncrementalService;->startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_14

    return p1

    .line 417
    :catch_14
    move-exception v0

    move-object p1, v0

    .line 418
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 419
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist unBind(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I

    move-result p1

    .line 130
    if-ltz p1, :cond_b

    .line 135
    goto :goto_2a

    .line 131
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbind() failed with errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 133
    :catch_26
    move-exception p1

    .line 134
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 136
    :goto_2a
    return-void
.end method

.method public blacklist unlink(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I

    move-result p1

    .line 254
    if-ltz p1, :cond_b

    .line 259
    goto :goto_2a

    .line 255
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlink() failed with errno "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    .line 257
    :catch_26
    move-exception p1

    .line 258
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 260
    :goto_2a
    return-void
.end method

.method public blacklist unregisterLoadingProgressListener()Z
    .registers 3

    .line 585
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->unregisterLoadingProgressListener(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 586
    :catch_9
    move-exception v0

    .line 587
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist waitForNativeBinariesExtraction()Z
    .registers 3

    .line 560
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->waitForNativeBinariesExtraction(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 561
    :catch_9
    move-exception v0

    .line 562
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 563
    const/4 v0, 0x0

    return v0
.end method
