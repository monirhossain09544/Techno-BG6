.class Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/android/framework/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/framework/protobuf/nano/Extension<",
        "TM;TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist nonPackedTag:I

.field private final blacklist packedTag:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/Class;IZII)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZII)V"
        }
    .end annotation

    .line 352
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/android/framework/protobuf/nano/Extension$1;)V

    .line 353
    iput p5, v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    .line 354
    iput p6, v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    .line 355
    return-void
.end method

.method private blacklist computePackedDataSize(Ljava/lang/Object;)I
    .registers 7

    .line 564
    nop

    .line 565
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 566
    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_b0

    .line 624
    :pswitch_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected non-packable type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 606
    :pswitch_26
    move v1, v2

    :goto_27
    if-ge v2, v0, :cond_36

    .line 607
    nop

    .line 608
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 607
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 610
    :cond_36
    move v0, v1

    goto/16 :goto_ae

    .line 588
    :pswitch_39
    move v1, v2

    :goto_3a
    if-ge v2, v0, :cond_49

    .line 589
    nop

    .line 590
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 589
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 592
    :cond_49
    move v0, v1

    goto/16 :goto_ae

    .line 618
    :pswitch_4c
    move v1, v2

    :goto_4d
    if-ge v2, v0, :cond_5c

    .line 619
    nop

    .line 620
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 619
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 618
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 622
    :cond_5c
    move v0, v1

    goto :goto_ae

    .line 594
    :pswitch_5e
    move v1, v2

    :goto_5f
    if-ge v2, v0, :cond_6e

    .line 595
    nop

    .line 596
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 595
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 598
    :cond_6e
    move v0, v1

    goto :goto_ae

    .line 569
    :pswitch_70
    nop

    .line 570
    goto :goto_ae

    .line 582
    :pswitch_72
    move v1, v2

    :goto_73
    if-ge v2, v0, :cond_82

    .line 583
    nop

    .line 584
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    .line 583
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 586
    :cond_82
    move v0, v1

    goto :goto_ae

    .line 612
    :pswitch_84
    move v1, v2

    :goto_85
    if-ge v2, v0, :cond_94

    .line 613
    nop

    .line 614
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 613
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 616
    :cond_94
    move v0, v1

    goto :goto_ae

    .line 600
    :pswitch_96
    move v1, v2

    :goto_97
    if-ge v2, v0, :cond_a6

    .line 601
    nop

    .line 602
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    .line 601
    invoke-static {v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 604
    :cond_a6
    move v0, v1

    goto :goto_ae

    .line 574
    :pswitch_a8
    mul-int/lit8 v0, v0, 0x4

    .line 575
    goto :goto_ae

    .line 579
    :pswitch_ab
    mul-int/lit8 v0, v0, 0x8

    .line 580
    nop

    .line 626
    :goto_ae
    return v0

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_a8
        :pswitch_96
        :pswitch_84
        :pswitch_72
        :pswitch_ab
        :pswitch_a8
        :pswitch_70
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_5e
        :pswitch_4c
        :pswitch_a8
        :pswitch_ab
        :pswitch_39
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method protected blacklist computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 4

    .line 631
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_b

    .line 633
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 634
    :cond_b
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_23

    .line 636
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result p1

    .line 637
    nop

    .line 638
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 639
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 641
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected repeated extension tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unequal to both non-packed variant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and packed variant "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final blacklist computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 5

    .line 649
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 650
    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v1, :pswitch_data_d0

    .line 702
    :pswitch_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 699
    :pswitch_26
    check-cast p1, Ljava/lang/Long;

    .line 700
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result p1

    return p1

    .line 696
    :pswitch_31
    check-cast p1, Ljava/lang/Integer;

    .line 697
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result p1

    return p1

    .line 692
    :pswitch_3c
    check-cast p1, Ljava/lang/Long;

    .line 693
    nop

    .line 694
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 693
    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result p1

    return p1

    .line 688
    :pswitch_48
    check-cast p1, Ljava/lang/Integer;

    .line 689
    nop

    .line 690
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 689
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result p1

    return p1

    .line 685
    :pswitch_54
    check-cast p1, Ljava/lang/Integer;

    .line 686
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result p1

    return p1

    .line 682
    :pswitch_5f
    check-cast p1, Ljava/lang/Integer;

    .line 683
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result p1

    return p1

    .line 679
    :pswitch_6a
    check-cast p1, [B

    .line 680
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result p1

    return p1

    .line 676
    :pswitch_71
    check-cast p1, Ljava/lang/String;

    .line 677
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result p1

    return p1

    .line 673
    :pswitch_78
    check-cast p1, Ljava/lang/Boolean;

    .line 674
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p1

    return p1

    .line 670
    :pswitch_83
    check-cast p1, Ljava/lang/Integer;

    .line 671
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result p1

    return p1

    .line 667
    :pswitch_8e
    check-cast p1, Ljava/lang/Long;

    .line 668
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result p1

    return p1

    .line 664
    :pswitch_99
    check-cast p1, Ljava/lang/Integer;

    .line 665
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p1

    return p1

    .line 661
    :pswitch_a4
    check-cast p1, Ljava/lang/Long;

    .line 662
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result p1

    return p1

    .line 658
    :pswitch_af
    check-cast p1, Ljava/lang/Long;

    .line 659
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p1

    return p1

    .line 655
    :pswitch_ba
    check-cast p1, Ljava/lang/Float;

    .line 656
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result p1

    return p1

    .line 652
    :pswitch_c5
    check-cast p1, Ljava/lang/Double;

    .line 653
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result p1

    return p1

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_ba
        :pswitch_af
        :pswitch_a4
        :pswitch_99
        :pswitch_8e
        :pswitch_83
        :pswitch_78
        :pswitch_71
        :pswitch_b
        :pswitch_b
        :pswitch_6a
        :pswitch_5f
        :pswitch_54
        :pswitch_48
        :pswitch_3c
        :pswitch_31
        :pswitch_26
    .end packed-switch
.end method

.method protected blacklist readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 4

    .line 360
    :try_start_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 361
    :catch_7
    move-exception p1

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error reading extension field"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected blacklist readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 370
    iget v0, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_14

    .line 371
    iget-object p1, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 373
    :cond_14
    iget-object p1, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 374
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    .line 376
    :try_start_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_31

    .line 379
    nop

    .line 380
    :goto_22
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_30

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 384
    :cond_30
    :goto_30
    return-void

    .line 377
    :catch_31
    move-exception p1

    .line 378
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error reading extension field"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected blacklist writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8

    .line 466
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v0, v1, :cond_b

    .line 468
    invoke-super {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto/16 :goto_f8

    .line 469
    :cond_b
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v0, v1, :cond_119

    .line 472
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 473
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v1

    .line 476
    :try_start_19
    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 477
    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 478
    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_14c

    .line 550
    :pswitch_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_f9

    .line 535
    :pswitch_2b
    nop

    :goto_2c
    if-ge v2, v0, :cond_38

    .line 536
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 538
    :cond_38
    goto/16 :goto_f6

    .line 520
    :pswitch_3a
    nop

    :goto_3b
    if-ge v2, v0, :cond_47

    .line 521
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 523
    :cond_47
    goto/16 :goto_f6

    .line 505
    :pswitch_49
    nop

    :goto_4a
    if-ge v2, v0, :cond_56

    .line 506
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 508
    :cond_56
    goto/16 :goto_f6

    .line 490
    :pswitch_58
    nop

    :goto_59
    if-ge v2, v0, :cond_65

    .line 491
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 493
    :cond_65
    goto/16 :goto_f6

    .line 545
    :pswitch_67
    nop

    :goto_68
    if-ge v2, v0, :cond_74

    .line 546
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 548
    :cond_74
    goto/16 :goto_f6

    .line 525
    :pswitch_76
    nop

    :goto_77
    if-ge v2, v0, :cond_83

    .line 526
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 528
    :cond_83
    goto/16 :goto_f6

    .line 480
    :pswitch_85
    nop

    :goto_86
    if-ge v2, v0, :cond_92

    .line 481
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 483
    :cond_92
    goto/16 :goto_f6

    .line 485
    :pswitch_94
    nop

    :goto_95
    if-ge v2, v0, :cond_a1

    .line 486
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 488
    :cond_a1
    goto :goto_f6

    .line 500
    :pswitch_a2
    nop

    :goto_a3
    if-ge v2, v0, :cond_af

    .line 501
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 503
    :cond_af
    goto :goto_f6

    .line 515
    :pswitch_b0
    nop

    :goto_b1
    if-ge v2, v0, :cond_bd

    .line 516
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 518
    :cond_bd
    goto :goto_f6

    .line 540
    :pswitch_be
    nop

    :goto_bf
    if-ge v2, v0, :cond_cb

    .line 541
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    .line 543
    :cond_cb
    goto :goto_f6

    .line 530
    :pswitch_cc
    nop

    :goto_cd
    if-ge v2, v0, :cond_d9

    .line 531
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    .line 533
    :cond_d9
    goto :goto_f6

    .line 495
    :pswitch_da
    nop

    :goto_db
    if-ge v2, v0, :cond_e7

    .line 496
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 495
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 498
    :cond_e7
    goto :goto_f6

    .line 510
    :pswitch_e8
    nop

    :goto_e9
    if-ge v2, v0, :cond_f5

    .line 511
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    .line 513
    :cond_f5
    nop

    .line 555
    :goto_f6
    nop

    .line 556
    nop

    .line 561
    :goto_f8
    return-void

    .line 550
    :goto_f9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unpackable type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_112} :catch_112

    .line 552
    :catch_112
    move-exception p1

    .line 554
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 557
    :cond_119
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected repeated extension tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", unequal to both non-packed variant "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " and packed variant "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_da
        :pswitch_cc
        :pswitch_be
        :pswitch_b0
        :pswitch_a2
        :pswitch_94
        :pswitch_85
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_76
        :pswitch_67
        :pswitch_58
        :pswitch_49
        :pswitch_3a
        :pswitch_2b
    .end packed-switch
.end method

.method protected final blacklist writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5

    .line 389
    :try_start_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 390
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v0, :pswitch_data_cc

    .line 456
    :pswitch_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_ac

    .line 452
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    .line 453
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    .line 454
    goto/16 :goto_aa

    .line 448
    :pswitch_19
    check-cast p1, Ljava/lang/Integer;

    .line 449
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    .line 450
    goto/16 :goto_aa

    .line 444
    :pswitch_24
    check-cast p1, Ljava/lang/Long;

    .line 445
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    .line 446
    goto/16 :goto_aa

    .line 440
    :pswitch_2f
    check-cast p1, Ljava/lang/Integer;

    .line 441
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    .line 442
    goto/16 :goto_aa

    .line 436
    :pswitch_3a
    check-cast p1, Ljava/lang/Integer;

    .line 437
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    .line 438
    goto :goto_aa

    .line 432
    :pswitch_44
    check-cast p1, Ljava/lang/Integer;

    .line 433
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    .line 434
    goto :goto_aa

    .line 428
    :pswitch_4e
    check-cast p1, [B

    .line 429
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    .line 430
    goto :goto_aa

    .line 424
    :pswitch_54
    check-cast p1, Ljava/lang/String;

    .line 425
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 426
    goto :goto_aa

    .line 420
    :pswitch_5a
    check-cast p1, Ljava/lang/Boolean;

    .line 421
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 422
    goto :goto_aa

    .line 416
    :pswitch_64
    check-cast p1, Ljava/lang/Integer;

    .line 417
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    .line 418
    goto :goto_aa

    .line 412
    :pswitch_6e
    check-cast p1, Ljava/lang/Long;

    .line 413
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    .line 414
    goto :goto_aa

    .line 408
    :pswitch_78
    check-cast p1, Ljava/lang/Integer;

    .line 409
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 410
    goto :goto_aa

    .line 404
    :pswitch_82
    check-cast p1, Ljava/lang/Long;

    .line 405
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    .line 406
    goto :goto_aa

    .line 400
    :pswitch_8c
    check-cast p1, Ljava/lang/Long;

    .line 401
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 402
    goto :goto_aa

    .line 396
    :pswitch_96
    check-cast p1, Ljava/lang/Float;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 398
    goto :goto_aa

    .line 392
    :pswitch_a0
    check-cast p1, Ljava/lang/Double;

    .line 393
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 394
    nop

    .line 461
    :goto_aa
    nop

    .line 462
    return-void

    .line 456
    :goto_ac
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c5} :catch_c5

    .line 458
    :catch_c5
    move-exception p1

    .line 460
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_96
        :pswitch_8c
        :pswitch_82
        :pswitch_78
        :pswitch_6e
        :pswitch_64
        :pswitch_5a
        :pswitch_54
        :pswitch_a
        :pswitch_a
        :pswitch_4e
        :pswitch_44
        :pswitch_3a
        :pswitch_2f
        :pswitch_24
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method
