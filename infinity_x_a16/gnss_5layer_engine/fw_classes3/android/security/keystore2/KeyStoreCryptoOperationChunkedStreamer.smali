.class Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;,
        Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CHUNK_SIZE_MAX:I = 0x8000

.field private static final blacklist DEFAULT_CHUNK_SIZE_THRESHOLD:I = 0x800


# instance fields
.field private final blacklist mChunk:[B

.field private blacklist mChunkLength:I

.field private final blacklist mChunkSizeMax:I

.field private final blacklist mChunkSizeThreshold:I

.field private blacklist mConsumedInputSizeBytes:J

.field private final blacklist mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

.field private blacklist mProducedOutputSizeBytes:J


# direct methods
.method constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;)V
    .registers 4

    .line 99
    const/16 v0, 0x800

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V

    .line 100
    return-void
.end method

.method constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V
    .registers 4

    .line 103
    const v0, 0x8000

    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V

    .line 104
    return-void
.end method

.method constructor blacklist <init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;II)V
    .registers 6

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    .line 108
    iput v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    .line 110
    iput-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 111
    iput-object p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    .line 112
    iput p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    .line 113
    if-gtz p2, :cond_18

    .line 114
    const/4 p1, 0x1

    iput p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    goto :goto_1f

    .line 115
    :cond_18
    if-le p2, p3, :cond_1d

    .line 116
    iput p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    goto :goto_1f

    .line 118
    :cond_1d
    iput p2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    .line 120
    :goto_1f
    iget p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BII[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object p1

    .line 180
    iget-object p2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    const/4 p3, 0x0

    iget v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    invoke-static {p2, p3, v0}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object p2

    .line 181
    iget-object p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-interface {p3, p2, p4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->finish([B[B)[B

    move-result-object p2

    .line 183
    if-eqz p2, :cond_24

    .line 186
    iget-wide p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length v0, p2

    int-to-long v0, v0

    add-long/2addr p3, v0

    iput-wide p3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 187
    if-eqz p1, :cond_23

    .line 188
    invoke-static {p1, p2}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object p1

    goto :goto_24

    .line 190
    :cond_23
    move-object p1, p2

    .line 193
    :cond_24
    :goto_24
    return-object p1
.end method

.method public blacklist getConsumedInputSizeBytes()J
    .registers 3

    .line 198
    iget-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    return-wide v0
.end method

.method public blacklist getProducedOutputSizeBytes()J
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    return-wide v0
.end method

.method public blacklist update([BII)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 124
    if-eqz p3, :cond_89

    if-nez p1, :cond_6

    goto/16 :goto_89

    .line 128
    :cond_6
    if-ltz p3, :cond_7f

    if-ltz p2, :cond_7f

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_7f

    .line 133
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 137
    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    const/4 v2, 0x0

    if-lez v1, :cond_42

    .line 139
    iget-object v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    iget v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    invoke-static {p1, p2, v1, v3, p3}, Landroid/security/keystore/ArrayUtils;->copy([BI[BII)I

    move-result v1

    .line 141
    sub-int/2addr p3, v1

    .line 142
    add-int/2addr p2, v1

    .line 143
    iget v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    .line 144
    iget v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    iget v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-ge v3, v4, :cond_2c

    return-object v0

    .line 145
    :cond_2c
    iget-object v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    iget-object v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    invoke-interface {v3, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)[B

    move-result-object v3

    .line 146
    if-eqz v3, :cond_3a

    .line 147
    invoke-static {v0, v3}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    .line 149
    :cond_3a
    iget-wide v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    .line 150
    iput v2, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    .line 154
    :cond_42
    :goto_42
    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeThreshold:I

    if-lt p3, v1, :cond_67

    .line 155
    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    if-ge p3, v1, :cond_4c

    move v1, p3

    goto :goto_4e

    :cond_4c
    iget v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkSizeMax:I

    .line 156
    :goto_4e
    iget-object v3, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mKeyStoreStream:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;

    invoke-static {p1, p2, v1}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;->update([B)[B

    move-result-object v3

    .line 158
    sub-int/2addr p3, v1

    .line 159
    add-int/2addr p2, v1

    .line 160
    iget-wide v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    .line 161
    if-eqz v3, :cond_66

    .line 162
    invoke-static {v0, v3}, Landroid/security/keystore/ArrayUtils;->concat([B[B)[B

    move-result-object v0

    .line 164
    :cond_66
    goto :goto_42

    .line 168
    :cond_67
    if-lez p3, :cond_77

    .line 169
    iget-object v1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunk:[B

    invoke-static {p1, p2, v1, v2, p3}, Landroid/security/keystore/ArrayUtils;->copy([BI[BII)I

    move-result p1

    iput p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mChunkLength:I

    .line 170
    iget-wide p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    int-to-long v1, p3

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mConsumedInputSizeBytes:J

    .line 173
    :cond_77
    iget-wide p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    array-length p3, v0

    int-to-long v1, p3

    add-long/2addr p1, v1

    iput-wide p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->mProducedOutputSizeBytes:J

    .line 174
    return-object v0

    .line 129
    :cond_7f
    new-instance p1, Landroid/security/KeyStoreException;

    const/16 p2, -0x3e8

    const-string p3, "Input offset and length out of bounds of input array"

    invoke-direct {p1, p2, p3}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 126
    :cond_89
    :goto_89
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object p1
.end method
