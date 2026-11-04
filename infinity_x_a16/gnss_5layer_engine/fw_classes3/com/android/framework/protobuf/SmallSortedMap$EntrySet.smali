.class Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/SmallSortedMap;


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/SmallSortedMap$1;)V
    .registers 3

    .line 441
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 441
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public blacklist add(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 470
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const/4 p1, 0x1

    return p1

    .line 473
    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->clear()V

    .line 495
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 4

    .line 461
    check-cast p1, Ljava/util/Map$Entry;

    .line 462
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 463
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 464
    if-eq v0, p1, :cond_1d

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 445
    new-instance v0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;

    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3

    .line 484
    check-cast p1, Ljava/util/Map$Entry;

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 486
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const/4 p1, 0x1

    return p1

    .line 489
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->size()I

    move-result v0

    return v0
.end method
