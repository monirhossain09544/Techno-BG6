.class final Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;
.super Lcom/android/framework/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaFull"
.end annotation


# static fields
.field private static final blacklist UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/ListFieldSchema;-><init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>()V

    return-void
.end method

.method static blacklist getList(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 119
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static blacklist mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 75
    instance-of v1, v0, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v1, :cond_14

    .line 76
    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-direct {v0, p3}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(I)V

    goto :goto_29

    .line 77
    :cond_14
    instance-of v1, v0, Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_24

    instance-of v1, v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_24

    .line 78
    check-cast v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object p3

    move-object v0, p3

    goto :goto_29

    .line 80
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    :goto_29
    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_82

    .line 83
    :cond_2d
    sget-object v1, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    nop

    .line 87
    invoke-static {p0, p1, p2, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 88
    move-object v0, v1

    goto :goto_82

    :cond_4c
    instance-of v1, v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    if-eqz v1, :cond_65

    .line 89
    new-instance v1, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(I)V

    .line 90
    check-cast v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    nop

    .line 92
    invoke-static {p0, p1, p2, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 93
    move-object v0, v1

    goto :goto_82

    :cond_65
    instance-of v1, v0, Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_82

    instance-of v1, v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_82

    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 95
    invoke-interface {v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_82

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 97
    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 99
    :cond_82
    :goto_82
    return-object v0
.end method


# virtual methods
.method blacklist makeImmutableListAt(Ljava/lang/Object;J)V
    .registers 7

    .line 53
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    nop

    .line 55
    instance-of v1, v0, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v1, :cond_12

    .line 56
    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/LazyStringList;->getUnmodifiableView()Lcom/android/framework/protobuf/LazyStringList;

    move-result-object v0

    goto :goto_37

    .line 57
    :cond_12
    sget-object v1, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 59
    return-void

    .line 60
    :cond_1f
    instance-of v1, v0, Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_33

    instance-of v1, v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_33

    .line 61
    check-cast v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 62
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 64
    :cond_32
    return-void

    .line 66
    :cond_33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 68
    :goto_37
    invoke-static {p1, p2, p3, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 69
    return-void
.end method

.method blacklist mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 104
    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 105
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 108
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 109
    if-lez v1, :cond_1b

    if-lez v2, :cond_1b

    .line 110
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :cond_1b
    if-lez v1, :cond_1e

    move-object p2, v0

    .line 114
    :cond_1e
    invoke-static {p1, p3, p4, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 115
    return-void
.end method

.method blacklist mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 48
    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
