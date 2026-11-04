.class public final Lcom/android/framework/protobuf/UnknownFieldSetLite;
.super Ljava/lang/Object;
.source "UnknownFieldSetLite.java"


# static fields
.field private static final blacklist DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

.field private static final blacklist MIN_CAPACITY:I = 0x8


# instance fields
.field private blacklist count:I

.field private blacklist isMutable:Z

.field private blacklist memoizedSerializedSize:I

.field private blacklist objects:[Ljava/lang/Object;

.field private blacklist tags:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 29
    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 76
    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 77
    return-void
.end method

.method private constructor blacklist <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 81
    iput p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    .line 82
    iput-object p2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    .line 83
    iput-object p3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 84
    iput-boolean p4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 85
    return-void
.end method

.method private blacklist ensureCapacity(I)V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    array-length v0, v0

    if-le p1, v0, :cond_25

    .line 381
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 384
    if-ge v0, p1, :cond_f

    .line 385
    goto :goto_10

    .line 384
    :cond_f
    move p1, v0

    .line 389
    :goto_10
    const/16 v0, 0x8

    if-ge p1, v0, :cond_15

    .line 390
    move p1, v0

    .line 393
    :cond_15
    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    .line 394
    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 396
    :cond_25
    return-void
.end method

.method public static blacklist getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 1

    .line 38
    sget-object v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-object v0
.end method

.method private static blacklist hashCode([II)I
    .registers 5

    .line 326
    nop

    .line 327
    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_e

    .line 328
    mul-int/lit8 v0, v0, 0x1f

    aget v2, p0, v1

    add-int/2addr v0, v2

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 330
    :cond_e
    return v0
.end method

.method private static blacklist hashCode([Ljava/lang/Object;I)I
    .registers 5

    .line 334
    nop

    .line 335
    const/16 v0, 0x11

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_12

    .line 336
    mul-int/lit8 v0, v0, 0x1f

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 338
    :cond_12
    return v0
.end method

.method private blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 473
    if-eqz v0, :cond_f

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 474
    goto :goto_f

    .line 476
    :cond_e
    goto :goto_1

    .line 477
    :cond_f
    :goto_f
    return-object p0
.end method

.method static blacklist mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 8

    .line 51
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    .line 52
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 53
    iget-object v2, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 55
    iget-object v3, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget p0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget p1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    new-instance p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method static blacklist newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 1

    .line 43
    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>()V

    return-object v0
.end method

.method private static blacklist objectsEquals([Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 7

    .line 293
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_12

    .line 294
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 295
    return v0

    .line 293
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 298
    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist tagsEquals([I[II)Z
    .registers 7

    .line 284
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_e

    .line 285
    aget v2, p0, v1

    aget v3, p1, v1

    if-eq v2, v3, :cond_b

    .line 286
    return v0

    .line 284
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 289
    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 187
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result p0

    packed-switch p0, :pswitch_data_5a

    .line 213
    :pswitch_b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 192
    :pswitch_15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    .line 193
    goto :goto_59

    .line 201
    :pswitch_1f
    invoke-interface {p2}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object p0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne p0, v1, :cond_33

    .line 202
    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeStartGroup(I)V

    .line 203
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/Writer;)V

    .line 204
    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeEndGroup(I)V

    goto :goto_59

    .line 206
    :cond_33
    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeEndGroup(I)V

    .line 207
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/Writer;)V

    .line 208
    invoke-interface {p2, v0}, Lcom/android/framework/protobuf/Writer;->writeStartGroup(I)V

    .line 210
    goto :goto_59

    .line 198
    :pswitch_3f
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p2, v0, p1}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 199
    goto :goto_59

    .line 195
    :pswitch_45
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    .line 196
    goto :goto_59

    .line 189
    :pswitch_4f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    .line 190
    nop

    .line 215
    :goto_59
    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_45
        :pswitch_3f
        :pswitch_1f
        :pswitch_b
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method blacklist checkMutable()V
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz v0, :cond_5

    .line 103
    return-void

    .line 101
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 303
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 304
    return v0

    .line 307
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 308
    return v1

    .line 311
    :cond_8
    instance-of v2, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    if-nez v2, :cond_d

    .line 312
    return v1

    .line 315
    :cond_d
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 316
    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v3, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v3, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v4, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    .line 317
    invoke-static {v2, v3, v4}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tagsEquals([I[II)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    .line 318
    invoke-static {v2, p1, v3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objectsEquals([Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_2f

    .line 322
    :cond_2e
    return v0

    .line 319
    :cond_2f
    :goto_2f
    return v1
.end method

.method public blacklist getSerializedSize()I
    .registers 7

    .line 246
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 247
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 248
    return v0

    .line 251
    :cond_6
    nop

    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_79

    .line 253
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    .line 254
    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v3

    .line 255
    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_7c

    .line 274
    :pswitch_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 260
    :pswitch_26
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 261
    goto :goto_76

    .line 269
    :pswitch_36
    nop

    .line 270
    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 271
    invoke-virtual {v3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 272
    goto :goto_76

    .line 266
    :pswitch_4a
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 267
    goto :goto_76

    .line 263
    :pswitch_56
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 264
    goto :goto_76

    .line 257
    :pswitch_66
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 258
    nop

    .line 252
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 278
    :cond_79
    iput v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 280
    return v1

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_66
        :pswitch_56
        :pswitch_4a
        :pswitch_36
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method

.method public blacklist getSerializedSizeAsMessageSet()I
    .registers 5

    .line 222
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 223
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 224
    return v0

    .line 227
    :cond_6
    nop

    .line 228
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v2, :cond_23

    .line 229
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v2, v2, v0

    .line 230
    invoke-static {v2}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    .line 231
    iget-object v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/android/framework/protobuf/ByteString;

    .line 232
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeRawMessageSetExtensionSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 235
    :cond_23
    iput v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 237
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 343
    nop

    .line 345
    const/16 v0, 0x20f

    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    .line 346
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->hashCode([II)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->hashCode([Ljava/lang/Object;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    return v0
.end method

.method public blacklist makeImmutable()V
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    if-eqz v0, :cond_7

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 96
    :cond_7
    return-void
.end method

.method blacklist mergeFieldFrom(ILcom/android/framework/protobuf/CodedInputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 408
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    .line 409
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_56

    .line 431
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 414
    :pswitch_14
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 415
    return v2

    .line 429
    :pswitch_20
    const/4 p1, 0x0

    return p1

    .line 423
    :pswitch_22
    new-instance v1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-direct {v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;-><init>()V

    .line 424
    invoke-direct {v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 425
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 426
    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 427
    return v2

    .line 420
    :pswitch_36
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 421
    return v2

    .line 417
    :pswitch_3e
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 418
    return v2

    .line 411
    :pswitch_4a
    invoke-virtual {p2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 412
    return v2

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_3e
        :pswitch_36
        :pswitch_22
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method

.method blacklist mergeFrom(Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 8

    .line 482
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 483
    return-object p0

    .line 486
    :cond_b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 487
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/2addr v0, v1

    .line 488
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->ensureCapacity(I)V

    .line 489
    iget-object v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget v4, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    iget p1, p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iput v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    .line 492
    return-object p0
.end method

.method blacklist mergeLengthDelimitedField(ILcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 4

    .line 458
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 459
    if-eqz p1, :cond_e

    .line 463
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 465
    return-object p0

    .line 460
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist mergeVarintField(II)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 5

    .line 442
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 443
    if-eqz p1, :cond_13

    .line 447
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 449
    return-object p0

    .line 444
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final blacklist printWithIndent(Ljava/lang/StringBuilder;I)V
    .registers 6

    .line 361
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_1b

    .line 362
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 363
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/android/framework/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    :cond_1b
    return-void
.end method

.method blacklist storeField(ILjava/lang/Object;)V
    .registers 5

    .line 369
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->checkMutable()V

    .line 370
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->ensureCapacity(I)V

    .line 372
    iget-object v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    aput p1, v0, v1

    .line 373
    iget-object p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    aput-object p2, p1, v0

    .line 374
    iget p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    .line 375
    return-void
.end method

.method public blacklist writeAsMessageSetTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_19

    .line 145
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_19
    return-void
.end method

.method blacklist writeAsMessageSetTo(Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_20

    .line 154
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_37

    .line 155
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 156
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 160
    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_37

    .line 161
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/android/framework/protobuf/Writer;->writeMessageSetItem(ILjava/lang/Object;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 165
    :cond_37
    return-void
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_62

    .line 112
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    .line 113
    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v2

    .line 114
    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_64

    .line 133
    :pswitch_14
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 119
    :pswitch_19
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 120
    goto :goto_5f

    .line 128
    :pswitch_27
    const/4 v1, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 129
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 130
    const/4 v1, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 131
    goto :goto_5f

    .line 125
    :pswitch_39
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 126
    goto :goto_5f

    .line 122
    :pswitch_43
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 123
    goto :goto_5f

    .line 116
    :pswitch_51
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 117
    nop

    .line 111
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_51
        :pswitch_43
        :pswitch_39
        :pswitch_27
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-nez v0, :cond_5

    .line 170
    return-void

    .line 174
    :cond_5
    invoke-interface {p1}, Lcom/android/framework/protobuf/Writer;->fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_20

    .line 175
    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    if-ge v0, v1, :cond_34

    .line 176
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 179
    :cond_20
    iget v0, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_24
    if-ltz v0, :cond_34

    .line 180
    iget-object v1, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->tags:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/framework/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeField(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 179
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 183
    :cond_34
    return-void
.end method
