.class public Lcom/android/framework/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Lcom/android/framework/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/framework/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist list:Lcom/android/framework/protobuf/LazyStringList;


# direct methods
.method public constructor blacklist <init>(Lcom/android/framework/protobuf/LazyStringList;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    .line 33
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/UnmodifiableLazyStringList;)Lcom/android/framework/protobuf/LazyStringList;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    return-object p0
.end method


# virtual methods
.method public blacklist add(Lcom/android/framework/protobuf/ByteString;)V
    .registers 2

    .line 57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist add([B)V
    .registers 2

    .line 77
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist addAllByteArray(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    .line 87
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist addAllByteString(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist asByteArrayList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asByteStringList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->asByteStringList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/lang/String;
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public blacklist getByteArray(I)[B
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist getByteString(I)Lcom/android/framework/protobuf/ByteString;
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->getByteString(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getRaw(I)Ljava/lang/Object;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getUnderlyingElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnmodifiableView()Lcom/android/framework/protobuf/LazyStringList;
    .registers 1

    .line 187
    return-object p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$2;-><init>(Lcom/android/framework/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;-><init>(Lcom/android/framework/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/LazyStringList;)V
    .registers 2

    .line 172
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist set(ILcom/android/framework/protobuf/ByteString;)V
    .registers 3

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist set(I[B)V
    .registers 3

    .line 82
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method
