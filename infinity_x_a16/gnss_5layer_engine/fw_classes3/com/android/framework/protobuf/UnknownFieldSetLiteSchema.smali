.class Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;
.super Lcom/android/framework/protobuf/UnknownFieldSchema;
.source "UnknownFieldSetLiteSchema.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/UnknownFieldSchema<",
        "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
        "Lcom/android/framework/protobuf/UnknownFieldSetLite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/android/framework/protobuf/UnknownFieldSchema;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist addFixed32(Lcom/android/framework/protobuf/UnknownFieldSetLite;II)V
    .registers 5

    .line 36
    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 37
    return-void
.end method

.method bridge synthetic blacklist addFixed32(Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addFixed32(Lcom/android/framework/protobuf/UnknownFieldSetLite;II)V

    return-void
.end method

.method blacklist addFixed64(Lcom/android/framework/protobuf/UnknownFieldSetLite;IJ)V
    .registers 6

    .line 41
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 42
    return-void
.end method

.method bridge synthetic blacklist addFixed64(Ljava/lang/Object;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addFixed64(Lcom/android/framework/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method blacklist addGroup(Lcom/android/framework/protobuf/UnknownFieldSetLite;ILcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .registers 5

    .line 51
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method bridge synthetic blacklist addGroup(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    check-cast p3, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addGroup(Lcom/android/framework/protobuf/UnknownFieldSetLite;ILcom/android/framework/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method blacklist addLengthDelimited(Lcom/android/framework/protobuf/UnknownFieldSetLite;ILcom/android/framework/protobuf/ByteString;)V
    .registers 5

    .line 46
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 47
    return-void
.end method

.method bridge synthetic blacklist addLengthDelimited(Ljava/lang/Object;ILcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addLengthDelimited(Lcom/android/framework/protobuf/UnknownFieldSetLite;ILcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method blacklist addVarint(Lcom/android/framework/protobuf/UnknownFieldSetLite;IJ)V
    .registers 6

    .line 31
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->storeField(ILjava/lang/Object;)V

    .line 32
    return-void
.end method

.method bridge synthetic blacklist addVarint(Ljava/lang/Object;IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->addVarint(Lcom/android/framework/protobuf/UnknownFieldSetLite;IJ)V

    return-void
.end method

.method blacklist getBuilderFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 4

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 76
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V

    .line 79
    :cond_11
    return-object v0
.end method

.method bridge synthetic blacklist getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getBuilderFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method blacklist getFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 2

    .line 67
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iget-object p1, p1, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    return-object p1
.end method

.method bridge synthetic blacklist getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method blacklist getSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSetLite;)I
    .registers 2

    .line 115
    invoke-virtual {p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    move-result p1

    return p1
.end method

.method bridge synthetic blacklist getSerializedSize(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getSerializedSize(Lcom/android/framework/protobuf/UnknownFieldSetLite;)I

    move-result p1

    return p1
.end method

.method blacklist getSerializedSizeAsMessageSet(Lcom/android/framework/protobuf/UnknownFieldSetLite;)I
    .registers 2

    .line 120
    invoke-virtual {p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getSerializedSizeAsMessageSet()I

    move-result p1

    return p1
.end method

.method bridge synthetic blacklist getSerializedSizeAsMessageSet(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getSerializedSizeAsMessageSet(Lcom/android/framework/protobuf/UnknownFieldSetLite;)I

    move-result p1

    return p1
.end method

.method blacklist makeImmutable(Ljava/lang/Object;)V
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->getFromMessage(Ljava/lang/Object;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->makeImmutable()V

    .line 90
    return-void
.end method

.method blacklist merge(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 4

    .line 104
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    return-object p1

    .line 107
    :cond_b
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 108
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1

    .line 110
    :cond_1a
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->mergeFrom(Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic blacklist merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    check-cast p2, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->merge(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method blacklist newBuilder()Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 2

    .line 26
    invoke-static {}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->newInstance()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic blacklist newBuilder()Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->newBuilder()Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object v0

    return-object v0
.end method

.method blacklist setBuilderToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .registers 3

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V

    .line 85
    return-void
.end method

.method bridge synthetic blacklist setBuilderToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 12
    check-cast p2, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->setBuilderToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method blacklist setToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V
    .registers 3

    .line 62
    check-cast p1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    iput-object p2, p1, Lcom/android/framework/protobuf/GeneratedMessageLite;->unknownFields:Lcom/android/framework/protobuf/UnknownFieldSetLite;

    .line 63
    return-void
.end method

.method bridge synthetic blacklist setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 12
    check-cast p2, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->setToMessage(Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSetLite;)V

    return-void
.end method

.method blacklist shouldDiscardUnknownFields(Lcom/android/framework/protobuf/Reader;)Z
    .registers 2

    .line 21
    const/4 p1, 0x0

    return p1
.end method

.method blacklist toImmutable(Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;
    .registers 2

    .line 56
    invoke-virtual {p1}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->makeImmutable()V

    .line 57
    return-object p1
.end method

.method bridge synthetic blacklist toImmutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->toImmutable(Lcom/android/framework/protobuf/UnknownFieldSetLite;)Lcom/android/framework/protobuf/UnknownFieldSetLite;

    move-result-object p1

    return-object p1
.end method

.method blacklist writeAsMessageSetTo(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeAsMessageSetTo(Lcom/android/framework/protobuf/Writer;)V

    .line 100
    return-void
.end method

.method bridge synthetic blacklist writeAsMessageSetTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->writeAsMessageSetTo(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLite;->writeTo(Lcom/android/framework/protobuf/Writer;)V

    .line 95
    return-void
.end method

.method bridge synthetic blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/Writer;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    check-cast p1, Lcom/android/framework/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/UnknownFieldSetLiteSchema;->writeTo(Lcom/android/framework/protobuf/UnknownFieldSetLite;Lcom/android/framework/protobuf/Writer;)V

    return-void
.end method
