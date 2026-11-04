.class final Lcom/android/framework/protobuf/ArrayDecoders;
.super Ljava/lang/Object;
.source "ArrayDecoders.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ArrayDecoders$Registers;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_RECURSION_LIMIT:I = 0x64

.field private static volatile blacklist recursionLimit:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    const/16 v0, 0x64

    sput v0, Lcom/android/framework/protobuf/ArrayDecoders;->recursionLimit:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkRecursionLimit(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1105
    sget v0, Lcom/android/framework/protobuf/ArrayDecoders;->recursionLimit:I

    if-ge p0, v0, :cond_5

    .line 1108
    return-void

    .line 1106
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodeBoolList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 387
    check-cast p4, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 388
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 389
    iget-wide v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v4

    :goto_13
    invoke-virtual {p4, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 390
    :goto_16
    if-ge p2, p3, :cond_32

    .line 391
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 392
    iget v5, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v5, :cond_21

    .line 393
    goto :goto_32

    .line 395
    :cond_21
    invoke-static {p1, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 396
    iget-wide v5, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2d

    move v0, v1

    goto :goto_2e

    :cond_2d
    move v0, v4

    :goto_2e
    invoke-virtual {p4, v0}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 397
    goto :goto_16

    .line 398
    :cond_32
    :goto_32
    return p2
.end method

.method static blacklist decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 202
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 203
    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 204
    if-ltz v0, :cond_20

    .line 206
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1b

    .line 208
    if-nez v0, :cond_13

    .line 209
    sget-object p0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object p0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 210
    return p1

    .line 212
    :cond_13
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    iput-object p0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 213
    add-int/2addr p1, v0

    return p1

    .line 207
    :cond_1b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 205
    :cond_20
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodeBytesList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 666
    nop

    .line 667
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 668
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 669
    if-ltz v0, :cond_55

    .line 671
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_50

    .line 673
    if-nez v0, :cond_15

    .line 674
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p4, v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 676
    :cond_15
    invoke-static {p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/2addr p2, v0

    .line 679
    :goto_1d
    if-ge p2, p3, :cond_4f

    .line 680
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 681
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_28

    .line 682
    goto :goto_4f

    .line 684
    :cond_28
    invoke-static {p1, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 685
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 686
    if-ltz v0, :cond_4a

    .line 688
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt v0, v1, :cond_45

    .line 690
    if-nez v0, :cond_3c

    .line 691
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p4, v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 693
    :cond_3c
    invoke-static {p1, p2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 694
    add-int/2addr p2, v0

    .line 696
    :goto_44
    goto :goto_1d

    .line 689
    :cond_45
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 687
    :cond_4a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 697
    :cond_4f
    :goto_4f
    return p2

    .line 672
    :cond_50
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 670
    :cond_55
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodeDouble([BI)D
    .registers 2

    .line 159
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static blacklist decodeDoubleList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 370
    check-cast p4, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 371
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 372
    add-int/lit8 p2, p2, 0x8

    .line 373
    :goto_b
    if-ge p2, p3, :cond_20

    .line 374
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 375
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_16

    .line 376
    goto :goto_20

    .line 378
    :cond_16
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 379
    add-int/lit8 p2, v0, 0x8

    .line 380
    goto :goto_b

    .line 381
    :cond_20
    :goto_20
    return p2
.end method

.method static blacklist decodeExtension(I[BIILcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "**>;",
            "Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "**>;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    iget-object v0, p4, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/framework/protobuf/FieldSet;

    .line 793
    ushr-int/lit8 v2, p0, 0x3

    .line 794
    iget-object p0, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_f7

    iget-object p0, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_f7

    .line 795
    sget-object p0, Lcom/android/framework/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p3

    aget p0, p0, p3

    packed-switch p0, :pswitch_data_27e

    .line 878
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Type cannot be packed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 879
    invoke-virtual {p2}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 865
    :pswitch_42
    new-instance v3, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v3}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    .line 866
    invoke-static {p1, p2, v3, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 867
    iget-object p1, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 871
    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object v4

    .line 867
    const/4 v5, 0x0

    move-object v1, p4

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 874
    iget-object p1, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1, v3}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 875
    goto/16 :goto_27c

    .line 858
    :pswitch_5e
    new-instance p0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    .line 859
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 860
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 861
    move p0, p1

    goto/16 :goto_27c

    .line 851
    :pswitch_6f
    new-instance p0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    .line 852
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 853
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 854
    move p0, p1

    goto/16 :goto_27c

    .line 844
    :pswitch_80
    new-instance p0, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>()V

    .line 845
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 846
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 847
    move p0, p1

    goto/16 :goto_27c

    .line 837
    :pswitch_91
    new-instance p0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    .line 838
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 839
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 840
    move p0, p1

    goto/16 :goto_27c

    .line 829
    :pswitch_a2
    new-instance p0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    .line 830
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 831
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 832
    move p0, p1

    goto/16 :goto_27c

    .line 821
    :pswitch_b3
    new-instance p0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    .line 822
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 823
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 824
    move p0, p1

    goto/16 :goto_27c

    .line 813
    :pswitch_c4
    new-instance p0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    .line 814
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 815
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 816
    move p0, p1

    goto/16 :goto_27c

    .line 805
    :pswitch_d5
    new-instance p0, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/FloatArrayList;-><init>()V

    .line 806
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 807
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 808
    move p0, p1

    goto/16 :goto_27c

    .line 798
    :pswitch_e6
    new-instance p0, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-direct {p0}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>()V

    .line 799
    invoke-static {p1, p2, p0, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 800
    iget-object p2, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 801
    move p0, p1

    goto/16 :goto_27c

    .line 794
    :cond_f7
    move-object v1, p4

    move-object v6, p6

    .line 882
    nop

    .line 884
    invoke-virtual {p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p0

    sget-object p4, Lcom/android/framework/protobuf/WireFormat$FieldType;->ENUM:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 p6, 0x0

    if-ne p0, p4, :cond_123

    .line 885
    invoke-static {p1, p2, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 886
    iget-object p0, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;

    move-result-object p0

    iget p1, p7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-interface {p0, p1}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object p0

    .line 887
    if-nez p0, :cond_11b

    .line 888
    iget p0, p7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1, v2, p0, p6, v6}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    .line 890
    return p2

    .line 894
    :cond_11b
    iget p0, p7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    .line 895
    goto/16 :goto_26a

    .line 896
    :cond_123
    sget-object p0, Lcom/android/framework/protobuf/ArrayDecoders$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p4

    aget p0, p0, p4

    packed-switch p0, :pswitch_data_29e

    move p4, p2

    goto/16 :goto_26a

    .line 969
    :pswitch_135
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p0

    .line 970
    invoke-virtual {p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v2

    .line 971
    invoke-virtual {p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_157

    .line 972
    invoke-static {v2, p1, p2, p3, p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 973
    iget-object p1, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object p2, p7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_174

    .line 975
    :cond_157
    iget-object p0, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p0

    .line 976
    if-nez p0, :cond_16a

    .line 977
    invoke-interface {v2}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 978
    iget-object p4, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p4, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object v1, p0

    goto :goto_16b

    .line 976
    :cond_16a
    move-object v1, p0

    .line 980
    :goto_16b
    nop

    .line 981
    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 983
    :goto_174
    return p0

    .line 947
    :pswitch_175
    move p4, p2

    move v4, p3

    move-object v6, p7

    move-object p3, p1

    shl-int/lit8 p0, v2, 0x3

    or-int/lit8 p6, p0, 0x4

    .line 949
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object p0

    .line 950
    invoke-virtual {p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object p2

    .line 951
    invoke-virtual {p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_1a3

    .line 952
    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v5, p6

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 953
    iget-object p1, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object p2, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_1be

    .line 955
    :cond_1a3
    iget-object p0, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p0

    .line 956
    if-nez p0, :cond_1b6

    .line 957
    invoke-interface {p2}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 958
    iget-object p1, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1, p0}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_1b7

    .line 956
    :cond_1b6
    move-object p1, p0

    .line 960
    :goto_1b7
    nop

    .line 961
    move p5, v4

    move-object p7, v6

    invoke-static/range {p1 .. p7}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 964
    :goto_1be
    return p0

    .line 942
    :pswitch_1bf
    move-object p3, p1

    move p4, p2

    move-object v6, p7

    invoke-static {p3, p4, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 943
    iget-object p6, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 944
    goto/16 :goto_26a

    .line 930
    :pswitch_1ca
    move-object p3, p1

    move p4, p2

    move-object v6, p7

    invoke-static {p3, p4, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeBytes([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 931
    iget-object p6, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 932
    goto/16 :goto_26a

    .line 986
    :pswitch_1d5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shouldn\'t reach here."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 938
    :pswitch_1dd
    move-object p3, p1

    move p4, p2

    move-object v6, p7

    invoke-static {p3, p4, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 939
    iget-wide p0, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    .line 940
    goto/16 :goto_26a

    .line 934
    :pswitch_1f0
    move-object p3, p1

    move p4, p2

    move-object v6, p7

    invoke-static {p3, p4, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 935
    iget p0, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    .line 936
    goto/16 :goto_26a

    .line 926
    :pswitch_203
    move-object p3, p1

    move p4, p2

    move-object v6, p7

    invoke-static {p3, p4, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 927
    iget-wide p0, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 p3, 0x0

    cmp-long p0, p0, p3

    if-eqz p0, :cond_214

    const/4 p0, 0x1

    goto :goto_215

    :cond_214
    const/4 p0, 0x0

    :goto_215
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    .line 928
    goto :goto_26a

    .line 922
    :pswitch_21a
    move-object p3, p1

    move p4, p2

    invoke-static {p3, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    .line 923
    add-int/lit8 p2, p4, 0x4

    .line 924
    goto :goto_26a

    .line 917
    :pswitch_227
    move-object p3, p1

    move p4, p2

    invoke-static {p3, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    .line 918
    add-int/lit8 p2, p4, 0x8

    .line 919
    goto :goto_26a

    .line 912
    :pswitch_234
    move-object p3, p1

    move p4, p2

    move-object v6, p7

    invoke-static {p3, p4, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 913
    iget p0, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    .line 914
    goto :goto_26a

    .line 907
    :pswitch_242
    move-object p3, p1

    move p4, p2

    move-object v6, p7

    invoke-static {p3, p4, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 908
    iget-wide p0, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    .line 909
    goto :goto_26a

    .line 902
    :pswitch_250
    move-object p3, p1

    move p4, p2

    invoke-static {p3, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    .line 903
    add-int/lit8 p2, p4, 0x4

    .line 904
    goto :goto_26a

    .line 898
    :pswitch_25d
    move-object p3, p1

    move p4, p2

    invoke-static {p3, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    .line 899
    add-int/lit8 p2, p4, 0x8

    .line 900
    nop

    .line 989
    :goto_26a
    invoke-virtual {p5}, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_276

    .line 990
    iget-object p0, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p0, p6}, Lcom/android/framework/protobuf/FieldSet;->addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_27b

    .line 992
    :cond_276
    iget-object p0, p5, Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/framework/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p0, p6}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 995
    :goto_27b
    move p0, p2

    :goto_27c
    return p0

    nop

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_d5
        :pswitch_c4
        :pswitch_c4
        :pswitch_b3
        :pswitch_b3
        :pswitch_a2
        :pswitch_a2
        :pswitch_91
        :pswitch_91
        :pswitch_80
        :pswitch_6f
        :pswitch_5e
        :pswitch_42
    .end packed-switch

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_25d
        :pswitch_250
        :pswitch_242
        :pswitch_242
        :pswitch_234
        :pswitch_234
        :pswitch_227
        :pswitch_227
        :pswitch_21a
        :pswitch_21a
        :pswitch_203
        :pswitch_1f0
        :pswitch_1dd
        :pswitch_1d5
        :pswitch_1ca
        :pswitch_1bf
        :pswitch_175
        :pswitch_135
    .end packed-switch
.end method

.method static blacklist decodeExtensionOrUnknownField(I[BIILjava/lang/Object;Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/MessageLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
            ">;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    ushr-int/lit8 v0, p0, 0x3

    .line 767
    iget-object v1, p7, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 768
    invoke-virtual {v1, p5, v0}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/android/framework/protobuf/MessageLite;I)Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p5

    .line 769
    if-nez p5, :cond_19

    .line 770
    nop

    .line 771
    invoke-static {p4}, Lcom/android/framework/protobuf/MessageSchema;->getMutableUnknownFields(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 770
    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0

    .line 774
    :cond_19
    check-cast p4, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 775
    invoke-virtual {p4}, Lcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/android/framework/protobuf/FieldSet;

    .line 776
    invoke-static/range {p0 .. p7}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeExtension(I[BIILcom/android/framework/protobuf/GeneratedMessageLite$ExtendableMessage;Lcom/android/framework/protobuf/GeneratedMessageLite$GeneratedExtension;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0
.end method

.method static blacklist decodeFixed32([BI)I
    .registers 4

    .line 139
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static blacklist decodeFixed32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 319
    check-cast p4, Lcom/android/framework/protobuf/IntArrayList;

    .line 320
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 321
    add-int/lit8 p2, p2, 0x4

    .line 322
    :goto_b
    if-ge p2, p3, :cond_20

    .line 323
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 324
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_16

    .line 325
    goto :goto_20

    .line 327
    :cond_16
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 328
    add-int/lit8 p2, v0, 0x4

    .line 329
    goto :goto_b

    .line 330
    :cond_20
    :goto_20
    return p2
.end method

.method static blacklist decodeFixed64([BI)J
    .registers 9

    .line 147
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static blacklist decodeFixed64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 336
    check-cast p4, Lcom/android/framework/protobuf/LongArrayList;

    .line 337
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 338
    add-int/lit8 p2, p2, 0x8

    .line 339
    :goto_b
    if-ge p2, p3, :cond_20

    .line 340
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 341
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_16

    .line 342
    goto :goto_20

    .line 344
    :cond_16
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 345
    add-int/lit8 p2, v0, 0x8

    .line 346
    goto :goto_b

    .line 347
    :cond_20
    :goto_20
    return p2
.end method

.method static blacklist decodeFloat([BI)F
    .registers 2

    .line 164
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method static blacklist decodeFloatList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 353
    check-cast p4, Lcom/android/framework/protobuf/FloatArrayList;

    .line 354
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 355
    add-int/lit8 p2, p2, 0x4

    .line 356
    :goto_b
    if-ge p2, p3, :cond_20

    .line 357
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 358
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_16

    .line 359
    goto :goto_20

    .line 361
    :cond_16
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result p2

    invoke-virtual {p4, p2}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 362
    add-int/lit8 p2, v0, 0x4

    .line 363
    goto :goto_b

    .line 364
    :cond_20
    :goto_20
    return p2
.end method

.method static blacklist decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-interface {p0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 234
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 235
    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 236
    iput-object v0, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 237
    return p0
.end method

.method static blacklist decodeGroupList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Schema;",
            "I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    nop

    .line 745
    and-int/lit8 v0, p1, -0x8

    or-int/lit8 v5, v0, 0x4

    .line 746
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 747
    iget-object p2, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {p5, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 748
    :goto_13
    if-ge p0, v4, :cond_28

    .line 749
    invoke-static {v2, p0, v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    .line 750
    iget p2, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p1, p2, :cond_1e

    .line 751
    goto :goto_28

    .line 753
    :cond_1e
    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeGroupField(Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 754
    iget-object p2, v6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {p5, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 755
    goto :goto_13

    .line 756
    :cond_28
    :goto_28
    return p0
.end method

.method static blacklist decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-interface {p0}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 222
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 223
    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 224
    iput-object v0, v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 225
    return p0
.end method

.method static blacklist decodeMessageList(Lcom/android/framework/protobuf/Schema;I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Schema<",
            "*>;I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    nop

    .line 716
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 717
    iget-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 718
    :goto_a
    if-ge p3, p4, :cond_1f

    .line 719
    invoke-static {p2, p3, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 720
    iget v1, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p1, v1, :cond_15

    .line 721
    goto :goto_1f

    .line 723
    :cond_15
    invoke-static {p0, p2, v0, p4, p6}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeMessageField(Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p3

    .line 724
    iget-object v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 725
    goto :goto_a

    .line 726
    :cond_1f
    :goto_1f
    return p3
.end method

.method static blacklist decodePackedBoolList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    check-cast p2, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 535
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 536
    iget v0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p1

    .line 537
    :goto_9
    if-ge p1, v0, :cond_1e

    .line 538
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 539
    iget-wide v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_9

    .line 541
    :cond_1e
    if-ne p1, v0, :cond_21

    .line 544
    return p1

    .line 542
    :cond_21
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodePackedDoubleList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    check-cast p2, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 519
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 520
    iget p3, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr p3, p1

    .line 521
    :goto_9
    if-ge p1, p3, :cond_15

    .line 522
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeDouble([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 523
    add-int/lit8 p1, p1, 0x8

    goto :goto_9

    .line 525
    :cond_15
    if-ne p1, p3, :cond_18

    .line 528
    return p1

    .line 526
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodePackedFixed32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    check-cast p2, Lcom/android/framework/protobuf/IntArrayList;

    .line 471
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 472
    iget p3, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr p3, p1

    .line 473
    :goto_9
    if-ge p1, p3, :cond_15

    .line 474
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 475
    add-int/lit8 p1, p1, 0x4

    goto :goto_9

    .line 477
    :cond_15
    if-ne p1, p3, :cond_18

    .line 480
    return p1

    .line 478
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodePackedFixed64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    check-cast p2, Lcom/android/framework/protobuf/LongArrayList;

    .line 487
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 488
    iget p3, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr p3, p1

    .line 489
    :goto_9
    if-ge p1, p3, :cond_15

    .line 490
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 491
    add-int/lit8 p1, p1, 0x8

    goto :goto_9

    .line 493
    :cond_15
    if-ne p1, p3, :cond_18

    .line 496
    return p1

    .line 494
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodePackedFloatList([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    check-cast p2, Lcom/android/framework/protobuf/FloatArrayList;

    .line 503
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 504
    iget p3, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr p3, p1

    .line 505
    :goto_9
    if-ge p1, p3, :cond_15

    .line 506
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFloat([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 507
    add-int/lit8 p1, p1, 0x4

    goto :goto_9

    .line 509
    :cond_15
    if-ne p1, p3, :cond_18

    .line 512
    return p1

    .line 510
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodePackedSInt32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    check-cast p2, Lcom/android/framework/protobuf/IntArrayList;

    .line 551
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 552
    iget v0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p1

    .line 553
    :goto_9
    if-ge p1, v0, :cond_19

    .line 554
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 555
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_9

    .line 557
    :cond_19
    if-ne p1, v0, :cond_1c

    .line 560
    return p1

    .line 558
    :cond_1c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodePackedSInt64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    check-cast p2, Lcom/android/framework/protobuf/LongArrayList;

    .line 567
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 568
    iget v0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p1

    .line 569
    :goto_9
    if-ge p1, v0, :cond_19

    .line 570
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 571
    iget-wide v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_9

    .line 573
    :cond_19
    if-ne p1, v0, :cond_1c

    .line 576
    return p1

    .line 574
    :cond_1c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodePackedVarint32List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    check-cast p2, Lcom/android/framework/protobuf/IntArrayList;

    .line 439
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 440
    iget v0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p1

    .line 441
    :goto_9
    if-ge p1, v0, :cond_15

    .line 442
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 443
    iget v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_9

    .line 445
    :cond_15
    if-ne p1, v0, :cond_18

    .line 448
    return p1

    .line 446
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodePackedVarint64List([BILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    check-cast p2, Lcom/android/framework/protobuf/LongArrayList;

    .line 455
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 456
    iget v0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr v0, p1

    .line 457
    :goto_9
    if-ge p1, v0, :cond_15

    .line 458
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 459
    iget-wide v1, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_9

    .line 461
    :cond_15
    if-ne p1, v0, :cond_18

    .line 464
    return p1

    .line 462
    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodeSInt32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 404
    check-cast p4, Lcom/android/framework/protobuf/IntArrayList;

    .line 405
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 406
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 407
    :goto_f
    if-ge p2, p3, :cond_28

    .line 408
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 409
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_1a

    .line 410
    goto :goto_28

    .line 412
    :cond_1a
    invoke-static {p1, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 413
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 414
    goto :goto_f

    .line 415
    :cond_28
    :goto_28
    return p2
.end method

.method static blacklist decodeSInt64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 421
    check-cast p4, Lcom/android/framework/protobuf/LongArrayList;

    .line 422
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 423
    iget-wide v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 424
    :goto_f
    if-ge p2, p3, :cond_28

    .line 425
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 426
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_1a

    .line 427
    goto :goto_28

    .line 429
    :cond_1a
    invoke-static {p1, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 430
    iget-wide v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 431
    goto :goto_f

    .line 432
    :cond_28
    :goto_28
    return p2
.end method

.method static blacklist decodeString([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 171
    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 172
    if-ltz v0, :cond_1a

    .line 174
    if-nez v0, :cond_f

    .line 175
    const-string p0, ""

    iput-object p0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 176
    return p1

    .line 178
    :cond_f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 179
    add-int/2addr p1, v0

    return p1

    .line 173
    :cond_1a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodeStringList(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 584
    nop

    .line 585
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 586
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 587
    if-ltz v0, :cond_47

    .line 589
    const-string v1, ""

    if-nez v0, :cond_11

    .line 590
    invoke-interface {p4, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 592
    :cond_11
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 593
    invoke-interface {p4, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/2addr p2, v0

    .line 596
    :goto_1c
    if-ge p2, p3, :cond_46

    .line 597
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 598
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_27

    .line 599
    goto :goto_46

    .line 601
    :cond_27
    invoke-static {p1, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 602
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 603
    if-ltz v0, :cond_41

    .line 605
    if-nez v0, :cond_35

    .line 606
    invoke-interface {p4, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 608
    :cond_35
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, p2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 609
    invoke-interface {p4, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 610
    add-int/2addr p2, v0

    .line 612
    :goto_40
    goto :goto_1c

    .line 604
    :cond_41
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 613
    :cond_46
    :goto_46
    return p2

    .line 588
    :cond_47
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodeStringListRequireUtf8(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 623
    nop

    .line 624
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 625
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 626
    if-ltz v0, :cond_61

    .line 628
    const-string v1, ""

    if-nez v0, :cond_11

    .line 629
    invoke-interface {p4, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 631
    :cond_11
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 634
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 635
    invoke-interface {p4, v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 636
    move p2, v2

    .line 638
    :goto_24
    if-ge p2, p3, :cond_5b

    .line 639
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 640
    iget v2, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v2, :cond_2f

    .line 641
    goto :goto_5b

    .line 643
    :cond_2f
    invoke-static {p1, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 644
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 645
    if-ltz v0, :cond_56

    .line 647
    if-nez v0, :cond_3d

    .line 648
    invoke-interface {p4, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 650
    :cond_3d
    add-int v2, p2, v0

    invoke-static {p1, p2, v2}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 653
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, p2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 654
    invoke-interface {p4, v3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 655
    move p2, v2

    .line 657
    :goto_50
    goto :goto_24

    .line 651
    :cond_51
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 646
    :cond_56
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 658
    :cond_5b
    :goto_5b
    return p2

    .line 632
    :cond_5c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 627
    :cond_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodeStringRequireUtf8([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 187
    iget v0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 188
    if-ltz v0, :cond_17

    .line 190
    if-nez v0, :cond_f

    .line 191
    const-string p0, ""

    iput-object p0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 192
    return p1

    .line 194
    :cond_f
    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 195
    add-int/2addr p1, v0

    return p1

    .line 189
    :cond_17
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method static blacklist decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1007
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_a8

    .line 1010
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_ae

    .line 1055
    :pswitch_d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1016
    :pswitch_12
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1017
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1035
    :pswitch_20
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v4

    .line 1036
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v6, v0, 0x4

    .line 1037
    nop

    .line 1038
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    .line 1039
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    invoke-static {v0}, Lcom/android/framework/protobuf/ArrayDecoders;->checkRecursionLimit(I)V

    const/4 v0, 0x0

    .line 1040
    :goto_35
    if-ge p2, p3, :cond_4b

    .line 1041
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    .line 1042
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1043
    if-ne v0, v6, :cond_43

    .line 1044
    move v3, p3

    move-object v5, p5

    move p2, v2

    goto :goto_4d

    .line 1046
    :cond_43
    move-object v1, p1

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeUnknownField(I[BIILcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_35

    .line 1040
    :cond_4b
    move v3, p3

    move-object v5, p5

    .line 1048
    :goto_4d
    iget p1, v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    .line 1049
    if-gt p2, v3, :cond_5b

    if-ne v0, v6, :cond_5b

    .line 1052
    invoke-virtual {p4, p0, v4}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1053
    return p2

    .line 1050
    :cond_5b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1022
    :pswitch_60
    move-object v1, p1

    move-object v5, p5

    invoke-static {v1, p2, v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 1023
    iget p2, v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1024
    if-ltz p2, :cond_84

    .line 1026
    array-length p3, v1

    sub-int/2addr p3, p1

    if-gt p2, p3, :cond_7f

    .line 1028
    if-nez p2, :cond_76

    .line 1029
    sget-object p3, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p4, p0, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    goto :goto_7d

    .line 1031
    :cond_76
    invoke-static {v1, p1, p2}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p4, p0, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1033
    :goto_7d
    add-int/2addr p1, p2

    return p1

    .line 1027
    :cond_7f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1025
    :cond_84
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1019
    :pswitch_89
    move-object v1, p1

    invoke-static {v1, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeFixed64([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1020
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 1012
    :pswitch_98
    move-object v1, p1

    move-object v5, p5

    invoke-static {v1, p2, v5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    .line 1013
    iget-wide p2, v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 1014
    return p1

    .line 1008
    :cond_a8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_98
        :pswitch_89
        :pswitch_60
        :pswitch_20
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method static blacklist decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 5

    .line 73
    and-int/lit8 p0, p0, 0x7f

    .line 74
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 75
    if-ltz p2, :cond_e

    .line 76
    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 77
    return v0

    .line 79
    :cond_e
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    .line 81
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    .line 82
    if-ltz v0, :cond_1f

    .line 83
    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 84
    return p2

    .line 86
    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    .line 88
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    .line 89
    if-ltz p2, :cond_30

    .line 90
    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 91
    return v0

    .line 93
    :cond_30
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    .line 95
    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    .line 96
    if-ltz v0, :cond_41

    .line 97
    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 98
    return p2

    .line 100
    :cond_41
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    .line 102
    :goto_46
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4e

    move p2, v0

    goto :goto_46

    .line 104
    :cond_4e
    iput p0, p3, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 105
    return v0
.end method

.method static blacklist decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 4

    .line 63
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    .line 64
    if-ltz p1, :cond_9

    .line 65
    iput p1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 66
    return v0

    .line 68
    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0
.end method

.method static blacklist decodeVarint32List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 285
    check-cast p4, Lcom/android/framework/protobuf/IntArrayList;

    .line 286
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 287
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {p4, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 288
    :goto_b
    if-ge p2, p3, :cond_20

    .line 289
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 290
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_16

    .line 291
    goto :goto_20

    .line 293
    :cond_16
    invoke-static {p1, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 294
    iget v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    invoke-virtual {p4, v0}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 295
    goto :goto_b

    .line 296
    :cond_20
    :goto_20
    return p2
.end method

.method static blacklist decodeVarint64(J[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 12

    .line 124
    const-wide/16 v0, 0x7f

    and-long/2addr p0, v0

    .line 125
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    .line 126
    nop

    .line 127
    and-int/lit8 v1, p3, 0x7f

    int-to-long v1, v1

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    or-long/2addr p0, v1

    move v1, v3

    .line 128
    :goto_f
    if-gez p3, :cond_1f

    .line 129
    add-int/lit8 p3, v0, 0x1

    aget-byte v0, p2, v0

    .line 130
    add-int/2addr v1, v3

    .line 131
    and-int/lit8 v2, v0, 0x7f

    int-to-long v4, v2

    shl-long/2addr v4, v1

    or-long/2addr p0, v4

    move v6, v0

    move v0, p3

    move p3, v6

    goto :goto_f

    .line 133
    :cond_1f
    iput-wide p0, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    .line 134
    return v0
.end method

.method static blacklist decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8

    .line 113
    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    .line 114
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    .line 115
    iput-wide v1, p2, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    .line 116
    return v0

    .line 118
    :cond_e
    invoke-static {v1, v2, p0, v0, p2}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64(J[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0
.end method

.method static blacklist decodeVarint64List(I[BIILcom/android/framework/protobuf/Internal$ProtobufList;Lcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "*>;",
            "Lcom/android/framework/protobuf/ArrayDecoders$Registers;",
            ")I"
        }
    .end annotation

    .line 302
    check-cast p4, Lcom/android/framework/protobuf/LongArrayList;

    .line 303
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 304
    iget-wide v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {p4, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 305
    :goto_b
    if-ge p2, p3, :cond_20

    .line 306
    invoke-static {p1, p2, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 307
    iget v1, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    if-eq p0, v1, :cond_16

    .line 308
    goto :goto_20

    .line 310
    :cond_16
    invoke-static {p1, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 311
    iget-wide v0, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->long1:J

    invoke-virtual {p4, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 312
    goto :goto_b

    .line 313
    :cond_20
    :goto_20
    return p2
.end method

.method static blacklist mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    check-cast p1, Lcom/android/framework/protobuf/MessageSchema;

    .line 273
    iget v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    .line 274
    iget v0, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    invoke-static {v0}, Lcom/android/framework/protobuf/ArrayDecoders;->checkRecursionLimit(I)V

    .line 275
    nop

    .line 276
    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    invoke-virtual/range {p0 .. p6}, Lcom/android/framework/protobuf/MessageSchema;->parseMessage(Ljava/lang/Object;[BIIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 277
    iget p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    .line 278
    iput-object p1, p6, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 279
    return p0
.end method

.method static blacklist mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    .line 245
    if-gez p3, :cond_e

    .line 246
    invoke-static {p3, p2, v0, p5}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32(I[BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    .line 247
    iget p3, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    move v3, v0

    goto :goto_f

    .line 245
    :cond_e
    move v3, v0

    .line 249
    :goto_f
    if-ltz p3, :cond_31

    sub-int/2addr p4, v3

    if-gt p3, p4, :cond_31

    .line 252
    iget p4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    .line 253
    iget p4, p5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    invoke-static {p4}, Lcom/android/framework/protobuf/ArrayDecoders;->checkRecursionLimit(I)V

    .line 254
    add-int v4, v3, p3

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)V

    .line 255
    iget p0, v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    add-int/lit8 p0, p0, -0x1

    iput p0, v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->recursionDepth:I

    .line 256
    iput-object v1, v5, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->object1:Ljava/lang/Object;

    .line 257
    return v4

    .line 250
    :cond_31
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist setRecursionLimit(I)V
    .registers 1

    .line 1101
    sput p0, Lcom/android/framework/protobuf/ArrayDecoders;->recursionLimit:I

    .line 1102
    return-void
.end method

.method static blacklist skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1062
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_44

    .line 1065
    invoke-static {p0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 1092
    :pswitch_d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1070
    :pswitch_12
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1077
    :pswitch_15
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    .line 1078
    const/4 v0, 0x0

    .line 1079
    :goto_1a
    if-ge p2, p3, :cond_2a

    .line 1080
    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    .line 1081
    iget v0, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    .line 1082
    if-ne v0, p0, :cond_25

    .line 1083
    goto :goto_2a

    .line 1085
    :cond_25
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->skipField(I[BIILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p2

    goto :goto_1a

    .line 1087
    :cond_2a
    :goto_2a
    if-gt p2, p3, :cond_2f

    if-ne v0, p0, :cond_2f

    .line 1090
    return p2

    .line 1088
    :cond_2f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 1074
    :pswitch_34
    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint32([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 1075
    iget p1, p4, Lcom/android/framework/protobuf/ArrayDecoders$Registers;->int1:I

    add-int/2addr p0, p1

    return p0

    .line 1072
    :pswitch_3c
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 1067
    :pswitch_3f
    invoke-static {p1, p2, p4}, Lcom/android/framework/protobuf/ArrayDecoders;->decodeVarint64([BILcom/android/framework/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    .line 1068
    return p0

    .line 1063
    :cond_44
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3c
        :pswitch_34
        :pswitch_15
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method
