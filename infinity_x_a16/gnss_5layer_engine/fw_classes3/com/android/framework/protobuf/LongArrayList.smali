.class final Lcom/android/framework/protobuf/LongArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "LongArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$LongList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$LongList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/LongArrayList;


# instance fields
.field private blacklist array:[J

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 25
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-direct {v0, v2, v1, v1}, Lcom/android/framework/protobuf/LongArrayList;-><init>([JIZ)V

    sput-object v0, Lcom/android/framework/protobuf/LongArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LongArrayList;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;-><init>([JIZ)V

    .line 43
    return-void
.end method

.method private constructor blacklist <init>([JIZ)V
    .registers 4

    .line 49
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>(Z)V

    .line 50
    iput-object p1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 51
    iput p2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 52
    return-void
.end method

.method private blacklist addLong(IJ)V
    .registers 8

    .line 185
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 186
    if-ltz p1, :cond_4a

    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-gt p1, v0, :cond_4a

    .line 190
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 192
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_39

    .line 195
    :cond_1d
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 196
    new-array v0, v0, [J

    .line 199
    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iput-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 206
    :goto_39
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aput-wide p2, v0, p1

    .line 207
    iget p1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 208
    iget p1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 209
    return-void

    .line 187
    :cond_4a
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/LongArrayList;
    .registers 1

    .line 28
    sget-object v0, Lcom/android/framework/protobuf/LongArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LongArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .registers 3

    .line 264
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 267
    return-void

    .line 265
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Long;)V
    .registers 5

    .line 164
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(IJ)V

    .line 165
    return-void
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
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

    .line 22
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LongArrayList;->add(ILjava/lang/Long;)V

    return-void
.end method

.method public blacklist add(Ljava/lang/Long;)Z
    .registers 4

    .line 158
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 159
    const/4 p1, 0x1

    return p1
.end method

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

    .line 22
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->add(Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 215
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-nez v0, :cond_f

    .line 219
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 222
    :cond_f
    check-cast p1, Lcom/android/framework/protobuf/LongArrayList;

    .line 223
    iget v0, p1, Lcom/android/framework/protobuf/LongArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 224
    return v1

    .line 227
    :cond_17
    const v0, 0x7fffffff

    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v0, v2

    .line 228
    iget v2, p1, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-lt v0, v2, :cond_47

    .line 233
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    iget v2, p1, Lcom/android/framework/protobuf/LongArrayList;->size:I

    add-int/2addr v0, v2

    .line 234
    iget-object v2, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    array-length v2, v2

    if-le v0, v2, :cond_33

    .line 235
    iget-object v2, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 238
    :cond_33
    iget-object v2, p1, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget-object v3, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget v4, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    iget p1, p1, Lcom/android/framework/protobuf/LongArrayList;->size:I

    invoke-static {v2, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iput v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 240
    iget p1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 241
    return v0

    .line 230
    :cond_47
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public blacklist addLong(J)V
    .registers 7

    .line 170
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 171
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    array-length v1, v1

    if-ne v0, v1, :cond_1e

    .line 173
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 174
    new-array v0, v0, [J

    .line 176
    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iput-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 180
    :cond_1e
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    aput-wide p1, v0, v1

    .line 181
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10

    .line 68
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 69
    return v0

    .line 71
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-nez v1, :cond_d

    .line 72
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 74
    :cond_d
    check-cast p1, Lcom/android/framework/protobuf/LongArrayList;

    .line 75
    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    iget v2, p1, Lcom/android/framework/protobuf/LongArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    .line 76
    return v3

    .line 79
    :cond_17
    iget-object p1, p1, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    .line 80
    move v1, v3

    :goto_1a
    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_2c

    .line 81
    iget-object v2, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_29

    .line 82
    return v3

    .line 80
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 86
    :cond_2c
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Long;
    .registers 4

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getLong(I)J
    .registers 4

    .line 113
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 114
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 91
    nop

    .line 92
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_15

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 95
    :cond_15
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 8

    .line 119
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 120
    return v1

    .line 122
    :cond_6
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 123
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->size()I

    move-result p1

    .line 124
    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_1f

    .line 125
    iget-object v4, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v4, v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_1c

    .line 126
    return v0

    .line 124
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 129
    :cond_1f
    return v1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;
    .registers 5

    .line 100
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    if-lt p1, v0, :cond_13

    .line 103
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;-><init>([JIZ)V

    return-object v0

    .line 101
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Long;
    .registers 8

    .line 246
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 248
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v0, v0, p1

    .line 249
    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_1e

    .line 250
    iget-object v2, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget v5, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    :cond_1e
    iget p1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 253
    iget p1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 254
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->remove(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 6

    .line 56
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 57
    if-lt p2, p1, :cond_1c

    .line 61
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget-object v1, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    iget v2, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    .line 63
    iget p1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LongArrayList;->modCount:I

    .line 64
    return-void

    .line 58
    :cond_1c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist set(ILjava/lang/Long;)Ljava/lang/Long;
    .registers 5

    .line 144
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/framework/protobuf/LongArrayList;->setLong(IJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
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

    .line 22
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LongArrayList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLong(IJ)J
    .registers 7

    .line 149
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LongArrayList;->ensureIsMutable()V

    .line 150
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 151
    iget-object v0, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aget-wide v0, v0, p1

    .line 152
    iget-object v2, p0, Lcom/android/framework/protobuf/LongArrayList;->array:[J

    aput-wide p2, v2, p1

    .line 153
    return-wide v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 139
    iget v0, p0, Lcom/android/framework/protobuf/LongArrayList;->size:I

    return v0
.end method
