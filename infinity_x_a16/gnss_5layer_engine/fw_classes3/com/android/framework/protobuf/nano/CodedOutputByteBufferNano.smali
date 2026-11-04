.class public final Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final blacklist LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final blacklist LITTLE_ENDIAN_64_SIZE:I = 0x8

.field private static final blacklist MAX_UTF8_EXPANSION:I = 0x3


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 65
    iget-object p1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 66
    return-void
.end method

.method private constructor blacklist <init>([BII)V
    .registers 4

    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    .line 61
    return-void
.end method

.method public static blacklist computeBoolSize(IZ)I
    .registers 2

    .line 621
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeBoolSizeNoTag(Z)I
    .registers 1

    .line 803
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist computeBytesSize(I[B)I
    .registers 2

    .line 657
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeBytesSizeNoTag([B)I
    .registers 2

    .line 837
    array-length v0, p0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeDoubleSize(ID)I
    .registers 3

    .line 562
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeDoubleSizeNoTag(D)I
    .registers 2

    .line 742
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeEnumSize(II)I
    .registers 2

    .line 674
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeEnumSizeNoTag(I)I
    .registers 1

    .line 853
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method static blacklist computeFieldSize(IILjava/lang/Object;)I
    .registers 4

    .line 1092
    packed-switch p1, :pswitch_data_d2

    .line 1130
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1120
    :pswitch_1c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result p0

    return p0

    .line 1112
    :pswitch_27
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result p0

    return p0

    .line 1124
    :pswitch_32
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result p0

    return p0

    .line 1114
    :pswitch_3d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result p0

    return p0

    .line 1104
    :pswitch_48
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result p0

    return p0

    .line 1110
    :pswitch_53
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result p0

    return p0

    .line 1096
    :pswitch_5e
    check-cast p2, [B

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result p0

    return p0

    .line 1126
    :pswitch_65
    check-cast p2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result p0

    return p0

    .line 1128
    :pswitch_6c
    check-cast p2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result p0

    return p0

    .line 1098
    :pswitch_73
    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 1094
    :pswitch_7a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    return p0

    .line 1106
    :pswitch_85
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result p0

    return p0

    .line 1122
    :pswitch_90
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result p0

    return p0

    .line 1108
    :pswitch_9b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    return p0

    .line 1118
    :pswitch_a6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result p0

    return p0

    .line 1116
    :pswitch_b1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    return p0

    .line 1100
    :pswitch_bc
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p0

    return p0

    .line 1102
    :pswitch_c7
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result p0

    return p0

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_c7
        :pswitch_bc
        :pswitch_b1
        :pswitch_a6
        :pswitch_9b
        :pswitch_90
        :pswitch_85
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist computeFixed32Size(II)I
    .registers 2

    .line 612
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFixed32SizeNoTag(I)I
    .registers 1

    .line 795
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeFixed64Size(IJ)I
    .registers 3

    .line 603
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFixed64SizeNoTag(J)I
    .registers 2

    .line 787
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeFloatSize(IF)I
    .registers 2

    .line 570
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeFloatSizeNoTag(F)I
    .registers 1

    .line 750
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I
    .registers 2

    .line 639
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeGroupSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I
    .registers 1

    .line 820
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result p0

    return p0
.end method

.method public static blacklist computeInt32Size(II)I
    .registers 2

    .line 594
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeInt32SizeNoTag(I)I
    .registers 1

    .line 774
    if-ltz p0, :cond_7

    .line 775
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0

    .line 778
    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static blacklist computeInt64Size(IJ)I
    .registers 3

    .line 586
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeInt64SizeNoTag(J)I
    .registers 2

    .line 766
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static blacklist computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I
    .registers 2

    .line 648
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeMessageSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I
    .registers 2

    .line 828
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result p0

    .line 829
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeRawVarint32Size(I)I
    .registers 2

    .line 1007
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 1008
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 1009
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    .line 1010
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    .line 1011
    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static blacklist computeRawVarint64Size(J)I
    .registers 6

    .line 1029
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 p0, 0x1

    return p0

    .line 1030
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 p0, 0x2

    return p0

    .line 1031
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 p0, 0x3

    return p0

    .line 1032
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 p0, 0x4

    return p0

    .line 1033
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 p0, 0x5

    return p0

    .line 1034
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 p0, 0x6

    return p0

    .line 1035
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 p0, 0x7

    return p0

    .line 1036
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 p0, 0x8

    return p0

    .line 1037
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_5d

    const/16 p0, 0x9

    return p0

    .line 1038
    :cond_5d
    const/16 p0, 0xa

    return p0
.end method

.method public static blacklist computeSFixed32Size(II)I
    .registers 2

    .line 683
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSFixed32SizeNoTag(I)I
    .registers 1

    .line 861
    const/4 p0, 0x4

    return p0
.end method

.method public static blacklist computeSFixed64Size(IJ)I
    .registers 3

    .line 692
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSFixed64SizeNoTag(J)I
    .registers 2

    .line 869
    const/16 p0, 0x8

    return p0
.end method

.method public static blacklist computeSInt32Size(II)I
    .registers 2

    .line 700
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSInt32SizeNoTag(I)I
    .registers 1

    .line 877
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeSInt64Size(IJ)I
    .registers 3

    .line 708
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeSInt64SizeNoTag(J)I
    .registers 2

    .line 885
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method public static blacklist computeStringSize(ILjava/lang/String;)I
    .registers 2

    .line 630
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeStringSizeNoTag(Ljava/lang/String;)I
    .registers 2

    .line 811
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result p0

    .line 812
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeTagSize(I)I
    .registers 2

    .line 982
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeUInt32Size(II)I
    .registers 2

    .line 665
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeUInt32SizeNoTag(I)I
    .registers 1

    .line 845
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method public static blacklist computeUInt64Size(IJ)I
    .registers 3

    .line 578
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeUInt64SizeNoTag(J)I
    .registers 2

    .line 758
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result p0

    return p0
.end method

.method private static blacklist encode(Ljava/lang/CharSequence;[BII)I
    .registers 10

    .line 457
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 458
    nop

    .line 459
    nop

    .line 460
    add-int/2addr p3, p2

    const/4 v1, 0x0

    .line 463
    :goto_8
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1c

    add-int v3, v1, p2

    if-ge v3, p3, :cond_1c

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1c

    .line 464
    int-to-byte v2, v4

    aput-byte v2, p1, v3

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 466
    :cond_1c
    if-ne v1, v0, :cond_20

    .line 467
    add-int/2addr p2, v0

    return p2

    .line 469
    :cond_20
    add-int/2addr p2, v1

    .line 470
    :goto_21
    if-ge v1, v0, :cond_fb

    .line 471
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 472
    if-ge v3, v2, :cond_33

    if-ge p2, p3, :cond_33

    .line 473
    add-int/lit8 v4, p2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    move p2, v4

    goto/16 :goto_b8

    .line 474
    :cond_33
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4d

    add-int/lit8 v4, p3, -0x2

    if-gt p2, v4, :cond_4d

    .line 475
    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 476
    add-int/lit8 p2, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    goto :goto_b8

    .line 477
    :cond_4d
    const v4, 0xd800

    if-lt v3, v4, :cond_57

    const v4, 0xdfff

    if-ge v4, v3, :cond_78

    :cond_57
    add-int/lit8 v4, p3, -0x3

    if-gt p2, v4, :cond_78

    .line 479
    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 480
    add-int/lit8 p2, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 481
    add-int/lit8 v4, p2, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    move p2, v4

    goto :goto_b8

    .line 482
    :cond_78
    add-int/lit8 v4, p3, -0x4

    if-gt p2, v4, :cond_d8

    .line 485
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_bd

    .line 486
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 489
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 490
    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 491
    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 492
    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 493
    add-int/lit8 p2, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    .line 494
    move v1, v4

    .line 470
    :goto_b8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 486
    :cond_bc
    move v1, v4

    .line 487
    :cond_bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unpaired surrogate at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 495
    :cond_d8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed writing "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 498
    :cond_fb
    return p2
.end method

.method private static blacklist encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_39

    .line 410
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 412
    nop

    .line 413
    :try_start_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 414
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 415
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 412
    invoke-static {p0, v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p0

    .line 416
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 421
    goto :goto_38

    .line 417
    :catch_2b
    move-exception p0

    .line 418
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 419
    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 420
    throw p1

    .line 423
    :cond_35
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 425
    :goto_38
    return-void

    .line 409
    :cond_39
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method private static blacklist encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 428
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 429
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_a6

    .line 430
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 431
    const/16 v3, 0x80

    if-ge v2, v3, :cond_15

    .line 432
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a2

    .line 433
    :cond_15
    const/16 v4, 0x800

    if-ge v2, v4, :cond_2a

    .line 434
    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 435
    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a2

    .line 436
    :cond_2a
    const v4, 0xd800

    if-lt v2, v4, :cond_8a

    const v4, 0xdfff

    if-ge v4, v2, :cond_35

    goto :goto_8a

    .line 443
    :cond_35
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_6f

    .line 444
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 447
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 448
    ushr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 449
    ushr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 450
    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 451
    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v1, v4

    goto :goto_a2

    .line 444
    :cond_6e
    move v1, v4

    .line 445
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 438
    :cond_8a
    :goto_8a
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 439
    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 440
    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 429
    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 454
    :cond_a6
    return-void
.end method

.method public static blacklist encodeZigZag32(I)I
    .registers 2

    .line 1073
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static blacklist encodeZigZag64(J)J
    .registers 5

    .line 1088
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static blacklist encodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    .line 340
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 341
    nop

    .line 342
    const/4 v1, 0x0

    .line 345
    :goto_6
    if-ge v1, v0, :cond_13

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_13

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 350
    :cond_13
    move v2, v0

    :goto_14
    if-ge v1, v0, :cond_2c

    .line 351
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 352
    const/16 v4, 0x800

    if-ge v3, v4, :cond_26

    .line 353
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 355
    :cond_26
    invoke-static {p0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    .line 356
    nop

    .line 360
    :cond_2c
    if-lt v2, v0, :cond_2f

    .line 365
    return v2

    .line 362
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

    .line 369
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 370
    nop

    .line 371
    const/4 v1, 0x0

    :goto_6
    if-ge p1, v0, :cond_49

    .line 372
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 373
    const/16 v3, 0x800

    if-ge v2, v3, :cond_16

    .line 374
    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_46

    .line 376
    :cond_16
    add-int/lit8 v1, v1, 0x2

    .line 378
    const v3, 0xd800

    if-gt v3, v2, :cond_46

    const v3, 0xdfff

    if-gt v2, v3, :cond_46

    .line 380
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 381
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2d

    .line 384
    add-int/lit8 p1, p1, 0x1

    goto :goto_46

    .line 382
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 371
    :cond_46
    :goto_46
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 388
    :cond_49
    return v1
.end method

.method public static blacklist newInstance([B)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .registers 3

    .line 75
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .registers 4

    .line 87
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public blacklist checkNoSpaceLeft()V
    .registers 3

    .line 906
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result v0

    if-nez v0, :cond_7

    .line 910
    return-void

    .line 907
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist position()I
    .registers 2

    .line 916
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 926
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 927
    return-void
.end method

.method public blacklist spaceLeft()I
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public blacklist writeBool(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 146
    return-void
.end method

.method public blacklist writeBoolNoTag(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 293
    return-void
.end method

.method public blacklist writeBytes(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    .line 175
    return-void
.end method

.method public blacklist writeBytesNoTag([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 519
    return-void
.end method

.method public blacklist writeDouble(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 96
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 97
    return-void
.end method

.method public blacklist writeDoubleNoTag(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 253
    return-void
.end method

.method public blacklist writeEnum(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 191
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    .line 192
    return-void
.end method

.method public blacklist writeEnumNoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 532
    return-void
.end method

.method blacklist writeField(IILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    packed-switch p2, :pswitch_data_c8

    .line 1210
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1198
    :pswitch_1c
    check-cast p3, Ljava/lang/Long;

    .line 1199
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64(IJ)V

    .line 1200
    goto/16 :goto_c6

    .line 1194
    :pswitch_27
    check-cast p3, Ljava/lang/Integer;

    .line 1195
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 1196
    goto/16 :goto_c6

    .line 1190
    :pswitch_32
    check-cast p3, Ljava/lang/Long;

    .line 1191
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64(IJ)V

    .line 1192
    goto/16 :goto_c6

    .line 1186
    :pswitch_3d
    check-cast p3, Ljava/lang/Integer;

    .line 1187
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    .line 1188
    goto/16 :goto_c6

    .line 1182
    :pswitch_48
    check-cast p3, Ljava/lang/Integer;

    .line 1183
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnum(II)V

    .line 1184
    goto/16 :goto_c6

    .line 1178
    :pswitch_53
    check-cast p3, Ljava/lang/Integer;

    .line 1179
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 1180
    goto/16 :goto_c6

    .line 1174
    :pswitch_5e
    check-cast p3, [B

    .line 1175
    invoke-virtual {p0, p1, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1176
    goto :goto_c6

    .line 1202
    :pswitch_64
    check-cast p3, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1203
    invoke-virtual {p0, p1, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1204
    goto :goto_c6

    .line 1206
    :pswitch_6a
    check-cast p3, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 1207
    invoke-virtual {p0, p1, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1208
    goto :goto_c6

    .line 1170
    :pswitch_70
    check-cast p3, Ljava/lang/String;

    .line 1171
    invoke-virtual {p0, p1, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1172
    goto :goto_c6

    .line 1166
    :pswitch_76
    check-cast p3, Ljava/lang/Boolean;

    .line 1167
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1168
    goto :goto_c6

    .line 1162
    :pswitch_80
    check-cast p3, Ljava/lang/Integer;

    .line 1163
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    .line 1164
    goto :goto_c6

    .line 1158
    :pswitch_8a
    check-cast p3, Ljava/lang/Long;

    .line 1159
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 1160
    goto :goto_c6

    .line 1154
    :pswitch_94
    check-cast p3, Ljava/lang/Integer;

    .line 1155
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1156
    goto :goto_c6

    .line 1150
    :pswitch_9e
    check-cast p3, Ljava/lang/Long;

    .line 1151
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 1152
    goto :goto_c6

    .line 1146
    :pswitch_a8
    check-cast p3, Ljava/lang/Long;

    .line 1147
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1148
    goto :goto_c6

    .line 1142
    :pswitch_b2
    check-cast p3, Ljava/lang/Float;

    .line 1143
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1144
    goto :goto_c6

    .line 1138
    :pswitch_bc
    check-cast p3, Ljava/lang/Double;

    .line 1139
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 1140
    nop

    .line 1212
    :goto_c6
    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_bc
        :pswitch_b2
        :pswitch_a8
        :pswitch_9e
        :pswitch_94
        :pswitch_8a
        :pswitch_80
        :pswitch_76
        :pswitch_70
        :pswitch_6a
        :pswitch_64
        :pswitch_5e
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 138
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 139
    return-void
.end method

.method public blacklist writeFixed32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 288
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 131
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 132
    return-void
.end method

.method public blacklist writeFixed64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 283
    return-void
.end method

.method public blacklist writeFloat(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 104
    return-void
.end method

.method public blacklist writeFloatNoTag(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 258
    return-void
.end method

.method public blacklist writeGroup(ILcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 160
    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 161
    return-void
.end method

.method public blacklist writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 507
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 125
    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    if-ltz p1, :cond_6

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    goto :goto_a

    .line 276
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 278
    :goto_a
    return-void
.end method

.method public blacklist writeInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 118
    return-void
.end method

.method public blacklist writeInt64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 268
    return-void
.end method

.method public blacklist writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 168
    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 512
    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 513
    return-void
.end method

.method public blacklist writeRawByte(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 950
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 951
    return-void

    .line 947
    :cond_e
    new-instance p1, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawByte(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 955
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    .line 956
    return-void
.end method

.method public blacklist writeRawBytes([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    .line 961
    return-void
.end method

.method public blacklist writeRawBytes([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_e

    .line 967
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 972
    return-void

    .line 970
    :cond_e
    new-instance p1, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p3, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawLittleEndian32(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_f

    .line 1046
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1047
    return-void

    .line 1044
    :cond_f
    new-instance p1, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawLittleEndian64(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10

    .line 1056
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1057
    return-void

    .line 1054
    :cond_10
    new-instance p1, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawVarint32(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    nop

    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_9

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 993
    return-void

    .line 995
    :cond_9
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 996
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public blacklist writeRawVarint64(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    nop

    :goto_1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 1018
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 1019
    return-void

    .line 1021
    :cond_f
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    .line 1022
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_1
.end method

.method public blacklist writeSFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 199
    return-void
.end method

.method public blacklist writeSFixed32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    .line 537
    return-void
.end method

.method public blacklist writeSFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 205
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 206
    return-void
.end method

.method public blacklist writeSFixed64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    .line 542
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 213
    return-void
.end method

.method public blacklist writeSInt32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 547
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 219
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 220
    return-void
.end method

.method public blacklist writeSInt64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 552
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    .line 303
    if-ne v0, v1, :cond_52

    .line 304
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_45

    .line 311
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 313
    iget-object p1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 314
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 315
    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 316
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 317
    goto :goto_5e

    .line 309
    :cond_45
    new-instance p1, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1

    .line 318
    :cond_52
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 319
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_5e
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5e} :catch_60

    .line 326
    :goto_5e
    nop

    .line 327
    return-void

    .line 321
    :catch_60
    move-exception p1

    .line 322
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 323
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 324
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 325
    throw v0
.end method

.method public blacklist writeTag(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 978
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 182
    return-void
.end method

.method public blacklist writeUInt32NoTag(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 524
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 111
    return-void
.end method

.method public blacklist writeUInt64NoTag(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    .line 263
    return-void
.end method
