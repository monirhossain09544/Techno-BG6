.class public final Lcom/android/framework/protobuf/MapFieldLite;
.super Ljava/util/LinkedHashMap;
.source "MapFieldLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_MAP_FIELD:Lcom/android/framework/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist isMutable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/MapFieldLite;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/android/framework/protobuf/MapFieldLite;

    .line 40
    sget-object v0, Lcom/android/framework/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/android/framework/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/MapFieldLite;->makeImmutable()V

    .line 41
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/MapFieldLite;->isMutable:Z

    .line 30
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/framework/protobuf/MapFieldLite;->isMutable:Z

    .line 35
    return-void
.end method

.method static blacklist calculateHashCodeForMap(Ljava/util/Map;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 152
    nop

    .line 153
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    nop

    .line 155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/framework/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/framework/protobuf/MapFieldLite;->calculateHashCodeForObject(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 156
    goto :goto_a

    .line 157
    :cond_2a
    return v0
.end method

.method private static blacklist calculateHashCodeForObject(Ljava/lang/Object;)I
    .registers 2

    .line 137
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 138
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/framework/protobuf/Internal;->hashCode([B)I

    move-result p0

    return p0

    .line 141
    :cond_b
    instance-of v0, p0, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-nez v0, :cond_14

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 142
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private static blacklist checkForNullKeysAndValues(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    .line 94
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    goto :goto_8

    .line 98
    :cond_1d
    return-void
.end method

.method private static blacklist copy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 166
    instance-of v0, p0, [B

    if-eqz v0, :cond_c

    .line 167
    check-cast p0, [B

    .line 168
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    .line 170
    :cond_c
    return-object p0
.end method

.method static blacklist copy(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 181
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/framework/protobuf/MapFieldLite;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    goto :goto_17

    .line 184
    :cond_33
    return-object v0
.end method

.method public static blacklist emptyMapField()Lcom/android/framework/protobuf/MapFieldLite;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/android/framework/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Lcom/android/framework/protobuf/MapFieldLite;

    return-object v0
.end method

.method private blacklist ensureMutable()V
    .registers 2

    .line 206
    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    return-void

    .line 207
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static blacklist equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 101
    instance-of v0, p0, [B

    if-eqz v0, :cond_11

    instance-of v0, p1, [B

    if-eqz v0, :cond_11

    .line 102
    check-cast p0, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 104
    :cond_11
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static blacklist equals(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 113
    return v0

    .line 115
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    .line 116
    return v3

    .line 118
    :cond_10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 120
    return v3

    .line 122
    :cond_2f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/MapFieldLite;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 123
    return v3

    .line 125
    :cond_42
    goto :goto_18

    .line 126
    :cond_43
    return v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/android/framework/protobuf/MapFieldLite;->ensureMutable()V

    .line 64
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 65
    return-void
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 133
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/MapFieldLite;->equals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 162
    invoke-static {p0}, Lcom/android/framework/protobuf/MapFieldLite;->calculateHashCodeForMap(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public blacklist isMutable()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lcom/android/framework/protobuf/MapFieldLite;->isMutable:Z

    return v0
.end method

.method public blacklist makeImmutable()V
    .registers 2

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/MapFieldLite;->isMutable:Z

    .line 198
    return-void
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/MapFieldLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/android/framework/protobuf/MapFieldLite;->ensureMutable()V

    .line 51
    invoke-virtual {p1}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/MapFieldLite;->putAll(Ljava/util/Map;)V

    .line 54
    :cond_c
    return-void
.end method

.method public blacklist mutableCopy()Lcom/android/framework/protobuf/MapFieldLite;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/MapFieldLite<",
            "TK;TV;>;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/android/framework/protobuf/MapFieldLite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/MapFieldLite;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Lcom/android/framework/protobuf/MapFieldLite;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/MapFieldLite;-><init>(Ljava/util/Map;)V

    :goto_11
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/android/framework/protobuf/MapFieldLite;->ensureMutable()V

    .line 70
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p2}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist put(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/android/framework/protobuf/MapFieldLite;->ensureMutable()V

    .line 83
    invoke-static {p1}, Lcom/android/framework/protobuf/MapFieldLite;->checkForNullKeysAndValues(Ljava/util/Map;)V

    .line 84
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 85
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/android/framework/protobuf/MapFieldLite;->ensureMutable()V

    .line 90
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
