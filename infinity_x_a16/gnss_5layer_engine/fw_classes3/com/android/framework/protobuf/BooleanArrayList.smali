.class final Lcom/android/framework/protobuf/BooleanArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "BooleanArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$BooleanList;
.implements Ljava/util/RandomAccess;
.implements Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/android/framework/protobuf/Internal$BooleanList;",
        "Ljava/util/RandomAccess;",
        "Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;


# instance fields
.field private blacklist array:[Z

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 25
    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    invoke-direct {v0, v2, v1, v1}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZIZ)V

    sput-object v0, Lcom/android/framework/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZIZ)V

    .line 43
    return-void
.end method

.method private constructor blacklist <init>([ZIZ)V
    .registers 4

    .line 50
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>(Z)V

    .line 51
    iput-object p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 52
    iput p2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 53
    return-void
.end method

.method private blacklist addBoolean(IZ)V
    .registers 7

    .line 186
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 187
    if-ltz p1, :cond_4a

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-gt p1, v0, :cond_4a

    .line 191
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 193
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_39

    .line 196
    :cond_1d
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 197
    new-array v0, v0, [Z

    .line 200
    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iput-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 207
    :goto_39
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v0, p1

    .line 208
    iget p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 209
    iget p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    .line 210
    return-void

    .line 188
    :cond_4a
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/BooleanArrayList;
    .registers 1

    .line 28
    sget-object v0, Lcom/android/framework/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/BooleanArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .registers 3

    .line 265
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 268
    return-void

    .line 266
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4

    .line 271
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

    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public blacklist add(ILjava/lang/Boolean;)V
    .registers 3

    .line 165
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(IZ)V

    .line 166
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
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BooleanArrayList;->add(ILjava/lang/Boolean;)V

    return-void
.end method

.method public blacklist add(Ljava/lang/Boolean;)Z
    .registers 2

    .line 159
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 160
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
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->add(Ljava/lang/Boolean;)Z

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
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 216
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-nez v0, :cond_f

    .line 220
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 223
    :cond_f
    check-cast p1, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 224
    iget v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 225
    return v1

    .line 228
    :cond_17
    const v0, 0x7fffffff

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v0, v2

    .line 229
    iget v2, p1, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-lt v0, v2, :cond_47

    .line 234
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v2, p1, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/2addr v0, v2

    .line 235
    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v2, v2

    if-le v0, v2, :cond_33

    .line 236
    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 239
    :cond_33
    iget-object v2, p1, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget p1, p1, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    invoke-static {v2, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 241
    iget p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    .line 242
    return v0

    .line 231
    :cond_47
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public blacklist addBoolean(Z)V
    .registers 6

    .line 171
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 172
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    array-length v1, v1

    if-ne v0, v1, :cond_1e

    .line 174
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 175
    new-array v0, v0, [Z

    .line 177
    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iput-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 181
    :cond_1e
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    aput-boolean p1, v0, v1

    .line 182
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->indexOf(Ljava/lang/Object;)I

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
    .registers 7

    .line 69
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 70
    return v0

    .line 72
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-nez v1, :cond_d

    .line 73
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 75
    :cond_d
    check-cast p1, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 76
    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    iget v2, p1, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_17

    .line 77
    return v3

    .line 80
    :cond_17
    iget-object p1, p1, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    .line 81
    move v1, v3

    :goto_1a
    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_2a

    .line 82
    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v2, v2, v1

    aget-boolean v4, p1, v1

    if-eq v2, v4, :cond_27

    .line 83
    return v3

    .line 81
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 87
    :cond_2a
    return v0
.end method

.method public blacklist get(I)Ljava/lang/Boolean;
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBoolean(I)Z
    .registers 3

    .line 114
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 115
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 92
    nop

    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_15

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v2, v2, v1

    invoke-static {v2}, Lcom/android/framework/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 96
    :cond_15
    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 6

    .line 120
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 121
    return v1

    .line 123
    :cond_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 124
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->size()I

    move-result v0

    .line 125
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1d

    .line 126
    iget-object v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v3, v3, v2

    if-ne v3, p1, :cond_1a

    .line 127
    return v2

    .line 125
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 130
    :cond_1d
    return v1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;
    .registers 5

    .line 101
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    if-lt p1, v0, :cond_13

    .line 104
    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>([ZIZ)V

    return-object v0

    .line 102
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
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/Boolean;
    .registers 7

    .line 247
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 248
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 249
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    .line 250
    iget v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1e

    .line 251
    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v4, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    :cond_1e
    iget p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 254
    iget p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    .line 255
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->remove(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api removeRange(II)V
    .registers 6

    .line 57
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 58
    if-lt p2, p1, :cond_1c

    .line 62
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    iget v2, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    .line 64
    iget p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->modCount:I

    .line 65
    return-void

    .line 59
    :cond_1c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 3

    .line 145
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BooleanArrayList;->setBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/BooleanArrayList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setBoolean(IZ)Z
    .registers 5

    .line 150
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 152
    iget-object v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v0, v0, p1

    .line 153
    iget-object v1, p0, Lcom/android/framework/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v1, p1

    .line 154
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/android/framework/protobuf/BooleanArrayList;->size:I

    return v0
.end method
