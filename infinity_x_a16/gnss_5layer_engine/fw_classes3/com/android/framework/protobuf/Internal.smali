.class public final Lcom/android/framework/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/Internal$EnumLite;,
        Lcom/android/framework/protobuf/Internal$FloatList;,
        Lcom/android/framework/protobuf/Internal$DoubleList;,
        Lcom/android/framework/protobuf/Internal$LongList;,
        Lcom/android/framework/protobuf/Internal$BooleanList;,
        Lcom/android/framework/protobuf/Internal$IntList;,
        Lcom/android/framework/protobuf/Internal$ProtobufList;,
        Lcom/android/framework/protobuf/Internal$MapAdapter;,
        Lcom/android/framework/protobuf/Internal$ListAdapter;,
        Lcom/android/framework/protobuf/Internal$EnumVerifier;,
        Lcom/android/framework/protobuf/Internal$EnumLiteMap;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final blacklist EMPTY_BYTE_ARRAY:[B

.field public static final blacklist EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

.field public static final blacklist EMPTY_CODED_INPUT_STREAM:Lcom/android/framework/protobuf/CodedInputStream;

.field static final blacklist ISO_8859_1:Ljava/nio/charset/Charset;

.field static final blacklist US_ASCII:Ljava/nio/charset/Charset;

.field static final blacklist UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/Internal;->US_ASCII:Ljava/nio/charset/Charset;

    .line 36
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 360
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 363
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    .line 366
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 367
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->newInstance([B)Lcom/android/framework/protobuf/CodedInputStream;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_CODED_INPUT_STREAM:Lcom/android/framework/protobuf/CodedInputStream;

    .line 366
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist byteArrayDefaultValue(Ljava/lang/String;)[B
    .registers 2

    .line 97
    sget-object v0, Lcom/android/framework/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist byteBufferDefaultValue(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 1

    .line 106
    invoke-static {p0}, Lcom/android/framework/protobuf/Internal;->byteArrayDefaultValue(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist bytesDefaultValue(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;
    .registers 2

    .line 89
    sget-object v0, Lcom/android/framework/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static blacklist checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 41
    if-eqz p0, :cond_3

    .line 44
    return-object p0

    .line 42
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method static blacklist checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 49
    if-eqz p0, :cond_3

    .line 52
    return-object p0

    .line 50
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist copyByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2

    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 123
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 126
    return-object v0
.end method

.method public static blacklist equals(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 239
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 240
    return v2

    .line 242
    :cond_c
    move v0, v2

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 243
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 244
    return v2

    .line 242
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 247
    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 4

    .line 288
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 289
    const/4 p0, 0x0

    return p0

    .line 293
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 294
    invoke-static {p0}, Lcom/android/framework/protobuf/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 295
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 296
    invoke-static {p1}, Lcom/android/framework/protobuf/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 297
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist equalsByteBuffer(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    .line 302
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 303
    return v2

    .line 305
    :cond_c
    move v0, v2

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 306
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/Internal;->equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 307
    return v2

    .line 305
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 310
    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist getDefaultInstance(Ljava/lang/Class;)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 352
    :try_start_0
    const-string v0, "getDefaultInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 353
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 354
    :catch_12
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get default instance for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist hashBoolean(Z)I
    .registers 1

    .line 214
    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    goto :goto_7

    :cond_5
    const/16 p0, 0x4d5

    :goto_7
    return p0
.end method

.method public static blacklist hashCode(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation

    .line 252
    nop

    .line 253
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 254
    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    goto :goto_6

    .line 256
    :cond_1a
    return v0
.end method

.method public static blacklist hashCode([B)I
    .registers 3

    .line 265
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/Internal;->hashCode([BII)I

    move-result p0

    return p0
.end method

.method static blacklist hashCode([BII)I
    .registers 3

    .line 274
    invoke-static {p2, p0, p1, p2}, Lcom/android/framework/protobuf/Internal;->partialHash(I[BII)I

    move-result p0

    .line 275
    if-nez p0, :cond_7

    const/4 p0, 0x1

    :cond_7
    return p0
.end method

.method public static blacklist hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I
    .registers 7

    .line 326
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 328
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-static {v0, v2, v3, p0}, Lcom/android/framework/protobuf/Internal;->partialHash(I[BII)I

    move-result p0

    .line 329
    if-nez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, p0

    :goto_1f
    return v1

    .line 334
    :cond_20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v2, 0x1000

    if-le v0, v2, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 335
    :goto_2d
    new-array v0, v2, [B

    .line 336
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 337
    invoke-static {v3}, Lcom/android/framework/protobuf/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    .line 338
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    .line 339
    :goto_3a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_55

    .line 341
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-gt v4, v2, :cond_4b

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    goto :goto_4c

    :cond_4b
    move v4, v2

    .line 342
    :goto_4c
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 343
    invoke-static {p0, v0, v5, v4}, Lcom/android/framework/protobuf/Internal;->partialHash(I[BII)I

    move-result p0

    .line 344
    goto :goto_3a

    .line 345
    :cond_55
    if-nez p0, :cond_58

    goto :goto_59

    :cond_58
    move v1, p0

    :goto_59
    return v1
.end method

.method public static blacklist hashCodeByteBuffer(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)I"
        }
    .end annotation

    .line 315
    nop

    .line 316
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 317
    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    goto :goto_6

    .line 319
    :cond_1a
    return v0
.end method

.method public static blacklist hashEnum(Lcom/android/framework/protobuf/Internal$EnumLite;)I
    .registers 1

    .line 225
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$EnumLite;->getNumber()I

    move-result p0

    return p0
.end method

.method public static blacklist hashEnumList(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/framework/protobuf/Internal$EnumLite;",
            ">;)I"
        }
    .end annotation

    .line 230
    nop

    .line 231
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/Internal$EnumLite;

    .line 232
    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->hashEnum(Lcom/android/framework/protobuf/Internal$EnumLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    goto :goto_6

    .line 234
    :cond_1a
    return v0
.end method

.method public static blacklist hashLong(J)I
    .registers 4

    .line 205
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist isValidUtf8(Lcom/android/framework/protobuf/ByteString;)Z
    .registers 1

    .line 156
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->isValidUtf8()Z

    move-result p0

    return p0
.end method

.method public static blacklist isValidUtf8([B)Z
    .registers 1

    .line 161
    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([B)Z

    move-result p0

    return p0
.end method

.method static blacklist mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 371
    check-cast p0, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object p0

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {p0, p1}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method static blacklist partialHash(I[BII)I
    .registers 6

    .line 280
    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    .line 281
    mul-int/lit8 p0, p0, 0x1f

    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_d
    return p0
.end method

.method public static blacklist stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/framework/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object v1, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static blacklist toByteArray(Ljava/lang/String;)[B
    .registers 2

    .line 166
    sget-object v0, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static blacklist toStringUtf8([B)Ljava/lang/String;
    .registers 3

    .line 171
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
