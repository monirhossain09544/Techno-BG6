.class Lcom/android/framework/protobuf/ByteString$1;
.super Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/ByteString;->iterator()Lcom/android/framework/protobuf/ByteString$ByteIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist limit:I

.field private blacklist position:I

.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/ByteString;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$AbstractByteIterator;-><init>()V

    .line 155
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    .line 156
    iget-object p1, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result p1

    iput p1, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 160
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    iget v1, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist nextByte()B
    .registers 3

    .line 165
    iget v0, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    .line 166
    iget v1, p0, Lcom/android/framework/protobuf/ByteString$1;->limit:I

    if-ge v0, v1, :cond_11

    .line 169
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/ByteString$1;->position:I

    .line 170
    iget-object v1, p0, Lcom/android/framework/protobuf/ByteString$1;->this$0:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/ByteString;->internalByteAt(I)B

    move-result v0

    return v0

    .line 167
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
