.class public abstract Lcom/android/framework/protobuf/CodedOutputStream;
.super Lcom/android/framework/protobuf/ByteOutput;
.source "CodedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;,
        Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;,
        Lcom/android/framework/protobuf/CodedOutputStream$AbstractBufferedEncoder;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final blacklist HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field public static final blacklist LITTLE_ENDIAN_32_SIZE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private blacklist serializationDeterministic:Z

.field blacklist wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    .line 38
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/android/framework/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 201
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteOutput;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/CodedOutputStream$1;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedOutputStream;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/android/framework/protobuf/CodedOutputStream;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method public static blacklist computeBoolSize(IZ)I
    .registers 2

    .line 581
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeBoolSizeNoTag(Z)I
    .registers 1

    .line 804
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist computeByteArraySize(I[B)I
    .registers 2

    .line 614
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeByteArraySizeNoTag([B)I
    .registers 1

    .line 844
    array-length p0, p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeByteBufferSize(ILjava/nio/ByteBuffer;)I
    .registers 2

    .line 622
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeByteBufferSizeNoTag(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeByteBufferSizeNoTag(Ljava/nio/ByteBuffer;)I
    .registers 1

    .line 849
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I
    .registers 2

    .line 606
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I
    .registers 1

    .line 839
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeDoubleSize(ID)I
    .registers 3

    .line 574
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeDoubleSizeNoTag(D)I
    .registers 2

    .line 799
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeEnumSize(II)I
    .registers 2

    .line 590
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeEnumSizeNoTag(I)I
    .registers 1

    .line 812
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeFixed32Size(II)I
    .registers 2

    .line 510
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFixed32SizeNoTag(I)I
    .registers 1

    .line 727
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeFixed64Size(IJ)I
    .registers 3

    .line 550
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFixed64SizeNoTag(J)I
    .registers 2

    .line 778
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeFloatSize(IF)I
    .registers 2

    .line 566
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFloatSizeNoTag(F)I
    .registers 1

    .line 791
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeGroupSize(ILcom/android/framework/protobuf/MessageLite;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1034
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static blacklist computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1045
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeGroupSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1052
    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method static blacklist computeGroupSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1058
    check-cast p0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result p0

    return p0
.end method

.method public static blacklist computeInt32Size(II)I
    .registers 2

    .line 486
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeInt32SizeNoTag(I)I
    .registers 1

    .line 695
    if-ltz p0, :cond_7

    .line 696
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 699
    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static blacklist computeInt64Size(IJ)I
    .registers 3

    .line 526
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeInt64SizeNoTag(J)I
    .registers 2

    .line 740
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p0

    return p0
.end method

.method public static blacklist computeLazyFieldMessageSetExtensionSize(ILcom/android/framework/protobuf/LazyFieldLite;)I
    .registers 4

    .line 678
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 679
    invoke-static {v1, p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 680
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/android/framework/protobuf/LazyFieldLite;)I

    move-result p0

    add-int/2addr v0, p0

    .line 678
    return v0
.end method

.method public static blacklist computeLazyFieldSize(ILcom/android/framework/protobuf/LazyFieldLite;)I
    .registers 2

    .line 630
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I
    .registers 1

    .line 834
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p0

    return p0
.end method

.method static blacklist computeLengthDelimitedFieldSize(I)I
    .registers 2

    .line 863
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeMessageSetExtensionSize(ILcom/android/framework/protobuf/MessageLite;)I
    .registers 4

    .line 655
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 656
    invoke-static {v1, p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 657
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/framework/protobuf/MessageLite;)I

    move-result p0

    add-int/2addr v0, p0

    .line 655
    return v0
.end method

.method public static blacklist computeMessageSize(ILcom/android/framework/protobuf/MessageLite;)I
    .registers 2

    .line 638
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static blacklist computeMessageSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I
    .registers 3

    .line 647
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I
    .registers 1

    .line 854
    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p0

    return p0
.end method

.method static blacklist computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I
    .registers 2

    .line 859
    check-cast p0, Lcom/android/framework/protobuf/AbstractMessageLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/android/framework/protobuf/Schema;)I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p0

    return p0
.end method

.method static blacklist computePreferredBufferSize(I)I
    .registers 2

    .line 56
    const/16 v0, 0x1000

    if-le p0, v0, :cond_5

    .line 57
    return v0

    .line 59
    :cond_5
    return p0
.end method

.method public static blacklist computeRawMessageSetExtensionSize(ILcom/android/framework/protobuf/ByteString;)I
    .registers 4

    .line 666
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 667
    invoke-static {v1, p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 668
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/framework/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    .line 666
    return v0
.end method

.method public static blacklist computeRawVarint32Size(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1095
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeRawVarint64Size(J)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1108
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p0

    return p0
.end method

.method public static blacklist computeSFixed32Size(II)I
    .registers 2

    .line 518
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSFixed32SizeNoTag(I)I
    .registers 1

    .line 732
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeSFixed64Size(IJ)I
    .registers 3

    .line 558
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSFixed64SizeNoTag(J)I
    .registers 2

    .line 783
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeSInt32Size(II)I
    .registers 2

    .line 502
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSInt32SizeNoTag(I)I
    .registers 1

    .line 722
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeSInt64Size(IJ)I
    .registers 3

    .line 542
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSInt64SizeNoTag(J)I
    .registers 2

    .line 773
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p0

    return p0
.end method

.method public static blacklist computeStringSize(ILjava/lang/String;)I
    .registers 2

    .line 598
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeStringSizeNoTag(Ljava/lang/String;)I
    .registers 2

    .line 819
    :try_start_0
    invoke-static {p0}, Lcom/android/framework/protobuf/Utf8;->encodedLength(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException; {:try_start_0 .. :try_end_4} :catch_5

    .line 824
    goto :goto_d

    .line 820
    :catch_5
    move-exception v0

    .line 822
    sget-object v0, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 823
    array-length p0, p0

    .line 826
    :goto_d
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeTagSize(I)I
    .registers 2

    .line 687
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeUInt32Size(II)I
    .registers 2

    .line 494
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeUInt32SizeNoTag(I)I
    .registers 2

    .line 705
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    .line 706
    const/4 p0, 0x1

    return p0

    .line 708
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    .line 709
    const/4 p0, 0x2

    return p0

    .line 711
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    .line 712
    const/4 p0, 0x3

    return p0

    .line 714
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    .line 715
    const/4 p0, 0x4

    return p0

    .line 717
    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static blacklist computeUInt64Size(IJ)I
    .registers 3

    .line 534
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeUInt64SizeNoTag(J)I
    .registers 8

    .line 749
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 750
    const/4 p0, 0x1

    return p0

    .line 752
    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    .line 753
    const/16 p0, 0xa

    return p0

    .line 756
    :cond_12
    nop

    .line 757
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_23

    .line 758
    nop

    .line 759
    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_24

    .line 757
    :cond_23
    const/4 v0, 0x2

    .line 761
    :goto_24
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_31

    .line 762
    add-int/lit8 v0, v0, 0x2

    .line 763
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 765
    :cond_31
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3a

    .line 766
    add-int/lit8 v0, v0, 0x1

    .line 768
    :cond_3a
    return v0
.end method

.method public static blacklist encodeZigZag32(I)I
    .registers 2

    .line 877
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static blacklist encodeZigZag64(J)J
    .registers 5

    .line 891
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method static blacklist newInstance(Lcom/android/framework/protobuf/ByteOutput;I)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 3

    .line 193
    if-ltz p1, :cond_8

    .line 197
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$ByteOutputEncoder;-><init>(Lcom/android/framework/protobuf/ByteOutput;I)V

    return-object v0

    .line 194
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bufferSize must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist newInstance(Ljava/io/OutputStream;)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 2

    .line 70
    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance(Ljava/io/OutputStream;I)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 3

    .line 82
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutputStreamEncoder;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public static blacklist newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 2

    .line 108
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 109
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedOutputStream$HeapNioEncoder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 111
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_28

    .line 112
    invoke-static {}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 113
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->newUnsafeInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object p0

    goto :goto_27

    .line 114
    :cond_23
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->newSafeInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object p0

    .line 112
    :goto_27
    return-object p0

    .line 116
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is read-only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist newInstance(Ljava/nio/ByteBuffer;I)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([B)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 3

    .line 92
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance([BII)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([BII)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 4

    .line 103
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream$ArrayEncoder;-><init>([BII)V

    return-object v0
.end method

.method static blacklist newSafeInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 2

    .line 126
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedOutputStream$SafeDirectNioEncoder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static blacklist newUnsafeInstance(Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/CodedOutputStream;
    .registers 2

    .line 121
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedOutputStream$UnsafeDirectNioEncoder;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public final blacklist checkNoSpaceLeft()V
    .registers 3

    .line 915
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_7

    .line 918
    return-void

    .line 916
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract blacklist flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getTotalBytesWritten()I
.end method

.method final blacklist inefficientWriteStringNoTag(Ljava/lang/String;Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    sget-object v0, Lcom/android/framework/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 970
    sget-object p2, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 972
    :try_start_f
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 973
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeLazy([BII)V
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_18} :catch_1a

    .line 976
    nop

    .line 977
    return-void

    .line 974
    :catch_1a
    move-exception p1

    .line 975
    new-instance p2, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;

    invoke-direct {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream$OutOfSpaceException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method blacklist isSerializationDeterministic()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->serializationDeterministic:Z

    return v0
.end method

.method public abstract blacklist spaceLeft()I
.end method

.method public blacklist useDeterministicSerialization()V
    .registers 2

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->serializationDeterministic:Z

    .line 160
    return-void
.end method

.method public abstract blacklist write(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist write(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeBool(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeBoolNoTag(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->write(B)V

    .line 425
    return-void
.end method

.method public abstract blacklist writeByteArray(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeByteArray(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeByteArrayNoTag([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeByteArrayNoTag([BII)V

    .line 447
    return-void
.end method

.method abstract blacklist writeByteArrayNoTag([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeByteBuffer(ILjava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeDouble(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 262
    return-void
.end method

.method public final blacklist writeDoubleNoTag(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 420
    return-void
.end method

.method public final blacklist writeEnum(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 274
    return-void
.end method

.method public final blacklist writeEnumNoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 433
    return-void
.end method

.method public abstract blacklist writeFixed32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeFixed32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeFixed64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeFixed64NoTag(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeFloat(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 257
    return-void
.end method

.method public final blacklist writeFloatNoTag(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 415
    return-void
.end method

.method public final blacklist writeGroup(ILcom/android/framework/protobuf/MessageLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 988
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 989
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 990
    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 991
    return-void
.end method

.method final blacklist writeGroup(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1001
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 1002
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    .line 1003
    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 1004
    return-void
.end method

.method public final blacklist writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1013
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/MessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 1014
    return-void
.end method

.method final blacklist writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1023
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-interface {p2, p1, v0}, Lcom/android/framework/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V

    .line 1024
    return-void
.end method

.method public abstract blacklist writeInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeInt32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeInt64(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 234
    return-void
.end method

.method public final blacklist writeInt64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 392
    return-void
.end method

.method public abstract blacklist writeLazy(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeLazy([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeRawByte(B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->write(B)V

    .line 307
    return-void
.end method

.method public final blacklist writeRawByte(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->write(B)V

    .line 312
    return-void
.end method

.method public final blacklist writeRawBytes(Lcom/android/framework/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/ByteString;->writeTo(Lcom/android/framework/protobuf/ByteOutput;)V

    .line 327
    return-void
.end method

.method public abstract blacklist writeRawBytes(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeRawBytes([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->write([BII)V

    .line 317
    return-void
.end method

.method public final blacklist writeRawBytes([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->write([BII)V

    .line 322
    return-void
.end method

.method public final blacklist writeRawLittleEndian32(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1119
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 1120
    return-void
.end method

.method public final blacklist writeRawLittleEndian64(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1130
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 1131
    return-void
.end method

.method public abstract blacklist writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final blacklist writeRawVarint32(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1071
    return-void
.end method

.method public final blacklist writeRawVarint64(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1081
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 1082
    return-void
.end method

.method public final blacklist writeSFixed32(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 229
    return-void
.end method

.method public final blacklist writeSFixed32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 387
    return-void
.end method

.method public final blacklist writeSFixed64(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 252
    return-void
.end method

.method public final blacklist writeSFixed64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 410
    return-void
.end method

.method public final blacklist writeSInt32(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-static {p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 220
    return-void
.end method

.method public final blacklist writeSInt32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 378
    return-void
.end method

.method public final blacklist writeSInt64(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-static {p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 243
    return-void
.end method

.method public final blacklist writeSInt64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 401
    return-void
.end method

.method public abstract blacklist writeString(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeStringNoTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeTag(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeUInt32(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeUInt32NoTag(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeUInt64(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeUInt64NoTag(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
