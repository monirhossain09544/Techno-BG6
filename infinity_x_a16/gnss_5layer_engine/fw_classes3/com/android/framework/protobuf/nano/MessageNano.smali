.class public abstract Lcom/android/framework/protobuf/nano/MessageNano;
.super Ljava/lang/Object;
.source "MessageNano.java"


# instance fields
.field protected volatile blacklist cachedSize:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method

.method public static final blacklist mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[BII)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[BII)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 141
    nop

    .line 142
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;

    .line 144
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V
    :try_end_c
    .catch Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_c} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    .line 145
    return-object p0

    .line 148
    :catch_d
    move-exception p0

    .line 149
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :catch_16
    move-exception p0

    .line 147
    throw p0
.end method

.method public static final blacklist messageNanoEquals(Lcom/android/framework/protobuf/nano/MessageNano;Lcom/android/framework/protobuf/nano/MessageNano;)Z
    .registers 6

    .line 159
    if-ne p0, p1, :cond_4

    .line 160
    const/4 p0, 0x1

    return p0

    .line 162
    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    if-nez p1, :cond_a

    goto :goto_2f

    .line 165
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_15

    .line 166
    return v0

    .line 168
    :cond_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 169
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    if-eq v2, v1, :cond_20

    .line 170
    return v0

    .line 172
    :cond_20
    new-array v2, v1, [B

    .line 173
    new-array v3, v1, [B

    .line 174
    invoke-static {p0, v2, v0, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    .line 175
    invoke-static {p1, v3, v0, v1}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    .line 176
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    .line 163
    :cond_2f
    :goto_2f
    return v0
.end method

.method public static final blacklist toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V
    .registers 4

    .line 115
    nop

    .line 116
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 118
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_d

    .line 122
    nop

    .line 123
    return-void

    .line 119
    :catch_d
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final blacklist toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B
    .registers 4

    .line 100
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    new-array v1, v0, [B

    .line 101
    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/android/framework/protobuf/nano/MessageNano;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;[BII)V

    .line 102
    return-object v1
.end method


# virtual methods
.method public blacklist clone()Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->clone()Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCachedSize()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    if-gez v0, :cond_7

    .line 54
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    .line 56
    :cond_7
    iget v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    return v0
.end method

.method public blacklist getSerializedSize()I
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 66
    iput v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    .line 67
    return v0
.end method

.method public abstract blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 188
    invoke-static {p0}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    return-void
.end method
