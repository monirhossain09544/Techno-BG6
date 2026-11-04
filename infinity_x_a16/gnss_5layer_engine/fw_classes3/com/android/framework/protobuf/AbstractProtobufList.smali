.class abstract Lcom/android/framework/protobuf/AbstractProtobufList;
.super Ljava/util/AbstractList;
.source "AbstractProtobufList.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$ProtobufList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lcom/android/framework/protobuf/Internal$ProtobufList<",
        "TE;>;"
    }
.end annotation


# static fields
.field protected static final blacklist DEFAULT_CAPACITY:I = 0xa


# instance fields
.field private blacklist isMutable:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>(Z)V

    .line 33
    return-void
.end method

.method constructor blacklist <init>(Z)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/android/framework/protobuf/AbstractProtobufList;->isMutable:Z

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 87
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 81
    invoke-super {p0, p1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 99
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 93
    invoke-super {p0, p1}, Ljava/util/AbstractList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api clear()V
    .registers 1

    .line 104
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 105
    invoke-super {p0}, Ljava/util/AbstractList;->clear()V

    .line 106
    return-void
.end method

.method protected blacklist ensureIsMutable()V
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/android/framework/protobuf/AbstractProtobufList;->isMutable:Z

    if-eqz v0, :cond_5

    .line 163
    return-void

    .line 161
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 42
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 43
    return v0

    .line 45
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 46
    return v2

    .line 51
    :cond_a
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_13

    .line 52
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 55
    :cond_13
    check-cast p1, Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->size()I

    move-result v1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_20

    .line 58
    return v2

    .line 60
    :cond_20
    move v3, v2

    :goto_21
    if-ge v3, v1, :cond_35

    .line 61
    invoke-virtual {p0, v3}, Lcom/android/framework/protobuf/AbstractProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 62
    return v2

    .line 60
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 65
    :cond_35
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 70
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->size()I

    move-result v0

    .line 71
    nop

    .line 72
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_17

    .line 73
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/AbstractProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 75
    :cond_17
    return v1
.end method

.method public blacklist isModifiable()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/android/framework/protobuf/AbstractProtobufList;->isMutable:Z

    return v0
.end method

.method public final blacklist makeImmutable()V
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/android/framework/protobuf/AbstractProtobufList;->isMutable:Z

    if-eqz v0, :cond_7

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/AbstractProtobufList;->isMutable:Z

    .line 118
    :cond_7
    return-void
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 123
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3

    .line 128
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 130
    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    .line 131
    const/4 p1, 0x0

    return p1

    .line 133
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->remove(I)Ljava/lang/Object;

    .line 134
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 140
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 146
    invoke-super {p0, p1}, Ljava/util/AbstractList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->ensureIsMutable()V

    .line 152
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
