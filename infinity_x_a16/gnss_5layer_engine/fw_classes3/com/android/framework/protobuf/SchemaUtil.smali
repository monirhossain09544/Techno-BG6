.class final Lcom/android/framework/protobuf/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist DEFAULT_LOOK_UP_START_NUMBER:I = 0x28

.field private static final blacklist GENERATED_MESSAGE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist UNKNOWN_FIELD_SET_FULL_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field

.field private static final blacklist UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->getGeneratedMessageClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 25
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->getUnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_FULL_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    .line 26
    new-instance v0, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;

    invoke-direct {v0}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist computeSizeBoolList(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 604
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 605
    if-nez p1, :cond_8

    .line 606
    const/4 p0, 0x0

    return p0

    .line 608
    :cond_8
    if-eqz p2, :cond_14

    .line 610
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 611
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 610
    return p0

    .line 613
    :cond_14
    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static blacklist computeSizeBoolListNoTag(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 600
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method static blacklist computeSizeByteStringList(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)I"
        }
    .end annotation

    .line 689
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 690
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 691
    return v1

    .line 693
    :cond_8
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    .line 694
    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_22

    .line 695
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/framework/protobuf/ByteString;

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 697
    :cond_22
    return v0
.end method

.method static blacklist computeSizeEnumList(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 439
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 440
    if-nez v0, :cond_8

    .line 441
    const/4 p0, 0x0

    return p0

    .line 443
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result p1

    .line 445
    if-eqz p2, :cond_18

    .line 446
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 447
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 446
    return p0

    .line 449
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static blacklist computeSizeEnumListNoTag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 418
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 419
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 420
    return v1

    .line 423
    :cond_8
    nop

    .line 425
    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_1f

    .line 426
    check-cast p0, Lcom/android/framework/protobuf/IntArrayList;

    .line 427
    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 428
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 430
    :cond_1e
    goto :goto_34

    .line 431
    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_34

    .line 432
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 435
    :cond_34
    :goto_34
    return v2
.end method

.method static blacklist computeSizeFixed32List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 567
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 568
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 569
    return v0

    .line 571
    :cond_8
    if-eqz p2, :cond_16

    .line 572
    mul-int/lit8 p1, p1, 0x4

    .line 573
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 574
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 573
    return p0

    .line 576
    :cond_16
    invoke-static {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static blacklist computeSizeFixed32ListNoTag(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 563
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static blacklist computeSizeFixed64List(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 585
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 586
    if-nez p1, :cond_8

    .line 587
    const/4 p0, 0x0

    return p0

    .line 589
    :cond_8
    if-eqz p2, :cond_16

    .line 590
    mul-int/lit8 p1, p1, 0x8

    .line 591
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 592
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 591
    return p0

    .line 594
    :cond_16
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static blacklist computeSizeFixed64ListNoTag(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 581
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static blacklist computeSizeGroupList(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">;)I"
        }
    .end annotation

    .line 701
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 702
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 703
    return v1

    .line 705
    :cond_8
    nop

    .line 706
    move v2, v1

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 707
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    .line 706
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 709
    :cond_1a
    return v2
.end method

.method static blacklist computeSizeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">;",
            "Lcom/android/framework/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 713
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 714
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 715
    return v1

    .line 717
    :cond_8
    nop

    .line 718
    move v2, v1

    :goto_a
    if-ge v1, v0, :cond_1a

    .line 719
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, v3, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v3

    add-int/2addr v2, v3

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 721
    :cond_1a
    return v2
.end method

.method static blacklist computeSizeInt32List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 475
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 476
    if-nez v0, :cond_8

    .line 477
    const/4 p0, 0x0

    return p0

    .line 479
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    .line 481
    if-eqz p2, :cond_18

    .line 482
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 483
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 482
    return p0

    .line 485
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static blacklist computeSizeInt32ListNoTag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 454
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 455
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 456
    return v1

    .line 459
    :cond_8
    nop

    .line 461
    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_1f

    .line 462
    check-cast p0, Lcom/android/framework/protobuf/IntArrayList;

    .line 463
    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 464
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 466
    :cond_1e
    goto :goto_34

    .line 467
    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_34

    .line 468
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 471
    :cond_34
    :goto_34
    return v2
.end method

.method static blacklist computeSizeInt64List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 332
    if-nez v0, :cond_8

    .line 333
    const/4 p0, 0x0

    return p0

    .line 335
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v0

    .line 337
    if-eqz p2, :cond_18

    .line 338
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 339
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 338
    return p0

    .line 341
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static blacklist computeSizeInt64ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 310
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 311
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 312
    return v1

    .line 315
    :cond_8
    nop

    .line 317
    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_1f

    .line 318
    check-cast p0, Lcom/android/framework/protobuf/LongArrayList;

    .line 319
    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 322
    :cond_1e
    goto :goto_34

    .line 323
    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_34

    .line 324
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 327
    :cond_34
    :goto_34
    return v2
.end method

.method static blacklist computeSizeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)I
    .registers 4

    .line 647
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v0, :cond_b

    .line 648
    check-cast p1, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSize(ILcom/android/framework/protobuf/LazyFieldLite;)I

    move-result p0

    return p0

    .line 650
    :cond_b
    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result p0

    return p0
.end method

.method static blacklist computeSizeMessageList(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 655
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 656
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 657
    return v1

    .line 659
    :cond_8
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 660
    nop

    :goto_e
    if-ge v1, v0, :cond_2a

    .line 661
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 662
    instance-of v3, v2, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v3, :cond_20

    .line 663
    check-cast v2, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_27

    .line 665
    :cond_20
    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr p0, v2

    .line 660
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 668
    :cond_2a
    return p0
.end method

.method static blacklist computeSizeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")I"
        }
    .end annotation

    .line 672
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 673
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 674
    return v1

    .line 676
    :cond_8
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 677
    nop

    :goto_e
    if-ge v1, v0, :cond_2a

    .line 678
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 679
    instance-of v3, v2, Lcom/android/framework/protobuf/LazyFieldLite;

    if-eqz v3, :cond_20

    .line 680
    check-cast v2, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_27

    .line 682
    :cond_20
    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {v2, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)I

    move-result v2

    add-int/2addr p0, v2

    .line 677
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 685
    :cond_2a
    return p0
.end method

.method static blacklist computeSizeSInt32List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 547
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 548
    if-nez v0, :cond_8

    .line 549
    const/4 p0, 0x0

    return p0

    .line 552
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    .line 554
    if-eqz p2, :cond_18

    .line 555
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 556
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 555
    return p0

    .line 558
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static blacklist computeSizeSInt32ListNoTag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 526
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 527
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 528
    return v1

    .line 531
    :cond_8
    nop

    .line 533
    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_1f

    .line 534
    check-cast p0, Lcom/android/framework/protobuf/IntArrayList;

    .line 535
    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 536
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 538
    :cond_1e
    goto :goto_34

    .line 539
    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_34

    .line 540
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 539
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 543
    :cond_34
    :goto_34
    return v2
.end method

.method static blacklist computeSizeSInt64List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 403
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 404
    if-nez v0, :cond_8

    .line 405
    const/4 p0, 0x0

    return p0

    .line 407
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result p1

    .line 409
    if-eqz p2, :cond_18

    .line 410
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 411
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 410
    return p0

    .line 413
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static blacklist computeSizeSInt64ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 382
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 383
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 384
    return v1

    .line 387
    :cond_8
    nop

    .line 389
    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_1f

    .line 390
    check-cast p0, Lcom/android/framework/protobuf/LongArrayList;

    .line 391
    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 392
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 394
    :cond_1e
    goto :goto_34

    .line 395
    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_34

    .line 396
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 395
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 399
    :cond_34
    :goto_34
    return v2
.end method

.method static blacklist computeSizeStringList(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 618
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 619
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 620
    return v1

    .line 622
    :cond_8
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 623
    instance-of v2, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v2, :cond_31

    .line 624
    check-cast p1, Lcom/android/framework/protobuf/LazyStringList;

    .line 625
    nop

    :goto_14
    if-ge v1, v0, :cond_30

    .line 626
    invoke-interface {p1, v1}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    .line 627
    instance-of v3, v2, Lcom/android/framework/protobuf/ByteString;

    if-eqz v3, :cond_26

    .line 628
    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_2d

    .line 630
    :cond_26
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 625
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 633
    :cond_30
    goto :goto_4e

    .line 634
    :cond_31
    nop

    :goto_32
    if-ge v1, v0, :cond_4e

    .line 635
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 636
    instance-of v3, v2, Lcom/android/framework/protobuf/ByteString;

    if-eqz v3, :cond_44

    .line 637
    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_4b

    .line 639
    :cond_44
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    .line 634
    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 643
    :cond_4e
    :goto_4e
    return p0
.end method

.method static blacklist computeSizeUInt32List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 511
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 512
    if-nez v0, :cond_8

    .line 513
    const/4 p0, 0x0

    return p0

    .line 515
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    .line 517
    if-eqz p2, :cond_18

    .line 518
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 519
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 518
    return p0

    .line 521
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static blacklist computeSizeUInt32ListNoTag(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 490
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 491
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 492
    return v1

    .line 495
    :cond_8
    nop

    .line 497
    instance-of v2, p0, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v2, :cond_1f

    .line 498
    check-cast p0, Lcom/android/framework/protobuf/IntArrayList;

    .line 499
    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 500
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/IntArrayList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 502
    :cond_1e
    goto :goto_34

    .line 503
    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_34

    .line 504
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 507
    :cond_34
    :goto_34
    return v2
.end method

.method static blacklist computeSizeUInt64List(ILjava/util/List;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 368
    if-nez v0, :cond_8

    .line 369
    const/4 p0, 0x0

    return p0

    .line 371
    :cond_8
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result p1

    .line 373
    if-eqz p2, :cond_18

    .line 374
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 375
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 374
    return p0

    .line 377
    :cond_18
    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static blacklist computeSizeUInt64ListNoTag(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 346
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 347
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 348
    return v1

    .line 351
    :cond_8
    nop

    .line 353
    instance-of v2, p0, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v2, :cond_1f

    .line 354
    check-cast p0, Lcom/android/framework/protobuf/LongArrayList;

    .line 355
    move v2, v1

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 358
    :cond_1e
    goto :goto_34

    .line 359
    :cond_1f
    move v2, v1

    :goto_20
    if-ge v1, v0, :cond_34

    .line 360
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 363
    :cond_34
    :goto_34
    return v2
.end method

.method static blacklist filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 887
    if-nez p3, :cond_3

    .line 888
    return-object p4

    .line 891
    :cond_3
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_3e

    .line 892
    nop

    .line 893
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 894
    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v1, v0, :cond_34

    .line 895
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 896
    invoke-interface {p3, v3}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 897
    if-eq v1, v2, :cond_29

    .line 898
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 900
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 902
    :cond_2c
    nop

    .line 903
    invoke-static {p0, p1, v3, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 894
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 907
    :cond_34
    if-eq v2, v0, :cond_3d

    .line 908
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 910
    :cond_3d
    goto :goto_61

    .line 911
    :cond_3e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_42
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 912
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 913
    invoke-interface {p3, v0}, Lcom/android/framework/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/android/framework/protobuf/Internal$EnumLite;

    move-result-object v1

    if-nez v1, :cond_60

    .line 914
    nop

    .line 915
    invoke-static {p0, p1, v0, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 917
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 919
    :cond_60
    goto :goto_42

    .line 921
    :cond_61
    :goto_61
    return-object p4
.end method

.method static blacklist filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/android/framework/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Internal$EnumVerifier;",
            "TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 933
    if-nez p3, :cond_3

    .line 934
    return-object p4

    .line 937
    :cond_3
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_3e

    .line 938
    nop

    .line 939
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 940
    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v1, v0, :cond_34

    .line 941
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 942
    invoke-interface {p3, v3}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 943
    if-eq v1, v2, :cond_29

    .line 944
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 946
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 948
    :cond_2c
    nop

    .line 949
    invoke-static {p0, p1, v3, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 940
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 953
    :cond_34
    if-eq v2, v0, :cond_3d

    .line 954
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 956
    :cond_3d
    goto :goto_61

    .line 957
    :cond_3e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_42
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 958
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 959
    invoke-interface {p3, v0}, Lcom/android/framework/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v1

    if-nez v1, :cond_60

    .line 960
    nop

    .line 961
    invoke-static {p0, p1, v0, p4, p5}, Lcom/android/framework/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 963
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 965
    :cond_60
    goto :goto_42

    .line 967
    :cond_61
    :goto_61
    return-object p4
.end method

.method private static blacklist getGeneratedMessageClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 787
    :try_start_0
    const-string v0, "com.android.framework.protobuf.GeneratedMessageV3"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 788
    :catchall_7
    move-exception v0

    .line 789
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 803
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/SchemaUtil;->toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "DefaultEntryHolder"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 805
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 806
    array-length v2, v0

    if-ne v2, v1, :cond_39

    .line 813
    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-static {p0}, Lcom/android/framework/protobuf/UnsafeUtil;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 807
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to look up map field default entry holder class for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 811
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_60

    .line 814
    :catchall_60
    move-exception p0

    .line 815
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist getUnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 773
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->getUnknownFieldSetSchemaClass()Ljava/lang/Class;

    move-result-object v1

    .line 774
    if-nez v1, :cond_8

    .line 775
    return-object v0

    .line 777
    :cond_8
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/UnknownFieldSchema;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_18

    return-object v1

    .line 778
    :catchall_18
    move-exception v1

    .line 779
    return-object v0
.end method

.method private static blacklist getUnknownFieldSetSchemaClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 795
    :try_start_0
    const-string v0, "com.android.framework.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 796
    :catchall_7
    move-exception v0

    .line 797
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist mergeExtensions(Lcom/android/framework/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TFT;>;>(",
            "Lcom/android/framework/protobuf/ExtensionSchema<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 863
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p2

    .line 864
    invoke-virtual {p2}, Lcom/android/framework/protobuf/FieldSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 865
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;

    move-result-object p0

    .line 866
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/FieldSet;->mergeFrom(Lcom/android/framework/protobuf/FieldSet;)V

    .line 868
    :cond_11
    return-void
.end method

.method static blacklist mergeMap(Lcom/android/framework/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/MapFieldSchema;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 855
    nop

    .line 857
    invoke-static {p1, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 856
    invoke-interface {p0, v0, p2}, Lcom/android/framework/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 858
    invoke-static {p1, p3, p4, p0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 859
    return-void
.end method

.method static blacklist mergeUnknownFields(Lcom/android/framework/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 872
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 874
    invoke-virtual {p0, v0, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 875
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 876
    return-void
.end method

.method public static blacklist requireGeneratedMessage(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 40
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_1d

    .line 43
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 46
    :cond_1d
    :goto_1d
    return-void
.end method

.method static blacklist safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 851
    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public static blacklist shouldUseTableSwitch(III)Z
    .registers 13

    .line 753
    const/16 v0, 0x28

    const/4 v1, 0x1

    if-ge p1, v0, :cond_6

    .line 754
    return v1

    .line 756
    :cond_6
    int-to-long v2, p1

    int-to-long p0, p0

    sub-long/2addr v2, p0

    const-wide/16 p0, 0x1

    add-long/2addr v2, p0

    .line 757
    nop

    .line 758
    int-to-long p0, p2

    const-wide/16 v4, 0x2

    mul-long/2addr v4, p0

    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    .line 759
    add-long/2addr p0, v6

    .line 760
    const-wide/16 v8, 0x9

    add-long/2addr v2, v8

    mul-long/2addr p0, v6

    add-long/2addr v4, p0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return v1
.end method

.method public static blacklist shouldUseTableSwitch([Lcom/android/framework/protobuf/FieldInfo;)Z
    .registers 3

    .line 732
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 733
    return v1

    .line 736
    :cond_5
    aget-object v0, p0, v1

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v0

    .line 737
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 738
    array-length p0, p0

    invoke-static {v0, v1, p0}, Lcom/android/framework/protobuf/SchemaUtil;->shouldUseTableSwitch(III)Z

    move-result p0

    return p0
.end method

.method static blacklist storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "IITUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .line 978
    if-nez p3, :cond_6

    .line 979
    invoke-virtual {p4, p0}, Lcom/android/framework/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 981
    :cond_6
    int-to-long v0, p2

    invoke-virtual {p4, p3, p1, v0, v1}, Lcom/android/framework/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    .line 982
    return-object p3
.end method

.method static blacklist toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 822
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 824
    const/16 v4, 0x61

    if-gt v4, v3, :cond_27

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_27

    .line 825
    if-eqz p1, :cond_22

    .line 826
    add-int/lit8 v3, v3, -0x20

    int-to-char p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 828
    :cond_22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 830
    :goto_25
    move p1, v1

    goto :goto_4e

    .line 831
    :cond_27
    const/16 v4, 0x41

    if-gt v4, v3, :cond_3f

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_3f

    .line 832
    if-nez v2, :cond_3a

    if-nez p1, :cond_3a

    .line 834
    add-int/lit8 v3, v3, 0x20

    int-to-char p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 836
    :cond_3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 838
    :goto_3d
    move p1, v1

    goto :goto_4e

    .line 839
    :cond_3f
    const/16 p1, 0x30

    const/4 v4, 0x1

    if-gt p1, v3, :cond_4d

    const/16 p1, 0x39

    if-gt v3, p1, :cond_4d

    .line 840
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    move p1, v4

    goto :goto_4e

    .line 843
    :cond_4d
    move p1, v4

    .line 821
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 846
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist unknownFieldSetFullSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 764
    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_FULL_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static blacklist unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "**>;"
        }
    .end annotation

    .line 768
    sget-object v0, Lcom/android/framework/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/android/framework/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static blacklist writeBool(IZLcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    if-eqz p1, :cond_6

    .line 128
    const/4 p1, 0x1

    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeBool(IZ)V

    .line 130
    :cond_6
    return-void
.end method

.method public static blacklist writeBoolList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 254
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeBoolList(ILjava/util/List;Z)V

    .line 256
    :cond_b
    return-void
.end method

.method public static blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 150
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 152
    :cond_b
    return-void
.end method

.method public static blacklist writeBytesList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 268
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    .line 270
    :cond_b
    return-void
.end method

.method public static blacklist writeDouble(IDLcom/android/framework/protobuf/Writer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 50
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeDouble(ID)V

    .line 52
    :cond_d
    return-void
.end method

.method public static blacklist writeDoubleList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 163
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeDoubleList(ILjava/util/List;Z)V

    .line 165
    :cond_b
    return-void
.end method

.method public static blacklist writeEnum(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    if-eqz p1, :cond_5

    .line 122
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeEnum(II)V

    .line 124
    :cond_5
    return-void
.end method

.method public static blacklist writeEnumList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 247
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeEnumList(ILjava/util/List;Z)V

    .line 249
    :cond_b
    return-void
.end method

.method public static blacklist writeFixed32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    if-eqz p1, :cond_5

    .line 110
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeFixed32(II)V

    .line 112
    :cond_5
    return-void
.end method

.method public static blacklist writeFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 233
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    .line 235
    :cond_b
    return-void
.end method

.method public static blacklist writeFixed64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 80
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeFixed64(IJ)V

    .line 82
    :cond_9
    return-void
.end method

.method public static blacklist writeFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 198
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    .line 200
    :cond_b
    return-void
.end method

.method public static blacklist writeFloat(IFLcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeFloat(IF)V

    .line 58
    :cond_9
    return-void
.end method

.method public static blacklist writeFloatList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 170
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeFloatList(ILjava/util/List;Z)V

    .line 172
    :cond_b
    return-void
.end method

.method public static blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 298
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeGroupList(ILjava/util/List;)V

    .line 300
    :cond_b
    return-void
.end method

.method public static blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 305
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V

    .line 307
    :cond_b
    return-void
.end method

.method public static blacklist writeInt32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    if-eqz p1, :cond_5

    .line 92
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeInt32(II)V

    .line 94
    :cond_5
    return-void
.end method

.method public static blacklist writeInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 212
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeInt32List(ILjava/util/List;Z)V

    .line 214
    :cond_b
    return-void
.end method

.method public static blacklist writeInt64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 62
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeInt64(IJ)V

    .line 64
    :cond_9
    return-void
.end method

.method public static blacklist writeInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 177
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    .line 179
    :cond_b
    return-void
.end method

.method public static blacklist writeLazyFieldList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 289
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 290
    check-cast v0, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-virtual {v0, p2, p0}, Lcom/android/framework/protobuf/LazyFieldLite;->writeTo(Lcom/android/framework/protobuf/Writer;I)V

    .line 291
    goto :goto_c

    .line 293
    :cond_1c
    return-void
.end method

.method public static blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    if-eqz p1, :cond_5

    .line 156
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 158
    :cond_5
    return-void
.end method

.method public static blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 275
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeMessageList(ILjava/util/List;)V

    .line 277
    :cond_b
    return-void
.end method

.method public static blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Writer;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 282
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V

    .line 284
    :cond_b
    return-void
.end method

.method public static blacklist writeSFixed32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    if-eqz p1, :cond_5

    .line 116
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeSFixed32(II)V

    .line 118
    :cond_5
    return-void
.end method

.method public static blacklist writeSFixed32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 240
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSFixed32List(ILjava/util/List;Z)V

    .line 242
    :cond_b
    return-void
.end method

.method public static blacklist writeSFixed64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 86
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeSFixed64(IJ)V

    .line 88
    :cond_9
    return-void
.end method

.method public static blacklist writeSFixed64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 205
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSFixed64List(ILjava/util/List;Z)V

    .line 207
    :cond_b
    return-void
.end method

.method public static blacklist writeSInt32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    if-eqz p1, :cond_5

    .line 104
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeSInt32(II)V

    .line 106
    :cond_5
    return-void
.end method

.method public static blacklist writeSInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 226
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSInt32List(ILjava/util/List;Z)V

    .line 228
    :cond_b
    return-void
.end method

.method public static blacklist writeSInt64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 74
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeSInt64(IJ)V

    .line 76
    :cond_9
    return-void
.end method

.method public static blacklist writeSInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 191
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeSInt64List(ILjava/util/List;Z)V

    .line 193
    :cond_b
    return-void
.end method

.method public static blacklist writeString(ILjava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 134
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeStringInternal(ILjava/lang/String;Lcom/android/framework/protobuf/Writer;)V

    goto :goto_f

    .line 136
    :cond_a
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/SchemaUtil;->writeBytes(ILcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/Writer;)V

    .line 138
    :goto_f
    return-void
.end method

.method private static blacklist writeStringInternal(ILjava/lang/String;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 143
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 145
    :cond_b
    return-void
.end method

.method public static blacklist writeStringList(ILjava/util/List;Lcom/android/framework/protobuf/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 261
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeStringList(ILjava/util/List;)V

    .line 263
    :cond_b
    return-void
.end method

.method public static blacklist writeUInt32(IILcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    if-eqz p1, :cond_5

    .line 98
    invoke-interface {p2, p0, p1}, Lcom/android/framework/protobuf/Writer;->writeUInt32(II)V

    .line 100
    :cond_5
    return-void
.end method

.method public static blacklist writeUInt32List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 219
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeUInt32List(ILjava/util/List;Z)V

    .line 221
    :cond_b
    return-void
.end method

.method public static blacklist writeUInt64(IJLcom/android/framework/protobuf/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    .line 68
    invoke-interface {p3, p0, p1, p2}, Lcom/android/framework/protobuf/Writer;->writeUInt64(IJ)V

    .line 70
    :cond_9
    return-void
.end method

.method public static blacklist writeUInt64List(ILjava/util/List;Lcom/android/framework/protobuf/Writer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/framework/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 184
    invoke-interface {p2, p0, p1, p3}, Lcom/android/framework/protobuf/Writer;->writeUInt64List(ILjava/util/List;Z)V

    .line 186
    :cond_b
    return-void
.end method
