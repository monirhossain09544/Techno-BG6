.class public final Lcom/android/internal/org/bouncycastle/util/io/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# static fields
.field private static blacklist BUFFER_SIZE:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/16 v0, 0x1000

    sput v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist drain(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    sget v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v1, v0, [B

    .line 27
    :goto_4
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_c

    goto :goto_4

    .line 30
    :cond_c
    return-void
.end method

.method public static blacklist pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    sget v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 43
    return-void
.end method

.method public static blacklist pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-array v0, p2, [B

    .line 58
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_d

    .line 60
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 62
    :cond_d
    return-void
.end method

.method public static blacklist pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    nop

    .line 76
    sget v0, Lcom/android/internal/org/bouncycastle/util/io/Streams;->BUFFER_SIZE:I

    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    .line 78
    :goto_7
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_22

    .line 80
    sub-long v6, p1, v2

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1a

    .line 84
    add-long/2addr v2, v8

    .line 85
    invoke-virtual {p3, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 82
    :cond_1a
    new-instance p0, Lcom/android/internal/org/bouncycastle/util/io/StreamOverflowException;

    const-string p1, "Data Overflow"

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_22
    return-wide v2
.end method

.method public static blacklist readAll(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist readAllLimited(Ljava/io/InputStream;I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->pipeAllLimited(Ljava/io/InputStream;JLjava/io/OutputStream;)J

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static blacklist readFully(Ljava/io/InputStream;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    .line 150
    :goto_1
    if-ge v0, p3, :cond_10

    .line 152
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 153
    if-gez v1, :cond_e

    .line 155
    goto :goto_10

    .line 157
    :cond_e
    add-int/2addr v0, v1

    .line 158
    goto :goto_1

    .line 160
    :cond_10
    :goto_10
    return v0
.end method

.method public static blacklist validateBufferArguments([BII)V
    .registers 4

    .line 165
    if-eqz p0, :cond_12

    .line 169
    array-length p0, p0

    sub-int/2addr p0, p1

    .line 170
    sub-int v0, p0, p2

    .line 171
    or-int/2addr p1, p2

    or-int/2addr p0, p1

    or-int/2addr p0, v0

    if-ltz p0, :cond_c

    .line 175
    return-void

    .line 173
    :cond_c
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 167
    :cond_12
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static blacklist writeBufTo(Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 181
    return-void
.end method
