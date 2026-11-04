.class final Lcom/android/framework/protobuf/ProtobufArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "ProtobufArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/framework/protobuf/ProtobufArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>([Ljava/lang/Object;IZ)V

    sput-object v0, Lcom/android/framework/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 4

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>([Ljava/lang/Object;IZ)V

    .line 31
    return-void
.end method

.method private constructor blacklist <init>([Ljava/lang/Object;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;IZ)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p3}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>(Z)V

    .line 35
    iput-object p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    .line 36
    iput p2, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    .line 37
    return-void
.end method

.method private static blacklist createArray(I)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)[TE;"
        }
    .end annotation

    .line 137
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/ProtobufArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/android/framework/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/ProtobufArrayList;

    return-object v0
.end method

.method private blacklist ensureIndexInRange(I)V
    .registers 3

    .line 141
    if-ltz p1, :cond_7

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    if-ge p1, v0, :cond_7

    .line 144
    return-void

    .line 142
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4

    .line 147
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

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 72
    if-ltz p1, :cond_4c

    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    if-gt p1, v0, :cond_4c

    .line 76
    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 78
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3b

    .line 81
    :cond_1d
    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 82
    invoke-static {v0}, Lcom/android/framework/protobuf/ProtobufArrayList;->createArray(I)[Ljava/lang/Object;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iput-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    .line 92
    :goto_3b
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 93
    iget p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    .line 94
    iget p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    .line 95
    return-void

    .line 73
    :cond_4c
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 54
    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1a

    .line 56
    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 57
    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    .line 62
    :cond_1a
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    aput-object p1, v0, v1

    .line 63
    iget p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    .line 65
    return v2
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIndexInRange(I)V

    .line 100
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
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

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/ProtobufArrayList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/ProtobufArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/framework/protobuf/ProtobufArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 41
    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    if-lt p1, v0, :cond_13

    .line 45
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/android/framework/protobuf/ProtobufArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/framework/protobuf/ProtobufArrayList;-><init>([Ljava/lang/Object;IZ)V

    return-object v0

    .line 42
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIndexInRange(I)V

    .line 108
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 109
    iget v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1e

    .line 110
    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    iget v4, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :cond_1e
    iget p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    .line 114
    iget p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    .line 115
    return-object v0
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIsMutable()V

    .line 121
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/ProtobufArrayList;->ensureIndexInRange(I)V

    .line 123
    iget-object v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 124
    iget-object v1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->array:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 126
    iget p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->modCount:I

    .line 127
    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 132
    iget v0, p0, Lcom/android/framework/protobuf/ProtobufArrayList;->size:I

    return v0
.end method
