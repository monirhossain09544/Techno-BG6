.class Lcom/android/framework/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;,
        Lcom/android/framework/protobuf/SmallSortedMap$Entry;,
        Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;,
        Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;,
        Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntryIterator;,
        Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private blacklist entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field private blacklist isImmutable:Z

.field private volatile blacklist lazyDescendingEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TK;TV;>.DescendingEntrySet;"
        }
    .end annotation
.end field

.field private volatile blacklist lazyEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private final blacklist maxArraySize:I

.field private blacklist overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private blacklist overflowEntriesDescending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 124
    iput p1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 128
    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/framework/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;-><init>(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/framework/protobuf/SmallSortedMap;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method static synthetic blacklist access$600(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/List;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic blacklist access$700(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/Map;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic blacklist access$800(Lcom/android/framework/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$900(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/Map;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    return-object p0
.end method

.method private blacklist binarySearchInArray(Ljava/lang/Comparable;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 292
    nop

    .line 293
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 298
    if-ltz v0, :cond_24

    .line 299
    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 300
    if-lez v1, :cond_21

    .line 301
    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    return p1

    .line 302
    :cond_21
    if-nez v1, :cond_24

    .line 303
    return v0

    .line 307
    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-gt v1, v0, :cond_48

    .line 308
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    .line 309
    iget-object v3, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 310
    if-gez v3, :cond_41

    .line 311
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_46

    .line 312
    :cond_41
    if-lez v3, :cond_47

    .line 313
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    .line 317
    :goto_46
    goto :goto_25

    .line 315
    :cond_47
    return v2

    .line 318
    :cond_48
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method private blacklist checkMutable()V
    .registers 2

    .line 345
    iget-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_5

    .line 348
    return-void

    .line 346
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private blacklist ensureEntryArrayMutable()V
    .registers 3

    .line 365
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    .line 366
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 369
    :cond_1a
    return-void
.end method

.method private blacklist getOverflowEntriesMutable()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    .line 356
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_22

    .line 357
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 358
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 360
    :cond_22
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static blacklist newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TFieldDescriptorType;>;>(I)",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$1;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/SmallSortedMap$1;-><init>(I)V

    return-object v0
.end method

.method static blacklist newInstanceForTest(I)Lcom/android/framework/protobuf/SmallSortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/SmallSortedMap;-><init>(I)V

    return-object v0
.end method

.method private blacklist removeArrayEntryAt(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    .line 275
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 279
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v2, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 283
    :cond_36
    return-object p1
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 241
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    .line 242
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 243
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    :cond_10
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 246
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 248
    :cond_1d
    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 195
    check-cast p1, Ljava/lang/Comparable;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_13

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method blacklist descendingEntrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v0, :cond_c

    .line 338
    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;

    .line 340
    :cond_c
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyDescendingEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$DescendingEntrySet;

    return-object v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_c

    .line 331
    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;

    .line 333
    :cond_c
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 641
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 642
    return v0

    .line 645
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/SmallSortedMap;

    if-nez v1, :cond_d

    .line 646
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 649
    :cond_d
    check-cast p1, Lcom/android/framework/protobuf/SmallSortedMap;

    .line 650
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->size()I

    move-result v1

    .line 651
    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1b

    .line 652
    return v3

    .line 656
    :cond_1b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    .line 657
    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-eq v2, v4, :cond_32

    .line 658
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 661
    :cond_32
    move v4, v3

    :goto_33
    if-ge v4, v2, :cond_47

    .line 662
    invoke-virtual {p0, v4}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 663
    return v3

    .line 661
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 667
    :cond_47
    if-eq v2, v1, :cond_52

    .line 668
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 671
    :cond_52
    return v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 207
    check-cast p1, Ljava/lang/Comparable;

    .line 208
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 209
    if-ltz v0, :cond_15

    .line 210
    iget-object p1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 212
    :cond_15
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getArrayEntryAt(I)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public blacklist getNumArrayEntries()I
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getNumOverflowEntries()I
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getOverflowEntries()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 172
    invoke-static {}, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_13

    .line 173
    :cond_d
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 171
    :goto_13
    return-object v0
.end method

.method blacklist getOverflowEntriesDescending()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 178
    invoke-static {}, Lcom/android/framework/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_13

    .line 179
    :cond_d
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 177
    :goto_13
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 676
    nop

    .line 677
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v0

    .line 678
    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_19

    .line 679
    iget-object v3, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 682
    :cond_19
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumOverflowEntries()I

    move-result v0

    if-lez v0, :cond_26

    .line 683
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 685
    :cond_26
    return v2
.end method

.method public blacklist isImmutable()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public blacklist makeImmutable()V
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_33

    .line 137
    nop

    .line 138
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_18

    .line 140
    :cond_12
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 141
    nop

    .line 142
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 143
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_2e

    .line 144
    :cond_28
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_2e
    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable:Z

    .line 147
    :cond_33
    return-void
.end method

.method public blacklist put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    .line 218
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 219
    if-ltz v0, :cond_16

    .line 221
    iget-object p1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 223
    :cond_16
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    .line 224
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 225
    iget v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    if-lt v0, v1, :cond_29

    .line 227
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 230
    :cond_29
    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    if-ne v1, v2, :cond_4e

    .line 232
    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    iget v2, p0, Lcom/android/framework/protobuf/SmallSortedMap;->maxArraySize:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    .line 233
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_4e
    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v2, Lcom/android/framework/protobuf/SmallSortedMap$Entry;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap$Entry;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 236
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 60
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 257
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->checkMutable()V

    .line 259
    check-cast p1, Ljava/lang/Comparable;

    .line 260
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 261
    if-ltz v0, :cond_10

    .line 262
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 266
    :cond_10
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 267
    const/4 p1, 0x0

    return-object p1

    .line 269
    :cond_1a
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
