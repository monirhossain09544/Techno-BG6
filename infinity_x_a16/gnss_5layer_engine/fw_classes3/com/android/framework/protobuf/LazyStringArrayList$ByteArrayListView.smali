.class Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final blacklist list:Lcom/android/framework/protobuf/LazyStringArrayList;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/LazyStringArrayList;)V
    .registers 2

    .line 312
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    .line 314
    return-void
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

    .line 309
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->add(I[B)V

    return-void
.end method

.method public blacklist add(I[B)V
    .registers 4

    .line 335
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    # invokes: Lcom/android/framework/protobuf/LazyStringArrayList;->add(I[B)V
    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$200(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)V

    .line 336
    iget p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 337
    return-void
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

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->get(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)[B
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->getByteArray(I)[B

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

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->remove(I)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(I)[B
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object p1

    .line 342
    iget v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 343
    # invokes: Lcom/android/framework/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B
    invoke-static {p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

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

    .line 309
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->set(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist set(I[B)[B
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    # invokes: Lcom/android/framework/protobuf/LazyStringArrayList;->setAndReturn(I[B)Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$000(Lcom/android/framework/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;

    move-result-object p1

    .line 329
    iget p2, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->modCount:I

    .line 330
    # invokes: Lcom/android/framework/protobuf/LazyStringArrayList;->asByteArray(Ljava/lang/Object;)[B
    invoke-static {p1}, Lcom/android/framework/protobuf/LazyStringArrayList;->access$100(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyStringArrayList$ByteArrayListView;->list:Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/LazyStringArrayList;->size()I

    move-result v0

    return v0
.end method
