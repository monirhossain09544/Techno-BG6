.class final Lcom/android/framework/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldSet$Builder;,
        Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_FIELD_MAP_ARRAY_SIZE:I = 0x10

.field private static final blacklist DEFAULT_INSTANCE:Lcom/android/framework/protobuf/FieldSet;


# instance fields
.field private final blacklist fields:Lcom/android/framework/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist hasLazyField:Z

.field private blacklist isImmutable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 92
    new-instance v0, Lcom/android/framework/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/android/framework/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/FieldSet;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    .line 72
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldSet;->makeImmutable()V

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/FieldSet$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FieldSet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 2

    .line 66
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FieldSet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldSet;->makeImmutable()V

    .line 68
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;
    .registers 2

    .line 29
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$300(Lcom/android/framework/protobuf/FieldSet;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    return p0
.end method

.method static synthetic blacklist access$302(Lcom/android/framework/protobuf/FieldSet;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .registers 2

    .line 29
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->isValidType(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$600(Ljava/util/Map$Entry;)Z
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$700(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    .line 29
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 187
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    .line 188
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/framework/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 191
    :cond_17
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    .line 193
    goto :goto_1f

    .line 194
    :cond_2f
    return-object v0
.end method

.method private static blacklist cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 200
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 201
    instance-of v1, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v1, :cond_18

    .line 202
    check-cast p1, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 203
    :cond_18
    if-eqz p2, :cond_29

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_29

    .line 204
    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 206
    :cond_29
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_2c
    return-void
.end method

.method private static blacklist cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 489
    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    .line 490
    check-cast p0, [B

    .line 491
    array-length v0, p0

    new-array v0, v0, [B

    .line 492
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    return-object v0

    .line 495
    :cond_f
    return-object p0
.end method

.method static blacklist computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .registers 4

    .line 794
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p1

    .line 795
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_a

    .line 798
    mul-int/lit8 p1, p1, 0x2

    .line 800
    :cond_a
    invoke-static {p0, p2}, Lcom/android/framework/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static blacklist computeElementSizeNoTag(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .registers 3

    .line 812
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_fa

    .line 869
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 862
    :pswitch_13
    instance-of p0, p1, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_22

    .line 863
    check-cast p1, Lcom/android/framework/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$EnumLite;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 865
    :cond_22
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result p0

    return p0

    .line 852
    :pswitch_2d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 850
    :pswitch_38
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 848
    :pswitch_43
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 846
    :pswitch_4e
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 844
    :pswitch_59
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 832
    :pswitch_64
    instance-of p0, p1, Lcom/android/framework/protobuf/ByteString;

    if-eqz p0, :cond_6f

    .line 833
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 835
    :cond_6f
    check-cast p1, [B

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result p0

    return p0

    .line 838
    :pswitch_76
    instance-of p0, p1, Lcom/android/framework/protobuf/ByteString;

    if-eqz p0, :cond_81

    .line 839
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 841
    :cond_81
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 855
    :pswitch_88
    instance-of p0, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz p0, :cond_93

    .line 856
    check-cast p1, Lcom/android/framework/protobuf/LazyField;

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result p0

    return p0

    .line 858
    :cond_93
    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 830
    :pswitch_9a
    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result p0

    return p0

    .line 828
    :pswitch_a1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result p0

    return p0

    .line 826
    :pswitch_ac
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result p0

    return p0

    .line 824
    :pswitch_b7
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result p0

    return p0

    .line 822
    :pswitch_c2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result p0

    return p0

    .line 820
    :pswitch_cd
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 818
    :pswitch_d8
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result p0

    return p0

    .line 816
    :pswitch_e3
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result p0

    return p0

    .line 814
    :pswitch_ee
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ee
        :pswitch_e3
        :pswitch_d8
        :pswitch_cd
        :pswitch_c2
        :pswitch_b7
        :pswitch_ac
        :pswitch_a1
        :pswitch_9a
        :pswitch_88
        :pswitch_76
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_13
    .end packed-switch
.end method

.method public static blacklist computeFieldSize(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 874
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 875
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 876
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 877
    check-cast p1, Ljava/util/List;

    .line 878
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_3f

    .line 879
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 880
    return v2

    .line 882
    :cond_1e
    nop

    .line 883
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 884
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    .line 885
    goto :goto_23

    .line 886
    :cond_33
    nop

    .line 887
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 888
    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 886
    return p0

    .line 890
    :cond_3f
    nop

    .line 891
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 892
    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    .line 893
    goto :goto_44

    .line 894
    :cond_54
    return v2

    .line 897
    :cond_55
    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static blacklist emptySet()Lcom/android/framework/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/android/framework/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/FieldSet;

    return-object v0
.end method

.method private blacklist getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 766
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 767
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 768
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_46

    .line 769
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_46

    .line 770
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_46

    .line 771
    instance-of v0, v1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_34

    .line 772
    nop

    .line 773
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v1, Lcom/android/framework/protobuf/LazyField;

    .line 772
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/android/framework/protobuf/LazyFieldLite;)I

    move-result p1

    return p1

    .line 775
    :cond_34
    nop

    .line 776
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    .line 775
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/android/framework/protobuf/MessageLite;)I

    move-result p1

    return p1

    .line 779
    :cond_46
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->computeFieldSize(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static blacklist getWireFormatForFieldType(Lcom/android/framework/protobuf/WireFormat$FieldType;Z)I
    .registers 2

    .line 471
    if-eqz p1, :cond_4

    .line 472
    const/4 p0, 0x2

    return p0

    .line 474
    :cond_4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result p0

    return p0
.end method

.method private static blacklist isInitialized(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 437
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 438
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_3b

    .line 439
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 440
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/android/framework/protobuf/FieldSet;->isMessageFieldValueInitialized(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 442
    const/4 p0, 0x0

    return p0

    .line 444
    :cond_30
    goto :goto_1e

    :cond_31
    goto :goto_3b

    .line 446
    :cond_32
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->isMessageFieldValueInitialized(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 449
    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isMessageFieldValueInitialized(Ljava/lang/Object;)Z
    .registers 2

    .line 453
    instance-of v0, p0, Lcom/android/framework/protobuf/MessageLiteOrBuilder;

    if-eqz v0, :cond_b

    .line 456
    check-cast p0, Lcom/android/framework/protobuf/MessageLiteOrBuilder;

    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result p0

    return p0

    .line 457
    :cond_b
    instance-of p0, p0, Lcom/android/framework/protobuf/LazyField;

    if-eqz p0, :cond_11

    .line 458
    const/4 p0, 0x1

    return p0

    .line 460
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist isValidType(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .registers 4

    .line 389
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_48

    .line 410
    return v1

    .line 408
    :pswitch_15
    instance-of p0, p1, Lcom/android/framework/protobuf/MessageLite;

    if-nez p0, :cond_1f

    instance-of p0, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    :cond_1f
    :goto_1f
    return v0

    .line 406
    :pswitch_20
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_2a

    instance-of p0, p1, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    :cond_2a
    :goto_2a
    return v0

    .line 404
    :pswitch_2b
    instance-of p0, p1, Lcom/android/framework/protobuf/ByteString;

    if-nez p0, :cond_35

    instance-of p0, p1, [B

    if-eqz p0, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :cond_35
    :goto_35
    return v0

    .line 402
    :pswitch_36
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 400
    :pswitch_39
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    .line 398
    :pswitch_3c
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    .line 396
    :pswitch_3f
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    .line 394
    :pswitch_42
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    .line 392
    :pswitch_45
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_2b
        :pswitch_20
        :pswitch_15
    .end packed-switch
.end method

.method private blacklist mergeFromField(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 501
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 502
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 503
    instance-of v1, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v1, :cond_14

    .line 504
    check-cast p1, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    .line 507
    :cond_14
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 509
    if-nez v1, :cond_25

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    :cond_25
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 513
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    goto :goto_2b

    .line 515
    :cond_40
    iget-object p1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    goto :goto_7d

    :cond_46
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_74

    .line 517
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 518
    if-nez v1, :cond_5e

    .line 519
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 522
    :cond_5e
    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    .line 524
    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object p1

    .line 525
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    .line 526
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :goto_73
    goto :goto_7d

    .line 529
    :cond_74
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :goto_7d
    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/framework/protobuf/FieldSet$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/android/framework/protobuf/FieldSet$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/android/framework/protobuf/FieldSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;-><init>(Lcom/android/framework/protobuf/FieldSet$1;)V

    return-object v0
.end method

.method public static blacklist newFieldSet()Lcom/android/framework/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/android/framework/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/android/framework/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static blacklist readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    if-eqz p2, :cond_9

    .line 547
    sget-object p2, Lcom/android/framework/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/android/framework/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/WireFormat;->readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Lcom/android/framework/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 549
    :cond_9
    sget-object p2, Lcom/android/framework/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/android/framework/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/WireFormat;->readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Lcom/android/framework/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 376
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/framework/protobuf/FieldSet;->isValidType(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 385
    return-void

    .line 377
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 381
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 382
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object p1

    .line 383
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 378
    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_a

    .line 610
    check-cast p3, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroup(ILcom/android/framework/protobuf/MessageLite;)V

    goto :goto_15

    .line 612
    :cond_a
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/android/framework/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 613
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/FieldSet;->writeElementNoTag(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 615
    :goto_15
    return-void
.end method

.method static blacklist writeElementNoTag(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_de

    goto/16 :goto_dc

    .line 690
    :pswitch_d
    instance-of p1, p2, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-eqz p1, :cond_1c

    .line 691
    check-cast p2, Lcom/android/framework/protobuf/Internal$EnumLite;

    invoke-interface {p2}, Lcom/android/framework/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_dc

    .line 693
    :cond_1c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_dc

    .line 686
    :pswitch_27
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 687
    goto/16 :goto_dc

    .line 683
    :pswitch_32
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 684
    goto/16 :goto_dc

    .line 680
    :pswitch_3d
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 681
    goto/16 :goto_dc

    .line 677
    :pswitch_48
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 678
    goto/16 :goto_dc

    .line 674
    :pswitch_53
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 675
    goto/16 :goto_dc

    .line 667
    :pswitch_5e
    instance-of p1, p2, Lcom/android/framework/protobuf/ByteString;

    if-eqz p1, :cond_69

    .line 668
    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_dc

    .line 670
    :cond_69
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    .line 672
    goto/16 :goto_dc

    .line 660
    :pswitch_70
    instance-of p1, p2, Lcom/android/framework/protobuf/ByteString;

    if-eqz p1, :cond_7a

    .line 661
    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    goto :goto_dc

    .line 663
    :cond_7a
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 665
    goto :goto_dc

    .line 657
    :pswitch_80
    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 658
    goto :goto_dc

    .line 654
    :pswitch_86
    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 655
    goto :goto_dc

    .line 651
    :pswitch_8c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 652
    goto :goto_dc

    .line 648
    :pswitch_96
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 649
    goto :goto_dc

    .line 645
    :pswitch_a0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 646
    goto :goto_dc

    .line 642
    :pswitch_aa
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 643
    goto :goto_dc

    .line 639
    :pswitch_b4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 640
    goto :goto_dc

    .line 636
    :pswitch_be
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 637
    goto :goto_dc

    .line 633
    :pswitch_c8
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 634
    goto :goto_dc

    .line 630
    :pswitch_d2
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 631
    nop

    .line 697
    :goto_dc
    return-void

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_c8
        :pswitch_be
        :pswitch_b4
        :pswitch_aa
        :pswitch_a0
        :pswitch_96
        :pswitch_8c
        :pswitch_86
        :pswitch_80
        :pswitch_70
        :pswitch_5e
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_32
        :pswitch_27
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 704
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 705
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 706
    check-cast p1, Ljava/util/List;

    .line 707
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 708
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 710
    return-void

    .line 712
    :cond_1d
    const/4 p0, 0x2

    invoke-virtual {p2, v1, p0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 714
    nop

    .line 715
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 716
    invoke-static {v0, v2}, Lcom/android/framework/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 717
    goto :goto_27

    .line 718
    :cond_37
    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 720
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 721
    invoke-static {p2, v0, p1}, Lcom/android/framework/protobuf/FieldSet;->writeElementNoTag(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 722
    goto :goto_3e

    .line 723
    :cond_4c
    goto :goto_5f

    .line 724
    :cond_4d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_51
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 725
    invoke-static {p2, v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 726
    goto :goto_51

    .line 728
    :cond_5f
    :goto_5f
    goto :goto_71

    .line 729
    :cond_60
    instance-of p0, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz p0, :cond_6e

    .line 730
    check-cast p1, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_71

    .line 732
    :cond_6e
    invoke-static {p2, v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 735
    :goto_71
    return-void
.end method

.method private blacklist writeMessageSetTo(Ljava/util/Map$Entry;Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/framework/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 577
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_46

    .line 578
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_46

    .line 579
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_46

    .line 580
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 581
    instance-of v1, v0, Lcom/android/framework/protobuf/LazyField;

    if-eqz v1, :cond_36

    .line 582
    check-cast v0, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/LazyField;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 583
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeRawMessageSetExtension(ILcom/android/framework/protobuf/ByteString;)V

    .line 584
    goto :goto_45

    .line 585
    :cond_36
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result p1

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p2, p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V

    .line 587
    :goto_45
    goto :goto_4d

    .line 588
    :cond_46
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/FieldSet;->writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 590
    :goto_4d
    return-void
.end method


# virtual methods
.method public blacklist addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 349
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 358
    if-nez v0, :cond_1a

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 362
    :cond_1a
    check-cast v0, Ljava/util/List;

    .line 365
    :goto_1c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-void

    .line 350
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist clear()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->clear()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    .line 171
    return-void
.end method

.method public blacklist clearField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object p1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 288
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    .line 290
    :cond_10
    return-void
.end method

.method public blacklist clone()Lcom/android/framework/protobuf/FieldSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 153
    invoke-static {}, Lcom/android/framework/protobuf/FieldSet;->newFieldSet()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 155
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 158
    :cond_23
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 160
    goto :goto_2d

    .line 161
    :cond_47
    iget-boolean v1, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    .line 162
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldSet;->clone()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method blacklist descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 227
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_14

    .line 228
    new-instance v0, Lcom/android/framework/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 230
    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 126
    if-ne p0, p1, :cond_4

    .line 127
    const/4 p1, 0x1

    return p1

    .line 130
    :cond_4
    instance-of v0, p1, Lcom/android/framework/protobuf/FieldSet;

    if-nez v0, :cond_a

    .line 131
    const/4 p1, 0x0

    return p1

    .line 134
    :cond_a
    check-cast p1, Lcom/android/framework/protobuf/FieldSet;

    .line 135
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    iget-object p1, p1, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getAllFields()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 175
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_17

    .line 176
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 178
    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->makeImmutable()V

    .line 180
    :cond_16
    return-object v0

    .line 182
    :cond_17
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    goto :goto_28

    :cond_22
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_28
    return-object v0
.end method

.method public blacklist getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 249
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_11

    .line 250
    check-cast p1, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    .line 252
    :cond_11
    return-object p1
.end method

.method public blacklist getMessageSetSerializedSize()I
    .registers 4

    .line 755
    nop

    .line 756
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 757
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 759
    :cond_19
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 760
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    .line 761
    goto :goto_23

    .line 762
    :cond_35
    return v1
.end method

.method public blacklist getRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 309
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    .line 316
    if-eqz p1, :cond_13

    .line 319
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 317
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 310
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getRepeatedFieldCount(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 294
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    .line 300
    if-nez p1, :cond_e

    .line 301
    const/4 p1, 0x0

    return p1

    .line 303
    :cond_e
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 295
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist getSerializedSize()I
    .registers 5

    .line 742
    nop

    .line 743
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 744
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 745
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/FieldSet;->computeFieldSize(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 747
    :cond_23
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 748
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/framework/protobuf/FieldSet;->computeFieldSize(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 749
    goto :goto_2d

    .line 750
    :cond_49
    return v1
.end method

.method public blacklist hasField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 235
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 239
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1

    .line 236
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method blacklist isEmpty()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist isImmutable()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public blacklist isInitialized()Z
    .registers 4

    .line 422
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 423
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/android/framework/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 424
    return v0

    .line 422
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    :cond_1a
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 428
    invoke-static {v2}, Lcom/android/framework/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 429
    return v0

    .line 431
    :cond_37
    goto :goto_24

    .line 432
    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_14

    .line 216
    new-instance v0, Lcom/android/framework/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 218
    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeImmutable()V
    .registers 4

    .line 101
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_5

    .line 102
    return-void

    .line 104
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 105
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz v2, :cond_25

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 104
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 110
    :cond_28
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->makeImmutable()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->isImmutable:Z

    .line 112
    return-void
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/FieldSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 480
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 481
    iget-object v1, p1, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    :cond_15
    iget-object p1, p1, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 484
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 485
    goto :goto_1f

    .line 486
    :cond_2f
    return-void
.end method

.method public blacklist setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 261
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_29

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 271
    invoke-direct {p0, p1, v1}, Lcom/android/framework/protobuf/FieldSet;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 272
    goto :goto_18

    .line 273
    :cond_26
    nop

    .line 274
    move-object p2, v0

    goto :goto_34

    .line 262
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_31
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 278
    :goto_34
    instance-of v0, p2, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_3b

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    .line 281
    :cond_3b
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-void
.end method

.method public blacklist setRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 329
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 334
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    if-eqz v0, :cond_15

    .line 339
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/FieldSet;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 340
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 341
    return-void

    .line 336
    :cond_15
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 330
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist writeMessageSetTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 567
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 569
    :cond_15
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 570
    invoke-direct {p0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 571
    goto :goto_1f

    .line 572
    :cond_2f
    return-void
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 556
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 557
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 559
    :cond_1f
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 560
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 561
    goto :goto_29

    .line 562
    :cond_43
    return-void
.end method
