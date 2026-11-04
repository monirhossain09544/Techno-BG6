.class public final Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "CameraProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/camera/nano/CameraProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraStreamProto"
.end annotation


# static fields
.field public static final blacklist CAPTURE_LATENCY:I = 0x1

.field public static final blacklist UNKNOWN:I

.field private static volatile blacklist _emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;


# instance fields
.field public blacklist colorSpace:I

.field public blacklist dataSpace:I

.field public blacklist dynamicRangeProfile:J

.field public blacklist errorCount:J

.field public blacklist firstCaptureLatencyMillis:I

.field public blacklist format:I

.field public blacklist height:I

.field public blacklist histogramBins:[F

.field public blacklist histogramCounts:[J

.field public blacklist histogramType:I

.field public blacklist maxAppBuffers:I

.field public blacklist maxHalBuffers:I

.field public blacklist requestCount:J

.field public blacklist streamUseCase:J

.field public blacklist usage:J

.field public blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 78
    invoke-virtual {p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 79
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2

    .line 18
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v0, :cond_15

    .line 19
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_7
    sget-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    if-nez v1, :cond_10

    .line 22
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    sput-object v1, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    .line 24
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 26
    :cond_15
    :goto_15
    sget-object v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->_emptyArray:[Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 393
    new-instance v0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    invoke-direct {v0}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 5

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 83
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 84
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 85
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 86
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 87
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 88
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 89
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 90
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 91
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 92
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 93
    sget-object v3, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 94
    sget-object v3, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 95
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 96
    iput-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 97
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->cachedSize:I

    .line 99
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 9

    .line 162
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 163
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 164
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 165
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_10
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v1, :cond_1c

    .line 168
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 169
    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_1c
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v1, :cond_28

    .line 172
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 173
    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_28
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    const/4 v3, 0x4

    if-eqz v1, :cond_34

    .line 176
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 177
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_34
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_44

    .line 180
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 181
    const/4 v1, 0x5

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_44
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_52

    .line 184
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 185
    const/4 v1, 0x6

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_52
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_60

    .line 188
    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 189
    const/4 v1, 0x7

    invoke-static {v1, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_60
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v1, :cond_6d

    .line 192
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 193
    const/16 v4, 0x8

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_6d
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v1, :cond_7a

    .line 196
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 197
    const/16 v4, 0x9

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_7a
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v1, :cond_87

    .line 200
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 201
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_87
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v1, :cond_94

    .line 204
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 205
    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    :cond_94
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-eqz v1, :cond_a7

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    if-lez v1, :cond_a7

    .line 208
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    mul-int/2addr v1, v3

    .line 209
    add-int/2addr v0, v1

    .line 210
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 212
    :cond_a7
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v1, :cond_cb

    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v1, v1

    if-lez v1, :cond_cb

    .line 213
    nop

    .line 214
    const/4 v1, 0x0

    move v3, v1

    :goto_b3
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v4, v4

    if-ge v1, v4, :cond_c5

    .line 215
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    aget-wide v4, v4, v1

    .line 216
    nop

    .line 217
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v3, v4

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 219
    :cond_c5
    add-int/2addr v0, v3

    .line 220
    iget-object v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 222
    :cond_cb
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_da

    .line 223
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 224
    const/16 v3, 0xe

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    :cond_da
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v1, v1, v6

    if-eqz v1, :cond_e9

    .line 227
    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 228
    const/16 v3, 0xf

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    :cond_e9
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    if-eqz v1, :cond_f6

    .line 231
    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    .line 232
    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 234
    :cond_f6
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 243
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_154

    .line 247
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_152

    .line 248
    return-object p0

    .line 384
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    goto/16 :goto_152

    .line 380
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    .line 381
    goto/16 :goto_152

    .line 376
    :sswitch_20
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    .line 377
    goto/16 :goto_152

    .line 353
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 354
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 356
    nop

    .line 357
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 358
    :goto_36
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_42

    .line 359
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 362
    :cond_42
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 363
    iget-object v2, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v2, :cond_4b

    move v2, v1

    goto :goto_4e

    :cond_4b
    iget-object v2, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v2, v2

    .line 364
    :goto_4e
    add-int/2addr v3, v2

    new-array v4, v3, [J

    .line 365
    if-eqz v2, :cond_58

    .line 366
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    invoke-static {v5, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :cond_58
    :goto_58
    if-ge v2, v3, :cond_63

    .line 369
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 371
    :cond_63
    iput-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 372
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 373
    goto/16 :goto_152

    .line 336
    :sswitch_6a
    nop

    .line 337
    const/16 v0, 0x68

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 338
    iget-object v2, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-nez v2, :cond_77

    move v2, v1

    goto :goto_7a

    :cond_77
    iget-object v2, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v2, v2

    .line 339
    :goto_7a
    add-int/2addr v0, v2

    new-array v3, v0, [J

    .line 340
    if-eqz v2, :cond_84

    .line 341
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    :cond_84
    :goto_84
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_94

    .line 344
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 345
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 348
    :cond_94
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    aput-wide v0, v3, v2

    .line 349
    iput-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    .line 350
    goto/16 :goto_152

    .line 303
    :sswitch_9e
    nop

    .line 304
    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 305
    iget-object v2, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v2, :cond_ab

    move v2, v1

    goto :goto_ae

    :cond_ab
    iget-object v2, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v2, v2

    .line 306
    :goto_ae
    add-int/2addr v0, v2

    new-array v3, v0, [F

    .line 307
    if-eqz v2, :cond_b8

    .line 308
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    :cond_b8
    :goto_b8
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_c8

    .line 311
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 312
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_b8

    .line 315
    :cond_c8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 316
    iput-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 317
    goto/16 :goto_152

    .line 320
    :sswitch_d2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 321
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 322
    div-int/lit8 v0, v0, 0x4

    .line 323
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    if-nez v3, :cond_e2

    move v3, v1

    goto :goto_e5

    :cond_e2
    iget-object v3, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v3, v3

    .line 324
    :goto_e5
    add-int/2addr v0, v3

    new-array v4, v0, [F

    .line 325
    if-eqz v3, :cond_ef

    .line 326
    iget-object v5, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    :cond_ef
    :goto_ef
    if-ge v3, v0, :cond_fa

    .line 329
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    .line 328
    add-int/lit8 v3, v3, 0x1

    goto :goto_ef

    .line 331
    :cond_fa
    iput-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    .line 332
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 333
    goto :goto_152

    .line 293
    :sswitch_100
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 294
    packed-switch v0, :pswitch_data_1a2

    goto :goto_10a

    .line 297
    :pswitch_108
    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    .line 300
    :goto_10a
    goto :goto_152

    .line 289
    :sswitch_10b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    .line 290
    goto :goto_152

    .line 285
    :sswitch_112
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    .line 286
    goto :goto_152

    .line 281
    :sswitch_119
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    .line 282
    goto :goto_152

    .line 277
    :sswitch_120
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    .line 278
    goto :goto_152

    .line 273
    :sswitch_127
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    .line 274
    goto :goto_152

    .line 269
    :sswitch_12e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    .line 270
    goto :goto_152

    .line 265
    :sswitch_135
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    .line 266
    goto :goto_152

    .line 261
    :sswitch_13c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    .line 262
    goto :goto_152

    .line 257
    :sswitch_143
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    .line 258
    goto :goto_152

    .line 253
    :sswitch_14a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    .line 254
    goto :goto_152

    .line 245
    :sswitch_151
    return-object p0

    .line 388
    :cond_152
    :goto_152
    goto/16 :goto_1

    :sswitch_data_154
    .sparse-switch
        0x0 -> :sswitch_151
        0x8 -> :sswitch_14a
        0x10 -> :sswitch_143
        0x18 -> :sswitch_13c
        0x20 -> :sswitch_135
        0x28 -> :sswitch_12e
        0x30 -> :sswitch_127
        0x38 -> :sswitch_120
        0x40 -> :sswitch_119
        0x48 -> :sswitch_112
        0x50 -> :sswitch_10b
        0x58 -> :sswitch_100
        0x62 -> :sswitch_d2
        0x65 -> :sswitch_9e
        0x68 -> :sswitch_6a
        0x6a -> :sswitch_28
        0x70 -> :sswitch_20
        0x78 -> :sswitch_18
        0x80 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_108
        :pswitch_108
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    if-eqz v0, :cond_a

    .line 106
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->width:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 108
    :cond_a
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    if-eqz v0, :cond_14

    .line 109
    const/4 v0, 0x2

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->height:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 111
    :cond_14
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    if-eqz v0, :cond_1e

    .line 112
    const/4 v0, 0x3

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->format:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 114
    :cond_1e
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    if-eqz v0, :cond_28

    .line 115
    const/4 v0, 0x4

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dataSpace:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 117
    :cond_28
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_36

    .line 118
    const/4 v0, 0x5

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->usage:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 120
    :cond_36
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_42

    .line 121
    const/4 v0, 0x6

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->requestCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 123
    :cond_42
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4e

    .line 124
    const/4 v0, 0x7

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->errorCount:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 126
    :cond_4e
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    if-eqz v0, :cond_59

    .line 127
    const/16 v0, 0x8

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->firstCaptureLatencyMillis:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 129
    :cond_59
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    if-eqz v0, :cond_64

    .line 130
    const/16 v0, 0x9

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxHalBuffers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 132
    :cond_64
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    if-eqz v0, :cond_6f

    .line 133
    const/16 v0, 0xa

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->maxAppBuffers:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 135
    :cond_6f
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    if-eqz v0, :cond_7a

    .line 136
    const/16 v0, 0xb

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramType:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 138
    :cond_7a
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_96

    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v0, v0

    if-lez v0, :cond_96

    .line 139
    move v0, v1

    :goto_85
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    array-length v4, v4

    if-ge v0, v4, :cond_96

    .line 140
    iget-object v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramBins:[F

    aget v4, v4, v0

    const/16 v5, 0xc

    invoke-virtual {p1, v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 143
    :cond_96
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    if-eqz v0, :cond_b1

    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v0, v0

    if-lez v0, :cond_b1

    .line 144
    nop

    :goto_a0
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    array-length v0, v0

    if-ge v1, v0, :cond_b1

    .line 145
    iget-object v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->histogramCounts:[J

    aget-wide v4, v0, v1

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .line 148
    :cond_b1
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_be

    .line 149
    const/16 v0, 0xe

    iget-wide v4, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->dynamicRangeProfile:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 151
    :cond_be
    iget-wide v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_cb

    .line 152
    const/16 v0, 0xf

    iget-wide v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->streamUseCase:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 154
    :cond_cb
    iget v0, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    if-eqz v0, :cond_d6

    .line 155
    const/16 v0, 0x10

    iget v1, p0, Landroid/stats/camera/nano/CameraProtos$CameraStreamProto;->colorSpace:I

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 157
    :cond_d6
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 158
    return-void
.end method
