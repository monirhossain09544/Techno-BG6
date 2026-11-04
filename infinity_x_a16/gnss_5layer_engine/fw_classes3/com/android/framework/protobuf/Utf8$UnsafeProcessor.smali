.class final Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;
.super Lcom/android/framework/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1147
    invoke-direct {p0}, Lcom/android/framework/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static blacklist isAvailable()Z
    .registers 1

    .line 1150
    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/framework/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static blacklist partialIsValidUtf8(JI)I
    .registers 11

    .line 1722
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    .line 1723
    int-to-long v1, v0

    add-long/2addr p0, v1

    .line 1724
    sub-int/2addr p2, v0

    .line 1730
    :goto_7
    const/4 v0, 0x0

    move v1, v0

    .line 1731
    :goto_9
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1a

    add-long v4, p0, v2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_9

    :cond_19
    move-wide p0, v4

    .line 1732
    :cond_1a
    if-nez p2, :cond_1d

    .line 1733
    return v0

    .line 1735
    :cond_1d
    add-int/lit8 p2, p2, -0x1

    .line 1737
    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_3a

    .line 1740
    if-nez p2, :cond_29

    .line 1742
    return v1

    .line 1744
    :cond_29
    add-int/lit8 p2, p2, -0x1

    .line 1748
    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_37

    goto :goto_39

    :cond_37
    move-wide p0, v2

    goto :goto_93

    .line 1749
    :cond_39
    :goto_39
    return v5

    .line 1751
    :cond_3a
    const/16 v6, -0x10

    if-ge v1, v6, :cond_67

    .line 1754
    const/4 v6, 0x2

    if-ge p2, v6, :cond_46

    .line 1756
    invoke-static {p0, p1, v1, p2}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    .line 1758
    :cond_46
    add-int/lit8 p2, p2, -0x2

    .line 1760
    add-long v6, p0, v2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1761
    if-gt p0, v4, :cond_66

    const/16 p1, -0x60

    if-ne v1, v0, :cond_56

    if-lt p0, p1, :cond_66

    :cond_56
    const/16 v0, -0x13

    if-ne v1, v0, :cond_5c

    if-ge p0, p1, :cond_66

    :cond_5c
    add-long/2addr v2, v6

    .line 1767
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_64

    goto :goto_66

    .line 1770
    :cond_64
    move-wide p0, v2

    goto :goto_93

    .line 1768
    :cond_66
    :goto_66
    return v5

    .line 1773
    :cond_67
    const/4 v0, 0x3

    if-ge p2, v0, :cond_6f

    .line 1775
    invoke-static {p0, p1, v1, p2}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result p0

    return p0

    .line 1777
    :cond_6f
    add-int/lit8 p2, p2, -0x3

    .line 1779
    add-long v6, p0, v2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1780
    if-gt p0, v4, :cond_95

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 p0, p0, 0x70

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x1e

    if-nez p0, :cond_95

    add-long p0, v6, v2

    .line 1787
    invoke-static {v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-gt v0, v4, :cond_95

    add-long/2addr v2, p0

    .line 1789
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v4, :cond_92

    goto :goto_95

    :cond_92
    move-wide p0, v2

    .line 1793
    :goto_93
    goto/16 :goto_7

    .line 1790
    :cond_95
    :goto_95
    return v5
.end method

.method private static blacklist partialIsValidUtf8([BJI)I
    .registers 12

    .line 1648
    invoke-static {p0, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    .line 1649
    sub-int/2addr p3, v0

    .line 1650
    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 1656
    :goto_7
    const/4 v0, 0x0

    move v1, v0

    .line 1657
    :goto_9
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1a

    add-long v4, p1, v2

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    if-ltz v1, :cond_19

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_9

    :cond_19
    move-wide p1, v4

    .line 1658
    :cond_1a
    if-nez p3, :cond_1d

    .line 1659
    return v0

    .line 1661
    :cond_1d
    add-int/lit8 p3, p3, -0x1

    .line 1664
    const/16 v0, -0x20

    const/16 v4, -0x41

    const/4 v5, -0x1

    if-ge v1, v0, :cond_3a

    .line 1666
    if-nez p3, :cond_29

    .line 1668
    return v1

    .line 1670
    :cond_29
    add-int/lit8 p3, p3, -0x1

    .line 1674
    const/16 v0, -0x3e

    if-lt v1, v0, :cond_39

    add-long/2addr v2, p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_37

    goto :goto_39

    :cond_37
    move-wide p1, v2

    goto :goto_93

    .line 1675
    :cond_39
    :goto_39
    return v5

    .line 1677
    :cond_3a
    const/16 v6, -0x10

    if-ge v1, v6, :cond_67

    .line 1679
    const/4 v6, 0x2

    if-ge p3, v6, :cond_46

    .line 1681
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    .line 1683
    :cond_46
    add-int/lit8 p3, p3, -0x2

    .line 1686
    add-long v6, p1, v2

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_66

    const/16 p2, -0x60

    if-ne v1, v0, :cond_56

    if-lt p1, p2, :cond_66

    :cond_56
    const/16 v0, -0x13

    if-ne v1, v0, :cond_5c

    if-ge p1, p2, :cond_66

    :cond_5c
    add-long/2addr v2, v6

    .line 1692
    invoke-static {p0, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_64

    goto :goto_66

    .line 1695
    :cond_64
    move-wide p1, v2

    goto :goto_93

    .line 1693
    :cond_66
    :goto_66
    return v5

    .line 1697
    :cond_67
    const/4 v0, 0x3

    if-ge p3, v0, :cond_6f

    .line 1699
    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result p0

    return p0

    .line 1701
    :cond_6f
    add-int/lit8 p3, p3, -0x3

    .line 1704
    add-long v6, p1, v2

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v4, :cond_95

    shl-int/lit8 p2, v1, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p2, p1

    shr-int/lit8 p1, p2, 0x1e

    if-nez p1, :cond_95

    add-long p1, v6, v2

    .line 1711
    invoke-static {p0, v6, v7}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    if-gt v0, v4, :cond_95

    add-long/2addr v2, p1

    .line 1713
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v4, :cond_92

    goto :goto_95

    :cond_92
    move-wide p1, v2

    .line 1717
    :goto_93
    goto/16 :goto_7

    .line 1714
    :cond_95
    :goto_95
    return v5
.end method

.method private static blacklist unsafeEstimateConsecutiveAscii(JI)I
    .registers 8

    .line 1620
    nop

    .line 1621
    const/16 v0, 0x10

    if-ge p2, v0, :cond_7

    .line 1623
    const/4 p0, 0x0

    return p0

    .line 1629
    :cond_7
    neg-long v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 1630
    move v1, v0

    :goto_d
    if-lez v1, :cond_1e

    .line 1631
    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1a

    .line 1632
    sub-int/2addr v0, v1

    return v0

    .line 1630
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    move-wide p0, v2

    goto :goto_d

    .line 1639
    :cond_1e
    sub-int v0, p2, v0

    .line 1641
    :goto_20
    const/16 v1, 0x8

    if-lt v0, v1, :cond_3a

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v1

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3a

    .line 1642
    const-wide/16 v1, 0x8

    add-long/2addr p0, v1

    add-int/lit8 v0, v0, -0x8

    goto :goto_20

    .line 1643
    :cond_3a
    sub-int/2addr p2, v0

    return p2
.end method

.method private static blacklist unsafeEstimateConsecutiveAscii([BJI)I
    .registers 12

    .line 1580
    const/16 v0, 0x10

    const/4 v1, 0x0

    if-ge p3, v0, :cond_6

    .line 1582
    return v1

    .line 1590
    :cond_6
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x8

    .line 1592
    nop

    :goto_c
    const-wide/16 v2, 0x1

    if-ge v1, v0, :cond_1c

    .line 1593
    add-long/2addr v2, p1

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_18

    .line 1594
    return v1

    .line 1592
    :cond_18
    add-int/lit8 v1, v1, 0x1

    move-wide p1, v2

    goto :goto_c

    .line 1598
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v1, 0x8

    if-gt v0, p3, :cond_39

    .line 1599
    sget-wide v4, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v4, p1

    invoke-static {p0, v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    const-wide v6, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_34

    .line 1602
    goto :goto_39

    .line 1604
    :cond_34
    const-wide/16 v4, 0x8

    add-long/2addr p1, v4

    .line 1598
    move v1, v0

    goto :goto_1c

    .line 1607
    :cond_39
    :goto_39
    if-ge v1, p3, :cond_48

    .line 1608
    add-long v4, p1, v2

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_44

    .line 1609
    return v1

    .line 1607
    :cond_44
    add-int/lit8 v1, v1, 0x1

    move-wide p1, v4

    goto :goto_39

    .line 1612
    :cond_48
    return p3
.end method

.method private static blacklist unsafeIncompleteStateFor(JII)I
    .registers 6

    .line 1812
    packed-switch p3, :pswitch_data_28

    .line 1821
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1818
    :pswitch_9
    nop

    .line 1819
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p3

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1818
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p2, p3, p0}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1816
    :pswitch_1a
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p2, p0}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1814
    :pswitch_23
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p2}, Lcom/android/framework/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method

.method private static blacklist unsafeIncompleteStateFor([BIJI)I
    .registers 7

    .line 1798
    packed-switch p4, :pswitch_data_28

    .line 1807
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1804
    :pswitch_9
    nop

    .line 1805
    invoke-static {p0, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    .line 1804
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p1, p4, p0}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result p0

    return p0

    .line 1802
    :pswitch_1a
    invoke-static {p0, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p0

    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p1, p0}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p0

    return p0

    .line 1800
    :pswitch_23
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(I)I
    invoke-static {p1}, Lcom/android/framework/protobuf/Utf8;->access$1200(I)I

    move-result p0

    return p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method blacklist decodeUtf8([BII)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1347
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1351
    const-string/jumbo v1, "\ufffd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1352
    return-object v0

    .line 1360
    :cond_11
    sget-object v1, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 1361
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 1360
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 1362
    return-object v0

    .line 1365
    :cond_23
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method blacklist decodeUtf8Direct(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1372
    or-int v0, p2, p3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_d4

    .line 1376
    invoke-static {p1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    int-to-long p1, p2

    add-long/2addr v0, p1

    .line 1377
    int-to-long p1, p3

    add-long/2addr p1, v0

    .line 1381
    new-array v6, p3, [C

    .line 1382
    const/4 p3, 0x0

    move v2, p3

    .line 1386
    :goto_17
    cmp-long v3, v0, p1

    const-wide/16 v8, 0x1

    if-gez v3, :cond_30

    .line 1387
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    .line 1388
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v3}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v4

    if-nez v4, :cond_28

    .line 1389
    goto :goto_30

    .line 1391
    :cond_28
    add-long/2addr v0, v8

    .line 1392
    add-int/lit8 v4, v2, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v3, v6, v2}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1393
    move v2, v4

    goto :goto_17

    .line 1395
    :cond_30
    :goto_30
    move v7, v2

    :goto_31
    cmp-long v2, v0, p1

    if-gez v2, :cond_ce

    .line 1396
    add-long v2, v0, v8

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    .line 1397
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1398
    add-int/lit8 v1, v7, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v0, v6, v7}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1401
    :goto_46
    cmp-long v0, v2, p1

    if-gez v0, :cond_5d

    .line 1402
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    .line 1403
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isOneByte(B)Z
    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$400(B)Z

    move-result v4

    if-nez v4, :cond_55

    .line 1404
    goto :goto_5d

    .line 1406
    :cond_55
    add-long/2addr v2, v8

    .line 1407
    add-int/lit8 v4, v1, 0x1

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleOneByte(B[CI)V
    invoke-static {v0, v6, v1}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$500(B[CI)V

    .line 1408
    move v1, v4

    goto :goto_46

    .line 1439
    :cond_5d
    :goto_5d
    move v7, v1

    move-wide v0, v2

    goto/16 :goto_c7

    .line 1409
    :cond_61
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isTwoBytes(B)Z
    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$600(B)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1410
    cmp-long v1, v2, p1

    if-gez v1, :cond_79

    .line 1413
    add-long v4, v2, v8

    .line 1414
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-int/lit8 v2, v7, 0x1

    .line 1413
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleTwoBytes(BB[CI)V
    invoke-static {v0, v1, v6, v7}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$700(BB[CI)V

    move v7, v2

    move-wide v0, v4

    goto :goto_c7

    .line 1411
    :cond_79
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1415
    :cond_7e
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->isThreeBytes(B)Z
    invoke-static {v0}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$800(B)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 1416
    sub-long v4, p1, v8

    cmp-long v1, v2, v4

    if-gez v1, :cond_9e

    .line 1419
    add-long v4, v2, v8

    .line 1421
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    add-long v2, v4, v8

    .line 1422
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    add-int/lit8 v5, v7, 0x1

    .line 1419
    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleThreeBytes(BBB[CI)V
    invoke-static {v0, v1, v4, v6, v7}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$900(BBB[CI)V

    move-wide v0, v2

    move v7, v5

    goto :goto_c7

    .line 1417
    :cond_9e
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1426
    :cond_a3
    const-wide/16 v4, 0x2

    sub-long v4, p1, v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_c9

    .line 1429
    add-long v4, v2, v8

    .line 1431
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    add-long v1, v4, v8

    .line 1432
    invoke-static {v4, v5}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    add-long v10, v1, v8

    .line 1433
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v5

    add-int/lit8 v1, v7, 0x1

    .line 1429
    move v2, v0

    # invokes: Lcom/android/framework/protobuf/Utf8$DecodeUtil;->handleFourBytes(BBBB[CI)V
    invoke-static/range {v2 .. v7}, Lcom/android/framework/protobuf/Utf8$DecodeUtil;->access$1000(BBBB[CI)V

    .line 1437
    add-int/lit8 v1, v1, 0x1

    move v7, v1

    move-wide v0, v10

    .line 1439
    :goto_c7
    goto/16 :goto_31

    .line 1427
    :cond_c9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1441
    :cond_ce
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v6, p3, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1373
    :cond_d4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1374
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

.method blacklist encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .registers 21

    .line 1446
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    .line 1447
    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1448
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1449
    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_12e

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_12e

    .line 1457
    const/4 v2, 0x0

    .line 1458
    :goto_1a
    const/16 v3, 0x80

    const-wide/16 v11, 0x1

    if-ge v2, v8, :cond_2f

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_2f

    .line 1459
    add-long/2addr v11, v4

    int-to-byte v3, v13

    invoke-static {v1, v4, v5, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1458
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_1a

    .line 1461
    :cond_2f
    if-ne v2, v8, :cond_33

    .line 1463
    long-to-int v0, v4

    return v0

    .line 1466
    :cond_33
    :goto_33
    if-ge v2, v8, :cond_12c

    .line 1467
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 1468
    if-ge v13, v3, :cond_4a

    cmp-long v14, v4, v6

    if-gez v14, :cond_4a

    .line 1469
    add-long v14, v4, v11

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 p3, v11

    move-wide v4, v14

    goto/16 :goto_e6

    .line 1470
    :cond_4a
    const/16 v14, 0x800

    if-ge v13, v14, :cond_6e

    const-wide/16 v14, 0x2

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_6e

    .line 1471
    add-long v14, v4, v11

    move-wide/from16 p3, v11

    ushr-int/lit8 v11, v13, 0x6

    or-int/lit16 v11, v11, 0x3c0

    int-to-byte v11, v11

    invoke-static {v1, v4, v5, v11}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1472
    add-long v11, v14, p3

    and-int/lit8 v4, v13, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    invoke-static {v1, v14, v15, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide v4, v11

    goto/16 :goto_e6

    .line 1470
    :cond_6e
    move-wide/from16 p3, v11

    .line 1473
    const v11, 0xdfff

    const v12, 0xd800

    if-lt v13, v12, :cond_7a

    if-ge v11, v13, :cond_a2

    :cond_7a
    const-wide/16 v14, 0x3

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_a2

    .line 1475
    add-long v11, v4, p3

    ushr-int/lit8 v14, v13, 0xc

    or-int/lit16 v14, v14, 0x1e0

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1476
    add-long v4, v11, p3

    ushr-int/lit8 v14, v13, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    invoke-static {v1, v11, v12, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1477
    add-long v11, v4, p3

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v3

    int-to-byte v13, v13

    invoke-static {v1, v4, v5, v13}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide v4, v11

    goto :goto_e6

    .line 1478
    :cond_a2
    const-wide/16 v14, 0x4

    sub-long v14, v6, v14

    cmp-long v14, v4, v14

    if-gtz v14, :cond_f5

    .line 1482
    add-int/lit8 v11, v2, 0x1

    if-eq v11, v8, :cond_ed

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v12

    if-eqz v12, :cond_ec

    .line 1485
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1486
    add-long v12, v4, p3

    ushr-int/lit8 v14, v2, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1487
    add-long v4, v12, p3

    ushr-int/lit8 v14, v2, 0xc

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    invoke-static {v1, v12, v13, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1488
    add-long v12, v4, p3

    ushr-int/lit8 v14, v2, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v3

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1489
    add-long v4, v12, p3

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v1, v12, v13, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1490
    move v2, v11

    .line 1466
    :goto_e6
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, p3

    goto/16 :goto_33

    .line 1482
    :cond_ec
    move v2, v11

    .line 1483
    :cond_ed
    new-instance v0, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v2, v8}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1491
    :cond_f5
    if-gt v12, v13, :cond_10d

    if-gt v13, v11, :cond_10d

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_107

    .line 1492
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 1494
    :cond_107
    new-instance v0, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v2, v8}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1497
    :cond_10d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1502
    :cond_12c
    long-to-int v0, v4

    return v0

    .line 1451
    :cond_12e
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v8, v8, -0x1

    .line 1452
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 23

    .line 1507
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v1}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1508
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1509
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 1510
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1511
    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_15d

    .line 1519
    const/4 v9, 0x0

    .line 1520
    :goto_24
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v9, v8, :cond_3a

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_3a

    .line 1521
    add-long v12, v4, v13

    int-to-byte v14, v15

    invoke-static {v4, v5, v14}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1520
    add-int/lit8 v9, v9, 0x1

    move-wide v4, v12

    goto :goto_24

    .line 1523
    :cond_3a
    if-ne v9, v8, :cond_42

    .line 1525
    sub-long/2addr v4, v2

    long-to-int v0, v4

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 1526
    return-void

    .line 1529
    :cond_42
    :goto_42
    if-ge v9, v8, :cond_154

    .line 1530
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 1531
    if-ge v15, v12, :cond_5d

    cmp-long v16, v4, v6

    if-gez v16, :cond_5d

    .line 1532
    add-long v16, v4, v13

    int-to-byte v15, v15

    invoke-static {v4, v5, v15}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v18, v2

    move v15, v12

    move-wide/from16 v4, v16

    move-wide/from16 v16, v13

    goto/16 :goto_10b

    .line 1533
    :cond_5d
    move-wide/from16 v16, v13

    const/16 v13, 0x800

    if-ge v15, v13, :cond_86

    const-wide/16 v13, 0x2

    sub-long v13, v6, v13

    cmp-long v13, v4, v13

    if-gtz v13, :cond_86

    .line 1534
    add-long v13, v4, v16

    ushr-int/lit8 v12, v15, 0x6

    or-int/lit16 v12, v12, 0x3c0

    int-to-byte v12, v12

    invoke-static {v4, v5, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1535
    add-long v4, v13, v16

    and-int/lit8 v12, v15, 0x3f

    const/16 v15, 0x80

    or-int/2addr v12, v15

    int-to-byte v12, v12

    invoke-static {v13, v14, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v18, v2

    const/16 v15, 0x80

    goto/16 :goto_10b

    .line 1536
    :cond_86
    const v12, 0xdfff

    const v13, 0xd800

    if-lt v15, v13, :cond_94

    if-ge v12, v15, :cond_91

    goto :goto_94

    :cond_91
    move-wide/from16 v18, v2

    goto :goto_c5

    :cond_94
    :goto_94
    const-wide/16 v18, 0x3

    sub-long v18, v6, v18

    cmp-long v14, v4, v18

    if-gtz v14, :cond_c3

    .line 1538
    add-long v13, v4, v16

    ushr-int/lit8 v12, v15, 0xc

    or-int/lit16 v12, v12, 0x1e0

    int-to-byte v12, v12

    invoke-static {v4, v5, v12}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1539
    add-long v4, v13, v16

    ushr-int/lit8 v12, v15, 0x6

    and-int/lit8 v12, v12, 0x3f

    move-wide/from16 v18, v2

    const/16 v2, 0x80

    or-int/lit16 v3, v12, 0x80

    int-to-byte v3, v3

    invoke-static {v13, v14, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1540
    add-long v13, v4, v16

    and-int/lit8 v3, v15, 0x3f

    or-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-static {v4, v5, v2}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v13

    const/16 v15, 0x80

    goto :goto_10b

    .line 1536
    :cond_c3
    move-wide/from16 v18, v2

    .line 1541
    :goto_c5
    const-wide/16 v2, 0x4

    sub-long v2, v6, v2

    cmp-long v2, v4, v2

    if-gtz v2, :cond_11d

    .line 1545
    add-int/lit8 v2, v9, 0x1

    if-eq v2, v8, :cond_115

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_114

    .line 1548
    invoke-static {v15, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .line 1549
    add-long v13, v4, v16

    ushr-int/lit8 v9, v3, 0x12

    or-int/lit16 v9, v9, 0xf0

    int-to-byte v9, v9

    invoke-static {v4, v5, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1550
    add-long v4, v13, v16

    ushr-int/lit8 v9, v3, 0xc

    and-int/lit8 v9, v9, 0x3f

    const/16 v15, 0x80

    or-int/2addr v9, v15

    int-to-byte v9, v9

    invoke-static {v13, v14, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1551
    add-long v13, v4, v16

    ushr-int/lit8 v9, v3, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v15

    int-to-byte v9, v9

    invoke-static {v4, v5, v9}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1552
    add-long v4, v13, v16

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v15

    int-to-byte v3, v3

    invoke-static {v13, v14, v3}, Lcom/android/framework/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1553
    move v9, v2

    .line 1529
    :goto_10b
    add-int/lit8 v9, v9, 0x1

    move v12, v15

    move-wide/from16 v13, v16

    move-wide/from16 v2, v18

    goto/16 :goto_42

    .line 1545
    :cond_114
    move v9, v2

    .line 1546
    :cond_115
    new-instance v0, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v8}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1554
    :cond_11d
    if-gt v13, v15, :cond_135

    if-gt v15, v12, :cond_135

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_12f

    .line 1555
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_135

    .line 1557
    :cond_12f
    new-instance v0, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v0, v9, v8}, Lcom/android/framework/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v0

    .line 1560
    :cond_135
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1565
    :cond_154
    move-wide/from16 v18, v2

    sub-long v4, v4, v18

    long-to-int v0, v4

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 1566
    return-void

    .line 1513
    :cond_15d
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v8, v8, -0x1

    .line 1514
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method blacklist partialIsValidUtf8(I[BII)I
    .registers 15

    .line 1156
    or-int v0, p3, p4

    array-length v1, p2

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    if-ltz v0, :cond_ac

    .line 1160
    int-to-long v0, p3

    .line 1161
    int-to-long p3, p4

    .line 1162
    if-eqz p1, :cond_a5

    .line 1170
    cmp-long v2, v0, p3

    if-ltz v2, :cond_10

    .line 1171
    return p1

    .line 1173
    :cond_10
    int-to-byte v2, p1

    .line 1175
    const/16 v3, -0x20

    const/4 v4, -0x1

    const/16 v5, -0x41

    const-wide/16 v6, 0x1

    if-ge v2, v3, :cond_2a

    .line 1180
    const/16 p1, -0x3e

    if-lt v2, p1, :cond_29

    add-long/2addr v6, v0

    .line 1182
    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_26

    goto :goto_29

    :cond_26
    move-wide v0, v6

    goto/16 :goto_a5

    .line 1183
    :cond_29
    :goto_29
    return v4

    .line 1185
    :cond_2a
    const/16 v8, -0x10

    if-ge v2, v8, :cond_5e

    .line 1189
    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    .line 1190
    if-nez p1, :cond_44

    .line 1191
    add-long v8, v0, v6

    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    .line 1192
    cmp-long v0, v8, p3

    if-ltz v0, :cond_43

    .line 1193
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v2, p1}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 1192
    :cond_43
    move-wide v0, v8

    .line 1196
    :cond_44
    if-gt p1, v5, :cond_5d

    const/16 v8, -0x60

    if-ne v2, v3, :cond_4c

    if-lt p1, v8, :cond_5d

    :cond_4c
    const/16 v3, -0x13

    if-ne v2, v3, :cond_52

    if-ge p1, v8, :cond_5d

    :cond_52
    add-long v2, v0, v6

    .line 1202
    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_5b

    goto :goto_5d

    .line 1205
    :cond_5b
    move-wide v0, v2

    goto :goto_a5

    .line 1203
    :cond_5d
    :goto_5d
    return v4

    .line 1209
    :cond_5e
    shr-int/lit8 v3, p1, 0x8

    not-int v3, v3

    int-to-byte v3, v3

    .line 1210
    nop

    .line 1211
    if-nez v3, :cond_77

    .line 1212
    add-long v8, v0, v6

    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v3

    .line 1213
    cmp-long p1, v8, p3

    if-ltz p1, :cond_74

    .line 1214
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 1213
    :cond_74
    const/4 p1, 0x0

    move-wide v0, v8

    goto :goto_7a

    .line 1217
    :cond_77
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    .line 1219
    :goto_7a
    if-nez p1, :cond_8c

    .line 1220
    add-long v8, v0, v6

    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    .line 1221
    cmp-long v0, v8, p3

    if-ltz v0, :cond_8b

    .line 1222
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {v2, v3, p1}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    .line 1221
    :cond_8b
    move-wide v0, v8

    .line 1230
    :cond_8c
    if-gt v3, v5, :cond_a4

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_a4

    if-gt p1, v5, :cond_a4

    add-long v2, v0, v6

    .line 1239
    invoke-static {p2, v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_a2

    goto :goto_a4

    :cond_a2
    move-wide v0, v2

    goto :goto_a5

    .line 1240
    :cond_a4
    :goto_a4
    return v4

    .line 1245
    :cond_a5
    :goto_a5
    sub-long/2addr p3, v0

    long-to-int p1, p3

    invoke-static {p2, v0, v1, p1}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result p1

    return p1

    .line 1157
    :cond_ac
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p2, p2

    .line 1158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Array length=%d, index=%d, limit=%d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method blacklist partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .registers 14

    .line 1252
    or-int v0, p3, p4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, p4

    or-int/2addr v0, v1

    if-ltz v0, :cond_b4

    .line 1256
    invoke-static {p2}, Lcom/android/framework/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 1257
    sub-int/2addr p4, p3

    int-to-long p2, p4

    add-long/2addr p2, v0

    .line 1258
    if-eqz p1, :cond_ad

    .line 1266
    cmp-long p4, v0, p2

    if-ltz p4, :cond_1a

    .line 1267
    return p1

    .line 1270
    :cond_1a
    int-to-byte p4, p1

    .line 1272
    const/16 v2, -0x20

    const/4 v3, -0x1

    const/16 v4, -0x41

    const-wide/16 v5, 0x1

    if-ge p4, v2, :cond_34

    .line 1277
    const/16 p1, -0x3e

    if-lt p4, p1, :cond_33

    add-long/2addr v5, v0

    .line 1279
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v4, :cond_30

    goto :goto_33

    :cond_30
    move-wide v0, v5

    goto/16 :goto_ad

    .line 1280
    :cond_33
    :goto_33
    return v3

    .line 1282
    :cond_34
    const/16 v7, -0x10

    if-ge p4, v7, :cond_67

    .line 1286
    shr-int/lit8 p1, p1, 0x8

    not-int p1, p1

    int-to-byte p1, p1

    .line 1287
    if-nez p1, :cond_4e

    .line 1288
    add-long v7, v0, v5

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    .line 1289
    cmp-long v0, v7, p2

    if-ltz v0, :cond_4d

    .line 1290
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p4, p1}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 1289
    :cond_4d
    move-wide v0, v7

    .line 1293
    :cond_4e
    if-gt p1, v4, :cond_66

    const/16 v7, -0x60

    if-ne p4, v2, :cond_56

    if-lt p1, v7, :cond_66

    :cond_56
    const/16 v2, -0x13

    if-ne p4, v2, :cond_5c

    if-ge p1, v7, :cond_66

    :cond_5c
    add-long/2addr v5, v0

    .line 1299
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v4, :cond_64

    goto :goto_66

    .line 1302
    :cond_64
    move-wide v0, v5

    goto :goto_ad

    .line 1300
    :cond_66
    :goto_66
    return v3

    .line 1306
    :cond_67
    shr-int/lit8 v2, p1, 0x8

    not-int v2, v2

    int-to-byte v2, v2

    .line 1307
    nop

    .line 1308
    if-nez v2, :cond_80

    .line 1309
    add-long v7, v0, v5

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    .line 1310
    cmp-long p1, v7, p2

    if-ltz p1, :cond_7d

    .line 1311
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(II)I
    invoke-static {p4, v2}, Lcom/android/framework/protobuf/Utf8;->access$000(II)I

    move-result p1

    return p1

    .line 1310
    :cond_7d
    const/4 p1, 0x0

    move-wide v0, v7

    goto :goto_83

    .line 1314
    :cond_80
    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    .line 1316
    :goto_83
    if-nez p1, :cond_95

    .line 1317
    add-long v7, v0, v5

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    .line 1318
    cmp-long v0, v7, p2

    if-ltz v0, :cond_94

    .line 1319
    # invokes: Lcom/android/framework/protobuf/Utf8;->incompleteStateFor(III)I
    invoke-static {p4, v2, p1}, Lcom/android/framework/protobuf/Utf8;->access$100(III)I

    move-result p1

    return p1

    .line 1318
    :cond_94
    move-wide v0, v7

    .line 1327
    :cond_95
    if-gt v2, v4, :cond_ac

    shl-int/lit8 p4, p4, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr p4, v2

    shr-int/lit8 p4, p4, 0x1e

    if-nez p4, :cond_ac

    if-gt p1, v4, :cond_ac

    add-long/2addr v5, v0

    .line 1336
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v4, :cond_aa

    goto :goto_ac

    :cond_aa
    move-wide v0, v5

    goto :goto_ad

    .line 1337
    :cond_ac
    :goto_ac
    return v3

    .line 1342
    :cond_ad
    :goto_ad
    sub-long/2addr p2, v0

    long-to-int p1, p2

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result p1

    return p1

    .line 1253
    :cond_b4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1254
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
