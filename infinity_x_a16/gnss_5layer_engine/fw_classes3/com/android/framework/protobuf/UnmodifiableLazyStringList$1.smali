.class Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;
.super Ljava/lang/Object;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist iter:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

.field final synthetic blacklist val$index:I


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/UnmodifiableLazyStringList;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->this$0:Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    iput p2, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget-object p1, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->this$0:Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    # getter for: Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->list:Lcom/android/framework/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;->access$000(Lcom/android/framework/protobuf/UnmodifiableLazyStringList;)Lcom/android/framework/protobuf/LazyStringList;

    move-result-object p1

    iget p2, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->val$index:I

    invoke-interface {p1, p2}, Lcom/android/framework/protobuf/LazyStringList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 92
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->add(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist add(Ljava/lang/String;)V
    .registers 2

    .line 137
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api previous()Ljava/lang/Object;
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist previous()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->iter:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 92
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnmodifiableLazyStringList$1;->set(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist set(Ljava/lang/String;)V
    .registers 2

    .line 132
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
