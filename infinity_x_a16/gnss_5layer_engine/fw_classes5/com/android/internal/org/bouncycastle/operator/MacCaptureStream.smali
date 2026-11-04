.class public Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;
.super Ljava/io/OutputStream;
.source "MacCaptureStream.java"


# instance fields
.field private final blacklist cOut:Ljava/io/OutputStream;

.field private final blacklist mac:[B

.field blacklist macIndex:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/OutputStream;I)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->macIndex:I

    .line 26
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    .line 27
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist getMac()[B
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api write(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->macIndex:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    if-ne v0, v1, :cond_27

    .line 54
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 55
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v2, v2

    sub-int/2addr v2, v5

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 57
    iget-object p1, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 58
    goto :goto_32

    .line 61
    :cond_27
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->macIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->macIndex:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 63
    :goto_32
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p3, v0, :cond_2c

    .line 35
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->macIndex:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->macIndex:I

    .line 37
    add-int v0, p2, p3

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v2, v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v3, v3

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    sub-int/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_39

    .line 42
    :cond_2c
    nop

    :goto_2d
    if-eq v1, p3, :cond_39

    .line 44
    add-int v0, p2, v1

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/operator/MacCaptureStream;->write(I)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 47
    :cond_39
    :goto_39
    return-void
.end method
