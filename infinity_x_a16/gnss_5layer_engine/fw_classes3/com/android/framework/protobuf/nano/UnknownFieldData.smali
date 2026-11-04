.class final Lcom/android/framework/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final blacklist bytes:[B

.field final blacklist tag:I


# direct methods
.method constructor blacklist <init>(I[B)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    .line 53
    iput-object p2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    .line 54
    return-void
.end method


# virtual methods
.method blacklist computeSerializedSize()I
    .registers 3

    .line 57
    nop

    .line 58
    iget v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 60
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 70
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 71
    return v0

    .line 73
    :cond_4
    instance-of v1, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 74
    return v2

    .line 77
    :cond_a
    check-cast p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 78
    iget v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v1, v3, :cond_1d

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object p1, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 83
    nop

    .line 84
    const/16 v0, 0x20f

    iget v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    add-int/2addr v0, v1

    .line 85
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    return v0
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 65
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 66
    return-void
.end method
