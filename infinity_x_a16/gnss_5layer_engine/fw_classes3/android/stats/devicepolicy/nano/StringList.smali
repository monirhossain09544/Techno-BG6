.class public final Landroid/stats/devicepolicy/nano/StringList;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "StringList.java"


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/stats/devicepolicy/nano/StringList;


# instance fields
.field public blacklist stringValue:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 27
    invoke-virtual {p0}, Landroid/stats/devicepolicy/nano/StringList;->clear()Landroid/stats/devicepolicy/nano/StringList;

    .line 28
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/stats/devicepolicy/nano/StringList;
    .registers 2

    .line 12
    sget-object v0, Landroid/stats/devicepolicy/nano/StringList;->_emptyArray:[Landroid/stats/devicepolicy/nano/StringList;

    if-nez v0, :cond_15

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Landroid/stats/devicepolicy/nano/StringList;->_emptyArray:[Landroid/stats/devicepolicy/nano/StringList;

    if-nez v1, :cond_10

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/stats/devicepolicy/nano/StringList;

    sput-object v1, Landroid/stats/devicepolicy/nano/StringList;->_emptyArray:[Landroid/stats/devicepolicy/nano/StringList;

    .line 18
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 20
    :cond_15
    :goto_15
    sget-object v0, Landroid/stats/devicepolicy/nano/StringList;->_emptyArray:[Landroid/stats/devicepolicy/nano/StringList;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/devicepolicy/nano/StringList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Landroid/stats/devicepolicy/nano/StringList;

    invoke-direct {v0}, Landroid/stats/devicepolicy/nano/StringList;-><init>()V

    invoke-virtual {v0, p0}, Landroid/stats/devicepolicy/nano/StringList;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/devicepolicy/nano/StringList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/stats/devicepolicy/nano/StringList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 108
    new-instance v0, Landroid/stats/devicepolicy/nano/StringList;

    invoke-direct {v0}, Landroid/stats/devicepolicy/nano/StringList;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/stats/devicepolicy/nano/StringList;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/stats/devicepolicy/nano/StringList;
    .registers 2

    .line 31
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Landroid/stats/devicepolicy/nano/StringList;->cachedSize:I

    .line 33
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 52
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 53
    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2c

    .line 54
    nop

    .line 55
    nop

    .line 56
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_12
    iget-object v4, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_28

    .line 57
    iget-object v4, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 58
    if-eqz v4, :cond_25

    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    nop

    .line 61
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 56
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 64
    :cond_28
    add-int/2addr v0, v2

    .line 65
    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 67
    :cond_2c
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/devicepolicy/nano/StringList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 76
    sparse-switch v0, :sswitch_data_46

    .line 80
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_44

    .line 81
    return-object p0

    .line 86
    :sswitch_f
    nop

    .line 87
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 88
    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    move v1, v2

    goto :goto_20

    :cond_1d
    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v1, v1

    .line 89
    :goto_20
    add-int/2addr v0, v1

    new-array v3, v0, [Ljava/lang/String;

    .line 90
    if-eqz v1, :cond_2a

    .line 91
    iget-object v4, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    :cond_2a
    :goto_2a
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_3a

    .line 94
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 95
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 98
    :cond_3a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 99
    iput-object v3, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    .line 100
    goto :goto_44

    .line 78
    :sswitch_43
    return-object p0

    .line 103
    :cond_44
    :goto_44
    goto :goto_1

    nop

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_43
        0xa -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Landroid/stats/devicepolicy/nano/StringList;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/stats/devicepolicy/nano/StringList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 40
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 41
    iget-object v1, p0, Landroid/stats/devicepolicy/nano/StringList;->stringValue:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 42
    if-eqz v1, :cond_19

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 40
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 47
    :cond_1c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 48
    return-void
.end method
