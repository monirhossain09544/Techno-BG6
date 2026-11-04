.class final Lcom/android/framework/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/Utf8$Processor;,
        Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;,
        Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;,
        Lcom/android/framework/protobuf/Utf8$SafeProcessor;,
        Lcom/android/framework/protobuf/Utf8$DecodeUtil;
    }
.end annotation


# static fields
.field private static final blacklist ASCII_MASK_LONG:J = -0x7f7f7f7f7f7f7f80L

.field static final blacklist COMPLETE:I = 0x0

.field static final blacklist MALFORMED:I = -0x1

.field static final blacklist MAX_BYTES_PER_CHAR:I = 0x3

.field private static final blacklist UNSAFE_COUNT_ASCII_THRESHOLD:I = 0x10

.field private static final blacklist processor:Lcom/android/framework/protobuf/Utf8$Processor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    invoke-static {}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/framework/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-nez v0, :cond_12

    .line 63
    new-instance v0, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;

    invoke-direct {v0}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;-><init>()V

    goto :goto_17

    .line 64
    :cond_12
    new-instance v0, Lcom/android/framework/protobuf/Utf8$SafeProcessor;

    invoke-direct {v0}, Lcom/android/framework/protobuf/Utf8$SafeProcessor;-><init>()V

    :goto_17
    sput-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    .line 61
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(II)I
    .registers 2

    .line 54
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$100(III)I
    .registers 3

    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1100([BII)I
    .registers 3

    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$1200(I)I
    .registers 1

    .line 54
    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$200(Ljava/nio/ByteBuffer;II)I
    .registers 3

    .line 54
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$300(Ljava/nio/ByteBuffer;III)I
    .registers 4

    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method

.method static blacklist decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$Processor;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist decodeUtf8([BII)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist encode(Ljava/lang/CharSequence;[BII)I
    .registers 5

    .line 271
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method static blacklist encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 332
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1}, Lcom/android/framework/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 333
    return-void
.end method

.method static blacklist encodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    .line 219
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 220
    nop

    .line 221
    const/4 v1, 0x0

    .line 224
    :goto_6
    if-ge v1, v0, :cond_13

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_13

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 229
    :cond_13
    move v2, v0

    :goto_14
    if-ge v1, v0, :cond_2c

    .line 230
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 231
    const/16 v4, 0x800

    if-ge v3, v4, :cond_26

    .line 232
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 234
    :cond_26
    invoke-static {p0, v1}, Lcom/android/framework/protobuf/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    .line 235
    nop

    .line 239
    :cond_2c
    if-lt v2, v0, :cond_2f

    .line 244
    return v2

    .line 241
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 248
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 249
    nop

    .line 250
    const/4 v1, 0x0

    :goto_6
    if-ge p1, v0, :cond_36

    .line 251
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 252
    const/16 v3, 0x800

    if-ge v2, v3, :cond_16

    .line 253
    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_33

    .line 255
    :cond_16
    add-int/lit8 v1, v1, 0x2

    .line 257
    const v3, 0xd800

    if-gt v3, v2, :cond_33

    const v3, 0xdfff

    if-gt v2, v3, :cond_33

    .line 259
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 260
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2d

    .line 263
    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    .line 261
    :cond_2d
    new-instance p0, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p0

    .line 250
    :cond_33
    :goto_33
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 267
    :cond_36
    return v1
.end method

.method private static blacklist estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    .registers 8

    .line 347
    nop

    .line 348
    add-int/lit8 p2, p2, -0x7

    move v0, p1

    .line 352
    :goto_4
    if-ge v0, p2, :cond_19

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    add-int/lit8 v0, v0, 0x8

    goto :goto_4

    .line 353
    :cond_19
    sub-int/2addr v0, p1

    return v0
.end method

.method private static blacklist incompleteStateFor(I)I
    .registers 2

    .line 158
    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method private static blacklist incompleteStateFor(II)I
    .registers 3

    .line 162
    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method private static blacklist incompleteStateFor(III)I
    .registers 4

    .line 166
    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    .line 168
    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_13

    .line 167
    :cond_12
    :goto_12
    const/4 p0, -0x1

    .line 166
    :goto_13
    return p0
.end method

.method private static blacklist incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    .registers 4

    .line 187
    packed-switch p3, :pswitch_data_26

    .line 195
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 193
    :pswitch_9
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p3, p0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    .line 191
    :pswitch_18
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    .line 189
    :pswitch_21
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist incompleteStateFor([BII)I
    .registers 4

    .line 172
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    .line 173
    sub-int/2addr p2, p1

    packed-switch p2, :pswitch_data_26

    .line 181
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 179
    :pswitch_e
    aget-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    .line 177
    :pswitch_19
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    .line 175
    :pswitch_20
    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_20
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method

.method static blacklist isValidUtf8(Ljava/nio/ByteBuffer;)Z
    .registers 4

    .line 285
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/Utf8$Processor;->isValidUtf8(Ljava/nio/ByteBuffer;II)Z

    move-result p0

    return p0
.end method

.method static blacklist isValidUtf8([B)Z
    .registers 4

    .line 125
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/framework/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method static blacklist isValidUtf8([BII)Z
    .registers 4

    .line 137
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method static blacklist partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 5

    .line 298
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static blacklist partialIsValidUtf8(I[BII)I
    .registers 5

    .line 154
    sget-object v0, Lcom/android/framework/protobuf/Utf8;->processor:Lcom/android/framework/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p0

    return p0
.end method
