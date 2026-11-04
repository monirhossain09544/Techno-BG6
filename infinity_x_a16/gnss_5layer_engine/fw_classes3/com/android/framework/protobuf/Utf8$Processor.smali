.class abstract Lcom/android/framework/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Processor"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I
    .registers 9

    .line 519
    # invokes: Lcom/android/framework/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    .line 527
    :goto_5
    if-lt p1, p2, :cond_9

    .line 528
    const/4 p0, 0x0

    return p0

    .line 530
    :cond_9
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-gez p1, :cond_89

    .line 533
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p1, v1, :cond_2b

    .line 535
    if-lt v0, p2, :cond_1b

    .line 537
    return p1

    .line 542
    :cond_1b
    const/16 v1, -0x3e

    if-lt p1, v1, :cond_2a

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_26

    goto :goto_2a

    .line 545
    :cond_26
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_86

    .line 543
    :cond_2a
    :goto_2a
    return v2

    .line 546
    :cond_2b
    const/16 v4, -0x10

    if-ge p1, v4, :cond_59

    .line 548
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_39

    .line 550
    sub-int/2addr p2, v0

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, p1, v0, p2}, Lcom/android/framework/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    .line 553
    :cond_39
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 554
    if-gt v0, v3, :cond_58

    const/16 v5, -0x60

    if-ne p1, v1, :cond_47

    if-lt v0, v5, :cond_58

    :cond_47
    const/16 v1, -0x13

    if-ne p1, v1, :cond_4d

    if-ge v0, v5, :cond_58

    .line 560
    :cond_4d
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_54

    goto :goto_58

    .line 563
    :cond_54
    add-int/lit8 v4, v4, 0x1

    .line 564
    move p1, v4

    goto :goto_86

    .line 561
    :cond_58
    :goto_58
    return v2

    .line 566
    :cond_59
    add-int/lit8 v1, p2, -0x2

    if-lt v0, v1, :cond_63

    .line 568
    sub-int/2addr p2, v0

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    invoke-static {p0, p1, v0, p2}, Lcom/android/framework/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0

    .line 572
    :cond_63
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 573
    if-gt v0, v3, :cond_88

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_88

    add-int/lit8 p1, v1, 0x1

    .line 580
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gt v0, v3, :cond_88

    add-int/lit8 v0, p1, 0x1

    .line 582
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_85

    goto :goto_88

    :cond_85
    move p1, v0

    .line 586
    :goto_86
    goto/16 :goto_5

    .line 583
    :cond_88
    :goto_88
    return v2

    .line 530
    :cond_89
    move p1, v0

    goto/16 :goto_5
.end method


# virtual methods
.method final blacklist decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 604
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 605
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 606
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 607
    :cond_14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 608
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 610
    :cond_1f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method abstract blacklist decodeUtf8([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method final blacklist decodeUtf8Default(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 624
    or-int v0, p2, p3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_c2

    .line 629
    nop

    .line 630
    add-int v0, p2, p3

    .line 634
    new-array v5, p3, [C

    .line 635
    const/4 p3, 0x0

    move v1, p3

    .line 639
    :goto_12
    if-ge p2, v0, :cond_28

    .line 640
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 641
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 642
    goto :goto_28

    .line 644
    :cond_1f
    add-int/lit8 p2, p2, 0x1

    .line 645
    add-int/lit8 v3, v1, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v2, v5, v1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 646
    move v1, v3

    goto :goto_12

    .line 648
    :cond_28
    :goto_28
    move v6, v1

    :goto_29
    if-ge p2, v0, :cond_bc

    .line 649
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    .line 650
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 651
    add-int/lit8 v2, v6, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {p2, v5, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 654
    :goto_3c
    if-ge v1, v0, :cond_52

    .line 655
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    .line 656
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v3

    if-nez v3, :cond_49

    .line 657
    goto :goto_52

    .line 659
    :cond_49
    add-int/lit8 v1, v1, 0x1

    .line 660
    add-int/lit8 v3, v2, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {p2, v5, v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 661
    move v2, v3

    goto :goto_3c

    .line 692
    :cond_52
    :goto_52
    move p2, v1

    move v6, v2

    goto :goto_b5

    .line 662
    :cond_55
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 663
    if-ge v1, v0, :cond_6b

    .line 666
    add-int/lit8 v2, v1, 0x1

    .line 667
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v3, v6, 0x1

    .line 666
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {p2, v1, v5, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move p2, v2

    move v6, v3

    goto :goto_b5

    .line 664
    :cond_6b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 668
    :cond_70
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 669
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8e

    .line 672
    add-int/lit8 v2, v1, 0x1

    .line 674
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 675
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v4, v6, 0x1

    .line 672
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {p2, v1, v2, v5, v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move p2, v3

    move v6, v4

    goto :goto_b5

    .line 670
    :cond_8e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 679
    :cond_93
    add-int/lit8 v2, v0, -0x2

    if-ge v1, v2, :cond_b7

    .line 682
    add-int/lit8 v2, v1, 0x1

    .line 684
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    add-int/lit8 v3, v2, 0x1

    .line 685
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    add-int/lit8 v7, v3, 0x1

    .line 686
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int/lit8 v8, v6, 0x1

    .line 682
    move v3, v2

    move v2, v1

    move v1, p2

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v1 .. v6}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 690
    add-int/lit8 v8, v8, 0x1

    move p2, v7

    move v6, v8

    .line 692
    :goto_b5
    goto/16 :goto_29

    .line 680
    :cond_b7
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 694
    :cond_bc
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v5, p3, v6}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 625
    :cond_c2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 626
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract blacklist decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation
.end method

.method abstract blacklist encodeUtf8(Ljava/lang/CharSequence;[BII)I
.end method

.method final blacklist encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 7

    .line 747
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 748
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 749
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/android/framework/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p1

    .line 750
    sub-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 751
    goto :goto_2d

    :cond_20
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$Processor;->encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_2d

    .line 754
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$Processor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 756
    :goto_2d
    return-void
.end method

.method final blacklist encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 766
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 767
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 768
    const/4 v2, 0x0

    .line 776
    :goto_9
    const/16 v3, 0x80

    if-ge v2, v0, :cond_1f

    :try_start_d
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_1f

    .line 777
    add-int v3, v1, v2

    int-to-byte v4, v4

    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 825
    :catch_1c
    move-exception v0

    goto/16 :goto_ce

    .line 779
    :cond_1f
    if-ne v2, v0, :cond_27

    .line 781
    add-int v0, v1, v2

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 782
    return-void

    .line 785
    :cond_27
    add-int/2addr v1, v2

    .line 786
    :goto_28
    if-ge v2, v0, :cond_c9

    .line 787
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 788
    if-ge v4, v3, :cond_36

    .line 790
    int-to-byte v4, v4

    invoke-virtual {p2, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_34} :catch_1c

    goto/16 :goto_c3

    .line 791
    :cond_36
    const/16 v5, 0x800

    if-ge v4, v5, :cond_52

    .line 795
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    :try_start_41
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 796
    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p2, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_41 .. :try_end_4b} :catch_4e

    move v1, v5

    goto/16 :goto_c3

    .line 825
    :catch_4e
    move-exception v0

    move v1, v5

    goto/16 :goto_ce

    .line 797
    :cond_52
    const v5, 0xd800

    if-lt v4, v5, :cond_a7

    const v5, 0xdfff

    if-ge v5, v4, :cond_5d

    goto :goto_a7

    .line 811
    :cond_5d
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_a1

    :try_start_61
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 815
    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2
    :try_end_6f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_61 .. :try_end_6f} :catch_9e

    .line 816
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    :try_start_76
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_79
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_76 .. :try_end_79} :catch_99

    .line 817
    add-int/lit8 v1, v4, 0x1

    ushr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_81
    invoke-virtual {p2, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_84
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_81 .. :try_end_84} :catch_9e

    .line 818
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_8c
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 819
    and-int/lit8 v1, v2, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p2, v4, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_96
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_96} :catch_99

    move v1, v4

    move v2, v5

    goto :goto_c3

    .line 825
    :catch_99
    move-exception v0

    move v1, v4

    goto :goto_9f

    .line 811
    :cond_9c
    move v2, v5

    goto :goto_a1

    .line 825
    :catch_9e
    move-exception v0

    :goto_9f
    move v2, v5

    goto :goto_ce

    .line 812
    :cond_a1
    :goto_a1
    :try_start_a1
    new-instance v3, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v3, v2, v0}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v3
    :try_end_a7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a1 .. :try_end_a7} :catch_1c

    .line 802
    :cond_a7
    :goto_a7
    add-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    :try_start_ae
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_b1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ae .. :try_end_b1} :catch_4e

    .line 803
    add-int/lit8 v1, v5, 0x1

    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_b9
    invoke-virtual {p2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 804
    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-virtual {p2, v1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 786
    :goto_c3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_28

    .line 824
    :cond_c9
    invoke-static {p2, v1}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V
    :try_end_cc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b9 .. :try_end_cc} :catch_1c

    .line 833
    nop

    .line 834
    return-void

    .line 830
    :goto_ce
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v0, p2

    .line 831
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed writing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method abstract blacklist encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
.end method

.method final blacklist isValidUtf8(Ljava/nio/ByteBuffer;II)Z
    .registers 5

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p1

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final blacklist isValidUtf8([BII)Z
    .registers 5

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p1

    if-nez p1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method final blacklist partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 6

    .line 406
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 407
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 408
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    add-int/2addr p3, v0

    add-int/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p1

    return p1

    .line 409
    :cond_15
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 410
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    .line 412
    :cond_20
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method abstract blacklist partialIsValidUtf8(I[BII)I
.end method

.method final blacklist partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I
    .registers 11

    .line 426
    if-eqz p1, :cond_96

    .line 434
    if-lt p3, p4, :cond_5

    .line 435
    return p1

    .line 438
    :cond_5
    int-to-byte v0, p1

    .line 440
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_1e

    .line 445
    const/16 p1, -0x3e

    if-lt v0, p1, :cond_1d

    add-int/lit8 p1, p3, 0x1

    .line 447
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1a

    goto :goto_1d

    :cond_1a
    move p3, p1

    goto/16 :goto_96

    .line 448
    :cond_1d
    :goto_1d
    return v2

    .line 450
    :cond_1e
    const/16 v4, -0x10

    if-ge v0, v4, :cond_52

    .line 454
    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    .line 455
    if-nez p1, :cond_38

    .line 456
    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    .line 457
    if-lt p1, p4, :cond_35

    .line 458
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, p3}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 457
    :cond_35
    move v5, p3

    move p3, p1

    move p1, v5

    .line 461
    :cond_38
    if-gt p1, v3, :cond_51

    const/16 v4, -0x60

    if-ne v0, v1, :cond_40

    if-lt p1, v4, :cond_51

    :cond_40
    const/16 v1, -0x13

    if-ne v0, v1, :cond_46

    if-ge p1, v4, :cond_51

    :cond_46
    add-int/lit8 p1, p3, 0x1

    .line 467
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_4f

    goto :goto_51

    .line 470
    :cond_4f
    move p3, p1

    goto :goto_96

    .line 468
    :cond_51
    :goto_51
    return v2

    .line 474
    :cond_52
    shr-int/lit8 v1, p1, 0x8

    not-int v1, v1

    int-to-byte v1, v1

    .line 475
    nop

    .line 476
    if-nez v1, :cond_68

    .line 477
    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 478
    if-lt p1, p4, :cond_66

    .line 479
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 478
    :cond_66
    const/4 p3, 0x0

    goto :goto_6e

    .line 482
    :cond_68
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    move v5, p3

    move p3, p1

    move p1, v5

    .line 484
    :goto_6e
    if-nez p3, :cond_80

    .line 485
    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    .line 486
    if-lt p3, p4, :cond_7d

    .line 487
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    .line 486
    :cond_7d
    move v5, p3

    move p3, p1

    move p1, v5

    .line 495
    :cond_80
    if-gt v1, v3, :cond_95

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v1, v1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_95

    if-gt p3, v3, :cond_95

    add-int/lit8 p3, p1, 0x1

    .line 504
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_96

    .line 505
    :cond_95
    return v2

    .line 511
    :cond_96
    :goto_96
    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/Utf8$Processor;->partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method abstract blacklist partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
.end method
