.class public Landroid/os/incremental/V4Signature;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/V4Signature$HashingInfo;,
        Landroid/os/incremental/V4Signature$SigningInfo;,
        Landroid/os/incremental/V4Signature$SigningInfos;,
        Landroid/os/incremental/V4Signature$SigningInfoBlock;
    }
.end annotation


# static fields
.field public static final blacklist EXT:Ljava/lang/String; = ".idsig"

.field public static final blacklist HASHING_ALGORITHM_SHA256:I = 0x1

.field public static final blacklist INCFS_MAX_SIGNATURE_SIZE:I = 0x1fa0

.field public static final blacklist LOG2_BLOCK_SIZE_4096_BYTES:B = 0xct

.field public static final blacklist SUPPORTED_VERSION:I = 0x2


# instance fields
.field public final blacklist hashingInfo:[B

.field public final blacklist signingInfos:[B

.field public final blacklist version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadBytes(Ljava/nio/ByteBuffer;)[B
    .registers 1

    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(I[B[B)V
    .registers 4

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, Landroid/os/incremental/V4Signature;->version:I

    .line 253
    iput-object p2, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    .line 254
    iput-object p3, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    .line 255
    return-void
.end method

.method private static blacklist bytesSize([B)I
    .registers 1

    .line 279
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    array-length p0, p0

    :goto_5
    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static blacklist getSignedData(JLandroid/os/incremental/V4Signature$HashingInfo;Landroid/os/incremental/V4Signature$SigningInfo;)[B
    .registers 7

    .line 229
    iget-object v0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    .line 230
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    iget-object v1, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    .line 231
    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    .line 232
    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature;->bytesSize([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 236
    invoke-virtual {v1, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 237
    iget p0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    iget-byte p0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 239
    iget-object p0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-static {v1, p0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 240
    iget-object p0, p2, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    invoke-static {v1, p0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 241
    iget-object p0, p3, Landroid/os/incremental/V4Signature$SigningInfo;->apkDigest:[B

    invoke-static {v1, p0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 242
    iget-object p0, p3, Landroid/os/incremental/V4Signature$SigningInfo;->certificate:[B

    invoke-static {v1, p0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 243
    iget-object p0, p3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    invoke-static {v1, p0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/nio/ByteBuffer;[B)V

    .line 244
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist readBytes(Ljava/io/InputStream;I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readIntLE(Ljava/io/InputStream;)I

    move-result v0

    .line 309
    if-gt v0, p1, :cond_c

    .line 313
    new-array p1, v0, [B

    .line 314
    invoke-static {p0, p1}, Landroid/os/incremental/V4Signature;->readFully(Ljava/io/InputStream;[B)V

    .line 315
    return-object p1

    .line 310
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Signature is too long. Max allowed is 8096"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_14
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_14} :catch_14

    .line 316
    :catch_14
    move-exception p0

    .line 317
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist readBytes(Ljava/nio/ByteBuffer;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1d

    .line 325
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 326
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_17

    .line 329
    new-array v0, v0, [B

    .line 330
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 331
    return-object v0

    .line 327
    :cond_17
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 323
    :cond_1d
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public static blacklist readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 195
    :try_start_9
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_11

    .line 196
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 195
    return-object p0

    .line 194
    :catchall_11
    move-exception p0

    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw p0
.end method

.method public static blacklist readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readIntLE(Ljava/io/InputStream;)I

    move-result v0

    .line 262
    nop

    .line 263
    const/16 v1, 0x1fa0

    invoke-static {p0, v1}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 264
    if-eqz v2, :cond_f

    .line 265
    array-length v3, v2

    sub-int/2addr v1, v3

    .line 267
    :cond_f
    invoke-static {p0, v1}, Landroid/os/incremental/V4Signature;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 268
    new-instance v1, Landroid/os/incremental/V4Signature;

    invoke-direct {v1, v0, v2, p0}, Landroid/os/incremental/V4Signature;-><init>(I[B[B)V

    return-object v1
.end method

.method public static blacklist readFrom([B)Landroid/os/incremental/V4Signature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 205
    :try_start_5
    invoke-static {v0}, Landroid/os/incremental/V4Signature;->readFrom(Ljava/io/InputStream;)Landroid/os/incremental/V4Signature;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 206
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 205
    return-object p0

    .line 204
    :catchall_d
    move-exception p0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16
    throw p0
.end method

.method private static blacklist readFully(Ljava/io/InputStream;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    array-length v0, p1

    .line 284
    const/4 v1, 0x0

    .line 285
    :goto_2
    if-ge v1, v0, :cond_14

    .line 286
    sub-int v2, v0, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 287
    if-ltz v2, :cond_e

    .line 290
    add-int/2addr v1, v2

    .line 291
    goto :goto_2

    .line 288
    :cond_e
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 292
    :cond_14
    return-void
.end method

.method private static blacklist readIntLE(Ljava/io/InputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 296
    invoke-static {p0, v0}, Landroid/os/incremental/V4Signature;->readFully(Ljava/io/InputStream;[B)V

    .line 297
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0
.end method

.method private static blacklist writeBytes(Ljava/io/OutputStream;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    if-nez p1, :cond_7

    .line 336
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    .line 337
    return-void

    .line 339
    :cond_7
    array-length v0, p1

    invoke-static {p0, v0}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    .line 340
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 341
    return-void
.end method

.method private static blacklist writeBytes(Ljava/nio/ByteBuffer;[B)V
    .registers 3

    .line 344
    if-nez p1, :cond_7

    .line 345
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 346
    return-void

    .line 348
    :cond_7
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 349
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 350
    return-void
.end method

.method private static blacklist writeIntLE(Ljava/io/OutputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 303
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 304
    return-void
.end method

.method private blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget v0, p0, Landroid/os/incremental/V4Signature;->version:I

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeIntLE(Ljava/io/OutputStream;I)V

    .line 273
    iget-object v0, p0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 274
    iget-object v0, p0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {p1, v0}, Landroid/os/incremental/V4Signature;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 275
    return-void
.end method


# virtual methods
.method public blacklist isVersionSupported()Z
    .registers 3

    .line 248
    iget v0, p0, Landroid/os/incremental/V4Signature;->version:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist toByteArray()[B
    .registers 3

    .line 213
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1a

    .line 214
    :try_start_5
    invoke-direct {p0, v0}, Landroid/os/incremental/V4Signature;->writeTo(Ljava/io/OutputStream;)V

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 216
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_1a

    .line 215
    return-object v1

    .line 213
    :catchall_10
    move-exception v1

    :try_start_11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v0

    :try_start_16
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1a

    .line 216
    :catch_1a
    move-exception v0

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method
