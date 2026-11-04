.class public Lcom/android/framework/protobuf/LazyStringArrayList;
.super Lcom/android/framework/protobuf/AbstractProtobufList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/android/framework/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;,
        Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/AbstractProtobufList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/framework/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final blacklist EMPTY:Lcom/android/framework/protobuf/LazyStringList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;


# instance fields
.field private final blacklist list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Z)V

    sput-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    .line 55
    sget-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    sput-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY:Lcom/android/framework/protobuf/LazyStringList;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(I)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/framework/protobuf/LazyStringList;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/framework/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;-><init>(Z)V

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$100(Ljava/lang/Object;)[B
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$200(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(I[B)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/framework/protobuf/LazyStringArrayList;ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$400(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 38
    invoke-static {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/LazyStringArrayList;ILcom/android/framework/protobuf/ByteString;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(ILcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method private blacklist add(ILcom/android/framework/protobuf/ByteString;)V
    .registers 4

    .line 137
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 138
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    iget p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 140
    return-void
.end method

.method private blacklist add(I[B)V
    .registers 4

    .line 143
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 144
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 145
    iget p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 146
    return-void
.end method

.method private static blacklist asByteArray(Ljava/lang/Object;)[B
    .registers 2

    .line 280
    instance-of v0, p0, [B

    if-eqz v0, :cond_7

    .line 281
    check-cast p0, [B

    return-object p0

    .line 282
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 283
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/framework/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 285
    :cond_12
    check-cast p0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;
    .registers 2

    .line 270
    instance-of v0, p0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_7

    .line 271
    check-cast p0, Lcom/android/framework/protobuf/ByteString;

    return-object p0

    .line 272
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 273
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 275
    :cond_12
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist asString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 260
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 261
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 262
    :cond_7
    instance-of v0, p0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_12

    .line 263
    check-cast p0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 265
    :cond_12
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/framework/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist emptyList()Lcom/android/framework/protobuf/LazyStringArrayList;
    .registers 1

    .line 45
    sget-object v0, Lcom/android/framework/protobuf/LazyStringArrayList;->EMPTY_LIST:Lcom/android/framework/protobuf/LazyStringArrayList;

    return-object v0
.end method

.method private blacklist setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;
    .registers 4

    .line 245
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 246
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private blacklist setAndReturn(I[B)Ljava/lang/Object;
    .registers 4

    .line 255
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 256
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
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

    .line 38
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist add(ILjava/lang/String;)V
    .registers 4

    .line 131
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 132
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 133
    iget p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 134
    return-void
.end method

.method public blacklist add(Lcom/android/framework/protobuf/ByteString;)V
    .registers 3

    .line 202
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 203
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 205
    return-void
.end method

.method public blacklist add([B)V
    .registers 3

    .line 209
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 210
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 212
    return-void
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

    .line 38
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 163
    instance-of v0, p2, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object p2

    .line 164
    :cond_d
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 165
    iget p2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 166
    return p1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public blacklist addAllByteArray(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 180
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 181
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 182
    return p1
.end method

.method public blacklist addAllByteString(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 172
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 173
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 174
    return p1
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

    .line 349
    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;-><init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V

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

    .line 392
    new-instance v0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteStringListView;-><init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V

    return-object v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 195
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 196
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 198
    return-void
.end method

.method public bridge synthetic whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/lang/String;
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 98
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 99
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 100
    :cond_d
    instance-of v1, v0, Lcom/android/framework/protobuf/ByteString;

    if-eqz v1, :cond_23

    .line 101
    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    .line 102
    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 104
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_22
    return-object v1

    .line 108
    :cond_23
    check-cast v0, [B

    .line 109
    invoke-static {v0}, Lcom/android/framework/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v0}, Lcom/android/framework/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 111
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_34
    return-object v1
.end method

.method public blacklist getByteArray(I)[B
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 232
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    .line 233
    if-eq v1, v0, :cond_11

    .line 234
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_11
    return-object v1
.end method

.method public blacklist getByteString(I)Lcom/android/framework/protobuf/ByteString;
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->asByteString(Ljava/lang/Object;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 223
    if-eq v1, v0, :cond_11

    .line 224
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_11
    return-object v1
.end method

.method public blacklist getRaw(I)Ljava/lang/Object;
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 291
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnmodifiableView()Lcom/android/framework/protobuf/LazyStringList;
    .registers 2

    .line 397
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->isModifiable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 398
    new-instance v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/android/framework/protobuf/LazyStringList;)V

    return-object v0

    .line 400
    :cond_c
    return-object p0
.end method

.method public bridge synthetic whitelist test-api hashCode()I
    .registers 2

    .line 38
    invoke-super {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist isModifiable()Z
    .registers 2

    .line 38
    invoke-super {p0}, Lcom/android/framework/protobuf/AbstractProtobufList;->isModifiable()Z

    move-result v0

    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/LazyStringList;)V
    .registers 5

    .line 296
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 297
    invoke-interface {p1}, Lcom/android/framework/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    instance-of v1, v0, [B

    if-eqz v1, :cond_26

    .line 299
    check-cast v0, [B

    .line 302
    iget-object v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    goto :goto_2b

    .line 304
    :cond_26
    iget-object v1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :goto_2b
    goto :goto_b

    .line 307
    :cond_2c
    return-void
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

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/LazyStringArrayList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/LazyStringArrayList;
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    iget-object p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 92
    new-instance p1, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-direct {p1, v0}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 88
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
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

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)Ljava/lang/String;
    .registers 3

    .line 187
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 188
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 189
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->modCount:I

    .line 190
    invoke-static {p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/AbstractProtobufList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
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

    .line 38
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 124
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyStringArrayList;->ensureIsMutable()V

    .line 125
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(ILcom/android/framework/protobuf/ByteString;)V
    .registers 3

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(ILcom/android/framework/protobuf/ByteString;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public blacklist set(I[B)V
    .registers 3

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
