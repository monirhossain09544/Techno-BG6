.class public Lcom/android/internal/util/SizedInputStream;
.super Ljava/io/InputStream;
.source "SizedInputStream.java"


# instance fields
.field private blacklist mLength:J

.field private final blacklist mWrapped:Ljava/io/InputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;J)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    .line 33
    iput-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 39
    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 40
    return-void
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 45
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/util/SizedInputStream;->read([BII)I

    move-result v0

    .line 46
    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :cond_f
    return v3
.end method

.method public whitelist test-api read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-wide v0, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-gtz v0, :cond_a

    .line 52
    return v1

    .line 53
    :cond_a
    int-to-long v4, p3

    iget-wide v6, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_14

    .line 54
    iget-wide v4, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    long-to-int p3, v4

    .line 57
    :cond_14
    iget-object v0, p0, Lcom/android/internal/util/SizedInputStream;->mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 58
    if-ne p1, v1, :cond_44

    .line 59
    iget-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    cmp-long p2, p2, v2

    if-gtz p2, :cond_23

    goto :goto_4a

    .line 60
    :cond_23
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected EOF; expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " more bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_44
    iget-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/internal/util/SizedInputStream;->mLength:J

    .line 65
    :goto_4a
    return p1
.end method
