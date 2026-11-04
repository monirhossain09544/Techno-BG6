.class public Lcom/android/framework/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final blacklist EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;


# instance fields
.field private blacklist delayedBytes:Lcom/android/framework/protobuf/ByteString;

.field private blacklist extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

.field private volatile blacklist memoizedBytes:Lcom/android/framework/protobuf/ByteString;

.field protected volatile blacklist value:Lcom/android/framework/protobuf/MessageLite;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/android/framework/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 34
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1, p2}, Lcom/android/framework/protobuf/LazyFieldLite;->checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V

    .line 97
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 98
    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 99
    return-void
.end method

.method private static blacklist checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V
    .registers 2

    .line 411
    if-eqz p0, :cond_d

    .line 414
    if-eqz p1, :cond_5

    .line 417
    return-void

    .line 415
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ByteString"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 412
    :cond_d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "found null ExtensionRegistry"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist fromValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/LazyFieldLite;
    .registers 2

    .line 109
    new-instance v0, Lcom/android/framework/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LazyFieldLite;-><init>()V

    .line 110
    invoke-virtual {v0, p0}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    .line 111
    return-object v0
.end method

.method private static blacklist mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 4

    .line 310
    :try_start_0
    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p0
    :try_end_c
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 311
    :catch_d
    move-exception p1

    .line 314
    return-object p0
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 170
    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 171
    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 172
    return-void
.end method

.method public blacklist containsDefaultInstance()Z
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    if-ne v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method protected blacklist ensureInitialized(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 5

    .line 383
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_5

    .line 384
    return-void

    .line 386
    :cond_5
    monitor-enter p0

    .line 387
    :try_start_6
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_c

    .line 388
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_36

    return-void

    .line 391
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_26

    .line 393
    nop

    .line 394
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/android/framework/protobuf/Parser;->parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    .line 395
    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 396
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 397
    goto :goto_2c

    .line 398
    :cond_26
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 399
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;
    :try_end_2c
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_2c} :catch_2d
    .catchall {:try_start_c .. :try_end_2c} :catchall_36

    .line 406
    :goto_2c
    goto :goto_34

    .line 401
    :catch_2d
    move-exception v0

    .line 404
    :try_start_2e
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 405
    sget-object p1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 407
    :goto_34
    monitor-exit p0

    .line 408
    return-void

    .line 407
    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_36

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 116
    if-ne p0, p1, :cond_4

    .line 117
    const/4 p1, 0x1

    return p1

    .line 120
    :cond_4
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;

    if-nez v0, :cond_a

    .line 121
    const/4 p1, 0x0

    return p1

    .line 124
    :cond_a
    check-cast p1, Lcom/android/framework/protobuf/LazyFieldLite;

    .line 130
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 131
    iget-object v1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 132
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 133
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyFieldLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 134
    :cond_21
    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    .line 135
    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/MessageLite;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 136
    :cond_2a
    if-eqz v0, :cond_39

    .line 137
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/LazyFieldLite;->getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/MessageLite;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 139
    :cond_39
    invoke-interface {v1}, Lcom/android/framework/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/framework/protobuf/MessageLite;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public blacklist getSerializedSize()I
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_b

    .line 335
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 336
    :cond_b
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_16

    .line 337
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 338
    :cond_16
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_21

    .line 339
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 341
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->ensureInitialized(Lcom/android/framework/protobuf/MessageLite;)V

    .line 201
    iget-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    return-object p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist merge(Lcom/android/framework/protobuf/LazyFieldLite;)V
    .registers 4

    .line 227
    invoke-virtual {p1}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    return-void

    .line 231
    :cond_7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->set(Lcom/android/framework/protobuf/LazyFieldLite;)V

    .line 233
    return-void

    .line 238
    :cond_11
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_19

    .line 239
    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 247
    :cond_19
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_2c

    .line 248
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object p1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->concat(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 249
    return-void

    .line 255
    :cond_2c
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_42

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_42

    .line 256
    iget-object p1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-static {p1, v0, v1}, Lcom/android/framework/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    .line 257
    return-void

    .line 258
    :cond_42
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_58

    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_58

    .line 259
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iget-object p1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    .line 260
    return-void

    .line 264
    :cond_58
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    .line 265
    return-void
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 276
    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyFieldLite;->setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 277
    return-void

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_14

    .line 283
    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 291
    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_28

    .line 292
    iget-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/framework/protobuf/ByteString;->concat(Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/ByteString;

    move-result-object p1

    iget-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/LazyFieldLite;->setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 293
    return-void

    .line 300
    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    :try_end_39
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_28 .. :try_end_39} :catch_3a

    .line 304
    goto :goto_3b

    .line 301
    :catch_3a
    move-exception p1

    .line 305
    :goto_3b
    return-void
.end method

.method public blacklist set(Lcom/android/framework/protobuf/LazyFieldLite;)V
    .registers 3

    .line 181
    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 182
    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 183
    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 188
    iget-object v0, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_14

    .line 189
    iget-object p1, p1, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 191
    :cond_14
    return-void
.end method

.method public blacklist setByteString(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 3

    .line 320
    invoke-static {p2, p1}, Lcom/android/framework/protobuf/LazyFieldLite;->checkArguments(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V

    .line 321
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 322
    iput-object p2, p0, Lcom/android/framework/protobuf/LazyFieldLite;->extensionRegistry:Lcom/android/framework/protobuf/ExtensionRegistryLite;

    .line 323
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 324
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 325
    return-void
.end method

.method public blacklist setValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 213
    iput-object v1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 214
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    .line 215
    return-object v0
.end method

.method public blacklist toByteString()Lcom/android/framework/protobuf/ByteString;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_7

    .line 348
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    .line 352
    :cond_7
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_e

    .line 353
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    return-object v0

    .line 355
    :cond_e
    monitor-enter p0

    .line 356
    :try_start_f
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_17

    .line 357
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 359
    :cond_17
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_20

    .line 360
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    goto :goto_28

    .line 362
    :cond_20
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toByteString()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    .line 364
    :goto_28
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 365
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method blacklist writeTo(Lcom/android/framework/protobuf/Writer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_a

    .line 371
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->memoizedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_23

    .line 372
    :cond_a
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_14

    .line 373
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->delayedBytes:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    goto :goto_23

    .line 374
    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    if-eqz v0, :cond_1e

    .line 375
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyFieldLite;->value:Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_23

    .line 377
    :cond_1e
    sget-object v0, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/android/framework/protobuf/Writer;->writeBytes(ILcom/android/framework/protobuf/ByteString;)V

    .line 379
    :goto_23
    return-void
.end method
