.class final Lcom/android/framework/protobuf/CodedOutputStreamWriter;
.super Ljava/lang/Object;
.source "CodedOutputStreamWriter.java"

# interfaces
.implements Lcom/android/framework/protobuf/Writer;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field private final blacklist output:Lcom/android/framework/protobuf/CodedOutputStream;


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/CodedOutputStream;

    iput-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    .line 33
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    iput-object p0, p1, Lcom/android/framework/protobuf/CodedOutputStream;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    .line 34
    return-void
.end method

.method public static blacklist forCodedOutput(Lcom/android/framework/protobuf/CodedOutputStream;)Lcom/android/framework/protobuf/CodedOutputStreamWriter;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    if-eqz v0, :cond_7

    .line 26
    iget-object p0, p0, Lcom/android/framework/protobuf/CodedOutputStream;->wrapper:Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    return-object p0

    .line 28
    :cond_7
    new-instance v0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;-><init>(Lcom/android/framework/protobuf/CodedOutputStream;)V

    return-object v0
.end method

.method private blacklist writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/android/framework/protobuf/MapEntryLite$Metadata;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(IZTV;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Boolean;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 619
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4, v0, p3}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 620
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p4, p2, p3}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 621
    return-void
.end method

.method private blacklist writeDeterministicIntegerMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Integer;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 627
    nop

    .line 628
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 629
    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    .line 630
    move v4, v6

    goto :goto_11

    .line 631
    :cond_27
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 632
    nop

    :goto_2b
    if-ge v3, v0, :cond_56

    aget v2, v1, v3

    .line 633
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 634
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 635
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2, v6, v4}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 636
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, p2, v2, v4}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 632
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 638
    :cond_56
    return-void
.end method

.method private blacklist writeDeterministicLongMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/Long;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 644
    nop

    .line 645
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 646
    add-int/lit8 v7, v4, 0x1

    aput-wide v5, v1, v4

    .line 647
    move v4, v7

    goto :goto_11

    .line 648
    :cond_27
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 649
    nop

    :goto_2b
    if-ge v3, v0, :cond_56

    aget-wide v4, v1, v3

    .line 650
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 651
    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v7, 0x2

    invoke-virtual {v6, p1, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 652
    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p2, v7, v2}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 653
    iget-object v6, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, p2, v4, v2}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 649
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 655
    :cond_56
    return-void
.end method

.method private blacklist writeDeterministicMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    sget-object v0, Lcom/android/framework/protobuf/CodedOutputStreamWriter$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    iget-object v1, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    .line 611
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "does not support key type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 607
    :pswitch_28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicStringMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 609
    goto :goto_4c

    .line 603
    :pswitch_2c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicLongMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 605
    goto :goto_4c

    .line 595
    :pswitch_30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicIntegerMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 597
    goto :goto_4c

    .line 581
    :pswitch_34
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 582
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/android/framework/protobuf/MapEntryLite$Metadata;)V

    .line 585
    :cond_40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4c

    .line 586
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicBooleanMapEntry(IZLjava/lang/Object;Lcom/android/framework/protobuf/MapEntryLite$Metadata;)V

    .line 613
    :cond_4c
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_34
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_28
    .end packed-switch
.end method

.method private blacklist writeDeterministicStringMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 661
    nop

    .line 662
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 663
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    .line 664
    move v4, v6

    goto :goto_11

    .line 665
    :cond_23
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 666
    nop

    :goto_27
    if-ge v3, v0, :cond_46

    aget-object v2, v1, v3

    .line 667
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 668
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, p1, v6}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 669
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {p2, v2, v4}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 670
    iget-object v5, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-static {v5, p2, v2, v4}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 666
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 672
    :cond_46
    return-void
.end method

.method private blacklist writeLazyString(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 398
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_13

    .line 400
    :cond_c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 402
    :goto_13
    return-void
.end method


# virtual methods
.method public blacklist fieldOrder()Lcom/android/framework/protobuf/Writer$FieldOrder;
    .registers 2

    .line 38
    sget-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method public blacklist getTotalBytesWritten()I
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->getTotalBytesWritten()I

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

    .line 97
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 98
    return-void
.end method

.method public blacklist writeBoolList(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 362
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 365
    nop

    .line 366
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 367
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr p3, v1

    .line 366
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 369
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 372
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 373
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 375
    :cond_42
    goto :goto_5c

    .line 376
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 377
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 380
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeBytes(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 108
    return-void
.end method

.method public blacklist writeBytesList(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 407
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_15
    return-void
.end method

.method public blacklist writeDouble(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 68
    return-void
.end method

.method public blacklist writeDoubleList(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 314
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 317
    nop

    .line 318
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 319
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr p3, v1

    .line 318
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 321
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 324
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 325
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 327
    :cond_42
    goto :goto_5c

    .line 328
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 329
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 332
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeEndGroup(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 156
    return-void
.end method

.method public blacklist writeEnum(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 73
    return-void
.end method

.method public blacklist writeEnumList(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 338
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 341
    nop

    .line 342
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 343
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 342
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 345
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 348
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 349
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 351
    :cond_42
    goto :goto_5c

    .line 352
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 353
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 356
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 93
    return-void
.end method

.method public blacklist writeFixed32List(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 195
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 198
    nop

    .line 199
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 200
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 199
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 202
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 205
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 206
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 208
    :cond_42
    goto :goto_5c

    .line 209
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 210
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 213
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 88
    return-void
.end method

.method public blacklist writeFixed64List(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 266
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 269
    nop

    .line 270
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 271
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 270
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 273
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 276
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 277
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 279
    :cond_42
    goto :goto_5c

    .line 280
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 281
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 284
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeFloat(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 63
    return-void
.end method

.method public blacklist writeFloatList(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 290
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 293
    nop

    .line 294
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 295
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr p3, v1

    .line 294
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 297
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 300
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 301
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 303
    :cond_42
    goto :goto_5c

    .line 304
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 305
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 308
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroup(ILcom/android/framework/protobuf/MessageLite;)V

    .line 139
    return-void
.end method

.method public blacklist writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroup(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    .line 144
    return-void
.end method

.method public blacklist writeGroupList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 549
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;)V

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 551
    :cond_11
    return-void
.end method

.method public blacklist writeGroupList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 556
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeGroup(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    :cond_11
    return-void
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 83
    return-void
.end method

.method public blacklist writeInt32List(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 171
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 174
    nop

    .line 175
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 176
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 175
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 178
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 181
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 182
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 184
    :cond_42
    goto :goto_5c

    .line 185
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 186
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 189
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 53
    return-void
.end method

.method public blacklist writeInt64List(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 218
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 221
    nop

    .line 222
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 223
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 222
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 225
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 228
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 229
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 231
    :cond_42
    goto :goto_5c

    .line 232
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 233
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 236
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->isSerializationDeterministic()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 564
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeDeterministicMap(ILcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 565
    return-void

    .line 567
    :cond_c
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_14
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 568
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 569
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    .line 570
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/android/framework/protobuf/MapEntryLite;->computeSerializedSize(Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 569
    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 571
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/android/framework/protobuf/MapEntryLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 572
    goto :goto_14

    .line 573
    :cond_45
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessage(ILcom/android/framework/protobuf/MessageLite;)V

    .line 128
    return-void
.end method

.method public blacklist writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessage(ILcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/Schema;)V

    .line 133
    return-void
.end method

.method public blacklist writeMessageList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 534
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;)V

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 536
    :cond_11
    return-void
.end method

.method public blacklist writeMessageList(ILjava/util/List;Lcom/android/framework/protobuf/Schema;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/android/framework/protobuf/Schema;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 541
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeMessage(ILjava/lang/Object;Lcom/android/framework/protobuf/Schema;)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 543
    :cond_11
    return-void
.end method

.method public final blacklist writeMessageSetItem(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    instance-of v0, p2, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_13

    .line 163
    :cond_c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V

    .line 165
    :goto_13
    return-void
.end method

.method public blacklist writeSFixed32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 48
    return-void
.end method

.method public blacklist writeSFixed32List(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 439
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 442
    nop

    .line 443
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 444
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 443
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 446
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 449
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 450
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 452
    :cond_42
    goto :goto_5c

    .line 453
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 454
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed32(II)V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 457
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeSFixed64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed64(IJ)V

    .line 58
    return-void
.end method

.method public blacklist writeSFixed64List(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 463
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 466
    nop

    .line 467
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 468
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 467
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 470
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 473
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 474
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 476
    :cond_42
    goto :goto_5c

    .line 477
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 478
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed64(IJ)V

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 481
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeSInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 118
    return-void
.end method

.method public blacklist writeSInt32List(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 487
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 490
    nop

    .line 491
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 492
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 491
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 494
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 497
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 498
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 500
    :cond_42
    goto :goto_5c

    .line 501
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 502
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 505
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeSInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 123
    return-void
.end method

.method public blacklist writeSInt64List(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 511
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 514
    nop

    .line 515
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 516
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 515
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 518
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 521
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 522
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 524
    :cond_42
    goto :goto_5c

    .line 525
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 526
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 529
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeStartGroup(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 150
    return-void
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public blacklist writeStringList(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    instance-of v0, p2, Lcom/android/framework/protobuf/LazyStringList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 385
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    .line 386
    nop

    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 387
    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->writeLazyString(ILjava/lang/Object;)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 389
    :cond_19
    goto :goto_2f

    .line 390
    :cond_1a
    nop

    :goto_1b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 391
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 394
    :cond_2f
    :goto_2f
    return-void
.end method

.method public blacklist writeUInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 113
    return-void
.end method

.method public blacklist writeUInt32List(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 415
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 418
    nop

    .line 419
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 420
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr p3, v1

    .line 419
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 422
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 425
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 426
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 428
    :cond_42
    goto :goto_5c

    .line 429
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 430
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 433
    :cond_5c
    :goto_5c
    return-void
.end method

.method public blacklist writeUInt64(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 78
    return-void
.end method

.method public blacklist writeUInt64List(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 242
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 245
    nop

    .line 246
    move p1, v0

    move p3, p1

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    .line 247
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr p3, v1

    .line 246
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 249
    :cond_24
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-virtual {p1, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 252
    nop

    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_42

    .line 253
    iget-object p1, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 255
    :cond_42
    goto :goto_5c

    .line 256
    :cond_43
    nop

    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5c

    .line 257
    iget-object p3, p0, Lcom/android/framework/protobuf/CodedOutputStreamWriter;->output:Lcom/android/framework/protobuf/CodedOutputStream;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 260
    :cond_5c
    :goto_5c
    return-void
.end method
