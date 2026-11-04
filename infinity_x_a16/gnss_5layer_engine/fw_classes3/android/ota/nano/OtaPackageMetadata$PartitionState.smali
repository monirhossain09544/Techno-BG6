.class public final Landroid/ota/nano/OtaPackageMetadata$PartitionState;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "OtaPackageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ota/nano/OtaPackageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PartitionState"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;


# instance fields
.field public blacklist build:[Ljava/lang/String;

.field public blacklist device:[Ljava/lang/String;

.field public blacklist partitionName:Ljava/lang/String;

.field public blacklist version:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 38
    invoke-virtual {p0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->clear()Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 39
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 2

    .line 14
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v0, :cond_15

    .line 15
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    if-nez v1, :cond_10

    .line 18
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    sput-object v1, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    .line 20
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 22
    :cond_15
    :goto_15
    sget-object v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->_emptyArray:[Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    invoke-virtual {v0, p0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    invoke-direct {v0}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 3

    .line 42
    const-string v0, ""

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 43
    sget-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    .line 44
    sget-object v1, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->cachedSize:I

    .line 47
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 9

    .line 80
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 81
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 82
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 83
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_16
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3e

    .line 86
    nop

    .line 87
    nop

    .line 88
    move v1, v4

    move v5, v1

    move v6, v5

    :goto_25
    iget-object v7, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_3b

    .line 89
    iget-object v7, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    aget-object v7, v7, v1

    .line 90
    if-eqz v7, :cond_38

    .line 91
    add-int/lit8 v6, v6, 0x1

    .line 92
    nop

    .line 93
    invoke-static {v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    .line 88
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 96
    :cond_3b
    add-int/2addr v0, v5

    .line 97
    mul-int/2addr v6, v3

    add-int/2addr v0, v6

    .line 99
    :cond_3e
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-eqz v1, :cond_64

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_64

    .line 100
    nop

    .line 101
    nop

    .line 102
    move v1, v4

    move v5, v1

    :goto_4b
    iget-object v6, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_61

    .line 103
    iget-object v6, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    aget-object v6, v6, v4

    .line 104
    if-eqz v6, :cond_5e

    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    nop

    .line 107
    invoke-static {v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 102
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 110
    :cond_61
    add-int/2addr v0, v1

    .line 111
    mul-int/2addr v5, v3

    add-int/2addr v0, v5

    .line 113
    :cond_64
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    .line 114
    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    .line 115
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_74
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 126
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_88

    .line 130
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_86

    .line 131
    return-object p0

    .line 174
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    goto/16 :goto_86

    .line 157
    :sswitch_18
    nop

    .line 158
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 159
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-nez v2, :cond_25

    move v2, v1

    goto :goto_28

    :cond_25
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v2, v2

    .line 160
    :goto_28
    add-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    .line 161
    if-eqz v2, :cond_32

    .line 162
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    :cond_32
    :goto_32
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_42

    .line 165
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 166
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 169
    :cond_42
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 170
    iput-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    .line 171
    goto :goto_86

    .line 140
    :sswitch_4b
    nop

    .line 141
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 142
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    if-nez v2, :cond_58

    move v2, v1

    goto :goto_5b

    :cond_58
    iget-object v2, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v2, v2

    .line 143
    :goto_5b
    add-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    .line 144
    if-eqz v2, :cond_65

    .line 145
    iget-object v4, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_65
    :goto_65
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_75

    .line 148
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 149
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 152
    :cond_75
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 153
    iput-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    .line 154
    goto :goto_86

    .line 136
    :sswitch_7e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    .line 137
    goto :goto_86

    .line 128
    :sswitch_85
    return-object p0

    .line 178
    :cond_86
    :goto_86
    goto/16 :goto_1

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_85
        0xa -> :sswitch_7e
        0x12 -> :sswitch_4b
        0x1a -> :sswitch_18
        0x22 -> :sswitch_10
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

    .line 8
    invoke-virtual {p0, p1}, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/ota/nano/OtaPackageMetadata$PartitionState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 54
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->partitionName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 56
    :cond_10
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2d

    .line 57
    move v0, v2

    :goto_1b
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2d

    .line 58
    iget-object v3, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->device:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 59
    if-eqz v3, :cond_2a

    .line 60
    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 64
    :cond_2d
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    if-eqz v0, :cond_49

    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_49

    .line 65
    nop

    :goto_37
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_49

    .line 66
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->build:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 67
    if-eqz v0, :cond_46

    .line 68
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 65
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 72
    :cond_49
    iget-object v0, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Landroid/ota/nano/OtaPackageMetadata$PartitionState;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 75
    :cond_57
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 76
    return-void
.end method
