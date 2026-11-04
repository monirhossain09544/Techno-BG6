.class public abstract Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "ExtendableMessageNano.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Lcom/android/framework/protobuf/nano/MessageNano;"
    }
.end annotation


# instance fields
.field protected blacklist unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 165
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    .line 166
    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/InternalNano;->cloneUnknownFieldData(Lcom/android/framework/protobuf/nano/ExtendableMessageNano;Lcom/android/framework/protobuf/nano/ExtendableMessageNano;)V

    .line 167
    return-object v0
.end method

.method public bridge synthetic blacklist clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->clone()Lcom/android/framework/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 4

    .line 49
    nop

    .line 50
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 51
    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 52
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/android/framework/protobuf/nano/FieldData;->computeSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    move v1, v0

    .line 56
    :cond_1e
    return v1
.end method

.method public final blacklist getExtension(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 87
    return-object v1

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    iget v2, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v0

    .line 90
    if-nez v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldData;->getValue(Lcom/android/framework/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    :goto_19
    return-object v1
.end method

.method public final blacklist hasExtension(Lcom/android/framework/protobuf/nano/Extension;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;*>;)Z"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 76
    return v1

    .line 78
    :cond_6
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    iget p1, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object p1

    .line 79
    if-eqz p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public final blacklist setExtension(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;TT;)TM;"
        }
    .end annotation

    .line 97
    iget v0, p1, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 98
    const/4 v1, 0x0

    if-nez p2, :cond_1d

    .line 99
    iget-object p1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-eqz p1, :cond_40

    .line 100
    iget-object p1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->remove(I)V

    .line 101
    iget-object p1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/FieldArray;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 102
    iput-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    goto :goto_40

    .line 106
    :cond_1d
    nop

    .line 107
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v2, :cond_2a

    .line 108
    new-instance v2, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {v2}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object v2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    goto :goto_30

    .line 110
    :cond_2a
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v1

    .line 112
    :goto_30
    if-nez v1, :cond_3d

    .line 113
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    new-instance v2, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {v2, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;-><init>(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    goto :goto_40

    .line 115
    :cond_3d
    invoke-virtual {v1, p1, p2}, Lcom/android/framework/protobuf/nano/FieldData;->setValue(Lcom/android/framework/protobuf/nano/Extension;Ljava/lang/Object;)V

    .line 120
    :cond_40
    :goto_40
    nop

    .line 121
    return-object p0
.end method

.method protected final blacklist storeUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 141
    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 142
    const/4 p1, 0x0

    return p1

    .line 144
    :cond_c
    invoke-static {p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    .line 145
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 146
    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object p1

    .line 147
    new-instance v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    invoke-direct {v0, p2, p1}, Lcom/android/framework/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    .line 149
    nop

    .line 150
    iget-object p1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez p1, :cond_2c

    .line 151
    new-instance p1, Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-direct {p1}, Lcom/android/framework/protobuf/nano/FieldArray;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    const/4 p1, 0x0

    goto :goto_32

    .line 153
    :cond_2c
    iget-object p1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/FieldArray;->get(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object p1

    .line 155
    :goto_32
    if-nez p1, :cond_3e

    .line 156
    new-instance p1, Lcom/android/framework/protobuf/nano/FieldData;

    invoke-direct {p1}, Lcom/android/framework/protobuf/nano/FieldData;-><init>()V

    .line 157
    iget-object p2, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {p2, v1, p1}, Lcom/android/framework/protobuf/nano/FieldArray;->put(ILcom/android/framework/protobuf/nano/FieldData;)V

    .line 159
    :cond_3e
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/FieldData;->addUnknownField(Lcom/android/framework/protobuf/nano/UnknownFieldData;)V

    .line 160
    const/4 p1, 0x1

    return p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    if-nez v0, :cond_5

    .line 62
    return-void

    .line 64
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/nano/FieldArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 65
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/framework/protobuf/nano/FieldArray;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/nano/FieldArray;->dataAt(I)Lcom/android/framework/protobuf/nano/FieldData;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Lcom/android/framework/protobuf/nano/FieldData;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 68
    :cond_1a
    return-void
.end method
