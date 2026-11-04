.class public Lcom/android/internal/util/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/FastPrintWriter$DummyWriter;
    }
.end annotation


# instance fields
.field private final greylist-max-o mAutoFlush:Z

.field private final greylist-max-o mBufferLen:I

.field private final greylist-max-o mBytes:Ljava/nio/ByteBuffer;

.field private greylist-max-o mCharset:Ljava/nio/charset/CharsetEncoder;

.field private greylist-max-o mIoError:Z

.field private final greylist-max-o mOutputStream:Ljava/io/OutputStream;

.field private greylist-max-o mPos:I

.field private final greylist-max-o mPrinter:Landroid/util/Printer;

.field private final greylist-max-o mSeparator:Ljava/lang/String;

.field private final greylist-max-o mText:[C

.field private final greylist-max-o mWriter:Ljava/io/Writer;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/util/Printer;)V
    .registers 3

    .line 218
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    .line 219
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/util/Printer;I)V
    .registers 6

    .line 235
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter-IA;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 236
    if-eqz p1, :cond_26

    .line 239
    iput p2, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 240
    new-array p2, p2, [C

    iput-object p2, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 241
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 242
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 243
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 244
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 245
    iput-boolean v2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 246
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 248
    return-void

    .line 237
    :cond_26
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pr is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor greylist <init>(Ljava/io/OutputStream;)V
    .registers 4

    .line 84
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    .line 85
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/OutputStream;Z)V
    .registers 4

    .line 102
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    .line 103
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/OutputStream;ZI)V
    .registers 6

    .line 123
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter-IA;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 124
    if-eqz p1, :cond_2b

    .line 127
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 128
    new-array p3, p3, [C

    iput-object p3, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 129
    iget p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 130
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 131
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 132
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 133
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 134
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 136
    return-void

    .line 125
    :cond_2b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor greylist-max-o <init>(Ljava/io/Writer;)V
    .registers 4

    .line 153
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 154
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/Writer;Z)V
    .registers 4

    .line 171
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 172
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/Writer;ZI)V
    .registers 6

    .line 192
    new-instance v0, Lcom/android/internal/util/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/FastPrintWriter-IA;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 193
    if-eqz p1, :cond_25

    .line 196
    iput p3, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 197
    new-array p3, p3, [C

    iput-object p3, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    .line 198
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 199
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 200
    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 201
    iput-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 202
    iput-boolean p2, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    .line 203
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->initDefaultEncoder()V

    .line 205
    return-void

    .line 194
    :cond_25
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "wr is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o appendLocked(C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 302
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_d

    .line 303
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 304
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 306
    :cond_d
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 308
    return-void
.end method

.method private greylist-max-o appendLocked(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 312
    if-le p3, v0, :cond_16

    .line 313
    add-int/2addr p3, p2

    .line 314
    :goto_5
    if-ge p2, p3, :cond_15

    .line 315
    add-int v1, p2, v0

    .line 316
    if-ge v1, p3, :cond_d

    move v2, v0

    goto :goto_f

    :cond_d
    sub-int v2, p3, p2

    :goto_f
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 317
    nop

    .line 318
    move p2, v1

    goto :goto_5

    .line 319
    :cond_15
    return-void

    .line 321
    :cond_16
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 322
    add-int v2, v1, p3

    if-le v2, v0, :cond_21

    .line 323
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 324
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 326
    :cond_21
    add-int v0, p2, p3

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 327
    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 328
    return-void
.end method

.method private greylist-max-o appendLocked([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBufferLen:I

    .line 332
    if-le p3, v0, :cond_16

    .line 333
    add-int/2addr p3, p2

    .line 334
    :goto_5
    if-ge p2, p3, :cond_15

    .line 335
    add-int v1, p2, v0

    .line 336
    if-ge v1, p3, :cond_d

    move v2, v0

    goto :goto_f

    :cond_d
    sub-int v2, p3, p2

    :goto_f
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V

    .line 337
    nop

    .line 338
    move p2, v1

    goto :goto_5

    .line 339
    :cond_15
    return-void

    .line 341
    :cond_16
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 342
    add-int v2, v1, p3

    if-le v2, v0, :cond_21

    .line 343
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 344
    iget v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 346
    :cond_21
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 348
    return-void
.end method

.method private greylist-max-o flushBytesLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_22

    .line 353
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_22

    .line 354
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 355
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 359
    :cond_22
    return-void
.end method

.method private greylist-max-o flushLocked()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lez v0, :cond_ad

    .line 364
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    .line 365
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-static {v0, v2, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 366
    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v4, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 367
    :goto_1a
    iget-boolean v4, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v4, :cond_40

    .line 368
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-nez v4, :cond_36

    .line 370
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 371
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    .line 372
    iget-object v3, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v4, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 373
    goto :goto_1a

    .line 369
    :cond_36
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_40
    iget-boolean v0, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_4c

    .line 378
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushBytesLocked()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 381
    :cond_4c
    goto :goto_ab

    :cond_4d
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v0, :cond_64

    .line 382
    iget-boolean v0, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_ab

    .line 383
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_ab

    .line 387
    :cond_64
    nop

    .line 388
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 389
    iget v3, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-ge v0, v3, :cond_70

    goto :goto_72

    :cond_70
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    :goto_72
    move v3, v2

    .line 390
    :goto_73
    if-ge v3, v0, :cond_90

    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v3

    aget-char v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 391
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_90

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 394
    :cond_90
    iget v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    if-lt v3, v0, :cond_9c

    .line 395
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_ab

    .line 397
    :cond_9c
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/util/FastPrintWriter;->mText:[C

    iget v5, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    sub-int/2addr v5, v3

    invoke-direct {v1, v4, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 400
    :cond_ab
    :goto_ab
    iput v2, p0, Lcom/android/internal/util/FastPrintWriter;->mPos:I

    .line 402
    :cond_ad
    return-void
.end method

.method private final greylist-max-o initDefaultEncoder()V
    .registers 3

    .line 295
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 296
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 297
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 298
    return-void
.end method

.method private final greylist-max-o initEncoder(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 252
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_1a

    .line 255
    nop

    .line 256
    iget-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 257
    iget-object p1, p0, Lcom/android/internal/util/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 258
    return-void

    .line 253
    :catch_1a
    move-exception v0

    .line 254
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .registers 4

    .line 698
    if-nez p1, :cond_4

    .line 699
    const-string p1, "null"

    .line 701
    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 702
    const/4 p2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->write(Ljava/lang/String;II)V

    .line 703
    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api checkError()Z
    .registers 3

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 270
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_6
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    monitor-exit v0

    return v1

    .line 272
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method protected whitelist test-api clearError()V
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 5

    .line 430
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 433
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_10

    .line 434
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_19

    .line 435
    :cond_10
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_19

    .line 436
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1c
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    .line 441
    :cond_19
    :goto_19
    goto :goto_27

    .line 442
    :catchall_1a
    move-exception v1

    goto :goto_29

    .line 438
    :catch_1c
    move-exception v1

    .line 439
    :try_start_1d
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 442
    :goto_27
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_1a

    throw v1
.end method

.method public whitelist test-api flush()V
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V

    .line 414
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_1d

    .line 415
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_14

    .line 416
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_1d

    .line 417
    :cond_14
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1d

    .line 418
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_20
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1e

    .line 424
    :cond_1d
    :goto_1d
    goto :goto_2b

    .line 425
    :catchall_1e
    move-exception v1

    goto :goto_2d

    .line 421
    :catch_20
    move-exception v1

    .line 422
    :try_start_21
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 425
    :goto_2b
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_1e

    throw v1
.end method

.method public whitelist test-api print(C)V
    .registers 5

    .line 473
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 479
    goto :goto_14

    .line 480
    :catchall_7
    move-exception p1

    goto :goto_16

    .line 476
    :catch_9
    move-exception p1

    .line 477
    :try_start_a
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 480
    :goto_14
    monitor-exit v0

    .line 481
    return-void

    .line 480
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p1
.end method

.method public whitelist test-api print(I)V
    .registers 2

    .line 511
    if-nez p1, :cond_8

    .line 512
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 514
    :cond_8
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 516
    :goto_b
    return-void
.end method

.method public whitelist test-api print(J)V
    .registers 5

    .line 520
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 521
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 523
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 525
    :goto_f
    return-void
.end method

.method public whitelist test-api print(Ljava/lang/String;)V
    .registers 5

    .line 495
    if-nez p1, :cond_7

    .line 496
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 498
    :cond_7
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_15
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    .line 504
    goto :goto_20

    .line 505
    :catchall_13
    move-exception p1

    goto :goto_22

    .line 501
    :catch_15
    move-exception p1

    .line 502
    :try_start_16
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 505
    :goto_20
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_13

    throw p1
.end method

.method public whitelist test-api print([C)V
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_3
    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 460
    goto :goto_16

    .line 461
    :catchall_9
    move-exception p1

    goto :goto_18

    .line 457
    :catch_b
    move-exception p1

    .line 458
    :try_start_c
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 461
    :goto_16
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_9

    throw p1
.end method

.method public whitelist test-api println()V
    .registers 5

    .line 531
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/util/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 534
    iget-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_16

    .line 535
    invoke-direct {p0}, Lcom/android/internal/util/FastPrintWriter;->flushLocked()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_19
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    .line 540
    :cond_16
    goto :goto_24

    .line 541
    :catchall_17
    move-exception v1

    goto :goto_26

    .line 537
    :catch_19
    move-exception v1

    .line 538
    :try_start_1a
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 541
    :goto_24
    monitor-exit v0

    .line 542
    return-void

    .line 541
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_17

    throw v1
.end method

.method public whitelist test-api println(C)V
    .registers 2

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print(C)V

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 578
    return-void
.end method

.method public whitelist test-api println(I)V
    .registers 2

    .line 546
    if-nez p1, :cond_8

    .line 547
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 549
    :cond_8
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 551
    :goto_b
    return-void
.end method

.method public whitelist test-api println(J)V
    .registers 5

    .line 555
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 556
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 558
    :cond_c
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    .line 560
    :goto_f
    return-void
.end method

.method public whitelist test-api println([C)V
    .registers 2

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->print([C)V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 569
    return-void
.end method

.method protected whitelist test-api setError()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/internal/util/FastPrintWriter;->mIoError:Z

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist test-api write(I)V
    .registers 5

    .line 621
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    int-to-char p1, p1

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(C)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_a
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    .line 627
    goto :goto_15

    .line 628
    :catchall_8
    move-exception p1

    goto :goto_17

    .line 624
    :catch_a
    move-exception p1

    .line 625
    :try_start_b
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 628
    :goto_15
    monitor-exit v0

    .line 629
    return-void

    .line 628
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_8

    throw p1
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 5

    .line 639
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_e
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    .line 645
    goto :goto_19

    .line 646
    :catchall_c
    move-exception p1

    goto :goto_1b

    .line 642
    :catch_e
    move-exception p1

    .line 643
    :try_start_f
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 646
    :goto_19
    monitor-exit v0

    .line 647
    return-void

    .line 646
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_c

    throw p1
.end method

.method public whitelist test-api write(Ljava/lang/String;II)V
    .registers 5

    .line 665
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 671
    goto :goto_14

    .line 672
    :catchall_7
    move-exception p1

    goto :goto_16

    .line 668
    :catch_9
    move-exception p1

    .line 669
    :try_start_a
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 672
    :goto_14
    monitor-exit v0

    .line 673
    return-void

    .line 672
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p1
.end method

.method public whitelist test-api write([CII)V
    .registers 5

    .line 599
    iget-object v0, p0, Lcom/android/internal/util/FastPrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/FastPrintWriter;->appendLocked([CII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_9
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 605
    goto :goto_14

    .line 606
    :catchall_7
    move-exception p1

    goto :goto_16

    .line 602
    :catch_9
    move-exception p1

    .line 603
    :try_start_a
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/util/FastPrintWriter;->setError()V

    .line 606
    :goto_14
    monitor-exit v0

    .line 607
    return-void

    .line 606
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7

    throw p1
.end method
