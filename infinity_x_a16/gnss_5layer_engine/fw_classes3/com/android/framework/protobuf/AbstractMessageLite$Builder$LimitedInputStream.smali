.class final Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "AbstractMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/AbstractMessageLite$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private blacklist limit:I


# direct methods
.method constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 3

    .line 260
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 261
    iput p2, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 262
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget v0, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_6

    .line 272
    const/4 v0, -0x1

    return v0

    .line 274
    :cond_6
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 275
    if-ltz v0, :cond_12

    .line 276
    iget v1, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 278
    :cond_12
    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget v0, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_6

    .line 284
    const/4 p1, -0x1

    return p1

    .line 286
    :cond_6
    iget v0, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 287
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    .line 288
    if-ltz p1, :cond_17

    .line 289
    iget p2, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 291
    :cond_17
    return p1
.end method

.method public whitelist test-api skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget v0, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    long-to-int p1, p1

    .line 299
    if-ltz p1, :cond_13

    .line 301
    iget p2, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/android/framework/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 303
    :cond_13
    int-to-long p1, p1

    return-wide p1
.end method
