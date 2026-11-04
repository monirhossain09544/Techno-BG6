.class public abstract Lcom/android/framework/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/AbstractMessageLite$Builder;,
        Lcom/android/framework/protobuf/AbstractMessageLite$InternalOneOfEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/framework/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/framework/protobuf/AbstractMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/MessageLite;"
    }
.end annotation


# instance fields
.field protected blacklist memoizedHashCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return-void
.end method

.method protected static blacklist addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 120
    return-void
.end method

.method protected static blacklist addAll(Ljava/lang/Iterable;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/List<",
            "-TT;>;)V"
        }
    .end annotation

    .line 123
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 124
    return-void
.end method

.method protected static blacklist checkByteStringIsUtf8(Lcom/android/framework/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/android/framework/protobuf/ByteString;->isValidUtf8()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 114
    return-void

    .line 112
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " threw an IOException (should never happen)."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    return-object p1
.end method


# virtual methods
.method blacklist getMemoizedSerializedSize()I
    .registers 2

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method blacklist getSerializedSize(Lcom/android/framework/protobuf/Schema;)I
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    .line 89
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 90
    invoke-interface {p1, p0}, Lcom/android/framework/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->setMemoizedSerializedSize(I)V

    .line 93
    :cond_e
    return v0
.end method

.method blacklist newUninitializedMessageException()Lcom/android/framework/protobuf/UninitializedMessageException;
    .registers 2

    .line 98
    new-instance v0, Lcom/android/framework/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/UninitializedMessageException;-><init>(Lcom/android/framework/protobuf/MessageLite;)V

    return-object v0
.end method

.method blacklist setMemoizedSerializedSize(I)V
    .registers 2

    .line 83
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public blacklist toByteArray()[B
    .registers 4

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 47
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance([B)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/AbstractMessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 49
    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 50
    return-object v0

    .line 51
    :catch_11
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist toByteString()Lcom/android/framework/protobuf/ByteString;
    .registers 4

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->newCodedBuilder(I)Lcom/android/framework/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/AbstractMessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 37
    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString$CodedBuilder;->build()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v0

    .line 38
    :catch_14
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist writeDelimitedTo(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    .line 67
    nop

    .line 69
    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 68
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v1

    .line 70
    invoke-static {p1, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 73
    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->flush()V

    .line 74
    return-void
.end method

.method public blacklist writeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/android/framework/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computePreferredBufferSize(I)I

    move-result v0

    .line 59
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;I)Lcom/android/framework/protobuf/CodedOutputStream;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/AbstractMessageLite;->writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 61
    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->flush()V

    .line 62
    return-void
.end method
