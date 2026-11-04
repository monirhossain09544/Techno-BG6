.class Lcom/android/framework/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "MapFieldSchemaLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/MapFieldSchema;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 73
    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    .line 74
    check-cast p2, Lcom/android/framework/protobuf/MapEntryLite;

    .line 76
    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 77
    return v1

    .line 79
    :cond_c
    nop

    .line 80
    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p0, v2, v0}, Lcom/android/framework/protobuf/MapEntryLite;->computeMessageSize(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 82
    goto :goto_15

    .line 83
    :cond_2f
    return v1
.end method

.method private static blacklist mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapFieldLite;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 54
    check-cast p0, Lcom/android/framework/protobuf/MapFieldLite;

    .line 55
    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    .line 56
    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 57
    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 58
    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object p0

    .line 60
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/MapFieldLite;->mergeFrom(Lcom/android/framework/protobuf/MapFieldLite;)V

    .line 62
    :cond_17
    return-object p0
.end method


# virtual methods
.method public blacklist forMapData(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    return-object p1
.end method

.method public blacklist forMapMetadata(Ljava/lang/Object;)Lcom/android/framework/protobuf/MapEntryLite$Metadata;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/android/framework/protobuf/MapEntryLite;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapEntryLite;->getMetadata()Lcom/android/framework/protobuf/MapEntryLite$Metadata;

    move-result-object p1

    return-object p1
.end method

.method public blacklist forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 18
    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    return-object p1
.end method

.method public blacklist getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 67
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/MapFieldSchemaLite;->getSerializedSizeLite(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public blacklist isImmutable(Ljava/lang/Object;)Z
    .registers 2

    .line 33
    check-cast p1, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public blacklist mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/MapFieldSchemaLite;->mergeFromLite(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newMapField(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldLite;->emptyMapField()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;

    move-result-object p1

    return-object p1
.end method

.method public blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->makeImmutable()V

    .line 39
    return-object p1
.end method
