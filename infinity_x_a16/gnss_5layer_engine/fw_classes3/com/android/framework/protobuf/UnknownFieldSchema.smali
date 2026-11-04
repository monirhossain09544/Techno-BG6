.class abstract Lcom/android/framework/protobuf/UnknownFieldSchema;
.super Ljava/lang/Object;
.source "UnknownFieldSchema.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_RECURSION_LIMIT:I = 0x64

.field private static volatile blacklist recursionLimit:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const/16 v0, 0x64

    sput v0, Lcom/android/framework/protobuf/UnknownFieldSchema;->recursionLimit:I

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final blacklist mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/android/framework/protobuf/Reader;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    nop

    :cond_1
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getFieldNumber()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_11

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    nop

    .line 110
    :cond_11
    return-void
.end method


# virtual methods
.method abstract blacklist addFixed32(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract blacklist addFixed64(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract blacklist addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract blacklist addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/android/framework/protobuf/ByteString;",
            ")V"
        }
    .end annotation
.end method

.method abstract blacklist addVarint(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract blacklist getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract blacklist getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract blacklist getSerializedSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract blacklist getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract blacklist makeImmutable(Ljava/lang/Object;)V
.end method

.method abstract blacklist merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method final blacklist mergeOneFieldFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/android/framework/protobuf/Reader;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result v0

    .line 67
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    .line 68
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_62

    .line 98
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 73
    :pswitch_15
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFixed32()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addFixed32(Ljava/lang/Object;II)V

    .line 74
    return v2

    .line 96
    :pswitch_1d
    const/4 p1, 0x0

    return p1

    .line 82
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->newBuilder()Ljava/lang/Object;

    move-result-object v0

    .line 83
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v3

    .line 84
    add-int/2addr p3, v2

    .line 85
    sget v4, Lcom/android/framework/protobuf/UnknownFieldSchema;->recursionLimit:I

    if-ge p3, v4, :cond_44

    .line 88
    invoke-direct {p0, v0, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;I)V

    .line 89
    nop

    .line 90
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->getTag()I

    move-result p2

    if-ne v3, p2, :cond_3f

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addGroup(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 94
    return v2

    .line 91
    :cond_3f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 86
    :cond_44
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 79
    :pswitch_49
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V

    .line 80
    return v2

    .line 76
    :pswitch_51
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readFixed64()J

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addFixed64(Ljava/lang/Object;IJ)V

    .line 77
    return v2

    .line 70
    :pswitch_59
    invoke-interface {p2}, Lcom/android/framework/protobuf/Reader;->readInt64()J

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    .line 71
    return v2

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_1f
        :pswitch_1d
        :pswitch_15
    .end packed-switch
.end method

.method abstract blacklist newBuilder()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract blacklist setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method public blacklist setRecursionLimit(I)V
    .registers 2

    .line 129
    sput p1, Lcom/android/framework/protobuf/UnknownFieldSchema;->recursionLimit:I

    .line 130
    return-void
.end method

.method abstract blacklist setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract blacklist shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z
.end method

.method abstract blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract blacklist writeAsMessageSetTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
