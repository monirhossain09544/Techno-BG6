.class final Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;
.super Lcom/android/framework/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;,
        Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$SkippedDataSink;
    }
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private blacklist bufferSize:I

.field private blacklist bufferSizeAfterLimit:I

.field private blacklist currentLimit:I

.field private final blacklist input:Ljava/io/InputStream;

.field private blacklist lastTag:I

.field private blacklist pos:I

.field private blacklist refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

.field private blacklist totalBytesRetired:I


# direct methods
.method private constructor blacklist <init>(Ljava/io/InputStream;I)V
    .registers 5

    .line 2014
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream;-><init>(Lcom/android/framework/protobuf/CodedInputStream$1;)V

    .line 2012
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2712
    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    .line 2015
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2016
    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2017
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2018
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2019
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2020
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2021
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/io/InputStream;ILcom/android/framework/protobuf/CodedInputStream$1;)V
    .registers 4

    .line 1993
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)I
    .registers 1

    .line 1993
    iget p0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    return p0
.end method

.method static synthetic blacklist access$600(Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;)[B
    .registers 1

    .line 1993
    iget-object p0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    return-object p0
.end method

.method private static blacklist available(Ljava/io/InputStream;)I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2054
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_4
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 2055
    :catch_5
    move-exception p0

    .line 2056
    invoke-virtual {p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2057
    throw p0
.end method

.method private static blacklist read(Ljava/io/InputStream;[BII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2036
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_4
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    .line 2037
    :catch_5
    move-exception p0

    .line 2038
    invoke-virtual {p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2039
    throw p0
.end method

.method private blacklist readBytesSlowPath(I)Lcom/android/framework/protobuf/ByteString;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2967
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 2968
    if-eqz v0, :cond_b

    .line 2971
    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1

    .line 2974
    :cond_b
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2975
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    .line 2978
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2979
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2980
    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2983
    sub-int v3, p1, v1

    .line 2987
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v3

    .line 2990
    new-array p1, p1, [B

    .line 2993
    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v4, v0, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2996
    nop

    .line 2997
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 2998
    array-length v4, v3

    invoke-static {v3, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2999
    array-length v3, v3

    add-int/2addr v1, v3

    .line 3000
    goto :goto_30

    .line 3002
    :cond_43
    invoke-static {p1}, Lcom/android/framework/protobuf/ByteString;->wrap([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method private blacklist readRawBytesSlowPath(IZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2832
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    move-result-object v0

    .line 2833
    if-eqz v0, :cond_10

    .line 2834
    if-eqz p2, :cond_f

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, [B

    :cond_f
    return-object v0

    .line 2837
    :cond_10
    iget p2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2838
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    .line 2841
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2842
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2843
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2846
    sub-int v2, p1, v0

    .line 2850
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;

    move-result-object v2

    .line 2853
    new-array p1, p1, [B

    .line 2856
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v3, p2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2859
    nop

    .line 2860
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 2861
    array-length v3, v2

    invoke-static {v2, v1, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2862
    array-length v2, v2

    add-int/2addr v0, v2

    .line 2863
    goto :goto_35

    .line 2866
    :cond_48
    return-object p1
.end method

.method private blacklist readRawBytesSlowPathOneChunk(I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2876
    if-nez p1, :cond_5

    .line 2877
    sget-object p1, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 2879
    :cond_5
    if-ltz p1, :cond_72

    .line 2884
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 2885
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_6d

    .line 2890
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_5d

    .line 2896
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    .line 2898
    sub-int v1, p1, v0

    .line 2900
    const/16 v2, 0x1000

    if-lt v1, v2, :cond_2d

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->available(Ljava/io/InputStream;)I

    move-result v2

    if-gt v1, v2, :cond_2b

    goto :goto_2d

    .line 2925
    :cond_2b
    const/4 p1, 0x0

    return-object p1

    .line 2903
    :cond_2d
    :goto_2d
    new-array v1, p1, [B

    .line 2906
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2907
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2908
    iput v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2909
    iput v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2912
    nop

    .line 2913
    :goto_43
    if-ge v0, p1, :cond_5c

    .line 2914
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-static {v2, v1, v0, v3}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v2

    .line 2915
    const/4 v3, -0x1

    if-eq v2, v3, :cond_57

    .line 2918
    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2919
    add-int/2addr v0, v2

    .line 2920
    goto :goto_43

    .line 2916
    :cond_57
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2922
    :cond_5c
    return-object v1

    .line 2892
    :cond_5d
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2893
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2886
    :cond_6d
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2880
    :cond_72
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private blacklist readRawBytesSlowPathRemainingChunks(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2943
    :goto_5
    if-lez p1, :cond_2e

    .line 2945
    const/16 v1, 0x1000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [B

    .line 2946
    const/4 v3, 0x0

    .line 2947
    :goto_10
    if-ge v3, v1, :cond_29

    .line 2948
    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 2949
    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 2952
    iget v5, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2953
    add-int/2addr v3, v4

    .line 2954
    goto :goto_10

    .line 2950
    :cond_24
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2955
    :cond_29
    sub-int/2addr p1, v1

    .line 2956
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2957
    goto :goto_5

    .line 2959
    :cond_2e
    return-object v0
.end method

.method private blacklist recomputeBufferSizeAfterLimit()V
    .registers 3

    .line 2671
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2672
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v0, v1

    .line 2673
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v0, v1, :cond_1d

    .line 2675
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2676
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    goto :goto_20

    .line 2678
    :cond_1d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSizeAfterLimit:I

    .line 2680
    :goto_20
    return-void
.end method

.method private blacklist refillBuffer(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2723
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2726
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_15

    .line 2727
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->sizeLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2729
    :cond_15
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2732
    :cond_1a
    return-void
.end method

.method private static blacklist skip(Ljava/io/InputStream;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2045
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0
    :try_end_4
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_4} :catch_5

    return-wide p0

    .line 2046
    :catch_5
    move-exception p0

    .line 2047
    invoke-virtual {p0}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->setThrownFromInputStream()V

    .line 2048
    throw p0
.end method

.method private blacklist skipRawBytesSlowPath(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3020
    if-ltz p1, :cond_ad

    .line 3024
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-gt v0, v1, :cond_9d

    .line 3031
    nop

    .line 3032
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_7a

    .line 3034
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3035
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v2

    .line 3036
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 3037
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v1, v0

    .line 3040
    :goto_23
    if-ge v1, p1, :cond_71

    .line 3041
    sub-int v0, p1, v1

    .line 3042
    :try_start_27
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skip(Ljava/io/InputStream;J)J

    move-result-wide v5

    .line 3043
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_3e

    cmp-long v2, v5, v3

    if-gtz v2, :cond_3e

    .line 3049
    if-nez v0, :cond_3b

    .line 3054
    goto :goto_71

    .line 3056
    :cond_3b
    long-to-int v0, v5

    add-int/2addr v1, v0

    .line 3057
    goto :goto_23

    .line 3044
    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 3045
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#skip returned invalid result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_67
    .catchall {:try_start_27 .. :try_end_67} :catchall_67

    .line 3059
    :catchall_67
    move-exception p1

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3060
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3061
    throw p1

    .line 3059
    :cond_71
    :goto_71
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 3060
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 3061
    nop

    .line 3063
    :cond_7a
    if-ge v1, p1, :cond_9c

    .line 3065
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    .line 3066
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3070
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 3071
    :goto_89
    sub-int v2, p1, v0

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v2, v3, :cond_9a

    .line 3072
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v0, v2

    .line 3073
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3074
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    goto :goto_89

    .line 3077
    :cond_9a
    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 3079
    :cond_9c
    return-void

    .line 3026
    :cond_9d
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 3028
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 3021
    :cond_ad
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method private blacklist skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2492
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    .line 2493
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintFastPath()V

    goto :goto_10

    .line 2495
    :cond_d
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawVarintSlowPath()V

    .line 2497
    :goto_10
    return-void
.end method

.method private blacklist skipRawVarintFastPath()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2500
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 2501
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v1, v1, v2

    if-ltz v1, :cond_12

    .line 2502
    return-void

    .line 2500
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2505
    :cond_15
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2509
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 2510
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    .line 2511
    return-void

    .line 2509
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2514
    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist tryRefillBuffer(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2743
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v0, v1, :cond_aa

    .line 2751
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p1, v0, :cond_13

    .line 2752
    return v1

    .line 2756
    :cond_13
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v2

    add-int/2addr v0, p1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    if-le v0, v2, :cond_1e

    .line 2758
    return v1

    .line 2761
    :cond_1e
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    if-eqz v0, :cond_27

    .line 2762
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillCallback:Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;

    invoke-interface {v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder$RefillCallback;->onRefill()V

    .line 2765
    :cond_27
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2766
    if-lez v0, :cond_45

    .line 2767
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-le v2, v0, :cond_39

    .line 2768
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v4, v0

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2770
    :cond_39
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2771
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2772
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2776
    :cond_45
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v4, v4

    iget v5, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->sizeLimit:I

    iget v6, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v5, v6

    .line 2781
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2777
    invoke-static {v0, v2, v3, v4}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 2786
    if-eqz v0, :cond_81

    const/4 v2, -0x1

    if-lt v0, v2, :cond_81

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    array-length v2, v2

    if-gt v0, v2, :cond_81

    .line 2793
    if-lez v0, :cond_80

    .line 2794
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 2795
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2796
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-lt v0, p1, :cond_7b

    const/4 p1, 0x1

    goto :goto_7f

    :cond_7b
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result p1

    :goto_7f
    return p1

    .line 2799
    :cond_80
    return v1

    .line 2787
    :cond_81
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->input:Ljava/io/InputStream;

    .line 2788
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2744
    :cond_aa
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes were already available in buffer"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2079
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    .line 2082
    return-void

    .line 2080
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist enableAliasing(Z)V
    .registers 2

    .line 2646
    return-void
.end method

.method public blacklist getBytesUntilLimit()I
    .registers 3

    .line 2690
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    .line 2691
    const/4 v0, -0x1

    return v0

    .line 2694
    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    .line 2695
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public blacklist getLastTag()I
    .registers 2

    .line 2086
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0
.end method

.method public blacklist getTotalBytesRead()I
    .registers 3

    .line 2705
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist isAtEnd()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2700
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->tryRefillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist popLimit(I)V
    .registers 2

    .line 2684
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2685
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2686
    return-void
.end method

.method public blacklist pushLimit(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2655
    if-ltz p1, :cond_17

    .line 2658
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 2659
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2660
    if-gt p1, v0, :cond_12

    .line 2663
    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->currentLimit:I

    .line 2665
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recomputeBufferSizeAfterLimit()V

    .line 2667
    return v0

    .line 2661
    :cond_12
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 2656
    :cond_17
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readBool()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2231
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist readByteArray()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2378
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2379
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    if-lez v0, :cond_1e

    .line 2382
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 2383
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2384
    return-object v1

    .line 2385
    :cond_1e
    if-ltz v0, :cond_26

    .line 2390
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    return-object v0

    .line 2386
    :cond_26
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2396
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2397
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_22

    if-lez v0, :cond_22

    .line 2399
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v3, v0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2400
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2401
    return-object v1

    .line 2403
    :cond_22
    if-nez v0, :cond_27

    .line 2404
    sget-object v0, Lcom/android/framework/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 2406
    :cond_27
    if-ltz v0, :cond_33

    .line 2413
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 2407
    :cond_33
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2359
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2360
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1b

    if-lez v0, :cond_1b

    .line 2363
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    .line 2364
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2365
    return-object v1

    .line 2367
    :cond_1b
    if-nez v0, :cond_20

    .line 2368
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    .line 2370
    :cond_20
    if-ltz v0, :cond_27

    .line 2373
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readBytesSlowPath(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 2371
    :cond_27
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2196
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2423
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2226
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2221
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2201
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(I",
            "Lcom/android/framework/protobuf/Parser<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2308
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2309
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2310
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/framework/protobuf/MessageLite;

    .line 2311
    const/4 p3, 0x4

    invoke-static {p1, p3}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2312
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2313
    return-object p2
.end method

.method public blacklist readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2295
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2296
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2297
    invoke-interface {p2, p0, p3}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 2298
    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2299
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2300
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readMessage(Lcom/android/framework/protobuf/Parser;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">(",
            "Lcom/android/framework/protobuf/Parser<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2343
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2344
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2345
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v0

    .line 2346
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2347
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/Parser;->parsePartialFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/framework/protobuf/MessageLite;

    .line 2348
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2349
    iget p2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2350
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    .line 2353
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2354
    return-object p1

    .line 2351
    :cond_2b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readMessage(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2327
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2328
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkRecursionLimit()V

    .line 2329
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    move-result v0

    .line 2330
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2331
    invoke-interface {p1, p0, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    .line 2332
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2333
    iget p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 2334
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    .line 2337
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 2338
    return-void

    .line 2335
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public blacklist readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2804
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v0, v1, :cond_a

    .line 2805
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2807
    :cond_a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public blacklist readRawBytes(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2812
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2813
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_13

    if-lez p1, :cond_13

    .line 2814
    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2815
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    invoke-static {v1, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    .line 2818
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist readRawLittleEndian32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2605
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2607
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_d

    .line 2608
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2609
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2612
    :cond_d
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2613
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2614
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public blacklist readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2622
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2624
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 2625
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2626
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2629
    :cond_e
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2630
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2631
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist readRawVarint32()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2453
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2455
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_7

    .line 2456
    goto :goto_6d

    .line 2459
    :cond_7
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2461
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_12

    .line 2462
    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2463
    return v0

    .line 2464
    :cond_12
    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1a

    .line 2465
    goto :goto_6d

    .line 2466
    :cond_1a
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_26

    .line 2467
    xor-int/lit8 v0, v0, -0x80

    goto :goto_74

    .line 2468
    :cond_26
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_33

    .line 2469
    xor-int/lit16 v0, v0, 0x3f80

    move v3, v2

    goto :goto_74

    .line 2470
    :cond_33
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_41

    .line 2471
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_74

    .line 2473
    :cond_41
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    .line 2474
    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v0, v4

    .line 2475
    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    .line 2476
    if-gez v3, :cond_73

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_74

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_73

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    if-gez v2, :cond_74

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_73

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_74

    .line 2482
    nop

    .line 2488
    :goto_6d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 2476
    :cond_73
    move v3, v2

    .line 2485
    :cond_74
    :goto_74
    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2486
    return v0
.end method

.method public blacklist readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2532
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2534
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-ne v1, v0, :cond_8

    .line 2535
    goto/16 :goto_c1

    .line 2538
    :cond_8
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2541
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-ltz v0, :cond_14

    .line 2542
    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2543
    int-to-long v0, v0

    return-wide v0

    .line 2544
    :cond_14
    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v3, v2

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1d

    .line 2545
    goto/16 :goto_c1

    .line 2546
    :cond_1d
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_2b

    .line 2547
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    goto/16 :goto_cc

    .line 2548
    :cond_2b
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v0, v3

    if-ltz v0, :cond_3a

    .line 2549
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move v3, v2

    goto/16 :goto_cc

    .line 2550
    :cond_3a
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4a

    .line 2551
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto/16 :goto_cc

    .line 2552
    :cond_4a
    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v2, v1, v3

    int-to-long v2, v2

    const/16 v6, 0x1c

    shl-long/2addr v2, v6

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_63

    .line 2553
    const-wide/32 v4, 0xfe03f80

    xor-long v1, v2, v4

    move v3, v0

    move-wide v0, v1

    goto/16 :goto_cc

    .line 2554
    :cond_63
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_78

    .line 2555
    const-wide v0, -0x7f01fc080L

    xor-long/2addr v0, v2

    move v3, v6

    goto :goto_cc

    .line 2556
    :cond_78
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x2a

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_8f

    .line 2557
    const-wide v4, 0x3f80fe03f80L

    xor-long v1, v2, v4

    move v3, v0

    move-wide v0, v1

    goto :goto_cc

    .line 2558
    :cond_8f
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v2, v7

    cmp-long v0, v2, v4

    if-gez v0, :cond_a4

    .line 2559
    const-wide v0, -0x1fc07f01fc080L

    xor-long/2addr v0, v2

    move v3, v6

    goto :goto_cc

    .line 2568
    :cond_a4
    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const/16 v8, 0x38

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    .line 2569
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v2, v6

    .line 2578
    cmp-long v6, v2, v4

    if-gez v6, :cond_c9

    .line 2579
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_c6

    .line 2580
    nop

    .line 2587
    :goto_c1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    .line 2579
    :cond_c6
    move-wide v0, v2

    move v3, v6

    goto :goto_cc

    .line 2578
    :cond_c9
    move-wide v9, v2

    move v3, v0

    move-wide v0, v9

    .line 2584
    :goto_cc
    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2585
    return-wide v0
.end method

.method blacklist readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2592
    nop

    .line 2593
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_4
    const/16 v3, 0x40

    if-ge v2, v3, :cond_19

    .line 2594
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawByte()B

    move-result v3

    .line 2595
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 2596
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_16

    .line 2597
    return-wide v0

    .line 2593
    :cond_16
    add-int/lit8 v2, v2, 0x7

    goto :goto_4

    .line 2600
    :cond_19
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2428
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2433
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2438
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public blacklist readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2443
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2236
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2237
    if-lez v0, :cond_1e

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1e

    .line 2240
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2241
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2242
    return-object v1

    .line 2244
    :cond_1e
    if-nez v0, :cond_23

    .line 2245
    const-string v0, ""

    return-object v0

    .line 2247
    :cond_23
    if-ltz v0, :cond_4a

    .line 2250
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    if-gt v0, v1, :cond_3d

    .line 2251
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2252
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2253
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2254
    return-object v1

    .line 2257
    :cond_3d
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v0

    sget-object v2, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 2248
    :cond_4a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2262
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    .line 2264
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2266
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    sub-int/2addr v2, v1

    if-gt v0, v2, :cond_14

    if-lez v0, :cond_14

    .line 2269
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2270
    add-int v3, v1, v0

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 2271
    goto :goto_35

    .line 2272
    :cond_14
    if-nez v0, :cond_19

    .line 2273
    const-string v0, ""

    return-object v0

    .line 2274
    :cond_19
    if-ltz v0, :cond_3a

    .line 2276
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2e

    .line 2277
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 2278
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 2279
    nop

    .line 2280
    add-int/lit8 v3, v0, 0x0

    iput v3, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    move v4, v2

    move-object v2, v1

    move v1, v4

    goto :goto_35

    .line 2283
    :cond_2e
    invoke-direct {p0, v0, v2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(IZ)[B

    move-result-object v1

    .line 2284
    move v4, v2

    move-object v2, v1

    move v1, v4

    .line 2286
    :goto_35
    invoke-static {v2, v1, v0}, Lcom/android/framework/protobuf/Utf8;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2275
    :cond_3a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2063
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2064
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2065
    return v0

    .line 2068
    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    .line 2069
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 2074
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->lastTag:I

    return v0

    .line 2072
    :cond_1b
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2418
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2206
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUnknownGroup(ILcom/android/framework/protobuf/MessageLite$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2320
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readGroup(ILcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 2321
    return-void
.end method

.method public blacklist resetSizeCounter()V
    .registers 2

    .line 2650
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 2651
    return-void
.end method

.method public blacklist skipField(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2091
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 2112
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 2109
    :pswitch_e
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2110
    return v2

    .line 2107
    :pswitch_12
    const/4 p1, 0x0

    return p1

    .line 2102
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipMessage()V

    .line 2103
    nop

    .line 2104
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v1}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 2103
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2105
    return v2

    .line 2099
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2100
    return v2

    .line 2096
    :pswitch_2c
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytes(I)V

    .line 2097
    return v2

    .line 2093
    :pswitch_32
    invoke-direct {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawVarint()V

    .line 2094
    return v2

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2c
        :pswitch_24
        :pswitch_14
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public blacklist skipField(ILcom/android/framework/protobuf/CodedOutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2118
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_52

    .line 2163
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    .line 2157
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 2158
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2159
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 2160
    return v1

    .line 2153
    :pswitch_18
    const/4 p1, 0x0

    return p1

    .line 2142
    :pswitch_1a
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2143
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipMessage(Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 2144
    nop

    .line 2146
    invoke-static {p1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 2145
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 2147
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 2148
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2149
    return v1

    .line 2135
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    .line 2136
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2137
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    .line 2138
    return v1

    .line 2128
    :pswitch_3c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 2129
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2130
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 2131
    return v1

    .line 2121
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v2

    .line 2122
    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 2123
    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 2124
    return v1

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3c
        :pswitch_31
        :pswitch_1a
        :pswitch_18
        :pswitch_d
    .end packed-switch
.end method

.method public blacklist skipRawBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3007
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_f

    if-ltz p1, :cond_f

    .line 3009
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->pos:I

    goto :goto_12

    .line 3011
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/CodedInputStream$StreamDecoder;->skipRawBytesSlowPath(I)V

    .line 3013
    :goto_12
    return-void
.end method
