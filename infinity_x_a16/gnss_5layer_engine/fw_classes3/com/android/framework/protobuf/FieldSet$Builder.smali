.class final Lcom/android/framework/protobuf/FieldSet$Builder;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist fields:Lcom/android/framework/protobuf/SmallSortedMap;
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

.field private blacklist hasNestedBuilders:Z

.field private blacklist isMutable:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 913
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    .line 914
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/FieldSet$1;)V
    .registers 2

    .line 905
    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;-><init>()V

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

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    .line 918
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->isMutable:Z

    .line 919
    return-void
.end method

.method private blacklist buildImpl(Z)Lcom/android/framework/protobuf/FieldSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 943
    invoke-static {}, Lcom/android/framework/protobuf/FieldSet;->emptySet()Lcom/android/framework/protobuf/FieldSet;

    move-result-object p1

    return-object p1

    .line 945
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->isMutable:Z

    .line 946
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    .line 947
    iget-boolean v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-eqz v2, :cond_1f

    .line 949
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    # invokes: Lcom/android/framework/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;
    invoke-static {v1, v0}, Lcom/android/framework/protobuf/FieldSet;->access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    .line 950
    invoke-static {v1, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/android/framework/protobuf/SmallSortedMap;Z)V

    .line 952
    :cond_1f
    new-instance p1, Lcom/android/framework/protobuf/FieldSet;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/android/framework/protobuf/FieldSet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/FieldSet$1;)V

    .line 953
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    # setter for: Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/FieldSet;->access$302(Lcom/android/framework/protobuf/FieldSet;Z)Z

    .line 954
    return-object p1
.end method

.method private blacklist ensureIsMutable()V
    .registers 3

    .line 1071
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->isMutable:Z

    if-nez v0, :cond_f

    .line 1072
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    const/4 v1, 0x1

    # invokes: Lcom/android/framework/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    .line 1073
    iput-boolean v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->isMutable:Z

    .line 1075
    :cond_f
    return-void
.end method

.method public static blacklist fromFieldSet(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/FieldSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;)",
            "Lcom/android/framework/protobuf/FieldSet$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1021
    new-instance v0, Lcom/android/framework/protobuf/FieldSet$Builder;

    # getter for: Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/framework/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;
    invoke-static {v1, v2}, Lcom/android/framework/protobuf/FieldSet;->access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    .line 1022
    # getter for: Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->access$300(Lcom/android/framework/protobuf/FieldSet;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    .line 1023
    return-object v0
.end method

.method private blacklist mergeFromField(Ljava/util/Map$Entry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1275
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 1276
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 1277
    instance-of v1, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v1, :cond_14

    .line 1278
    check-cast p1, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    .line 1281
    :cond_14
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1282
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1283
    if-nez v1, :cond_2c

    .line 1284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v0, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_2c
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1288
    # invokes: Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/framework/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1289
    goto :goto_32

    .line 1290
    :cond_44
    goto :goto_88

    :cond_45
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_7f

    .line 1291
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    .line 1292
    if-nez v1, :cond_5d

    .line 1293
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    # invokes: Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    .line 1296
    :cond_5d
    instance-of v2, v1, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v2, :cond_69

    .line 1297
    check-cast v1, Lcom/android/framework/protobuf/MessageLite$Builder;

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    goto :goto_7e

    .line 1299
    :cond_69
    check-cast v1, Lcom/android/framework/protobuf/MessageLite;

    .line 1301
    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object p1

    .line 1302
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    .line 1303
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    :goto_7e
    goto :goto_88

    .line 1307
    :cond_7f
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    # invokes: Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->access$700(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    :goto_88
    return-void
.end method

.method private static blacklist replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 3

    .line 1009
    instance-of v0, p0, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-nez v0, :cond_5

    .line 1010
    return-object p0

    .line 1012
    :cond_5
    check-cast p0, Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 1013
    if-eqz p1, :cond_e

    .line 1014
    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p0

    return-object p0

    .line 1016
    :cond_e
    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist replaceBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(TT;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 974
    if-nez p1, :cond_3

    .line 975
    return-object p1

    .line 977
    :cond_3
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_5a

    .line 978
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result p0

    if-eqz p0, :cond_55

    .line 979
    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_38

    .line 985
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    .line 986
    const/4 v0, 0x0

    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 987
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 988
    invoke-static {v1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 989
    if-eq v2, v1, :cond_34

    .line 994
    if-ne p0, p1, :cond_31

    .line 995
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    .line 997
    :cond_31
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 986
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1000
    :cond_37
    return-object p0

    .line 980
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Repeated field should contains a List but actually contains type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 982
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1002
    :cond_55
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1005
    :cond_5a
    return-object p1
.end method

.method private static blacklist replaceBuilders(Lcom/android/framework/protobuf/SmallSortedMap;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 959
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 960
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Ljava/util/Map$Entry;Z)V

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 962
    :cond_11
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 963
    invoke-static {v0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Ljava/util/Map$Entry;Z)V

    .line 964
    goto :goto_19

    .line 965
    :cond_29
    return-void
.end method

.method private static blacklist replaceBuilders(Ljava/util/Map$Entry;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 969
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    return-void
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

    .line 1225
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    # invokes: Lcom/android/framework/protobuf/FieldSet;->isValidType(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    invoke-static {v0, p2}, Lcom/android/framework/protobuf/FieldSet;->access$500(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 1227
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_1b

    instance-of v0, p2, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_1b

    .line 1229
    return-void

    .line 1231
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1235
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1236
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object p1

    .line 1237
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1232
    const-string p2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_43
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

    .line 1195
    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1196
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1201
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_14

    instance-of v0, p2, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    .line 1203
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1205
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 1207
    if-nez v0, :cond_2b

    .line 1208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1209
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 1211
    :cond_2b
    check-cast v0, Ljava/util/List;

    .line 1214
    :goto_2d
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    return-void

    .line 1197
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist build()Lcom/android/framework/protobuf/FieldSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 927
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->buildImpl(Z)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist buildPartial()Lcom/android/framework/protobuf/FieldSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 932
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->buildImpl(Z)Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1112
    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1113
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object p1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1115
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    .line 1117
    :cond_13
    return-void
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

    .line 1030
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    if-eqz v0, :cond_1c

    .line 1031
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    # invokes: Lcom/android/framework/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    .line 1032
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1033
    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->makeImmutable()V

    goto :goto_1b

    .line 1035
    :cond_17
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/android/framework/protobuf/SmallSortedMap;Z)V

    .line 1037
    :goto_1b
    return-object v0

    .line 1039
    :cond_1c
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    goto :goto_2d

    :cond_27
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2d
    return-object v0
.end method

.method public blacklist getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1057
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 1058
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method blacklist getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1064
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_11

    .line 1065
    check-cast p1, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    return-object p1

    .line 1067
    :cond_11
    return-object p1
.end method

.method public blacklist getRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1140
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-eqz v0, :cond_7

    .line 1141
    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1143
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->getRepeatedFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    .line 1144
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->replaceBuilder(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method blacklist getRepeatedFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1152
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    .line 1159
    if-eqz p1, :cond_13

    .line 1162
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1160
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 1153
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

    .line 1123
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1128
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    .line 1129
    if-nez p1, :cond_e

    .line 1130
    const/4 p1, 0x0

    return p1

    .line 1132
    :cond_e
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 1124
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedFieldCount() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist hasField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1044
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1048
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1

    .line 1045
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist isInitialized()Z
    .registers 4

    .line 1247
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1248
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    # invokes: Lcom/android/framework/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/FieldSet;->access$600(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1249
    return v0

    .line 1247
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1252
    :cond_1a
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

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

    .line 1253
    # invokes: Lcom/android/framework/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z
    invoke-static {v2}, Lcom/android/framework/protobuf/FieldSet;->access$600(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1254
    return v0

    .line 1256
    :cond_37
    goto :goto_24

    .line 1257
    :cond_38
    const/4 v0, 0x1

    return v0
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

    .line 1264
    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1265
    const/4 v0, 0x0

    :goto_4
    # getter for: Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;
    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1266
    # getter for: Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;
    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 1265
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1268
    :cond_1c
    # getter for: Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;
    invoke-static {p1}, Lcom/android/framework/protobuf/FieldSet;->access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1269
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet$Builder;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 1270
    goto :goto_28

    .line 1271
    :cond_38
    return-void
.end method

.method public blacklist setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1083
    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1084
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_41

    .line 1085
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_39

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1093
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1094
    invoke-direct {p0, p1, v3}, Lcom/android/framework/protobuf/FieldSet$Builder;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1095
    iget-boolean v4, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v4, :cond_32

    instance-of v3, v3, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v3, :cond_30

    goto :goto_32

    :cond_30
    move v3, v1

    goto :goto_33

    :cond_32
    :goto_32
    move v3, v2

    :goto_33
    iput-boolean v3, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    .line 1096
    goto :goto_1a

    .line 1097
    :cond_36
    nop

    .line 1098
    move-object p2, v0

    goto :goto_44

    .line 1086
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1099
    :cond_41
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet$Builder;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1102
    :goto_44
    instance-of v0, p2, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_4a

    .line 1103
    iput-boolean v2, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasLazyField:Z

    .line 1105
    :cond_4a
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_52

    instance-of v0, p2, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_53

    :cond_52
    move v1, v2

    :cond_53
    iput-boolean v1, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    .line 1107
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
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

    .line 1172
    invoke-direct {p0}, Lcom/android/framework/protobuf/FieldSet$Builder;->ensureIsMutable()V

    .line 1173
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1178
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    if-nez v0, :cond_14

    instance-of v0, p3, Lcom/android/framework/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet$Builder;->hasNestedBuilders:Z

    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet$Builder;->getFieldAllowBuilders(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 1181
    if-eqz v0, :cond_26

    .line 1185
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/FieldSet$Builder;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 1186
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1187
    return-void

    .line 1182
    :cond_26
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 1174
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
