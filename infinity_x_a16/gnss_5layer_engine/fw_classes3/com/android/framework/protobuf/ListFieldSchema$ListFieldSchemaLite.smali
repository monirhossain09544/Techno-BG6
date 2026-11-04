.class final Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;
.super Lcom/android/framework/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaLite"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/ListFieldSchema;-><init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>()V

    return-void
.end method

.method static blacklist getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 165
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object p0
.end method


# virtual methods
.method blacklist makeImmutableListAt(Ljava/lang/Object;J)V
    .registers 4

    .line 141
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 143
    return-void
.end method

.method blacklist mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9
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

    .line 147
    invoke-static {p1, p3, p4}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 148
    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object p2

    .line 150
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 151
    invoke-interface {p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    .line 152
    if-lez v1, :cond_22

    if-lez v2, :cond_22

    .line 153
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 154
    add-int/2addr v2, v1

    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 156
    :cond_1f
    invoke-interface {v0, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_22
    if-lez v1, :cond_25

    move-object p2, v0

    .line 160
    :cond_25
    invoke-static {p1, p3, p4, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 161
    return-void
.end method

.method blacklist mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 6
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

    .line 128
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 130
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 131
    nop

    .line 133
    if-nez v1, :cond_14

    const/16 v1, 0xa

    goto :goto_16

    :cond_14
    mul-int/lit8 v1, v1, 0x2

    .line 132
    :goto_16
    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 134
    invoke-static {p1, p2, p3, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 136
    :cond_1d
    return-object v0
.end method
