.class Lcom/android/framework/protobuf/ByteString$2;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/framework/protobuf/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)I
    .registers 7

    .line 282
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v0

    .line 283
    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;

    move-result-object v1

    .line 285
    :goto_8
    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 286
    nop

    .line 287
    invoke-interface {v0}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v2

    # invokes: Lcom/android/framework/protobuf/ByteString;->toInt(B)I
    invoke-static {v2}, Lcom/android/framework/protobuf/ByteString;->access$200(B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 288
    invoke-interface {v1}, Lcom/android/framework/protobuf/ByteString$ByteIterator;->nextByte()B

    move-result v3

    # invokes: Lcom/android/framework/protobuf/ByteString;->toInt(B)I
    invoke-static {v3}, Lcom/android/framework/protobuf/ByteString;->access$200(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    .line 289
    if-eqz v2, :cond_34

    .line 290
    return v2

    .line 292
    :cond_34
    goto :goto_8

    .line 293
    :cond_35
    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 279
    check-cast p1, Lcom/android/framework/protobuf/ByteString;

    check-cast p2, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/ByteString$2;->compare(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ByteString;)I

    move-result p1

    return p1
.end method
